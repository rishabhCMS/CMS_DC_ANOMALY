import numpy as np
import pandas as pd
import os
from sklearn.preprocessing import StandardScaler, normalize
from sklearn.utils import shuffle
from sklearn.metrics import roc_curve, auc
# customize
from data.prompt_reco.setting import REDUCED_FEATURES, FEATURES, SELECT_PD
import data.prompt_reco.utility as utility

# from model.reco.autoencoder import SparseAutoencoder as Autoencoder
from model.reco.autoencoder import ( VanillaAutoencoder, SparseAutoencoder,
                                     ContractiveAutoencoder, VariationalAutoencoder )

def main():
    file_auc = open('report/reco/eval/roc_auc.txt', 'w')
    file_auc.write("model_name data_fraction roc_auc\n")
    for model_name, Autoencoder in zip(
            [ "Vanilla", "Sparse", "Contractive", "Variational"],
            [ VanillaAutoencoder, SparseAutoencoder, ContractiveAutoencoder, VariationalAutoencoder]
            ):
        # setting
        is_reduced_data = True
        BS = 256
        EPOCHS = 1200
        MODEL_NAME = model_name
        SPLIT_DATA_IN_80 = [0.75, 0.75, 0.75, 0.75, 0.75, 0.75, 0.75, 0.75, 0.75, 0.75] # 60% of data

        N_FEATURES = len(REDUCED_FEATURES) - 1 if is_reduced_data else 2806
        # data
        files = utility.get_file_list(chosed_pd=SELECT_PD) # choosing only ZeroBias

        feature_names = utility.get_feature_name(features=FEATURES)
        ###
        reduced_feature_names = utility.get_feature_name(features=REDUCED_FEATURES)
        ###

        data = pd.DataFrame(utility.get_data(files), columns=feature_names)
        data["run"] = data["run"].astype(int)
        data["lumi"] = data["lumi"].astype(int)
        data.drop(["_foo", "_bar", "_baz"], axis=1, inplace=True)
        ###
        if is_reduced_data:
            not_reduced_column = feature_names
            for intersected_elem in reduced_feature_names: not_reduced_column.remove(intersected_elem)
            data.drop(not_reduced_column, axis=1, inplace=True)
        ###

        data = data.sort_values(["run", "lumi"], ascending=[True,True])
        data = data.reset_index(drop=True)

        data["label"] = data.apply(utility.add_flags, axis=1)

        data = data.reindex(np.random.permutation(data.index))
        # model
        model_list = [
                Autoencoder(
                    input_dim = [N_FEATURES],
                    summary_dir = "model/reco/summary",
                    model_name = "{} model {}".format(MODEL_NAME, i),
                    batch_size = BS
                )
            for i in range(1,len(SPLIT_DATA_IN_80) + 1)]
        # training
        for dataset_fraction, autoencoder in zip(np.array(SPLIT_DATA_IN_80), model_list):
            print("Model: {} Dataset fraction: {}".format(autoencoder.model_name, dataset_fraction))
            print("Preparing dataset...")
            split = int(dataset_fraction*len(data))
            dataset = data.iloc[:split].copy()

            print("Train test split...")
            split = int(0.8*len(dataset))
            # train set
            df_train = dataset.iloc[:split].copy()
            X_train = df_train.iloc[:, 0:N_FEATURES]
            y_train = df_train["label"]
            # test set
            df_test = dataset.iloc[split:].copy()
            X_test = df_test.iloc[:, 0:N_FEATURES]
            y_test = df_test["label"]
            X_test = pd.concat([X_train[y_train == 1], X_test])
            y_test = pd.concat([y_train[y_train == 1], y_test])
            # train only good condition
            X_train = X_train[y_train == 0]
            print("Number of inliers in training&valid set: {}".format(len(X_train)))
            print("Number of inliers in test set: {}".format(sum((y_test == 0).values)))
            print("Number of anomalies in the test set: {}".format(sum((y_test == 1).values)))

            print("Training {} autoencoder".format(MODEL_NAME))
            # log
            file_log = open('report/reco/logs/{}.txt'.format(autoencoder.model_name), 'w')
            file_log.write("EP loss_train loss_valid\n")

            # standardize data
            # transformer = StandardScaler()
            # transformer.fit(X_train.values)
            # X_train = transformer.transform(X_train.values)
            X_train = normalize(X_train, norm='l1')
            X_test = normalize(X_test, norm='l1')

            X_train = X_train[:int(0.75*len(X_train))]
            X_valid = X_train[int(0.75*len(X_train)):]
            # LOOP EPOCH
            autoencoder.init_variables()
            for EP in range(EPOCHS):
                X_train = shuffle(X_train)
                for iteration_i in range(int(len(X_train)/BS)):
                    x_batch = X_train[BS*iteration_i: BS*(iteration_i+1)]
                    autoencoder.train(x_batch)
                autoencoder.log_summary(X_train, EP)
                file_log.write("{} {} {}\n".format(
                    EP,
                    autoencoder.get_loss(X_train)["loss_total"],
                    autoencoder.get_loss(X_valid)["loss_total"]
                    ))
            file_log.close()
            # Evaluation
            try:
                file_eval = open('report/reco/eval/{} {}.txt'.format(autoencoder.model_name, dataset_fraction), 'w')
            except FileNotFoundError:
                os.makedirs("./report/reco/eval/")
                file_eval = open('report/reco/eval/{} {}.txt'.format(autoencoder.model_name, dataset_fraction), 'w')
            file_eval.write("fpr tpr threshold\n")
            fprs, tprs, thresholds = roc_curve(y_test, autoencoder.get_ms(X_test))
            for fpt, tpr, threshold in zip(fprs, tprs, thresholds):
                file_eval.write("{} {} {} \n".format(fpt, tpr, threshold))
            file_eval.close()
            
            file_auc.write("{} {} {}\n".format(MODEL_NAME, dataset_fraction, auc(fprs, tprs)))

            autoencoder.save()

    file_auc.close()

def evaluation():
    pass