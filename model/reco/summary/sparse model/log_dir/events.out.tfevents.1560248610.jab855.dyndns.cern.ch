       ŁK"	  Hŕ?×Abrain.Event:2ĐwaŽŃn     i|6_	,CżHŕ?×A"ÄÝ	
f
placeholder/x_inputPlaceholder*
shape:	ö*
dtype0*
_output_shapes
:	ö
g
truncated_normal/shapeConst*
valueB"ö
     *
dtype0*
_output_shapes
:
Z
truncated_normal/meanConst*
dtype0*
_output_shapes
: *
valueB
 *    
\
truncated_normal/stddevConst*
valueB
 *ÍĚĚ=*
dtype0*
_output_shapes
: 

 truncated_normal/TruncatedNormalTruncatedNormaltruncated_normal/shape*
dtype0* 
_output_shapes
:
ö*
seed2 *

seed *
T0

truncated_normal/mulMul truncated_normal/TruncatedNormaltruncated_normal/stddev*
T0* 
_output_shapes
:
ö
o
truncated_normalAddtruncated_normal/multruncated_normal/mean* 
_output_shapes
:
ö*
T0

Variable
VariableV2*
shape:
ö*
shared_name *
dtype0* 
_output_shapes
:
ö*
	container 
Ś
Variable/AssignAssignVariabletruncated_normal* 
_output_shapes
:
ö*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(
k
Variable/readIdentityVariable*
T0*
_class
loc:@Variable* 
_output_shapes
:
ö
c
truncated_normal_1/shapeConst*
valueB:*
dtype0*
_output_shapes
:
\
truncated_normal_1/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
^
truncated_normal_1/stddevConst*
valueB
 *ÍĚĚ=*
dtype0*
_output_shapes
: 

"truncated_normal_1/TruncatedNormalTruncatedNormaltruncated_normal_1/shape*
T0*
dtype0*
_output_shapes	
:*
seed2 *

seed 

truncated_normal_1/mulMul"truncated_normal_1/TruncatedNormaltruncated_normal_1/stddev*
T0*
_output_shapes	
:
p
truncated_normal_1Addtruncated_normal_1/multruncated_normal_1/mean*
_output_shapes	
:*
T0
x

Variable_1
VariableV2*
dtype0*
_output_shapes	
:*
	container *
shape:*
shared_name 
Š
Variable_1/AssignAssign
Variable_1truncated_normal_1*
use_locking(*
T0*
_class
loc:@Variable_1*
validate_shape(*
_output_shapes	
:
l
Variable_1/readIdentity
Variable_1*
_class
loc:@Variable_1*
_output_shapes	
:*
T0

MatMulMatMulplaceholder/x_inputVariable/read*
T0*
_output_shapes
:	*
transpose_a( *
transpose_b( 
M
AddAddMatMulVariable_1/read*
_output_shapes
:	*
T0

encoder1/Initializer/ConstConst*
valueB*ÍĚĚ=*
_class
loc:@encoder1*
dtype0*
_output_shapes	
:

encoder1
VariableV2*
dtype0*
_output_shapes	
:*
shared_name *
_class
loc:@encoder1*
	container *
shape:
Ť
encoder1/AssignAssignencoder1encoder1/Initializer/Const*
use_locking(*
T0*
_class
loc:@encoder1*
validate_shape(*
_output_shapes	
:
f
encoder1/readIdentityencoder1*
_output_shapes	
:*
T0*
_class
loc:@encoder1
N
	Maximum/xConst*
valueB
 *    *
dtype0*
_output_shapes
: 
L
MaximumMaximum	Maximum/xAdd*
T0*
_output_shapes
:	
N
	Minimum/xConst*
valueB
 *    *
dtype0*
_output_shapes
: 
L
MinimumMinimum	Minimum/xAdd*
T0*
_output_shapes
:	
L
mulMulencoder1/readMinimum*
T0*
_output_shapes
:	
D
add_1AddMaximummul*
T0*
_output_shapes
:	
i
truncated_normal_2/shapeConst*
dtype0*
_output_shapes
:*
valueB"   @   
\
truncated_normal_2/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
^
truncated_normal_2/stddevConst*
valueB
 *ÍĚĚ=*
dtype0*
_output_shapes
: 

"truncated_normal_2/TruncatedNormalTruncatedNormaltruncated_normal_2/shape*
_output_shapes
:	@*
seed2 *

seed *
T0*
dtype0

truncated_normal_2/mulMul"truncated_normal_2/TruncatedNormaltruncated_normal_2/stddev*
_output_shapes
:	@*
T0
t
truncated_normal_2Addtruncated_normal_2/multruncated_normal_2/mean*
T0*
_output_shapes
:	@


Variable_2
VariableV2*
shape:	@*
shared_name *
dtype0*
_output_shapes
:	@*
	container 
­
Variable_2/AssignAssign
Variable_2truncated_normal_2*
use_locking(*
T0*
_class
loc:@Variable_2*
validate_shape(*
_output_shapes
:	@
p
Variable_2/readIdentity
Variable_2*
T0*
_class
loc:@Variable_2*
_output_shapes
:	@
b
truncated_normal_3/shapeConst*
valueB:@*
dtype0*
_output_shapes
:
\
truncated_normal_3/meanConst*
_output_shapes
: *
valueB
 *    *
dtype0
^
truncated_normal_3/stddevConst*
valueB
 *ÍĚĚ=*
dtype0*
_output_shapes
: 

"truncated_normal_3/TruncatedNormalTruncatedNormaltruncated_normal_3/shape*
T0*
dtype0*
_output_shapes
:@*
seed2 *

seed 

truncated_normal_3/mulMul"truncated_normal_3/TruncatedNormaltruncated_normal_3/stddev*
T0*
_output_shapes
:@
o
truncated_normal_3Addtruncated_normal_3/multruncated_normal_3/mean*
T0*
_output_shapes
:@
v

Variable_3
VariableV2*
shape:@*
shared_name *
dtype0*
_output_shapes
:@*
	container 
¨
Variable_3/AssignAssign
Variable_3truncated_normal_3*
_class
loc:@Variable_3*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0
k
Variable_3/readIdentity
Variable_3*
_output_shapes
:@*
T0*
_class
loc:@Variable_3
y
MatMul_1MatMuladd_1Variable_2/read*
_output_shapes

:@*
transpose_a( *
transpose_b( *
T0
P
Add_2AddMatMul_1Variable_3/read*
T0*
_output_shapes

:@

encoder2/Initializer/ConstConst*
_output_shapes
:@*
valueB@*ÍĚĚ=*
_class
loc:@encoder2*
dtype0

encoder2
VariableV2*
dtype0*
_output_shapes
:@*
shared_name *
_class
loc:@encoder2*
	container *
shape:@
Ş
encoder2/AssignAssignencoder2encoder2/Initializer/Const*
T0*
_class
loc:@encoder2*
validate_shape(*
_output_shapes
:@*
use_locking(
e
encoder2/readIdentityencoder2*
T0*
_class
loc:@encoder2*
_output_shapes
:@
P
Maximum_1/xConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Q
	Maximum_1MaximumMaximum_1/xAdd_2*
T0*
_output_shapes

:@
P
Minimum_1/xConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Q
	Minimum_1MinimumMinimum_1/xAdd_2*
T0*
_output_shapes

:@
O
mul_1Mulencoder2/read	Minimum_1*
T0*
_output_shapes

:@
G
add_3Add	Maximum_1mul_1*
T0*
_output_shapes

:@
i
truncated_normal_4/shapeConst*
valueB"@      *
dtype0*
_output_shapes
:
\
truncated_normal_4/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
^
truncated_normal_4/stddevConst*
valueB
 *ÍĚĚ=*
dtype0*
_output_shapes
: 

"truncated_normal_4/TruncatedNormalTruncatedNormaltruncated_normal_4/shape*
T0*
dtype0*
_output_shapes

:@*
seed2 *

seed 

truncated_normal_4/mulMul"truncated_normal_4/TruncatedNormaltruncated_normal_4/stddev*
_output_shapes

:@*
T0
s
truncated_normal_4Addtruncated_normal_4/multruncated_normal_4/mean*
T0*
_output_shapes

:@
~

Variable_4
VariableV2*
dtype0*
_output_shapes

:@*
	container *
shape
:@*
shared_name 
Ź
Variable_4/AssignAssign
Variable_4truncated_normal_4*
T0*
_class
loc:@Variable_4*
validate_shape(*
_output_shapes

:@*
use_locking(
o
Variable_4/readIdentity
Variable_4*
T0*
_class
loc:@Variable_4*
_output_shapes

:@
b
truncated_normal_5/shapeConst*
_output_shapes
:*
valueB:*
dtype0
\
truncated_normal_5/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
^
truncated_normal_5/stddevConst*
valueB
 *ÍĚĚ=*
dtype0*
_output_shapes
: 

"truncated_normal_5/TruncatedNormalTruncatedNormaltruncated_normal_5/shape*
_output_shapes
:*
seed2 *

seed *
T0*
dtype0

truncated_normal_5/mulMul"truncated_normal_5/TruncatedNormaltruncated_normal_5/stddev*
_output_shapes
:*
T0
o
truncated_normal_5Addtruncated_normal_5/multruncated_normal_5/mean*
T0*
_output_shapes
:
v

Variable_5
VariableV2*
shape:*
shared_name *
dtype0*
_output_shapes
:*
	container 
¨
Variable_5/AssignAssign
Variable_5truncated_normal_5*
_class
loc:@Variable_5*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
k
Variable_5/readIdentity
Variable_5*
T0*
_class
loc:@Variable_5*
_output_shapes
:
y
MatMul_2MatMuladd_3Variable_4/read*
_output_shapes

:*
transpose_a( *
transpose_b( *
T0
P
Add_4AddMatMul_2Variable_5/read*
T0*
_output_shapes

:

encoder3/Initializer/ConstConst*
valueB*ÍĚĚ=*
_class
loc:@encoder3*
dtype0*
_output_shapes
:

encoder3
VariableV2*
shape:*
dtype0*
_output_shapes
:*
shared_name *
_class
loc:@encoder3*
	container 
Ş
encoder3/AssignAssignencoder3encoder3/Initializer/Const*
use_locking(*
T0*
_class
loc:@encoder3*
validate_shape(*
_output_shapes
:
e
encoder3/readIdentityencoder3*
T0*
_class
loc:@encoder3*
_output_shapes
:
P
Maximum_2/xConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Q
	Maximum_2MaximumMaximum_2/xAdd_4*
_output_shapes

:*
T0
P
Minimum_2/xConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Q
	Minimum_2MinimumMinimum_2/xAdd_4*
_output_shapes

:*
T0
O
mul_2Mulencoder3/read	Minimum_2*
T0*
_output_shapes

:
G
add_5Add	Maximum_2mul_2*
_output_shapes

:*
T0
i
truncated_normal_6/shapeConst*
valueB"   @   *
dtype0*
_output_shapes
:
\
truncated_normal_6/meanConst*
_output_shapes
: *
valueB
 *    *
dtype0
^
truncated_normal_6/stddevConst*
valueB
 *ÍĚĚ=*
dtype0*
_output_shapes
: 

"truncated_normal_6/TruncatedNormalTruncatedNormaltruncated_normal_6/shape*
dtype0*
_output_shapes

:@*
seed2 *

seed *
T0

truncated_normal_6/mulMul"truncated_normal_6/TruncatedNormaltruncated_normal_6/stddev*
_output_shapes

:@*
T0
s
truncated_normal_6Addtruncated_normal_6/multruncated_normal_6/mean*
_output_shapes

:@*
T0
~

Variable_6
VariableV2*
shared_name *
dtype0*
_output_shapes

:@*
	container *
shape
:@
Ź
Variable_6/AssignAssign
Variable_6truncated_normal_6*
_output_shapes

:@*
use_locking(*
T0*
_class
loc:@Variable_6*
validate_shape(
o
Variable_6/readIdentity
Variable_6*
T0*
_class
loc:@Variable_6*
_output_shapes

:@
b
truncated_normal_7/shapeConst*
valueB:@*
dtype0*
_output_shapes
:
\
truncated_normal_7/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
^
truncated_normal_7/stddevConst*
valueB
 *ÍĚĚ=*
dtype0*
_output_shapes
: 

"truncated_normal_7/TruncatedNormalTruncatedNormaltruncated_normal_7/shape*
T0*
dtype0*
_output_shapes
:@*
seed2 *

seed 

truncated_normal_7/mulMul"truncated_normal_7/TruncatedNormaltruncated_normal_7/stddev*
T0*
_output_shapes
:@
o
truncated_normal_7Addtruncated_normal_7/multruncated_normal_7/mean*
T0*
_output_shapes
:@
v

Variable_7
VariableV2*
_output_shapes
:@*
	container *
shape:@*
shared_name *
dtype0
¨
Variable_7/AssignAssign
Variable_7truncated_normal_7*
use_locking(*
T0*
_class
loc:@Variable_7*
validate_shape(*
_output_shapes
:@
k
Variable_7/readIdentity
Variable_7*
_class
loc:@Variable_7*
_output_shapes
:@*
T0
y
MatMul_3MatMuladd_5Variable_6/read*
T0*
_output_shapes

:@*
transpose_a( *
transpose_b( 
P
Add_6AddMatMul_3Variable_7/read*
_output_shapes

:@*
T0

decoder1/Initializer/ConstConst*
_output_shapes
:@*
valueB@*ÍĚĚ=*
_class
loc:@decoder1*
dtype0

decoder1
VariableV2*
dtype0*
_output_shapes
:@*
shared_name *
_class
loc:@decoder1*
	container *
shape:@
Ş
decoder1/AssignAssigndecoder1decoder1/Initializer/Const*
_output_shapes
:@*
use_locking(*
T0*
_class
loc:@decoder1*
validate_shape(
e
decoder1/readIdentitydecoder1*
_class
loc:@decoder1*
_output_shapes
:@*
T0
P
Maximum_3/xConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Q
	Maximum_3MaximumMaximum_3/xAdd_6*
T0*
_output_shapes

:@
P
Minimum_3/xConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Q
	Minimum_3MinimumMinimum_3/xAdd_6*
_output_shapes

:@*
T0
O
mul_3Muldecoder1/read	Minimum_3*
T0*
_output_shapes

:@
G
add_7Add	Maximum_3mul_3*
T0*
_output_shapes

:@
i
truncated_normal_8/shapeConst*
valueB"@      *
dtype0*
_output_shapes
:
\
truncated_normal_8/meanConst*
dtype0*
_output_shapes
: *
valueB
 *    
^
truncated_normal_8/stddevConst*
valueB
 *ÍĚĚ=*
dtype0*
_output_shapes
: 

"truncated_normal_8/TruncatedNormalTruncatedNormaltruncated_normal_8/shape*

seed *
T0*
dtype0*
_output_shapes
:	@*
seed2 

truncated_normal_8/mulMul"truncated_normal_8/TruncatedNormaltruncated_normal_8/stddev*
T0*
_output_shapes
:	@
t
truncated_normal_8Addtruncated_normal_8/multruncated_normal_8/mean*
_output_shapes
:	@*
T0


Variable_8
VariableV2*
shape:	@*
shared_name *
dtype0*
_output_shapes
:	@*
	container 
­
Variable_8/AssignAssign
Variable_8truncated_normal_8*
T0*
_class
loc:@Variable_8*
validate_shape(*
_output_shapes
:	@*
use_locking(
p
Variable_8/readIdentity
Variable_8*
_output_shapes
:	@*
T0*
_class
loc:@Variable_8
c
truncated_normal_9/shapeConst*
dtype0*
_output_shapes
:*
valueB:
\
truncated_normal_9/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
^
truncated_normal_9/stddevConst*
valueB
 *ÍĚĚ=*
dtype0*
_output_shapes
: 

"truncated_normal_9/TruncatedNormalTruncatedNormaltruncated_normal_9/shape*
T0*
dtype0*
_output_shapes	
:*
seed2 *

seed 

truncated_normal_9/mulMul"truncated_normal_9/TruncatedNormaltruncated_normal_9/stddev*
_output_shapes	
:*
T0
p
truncated_normal_9Addtruncated_normal_9/multruncated_normal_9/mean*
T0*
_output_shapes	
:
x

Variable_9
VariableV2*
dtype0*
_output_shapes	
:*
	container *
shape:*
shared_name 
Š
Variable_9/AssignAssign
Variable_9truncated_normal_9*
_output_shapes	
:*
use_locking(*
T0*
_class
loc:@Variable_9*
validate_shape(
l
Variable_9/readIdentity
Variable_9*
T0*
_class
loc:@Variable_9*
_output_shapes	
:
z
MatMul_4MatMuladd_7Variable_8/read*
_output_shapes
:	*
transpose_a( *
transpose_b( *
T0
Q
Add_8AddMatMul_4Variable_9/read*
T0*
_output_shapes
:	

decoder2/Initializer/ConstConst*
_output_shapes	
:*
valueB*ÍĚĚ=*
_class
loc:@decoder2*
dtype0

decoder2
VariableV2*
dtype0*
_output_shapes	
:*
shared_name *
_class
loc:@decoder2*
	container *
shape:
Ť
decoder2/AssignAssigndecoder2decoder2/Initializer/Const*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*
_class
loc:@decoder2
f
decoder2/readIdentitydecoder2*
T0*
_class
loc:@decoder2*
_output_shapes	
:
P
Maximum_4/xConst*
valueB
 *    *
dtype0*
_output_shapes
: 
R
	Maximum_4MaximumMaximum_4/xAdd_8*
T0*
_output_shapes
:	
P
Minimum_4/xConst*
valueB
 *    *
dtype0*
_output_shapes
: 
R
	Minimum_4MinimumMinimum_4/xAdd_8*
_output_shapes
:	*
T0
P
mul_4Muldecoder2/read	Minimum_4*
T0*
_output_shapes
:	
H
add_9Add	Maximum_4mul_4*
_output_shapes
:	*
T0
j
truncated_normal_10/shapeConst*
valueB"   ö
  *
dtype0*
_output_shapes
:
]
truncated_normal_10/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
_
truncated_normal_10/stddevConst*
valueB
 *ÍĚĚ=*
dtype0*
_output_shapes
: 
˘
#truncated_normal_10/TruncatedNormalTruncatedNormaltruncated_normal_10/shape*

seed *
T0*
dtype0* 
_output_shapes
:
ö*
seed2 

truncated_normal_10/mulMul#truncated_normal_10/TruncatedNormaltruncated_normal_10/stddev*
T0* 
_output_shapes
:
ö
x
truncated_normal_10Addtruncated_normal_10/multruncated_normal_10/mean* 
_output_shapes
:
ö*
T0

Variable_10
VariableV2*
dtype0* 
_output_shapes
:
ö*
	container *
shape:
ö*
shared_name 
˛
Variable_10/AssignAssignVariable_10truncated_normal_10*
T0*
_class
loc:@Variable_10*
validate_shape(* 
_output_shapes
:
ö*
use_locking(
t
Variable_10/readIdentityVariable_10*
T0*
_class
loc:@Variable_10* 
_output_shapes
:
ö
d
truncated_normal_11/shapeConst*
valueB:ö*
dtype0*
_output_shapes
:
]
truncated_normal_11/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
_
truncated_normal_11/stddevConst*
_output_shapes
: *
valueB
 *ÍĚĚ=*
dtype0

#truncated_normal_11/TruncatedNormalTruncatedNormaltruncated_normal_11/shape*
T0*
dtype0*
_output_shapes	
:ö*
seed2 *

seed 

truncated_normal_11/mulMul#truncated_normal_11/TruncatedNormaltruncated_normal_11/stddev*
_output_shapes	
:ö*
T0
s
truncated_normal_11Addtruncated_normal_11/multruncated_normal_11/mean*
_output_shapes	
:ö*
T0
y
Variable_11
VariableV2*
shared_name *
dtype0*
_output_shapes	
:ö*
	container *
shape:ö
­
Variable_11/AssignAssignVariable_11truncated_normal_11*
use_locking(*
T0*
_class
loc:@Variable_11*
validate_shape(*
_output_shapes	
:ö
o
Variable_11/readIdentityVariable_11*
_output_shapes	
:ö*
T0*
_class
loc:@Variable_11
{
MatMul_5MatMuladd_9Variable_10/read*
_output_shapes
:	ö*
transpose_a( *
transpose_b( *
T0
S
Add_10AddMatMul_5Variable_11/read*
T0*
_output_shapes
:	ö

decoder3/Initializer/ConstConst*
valueBö*ÍĚĚ=*
_class
loc:@decoder3*
dtype0*
_output_shapes	
:ö

decoder3
VariableV2*
_class
loc:@decoder3*
	container *
shape:ö*
dtype0*
_output_shapes	
:ö*
shared_name 
Ť
decoder3/AssignAssigndecoder3decoder3/Initializer/Const*
use_locking(*
T0*
_class
loc:@decoder3*
validate_shape(*
_output_shapes	
:ö
f
decoder3/readIdentitydecoder3*
T0*
_class
loc:@decoder3*
_output_shapes	
:ö
P
Maximum_5/xConst*
valueB
 *    *
dtype0*
_output_shapes
: 
S
	Maximum_5MaximumMaximum_5/xAdd_10*
_output_shapes
:	ö*
T0
P
Minimum_5/xConst*
dtype0*
_output_shapes
: *
valueB
 *    
S
	Minimum_5MinimumMinimum_5/xAdd_10*
T0*
_output_shapes
:	ö
P
mul_5Muldecoder3/read	Minimum_5*
_output_shapes
:	ö*
T0
I
add_11Add	Maximum_5mul_5*
T0*
_output_shapes
:	ö
~
"Loss/mean_square/SquaredDifferenceSquaredDifferenceadd_11placeholder/x_input*
T0*
_output_shapes
:	ö
g
Loss/mean_square/ConstConst*
_output_shapes
:*
valueB"       *
dtype0

Loss/mean_square/MeanMean"Loss/mean_square/SquaredDifferenceLoss/mean_square/Const*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0

&Loss/mean_square/Loss_mean_square/tagsConst*2
value)B' B!Loss/mean_square/Loss_mean_square*
dtype0*
_output_shapes
: 

!Loss/mean_square/Loss_mean_squareScalarSummary&Loss/mean_square/Loss_mean_square/tagsLoss/mean_square/Mean*
T0*
_output_shapes
: 
[
Loss/l1_regularization/AbsAbsVariable/read*
T0* 
_output_shapes
:
ö
m
Loss/l1_regularization/ConstConst*
valueB"       *
dtype0*
_output_shapes
:

Loss/l1_regularization/SumSumLoss/l1_regularization/AbsLoss/l1_regularization/Const*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
^
Loss/l1_regularization/Abs_1AbsVariable_2/read*
T0*
_output_shapes
:	@
o
Loss/l1_regularization/Const_1Const*
valueB"       *
dtype0*
_output_shapes
:

Loss/l1_regularization/Sum_1SumLoss/l1_regularization/Abs_1Loss/l1_regularization/Const_1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
]
Loss/l1_regularization/Abs_2AbsVariable_4/read*
_output_shapes

:@*
T0
o
Loss/l1_regularization/Const_2Const*
_output_shapes
:*
valueB"       *
dtype0

Loss/l1_regularization/Sum_2SumLoss/l1_regularization/Abs_2Loss/l1_regularization/Const_2*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
]
Loss/l1_regularization/Abs_3AbsVariable_6/read*
_output_shapes

:@*
T0
o
Loss/l1_regularization/Const_3Const*
valueB"       *
dtype0*
_output_shapes
:

Loss/l1_regularization/Sum_3SumLoss/l1_regularization/Abs_3Loss/l1_regularization/Const_3*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
^
Loss/l1_regularization/Abs_4AbsVariable_8/read*
_output_shapes
:	@*
T0
o
Loss/l1_regularization/Const_4Const*
valueB"       *
dtype0*
_output_shapes
:

Loss/l1_regularization/Sum_4SumLoss/l1_regularization/Abs_4Loss/l1_regularization/Const_4*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
`
Loss/l1_regularization/Abs_5AbsVariable_10/read* 
_output_shapes
:
ö*
T0
o
Loss/l1_regularization/Const_5Const*
valueB"       *
dtype0*
_output_shapes
:

Loss/l1_regularization/Sum_5SumLoss/l1_regularization/Abs_5Loss/l1_regularization/Const_5*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0

"Loss/l1_regularization/Rank/packedPackLoss/l1_regularization/SumLoss/l1_regularization/Sum_1Loss/l1_regularization/Sum_2Loss/l1_regularization/Sum_3Loss/l1_regularization/Sum_4Loss/l1_regularization/Sum_5*
_output_shapes
:*
T0*

axis *
N
]
Loss/l1_regularization/RankConst*
dtype0*
_output_shapes
: *
value	B :
d
"Loss/l1_regularization/range/startConst*
_output_shapes
: *
value	B : *
dtype0
d
"Loss/l1_regularization/range/deltaConst*
dtype0*
_output_shapes
: *
value	B :
˛
Loss/l1_regularization/rangeRange"Loss/l1_regularization/range/startLoss/l1_regularization/Rank"Loss/l1_regularization/range/delta*
_output_shapes
:*

Tidx0

"Loss/l1_regularization/Sum_6/inputPackLoss/l1_regularization/SumLoss/l1_regularization/Sum_1Loss/l1_regularization/Sum_2Loss/l1_regularization/Sum_3Loss/l1_regularization/Sum_4Loss/l1_regularization/Sum_5*
T0*

axis *
N*
_output_shapes
:
Ł
Loss/l1_regularization/Sum_6Sum"Loss/l1_regularization/Sum_6/inputLoss/l1_regularization/range*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
a
Loss/l1_regularization/mul/xConst*
valueB
 *ˇŃ8*
dtype0*
_output_shapes
: 
~
Loss/l1_regularization/mulMulLoss/l1_regularization/mul/xLoss/l1_regularization/Sum_6*
_output_shapes
: *
T0

&Loss/l1_regularization/Loss_class/tagsConst*2
value)B' B!Loss/l1_regularization/Loss_class*
dtype0*
_output_shapes
: 

!Loss/l1_regularization/Loss_classScalarSummary&Loss/l1_regularization/Loss_class/tagsLoss/l1_regularization/mul*
T0*
_output_shapes
: 
j
Loss/total_lossAddLoss/mean_square/MeanLoss/l1_regularization/mul*
T0*
_output_shapes
: 
h
Loss/Total_loss_1/tagsConst*
_output_shapes
: *"
valueB BLoss/Total_loss_1*
dtype0
l
Loss/Total_loss_1ScalarSummaryLoss/Total_loss_1/tagsLoss/total_loss*
T0*
_output_shapes
: 
\
Optimizer/gradients/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
b
Optimizer/gradients/grad_ys_0Const*
valueB
 *  ?*
dtype0*
_output_shapes
: 

Optimizer/gradients/FillFillOptimizer/gradients/ShapeOptimizer/gradients/grad_ys_0*

index_type0*
_output_shapes
: *
T0
\
9Optimizer/gradients/Loss/total_loss_grad/tuple/group_depsNoOp^Optimizer/gradients/Fill
ń
AOptimizer/gradients/Loss/total_loss_grad/tuple/control_dependencyIdentityOptimizer/gradients/Fill:^Optimizer/gradients/Loss/total_loss_grad/tuple/group_deps*
_output_shapes
: *
T0*+
_class!
loc:@Optimizer/gradients/Fill
ó
COptimizer/gradients/Loss/total_loss_grad/tuple/control_dependency_1IdentityOptimizer/gradients/Fill:^Optimizer/gradients/Loss/total_loss_grad/tuple/group_deps*+
_class!
loc:@Optimizer/gradients/Fill*
_output_shapes
: *
T0

<Optimizer/gradients/Loss/mean_square/Mean_grad/Reshape/shapeConst*
valueB"      *
dtype0*
_output_shapes
:
ů
6Optimizer/gradients/Loss/mean_square/Mean_grad/ReshapeReshapeAOptimizer/gradients/Loss/total_loss_grad/tuple/control_dependency<Optimizer/gradients/Loss/mean_square/Mean_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes

:

4Optimizer/gradients/Loss/mean_square/Mean_grad/ConstConst*
valueB"   ö
  *
dtype0*
_output_shapes
:
ĺ
3Optimizer/gradients/Loss/mean_square/Mean_grad/TileTile6Optimizer/gradients/Loss/mean_square/Mean_grad/Reshape4Optimizer/gradients/Loss/mean_square/Mean_grad/Const*
_output_shapes
:	ö*

Tmultiples0*
T0
{
6Optimizer/gradients/Loss/mean_square/Mean_grad/Const_1Const*
valueB
 * G*
dtype0*
_output_shapes
: 
Ř
6Optimizer/gradients/Loss/mean_square/Mean_grad/truedivRealDiv3Optimizer/gradients/Loss/mean_square/Mean_grad/Tile6Optimizer/gradients/Loss/mean_square/Mean_grad/Const_1*
_output_shapes
:	ö*
T0
Â
7Optimizer/gradients/Loss/l1_regularization/mul_grad/MulMulCOptimizer/gradients/Loss/total_loss_grad/tuple/control_dependency_1Loss/l1_regularization/Sum_6*
T0*
_output_shapes
: 
Ä
9Optimizer/gradients/Loss/l1_regularization/mul_grad/Mul_1MulCOptimizer/gradients/Loss/total_loss_grad/tuple/control_dependency_1Loss/l1_regularization/mul/x*
T0*
_output_shapes
: 
Â
DOptimizer/gradients/Loss/l1_regularization/mul_grad/tuple/group_depsNoOp8^Optimizer/gradients/Loss/l1_regularization/mul_grad/Mul:^Optimizer/gradients/Loss/l1_regularization/mul_grad/Mul_1
Ĺ
LOptimizer/gradients/Loss/l1_regularization/mul_grad/tuple/control_dependencyIdentity7Optimizer/gradients/Loss/l1_regularization/mul_grad/MulE^Optimizer/gradients/Loss/l1_regularization/mul_grad/tuple/group_deps*
T0*J
_class@
><loc:@Optimizer/gradients/Loss/l1_regularization/mul_grad/Mul*
_output_shapes
: 
Ë
NOptimizer/gradients/Loss/l1_regularization/mul_grad/tuple/control_dependency_1Identity9Optimizer/gradients/Loss/l1_regularization/mul_grad/Mul_1E^Optimizer/gradients/Loss/l1_regularization/mul_grad/tuple/group_deps*
_output_shapes
: *
T0*L
_classB
@>loc:@Optimizer/gradients/Loss/l1_regularization/mul_grad/Mul_1

AOptimizer/gradients/Loss/mean_square/SquaredDifference_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"   ö
  

COptimizer/gradients/Loss/mean_square/SquaredDifference_grad/Shape_1Const*
valueB"   ö
  *
dtype0*
_output_shapes
:
Ż
QOptimizer/gradients/Loss/mean_square/SquaredDifference_grad/BroadcastGradientArgsBroadcastGradientArgsAOptimizer/gradients/Loss/mean_square/SquaredDifference_grad/ShapeCOptimizer/gradients/Loss/mean_square/SquaredDifference_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
Ŕ
BOptimizer/gradients/Loss/mean_square/SquaredDifference_grad/scalarConst7^Optimizer/gradients/Loss/mean_square/Mean_grad/truediv*
_output_shapes
: *
valueB
 *   @*
dtype0
ě
?Optimizer/gradients/Loss/mean_square/SquaredDifference_grad/MulMulBOptimizer/gradients/Loss/mean_square/SquaredDifference_grad/scalar6Optimizer/gradients/Loss/mean_square/Mean_grad/truediv*
T0*
_output_shapes
:	ö
Ć
?Optimizer/gradients/Loss/mean_square/SquaredDifference_grad/subSubadd_11placeholder/x_input7^Optimizer/gradients/Loss/mean_square/Mean_grad/truediv*
T0*
_output_shapes
:	ö
ô
AOptimizer/gradients/Loss/mean_square/SquaredDifference_grad/mul_1Mul?Optimizer/gradients/Loss/mean_square/SquaredDifference_grad/Mul?Optimizer/gradients/Loss/mean_square/SquaredDifference_grad/sub*
T0*
_output_shapes
:	ö
Ł
?Optimizer/gradients/Loss/mean_square/SquaredDifference_grad/SumSumAOptimizer/gradients/Loss/mean_square/SquaredDifference_grad/mul_1QOptimizer/gradients/Loss/mean_square/SquaredDifference_grad/BroadcastGradientArgs*
T0*
_output_shapes
:	ö*
	keep_dims( *

Tidx0

COptimizer/gradients/Loss/mean_square/SquaredDifference_grad/ReshapeReshape?Optimizer/gradients/Loss/mean_square/SquaredDifference_grad/SumAOptimizer/gradients/Loss/mean_square/SquaredDifference_grad/Shape*
T0*
Tshape0*
_output_shapes
:	ö
§
AOptimizer/gradients/Loss/mean_square/SquaredDifference_grad/Sum_1SumAOptimizer/gradients/Loss/mean_square/SquaredDifference_grad/mul_1SOptimizer/gradients/Loss/mean_square/SquaredDifference_grad/BroadcastGradientArgs:1*
_output_shapes
:	ö*
	keep_dims( *

Tidx0*
T0

EOptimizer/gradients/Loss/mean_square/SquaredDifference_grad/Reshape_1ReshapeAOptimizer/gradients/Loss/mean_square/SquaredDifference_grad/Sum_1COptimizer/gradients/Loss/mean_square/SquaredDifference_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:	ö
ˇ
?Optimizer/gradients/Loss/mean_square/SquaredDifference_grad/NegNegEOptimizer/gradients/Loss/mean_square/SquaredDifference_grad/Reshape_1*
T0*
_output_shapes
:	ö
Ü
LOptimizer/gradients/Loss/mean_square/SquaredDifference_grad/tuple/group_depsNoOp@^Optimizer/gradients/Loss/mean_square/SquaredDifference_grad/NegD^Optimizer/gradients/Loss/mean_square/SquaredDifference_grad/Reshape
ö
TOptimizer/gradients/Loss/mean_square/SquaredDifference_grad/tuple/control_dependencyIdentityCOptimizer/gradients/Loss/mean_square/SquaredDifference_grad/ReshapeM^Optimizer/gradients/Loss/mean_square/SquaredDifference_grad/tuple/group_deps*
T0*V
_classL
JHloc:@Optimizer/gradients/Loss/mean_square/SquaredDifference_grad/Reshape*
_output_shapes
:	ö
đ
VOptimizer/gradients/Loss/mean_square/SquaredDifference_grad/tuple/control_dependency_1Identity?Optimizer/gradients/Loss/mean_square/SquaredDifference_grad/NegM^Optimizer/gradients/Loss/mean_square/SquaredDifference_grad/tuple/group_deps*
T0*R
_classH
FDloc:@Optimizer/gradients/Loss/mean_square/SquaredDifference_grad/Neg*
_output_shapes
:	ö

COptimizer/gradients/Loss/l1_regularization/Sum_6_grad/Reshape/shapeConst*
_output_shapes
:*
valueB:*
dtype0

=Optimizer/gradients/Loss/l1_regularization/Sum_6_grad/ReshapeReshapeNOptimizer/gradients/Loss/l1_regularization/mul_grad/tuple/control_dependency_1COptimizer/gradients/Loss/l1_regularization/Sum_6_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
:

;Optimizer/gradients/Loss/l1_regularization/Sum_6_grad/ConstConst*
valueB:*
dtype0*
_output_shapes
:
ő
:Optimizer/gradients/Loss/l1_regularization/Sum_6_grad/TileTile=Optimizer/gradients/Loss/l1_regularization/Sum_6_grad/Reshape;Optimizer/gradients/Loss/l1_regularization/Sum_6_grad/Const*
_output_shapes
:*

Tmultiples0*
T0

0Optimizer/gradients/add_11_grad/tuple/group_depsNoOpU^Optimizer/gradients/Loss/mean_square/SquaredDifference_grad/tuple/control_dependency
Ď
8Optimizer/gradients/add_11_grad/tuple/control_dependencyIdentityTOptimizer/gradients/Loss/mean_square/SquaredDifference_grad/tuple/control_dependency1^Optimizer/gradients/add_11_grad/tuple/group_deps*
_output_shapes
:	ö*
T0*V
_classL
JHloc:@Optimizer/gradients/Loss/mean_square/SquaredDifference_grad/Reshape
Ń
:Optimizer/gradients/add_11_grad/tuple/control_dependency_1IdentityTOptimizer/gradients/Loss/mean_square/SquaredDifference_grad/tuple/control_dependency1^Optimizer/gradients/add_11_grad/tuple/group_deps*
T0*V
_classL
JHloc:@Optimizer/gradients/Loss/mean_square/SquaredDifference_grad/Reshape*
_output_shapes
:	ö
Ë
COptimizer/gradients/Loss/l1_regularization/Sum_6/input_grad/unstackUnpack:Optimizer/gradients/Loss/l1_regularization/Sum_6_grad/Tile*	
num*
T0*

axis * 
_output_shapes
: : : : : : 

LOptimizer/gradients/Loss/l1_regularization/Sum_6/input_grad/tuple/group_depsNoOpD^Optimizer/gradients/Loss/l1_regularization/Sum_6/input_grad/unstack
í
TOptimizer/gradients/Loss/l1_regularization/Sum_6/input_grad/tuple/control_dependencyIdentityCOptimizer/gradients/Loss/l1_regularization/Sum_6/input_grad/unstackM^Optimizer/gradients/Loss/l1_regularization/Sum_6/input_grad/tuple/group_deps*
T0*V
_classL
JHloc:@Optimizer/gradients/Loss/l1_regularization/Sum_6/input_grad/unstack*
_output_shapes
: 
ń
VOptimizer/gradients/Loss/l1_regularization/Sum_6/input_grad/tuple/control_dependency_1IdentityEOptimizer/gradients/Loss/l1_regularization/Sum_6/input_grad/unstack:1M^Optimizer/gradients/Loss/l1_regularization/Sum_6/input_grad/tuple/group_deps*
T0*V
_classL
JHloc:@Optimizer/gradients/Loss/l1_regularization/Sum_6/input_grad/unstack*
_output_shapes
: 
ń
VOptimizer/gradients/Loss/l1_regularization/Sum_6/input_grad/tuple/control_dependency_2IdentityEOptimizer/gradients/Loss/l1_regularization/Sum_6/input_grad/unstack:2M^Optimizer/gradients/Loss/l1_regularization/Sum_6/input_grad/tuple/group_deps*
_output_shapes
: *
T0*V
_classL
JHloc:@Optimizer/gradients/Loss/l1_regularization/Sum_6/input_grad/unstack
ń
VOptimizer/gradients/Loss/l1_regularization/Sum_6/input_grad/tuple/control_dependency_3IdentityEOptimizer/gradients/Loss/l1_regularization/Sum_6/input_grad/unstack:3M^Optimizer/gradients/Loss/l1_regularization/Sum_6/input_grad/tuple/group_deps*
_output_shapes
: *
T0*V
_classL
JHloc:@Optimizer/gradients/Loss/l1_regularization/Sum_6/input_grad/unstack
ń
VOptimizer/gradients/Loss/l1_regularization/Sum_6/input_grad/tuple/control_dependency_4IdentityEOptimizer/gradients/Loss/l1_regularization/Sum_6/input_grad/unstack:4M^Optimizer/gradients/Loss/l1_regularization/Sum_6/input_grad/tuple/group_deps*
T0*V
_classL
JHloc:@Optimizer/gradients/Loss/l1_regularization/Sum_6/input_grad/unstack*
_output_shapes
: 
ń
VOptimizer/gradients/Loss/l1_regularization/Sum_6/input_grad/tuple/control_dependency_5IdentityEOptimizer/gradients/Loss/l1_regularization/Sum_6/input_grad/unstack:5M^Optimizer/gradients/Loss/l1_regularization/Sum_6/input_grad/tuple/group_deps*
T0*V
_classL
JHloc:@Optimizer/gradients/Loss/l1_regularization/Sum_6/input_grad/unstack*
_output_shapes
: 
k
(Optimizer/gradients/Maximum_5_grad/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
{
*Optimizer/gradients/Maximum_5_grad/Shape_1Const*
valueB"   ö
  *
dtype0*
_output_shapes
:
{
*Optimizer/gradients/Maximum_5_grad/Shape_2Const*
valueB"   ö
  *
dtype0*
_output_shapes
:
s
.Optimizer/gradients/Maximum_5_grad/zeros/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    
Č
(Optimizer/gradients/Maximum_5_grad/zerosFill*Optimizer/gradients/Maximum_5_grad/Shape_2.Optimizer/gradients/Maximum_5_grad/zeros/Const*
_output_shapes
:	ö*
T0*

index_type0
~
/Optimizer/gradients/Maximum_5_grad/GreaterEqualGreaterEqualMaximum_5/xAdd_10*
T0*
_output_shapes
:	ö
ä
8Optimizer/gradients/Maximum_5_grad/BroadcastGradientArgsBroadcastGradientArgs(Optimizer/gradients/Maximum_5_grad/Shape*Optimizer/gradients/Maximum_5_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
ň
)Optimizer/gradients/Maximum_5_grad/SelectSelect/Optimizer/gradients/Maximum_5_grad/GreaterEqual8Optimizer/gradients/add_11_grad/tuple/control_dependency(Optimizer/gradients/Maximum_5_grad/zeros*
T0*
_output_shapes
:	ö
ô
+Optimizer/gradients/Maximum_5_grad/Select_1Select/Optimizer/gradients/Maximum_5_grad/GreaterEqual(Optimizer/gradients/Maximum_5_grad/zeros8Optimizer/gradients/add_11_grad/tuple/control_dependency*
_output_shapes
:	ö*
T0
Đ
&Optimizer/gradients/Maximum_5_grad/SumSum)Optimizer/gradients/Maximum_5_grad/Select8Optimizer/gradients/Maximum_5_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
ś
*Optimizer/gradients/Maximum_5_grad/ReshapeReshape&Optimizer/gradients/Maximum_5_grad/Sum(Optimizer/gradients/Maximum_5_grad/Shape*
T0*
Tshape0*
_output_shapes
: 
ß
(Optimizer/gradients/Maximum_5_grad/Sum_1Sum+Optimizer/gradients/Maximum_5_grad/Select_1:Optimizer/gradients/Maximum_5_grad/BroadcastGradientArgs:1*
_output_shapes
:	ö*
	keep_dims( *

Tidx0*
T0
Ĺ
,Optimizer/gradients/Maximum_5_grad/Reshape_1Reshape(Optimizer/gradients/Maximum_5_grad/Sum_1*Optimizer/gradients/Maximum_5_grad/Shape_1*
Tshape0*
_output_shapes
:	ö*
T0

3Optimizer/gradients/Maximum_5_grad/tuple/group_depsNoOp+^Optimizer/gradients/Maximum_5_grad/Reshape-^Optimizer/gradients/Maximum_5_grad/Reshape_1

;Optimizer/gradients/Maximum_5_grad/tuple/control_dependencyIdentity*Optimizer/gradients/Maximum_5_grad/Reshape4^Optimizer/gradients/Maximum_5_grad/tuple/group_deps*
T0*=
_class3
1/loc:@Optimizer/gradients/Maximum_5_grad/Reshape*
_output_shapes
: 

=Optimizer/gradients/Maximum_5_grad/tuple/control_dependency_1Identity,Optimizer/gradients/Maximum_5_grad/Reshape_14^Optimizer/gradients/Maximum_5_grad/tuple/group_deps*
T0*?
_class5
31loc:@Optimizer/gradients/Maximum_5_grad/Reshape_1*
_output_shapes
:	ö
o
$Optimizer/gradients/mul_5_grad/ShapeConst*
valueB:ö*
dtype0*
_output_shapes
:
w
&Optimizer/gradients/mul_5_grad/Shape_1Const*
valueB"   ö
  *
dtype0*
_output_shapes
:
Ř
4Optimizer/gradients/mul_5_grad/BroadcastGradientArgsBroadcastGradientArgs$Optimizer/gradients/mul_5_grad/Shape&Optimizer/gradients/mul_5_grad/Shape_1*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
T0

"Optimizer/gradients/mul_5_grad/MulMul:Optimizer/gradients/add_11_grad/tuple/control_dependency_1	Minimum_5*
_output_shapes
:	ö*
T0
Ć
"Optimizer/gradients/mul_5_grad/SumSum"Optimizer/gradients/mul_5_grad/Mul4Optimizer/gradients/mul_5_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes	
:ö
Ż
&Optimizer/gradients/mul_5_grad/ReshapeReshape"Optimizer/gradients/mul_5_grad/Sum$Optimizer/gradients/mul_5_grad/Shape*
T0*
Tshape0*
_output_shapes	
:ö
 
$Optimizer/gradients/mul_5_grad/Mul_1Muldecoder3/read:Optimizer/gradients/add_11_grad/tuple/control_dependency_1*
T0*
_output_shapes
:	ö
Đ
$Optimizer/gradients/mul_5_grad/Sum_1Sum$Optimizer/gradients/mul_5_grad/Mul_16Optimizer/gradients/mul_5_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:	ö
š
(Optimizer/gradients/mul_5_grad/Reshape_1Reshape$Optimizer/gradients/mul_5_grad/Sum_1&Optimizer/gradients/mul_5_grad/Shape_1*
_output_shapes
:	ö*
T0*
Tshape0

/Optimizer/gradients/mul_5_grad/tuple/group_depsNoOp'^Optimizer/gradients/mul_5_grad/Reshape)^Optimizer/gradients/mul_5_grad/Reshape_1
ţ
7Optimizer/gradients/mul_5_grad/tuple/control_dependencyIdentity&Optimizer/gradients/mul_5_grad/Reshape0^Optimizer/gradients/mul_5_grad/tuple/group_deps*
T0*9
_class/
-+loc:@Optimizer/gradients/mul_5_grad/Reshape*
_output_shapes	
:ö

9Optimizer/gradients/mul_5_grad/tuple/control_dependency_1Identity(Optimizer/gradients/mul_5_grad/Reshape_10^Optimizer/gradients/mul_5_grad/tuple/group_deps*
T0*;
_class1
/-loc:@Optimizer/gradients/mul_5_grad/Reshape_1*
_output_shapes
:	ö

AOptimizer/gradients/Loss/l1_regularization/Sum_grad/Reshape/shapeConst*
valueB"      *
dtype0*
_output_shapes
:

;Optimizer/gradients/Loss/l1_regularization/Sum_grad/ReshapeReshapeTOptimizer/gradients/Loss/l1_regularization/Sum_6/input_grad/tuple/control_dependencyAOptimizer/gradients/Loss/l1_regularization/Sum_grad/Reshape/shape*
Tshape0*
_output_shapes

:*
T0

9Optimizer/gradients/Loss/l1_regularization/Sum_grad/ConstConst*
valueB"ö
     *
dtype0*
_output_shapes
:
ő
8Optimizer/gradients/Loss/l1_regularization/Sum_grad/TileTile;Optimizer/gradients/Loss/l1_regularization/Sum_grad/Reshape9Optimizer/gradients/Loss/l1_regularization/Sum_grad/Const*

Tmultiples0*
T0* 
_output_shapes
:
ö

COptimizer/gradients/Loss/l1_regularization/Sum_1_grad/Reshape/shapeConst*
valueB"      *
dtype0*
_output_shapes
:

=Optimizer/gradients/Loss/l1_regularization/Sum_1_grad/ReshapeReshapeVOptimizer/gradients/Loss/l1_regularization/Sum_6/input_grad/tuple/control_dependency_1COptimizer/gradients/Loss/l1_regularization/Sum_1_grad/Reshape/shape*
Tshape0*
_output_shapes

:*
T0

;Optimizer/gradients/Loss/l1_regularization/Sum_1_grad/ConstConst*
valueB"   @   *
dtype0*
_output_shapes
:
ú
:Optimizer/gradients/Loss/l1_regularization/Sum_1_grad/TileTile=Optimizer/gradients/Loss/l1_regularization/Sum_1_grad/Reshape;Optimizer/gradients/Loss/l1_regularization/Sum_1_grad/Const*
_output_shapes
:	@*

Tmultiples0*
T0

COptimizer/gradients/Loss/l1_regularization/Sum_2_grad/Reshape/shapeConst*
valueB"      *
dtype0*
_output_shapes
:

=Optimizer/gradients/Loss/l1_regularization/Sum_2_grad/ReshapeReshapeVOptimizer/gradients/Loss/l1_regularization/Sum_6/input_grad/tuple/control_dependency_2COptimizer/gradients/Loss/l1_regularization/Sum_2_grad/Reshape/shape*
_output_shapes

:*
T0*
Tshape0

;Optimizer/gradients/Loss/l1_regularization/Sum_2_grad/ConstConst*
valueB"@      *
dtype0*
_output_shapes
:
ů
:Optimizer/gradients/Loss/l1_regularization/Sum_2_grad/TileTile=Optimizer/gradients/Loss/l1_regularization/Sum_2_grad/Reshape;Optimizer/gradients/Loss/l1_regularization/Sum_2_grad/Const*
T0*
_output_shapes

:@*

Tmultiples0

COptimizer/gradients/Loss/l1_regularization/Sum_3_grad/Reshape/shapeConst*
dtype0*
_output_shapes
:*
valueB"      

=Optimizer/gradients/Loss/l1_regularization/Sum_3_grad/ReshapeReshapeVOptimizer/gradients/Loss/l1_regularization/Sum_6/input_grad/tuple/control_dependency_3COptimizer/gradients/Loss/l1_regularization/Sum_3_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes

:

;Optimizer/gradients/Loss/l1_regularization/Sum_3_grad/ConstConst*
_output_shapes
:*
valueB"   @   *
dtype0
ů
:Optimizer/gradients/Loss/l1_regularization/Sum_3_grad/TileTile=Optimizer/gradients/Loss/l1_regularization/Sum_3_grad/Reshape;Optimizer/gradients/Loss/l1_regularization/Sum_3_grad/Const*
_output_shapes

:@*

Tmultiples0*
T0

COptimizer/gradients/Loss/l1_regularization/Sum_4_grad/Reshape/shapeConst*
valueB"      *
dtype0*
_output_shapes
:

=Optimizer/gradients/Loss/l1_regularization/Sum_4_grad/ReshapeReshapeVOptimizer/gradients/Loss/l1_regularization/Sum_6/input_grad/tuple/control_dependency_4COptimizer/gradients/Loss/l1_regularization/Sum_4_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes

:

;Optimizer/gradients/Loss/l1_regularization/Sum_4_grad/ConstConst*
dtype0*
_output_shapes
:*
valueB"@      
ú
:Optimizer/gradients/Loss/l1_regularization/Sum_4_grad/TileTile=Optimizer/gradients/Loss/l1_regularization/Sum_4_grad/Reshape;Optimizer/gradients/Loss/l1_regularization/Sum_4_grad/Const*
_output_shapes
:	@*

Tmultiples0*
T0

COptimizer/gradients/Loss/l1_regularization/Sum_5_grad/Reshape/shapeConst*
valueB"      *
dtype0*
_output_shapes
:

=Optimizer/gradients/Loss/l1_regularization/Sum_5_grad/ReshapeReshapeVOptimizer/gradients/Loss/l1_regularization/Sum_6/input_grad/tuple/control_dependency_5COptimizer/gradients/Loss/l1_regularization/Sum_5_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes

:

;Optimizer/gradients/Loss/l1_regularization/Sum_5_grad/ConstConst*
valueB"   ö
  *
dtype0*
_output_shapes
:
ű
:Optimizer/gradients/Loss/l1_regularization/Sum_5_grad/TileTile=Optimizer/gradients/Loss/l1_regularization/Sum_5_grad/Reshape;Optimizer/gradients/Loss/l1_regularization/Sum_5_grad/Const* 
_output_shapes
:
ö*

Tmultiples0*
T0
k
(Optimizer/gradients/Minimum_5_grad/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
{
*Optimizer/gradients/Minimum_5_grad/Shape_1Const*
valueB"   ö
  *
dtype0*
_output_shapes
:
{
*Optimizer/gradients/Minimum_5_grad/Shape_2Const*
valueB"   ö
  *
dtype0*
_output_shapes
:
s
.Optimizer/gradients/Minimum_5_grad/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Č
(Optimizer/gradients/Minimum_5_grad/zerosFill*Optimizer/gradients/Minimum_5_grad/Shape_2.Optimizer/gradients/Minimum_5_grad/zeros/Const*
_output_shapes
:	ö*
T0*

index_type0
x
,Optimizer/gradients/Minimum_5_grad/LessEqual	LessEqualMinimum_5/xAdd_10*
T0*
_output_shapes
:	ö
ä
8Optimizer/gradients/Minimum_5_grad/BroadcastGradientArgsBroadcastGradientArgs(Optimizer/gradients/Minimum_5_grad/Shape*Optimizer/gradients/Minimum_5_grad/Shape_1*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
T0
đ
)Optimizer/gradients/Minimum_5_grad/SelectSelect,Optimizer/gradients/Minimum_5_grad/LessEqual9Optimizer/gradients/mul_5_grad/tuple/control_dependency_1(Optimizer/gradients/Minimum_5_grad/zeros*
T0*
_output_shapes
:	ö
ň
+Optimizer/gradients/Minimum_5_grad/Select_1Select,Optimizer/gradients/Minimum_5_grad/LessEqual(Optimizer/gradients/Minimum_5_grad/zeros9Optimizer/gradients/mul_5_grad/tuple/control_dependency_1*
_output_shapes
:	ö*
T0
Đ
&Optimizer/gradients/Minimum_5_grad/SumSum)Optimizer/gradients/Minimum_5_grad/Select8Optimizer/gradients/Minimum_5_grad/BroadcastGradientArgs*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
ś
*Optimizer/gradients/Minimum_5_grad/ReshapeReshape&Optimizer/gradients/Minimum_5_grad/Sum(Optimizer/gradients/Minimum_5_grad/Shape*
T0*
Tshape0*
_output_shapes
: 
ß
(Optimizer/gradients/Minimum_5_grad/Sum_1Sum+Optimizer/gradients/Minimum_5_grad/Select_1:Optimizer/gradients/Minimum_5_grad/BroadcastGradientArgs:1*
_output_shapes
:	ö*
	keep_dims( *

Tidx0*
T0
Ĺ
,Optimizer/gradients/Minimum_5_grad/Reshape_1Reshape(Optimizer/gradients/Minimum_5_grad/Sum_1*Optimizer/gradients/Minimum_5_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:	ö

3Optimizer/gradients/Minimum_5_grad/tuple/group_depsNoOp+^Optimizer/gradients/Minimum_5_grad/Reshape-^Optimizer/gradients/Minimum_5_grad/Reshape_1

;Optimizer/gradients/Minimum_5_grad/tuple/control_dependencyIdentity*Optimizer/gradients/Minimum_5_grad/Reshape4^Optimizer/gradients/Minimum_5_grad/tuple/group_deps*=
_class3
1/loc:@Optimizer/gradients/Minimum_5_grad/Reshape*
_output_shapes
: *
T0

=Optimizer/gradients/Minimum_5_grad/tuple/control_dependency_1Identity,Optimizer/gradients/Minimum_5_grad/Reshape_14^Optimizer/gradients/Minimum_5_grad/tuple/group_deps*
T0*?
_class5
31loc:@Optimizer/gradients/Minimum_5_grad/Reshape_1*
_output_shapes
:	ö
z
8Optimizer/gradients/Loss/l1_regularization/Abs_grad/SignSignVariable/read* 
_output_shapes
:
ö*
T0
Ý
7Optimizer/gradients/Loss/l1_regularization/Abs_grad/mulMul8Optimizer/gradients/Loss/l1_regularization/Sum_grad/Tile8Optimizer/gradients/Loss/l1_regularization/Abs_grad/Sign*
T0* 
_output_shapes
:
ö
}
:Optimizer/gradients/Loss/l1_regularization/Abs_1_grad/SignSignVariable_2/read*
T0*
_output_shapes
:	@
â
9Optimizer/gradients/Loss/l1_regularization/Abs_1_grad/mulMul:Optimizer/gradients/Loss/l1_regularization/Sum_1_grad/Tile:Optimizer/gradients/Loss/l1_regularization/Abs_1_grad/Sign*
_output_shapes
:	@*
T0
|
:Optimizer/gradients/Loss/l1_regularization/Abs_2_grad/SignSignVariable_4/read*
_output_shapes

:@*
T0
á
9Optimizer/gradients/Loss/l1_regularization/Abs_2_grad/mulMul:Optimizer/gradients/Loss/l1_regularization/Sum_2_grad/Tile:Optimizer/gradients/Loss/l1_regularization/Abs_2_grad/Sign*
T0*
_output_shapes

:@
|
:Optimizer/gradients/Loss/l1_regularization/Abs_3_grad/SignSignVariable_6/read*
T0*
_output_shapes

:@
á
9Optimizer/gradients/Loss/l1_regularization/Abs_3_grad/mulMul:Optimizer/gradients/Loss/l1_regularization/Sum_3_grad/Tile:Optimizer/gradients/Loss/l1_regularization/Abs_3_grad/Sign*
T0*
_output_shapes

:@
}
:Optimizer/gradients/Loss/l1_regularization/Abs_4_grad/SignSignVariable_8/read*
_output_shapes
:	@*
T0
â
9Optimizer/gradients/Loss/l1_regularization/Abs_4_grad/mulMul:Optimizer/gradients/Loss/l1_regularization/Sum_4_grad/Tile:Optimizer/gradients/Loss/l1_regularization/Abs_4_grad/Sign*
T0*
_output_shapes
:	@

:Optimizer/gradients/Loss/l1_regularization/Abs_5_grad/SignSignVariable_10/read*
T0* 
_output_shapes
:
ö
ă
9Optimizer/gradients/Loss/l1_regularization/Abs_5_grad/mulMul:Optimizer/gradients/Loss/l1_regularization/Sum_5_grad/Tile:Optimizer/gradients/Loss/l1_regularization/Abs_5_grad/Sign* 
_output_shapes
:
ö*
T0

Optimizer/gradients/AddNAddN=Optimizer/gradients/Maximum_5_grad/tuple/control_dependency_1=Optimizer/gradients/Minimum_5_grad/tuple/control_dependency_1*
T0*?
_class5
31loc:@Optimizer/gradients/Maximum_5_grad/Reshape_1*
N*
_output_shapes
:	ö
v
%Optimizer/gradients/Add_10_grad/ShapeConst*
valueB"   ö
  *
dtype0*
_output_shapes
:
r
'Optimizer/gradients/Add_10_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB:ö
Ű
5Optimizer/gradients/Add_10_grad/BroadcastGradientArgsBroadcastGradientArgs%Optimizer/gradients/Add_10_grad/Shape'Optimizer/gradients/Add_10_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
Â
#Optimizer/gradients/Add_10_grad/SumSumOptimizer/gradients/AddN5Optimizer/gradients/Add_10_grad/BroadcastGradientArgs*
T0*
_output_shapes
:	ö*
	keep_dims( *

Tidx0
ś
'Optimizer/gradients/Add_10_grad/ReshapeReshape#Optimizer/gradients/Add_10_grad/Sum%Optimizer/gradients/Add_10_grad/Shape*
T0*
Tshape0*
_output_shapes
:	ö
Â
%Optimizer/gradients/Add_10_grad/Sum_1SumOptimizer/gradients/AddN7Optimizer/gradients/Add_10_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes	
:ö
¸
)Optimizer/gradients/Add_10_grad/Reshape_1Reshape%Optimizer/gradients/Add_10_grad/Sum_1'Optimizer/gradients/Add_10_grad/Shape_1*
T0*
Tshape0*
_output_shapes	
:ö

0Optimizer/gradients/Add_10_grad/tuple/group_depsNoOp(^Optimizer/gradients/Add_10_grad/Reshape*^Optimizer/gradients/Add_10_grad/Reshape_1

8Optimizer/gradients/Add_10_grad/tuple/control_dependencyIdentity'Optimizer/gradients/Add_10_grad/Reshape1^Optimizer/gradients/Add_10_grad/tuple/group_deps*
T0*:
_class0
.,loc:@Optimizer/gradients/Add_10_grad/Reshape*
_output_shapes
:	ö

:Optimizer/gradients/Add_10_grad/tuple/control_dependency_1Identity)Optimizer/gradients/Add_10_grad/Reshape_11^Optimizer/gradients/Add_10_grad/tuple/group_deps*
T0*<
_class2
0.loc:@Optimizer/gradients/Add_10_grad/Reshape_1*
_output_shapes	
:ö
Î
(Optimizer/gradients/MatMul_5_grad/MatMulMatMul8Optimizer/gradients/Add_10_grad/tuple/control_dependencyVariable_10/read*
_output_shapes
:	*
transpose_a( *
transpose_b(*
T0
Ć
*Optimizer/gradients/MatMul_5_grad/MatMul_1MatMuladd_98Optimizer/gradients/Add_10_grad/tuple/control_dependency*
T0* 
_output_shapes
:
ö*
transpose_a(*
transpose_b( 

2Optimizer/gradients/MatMul_5_grad/tuple/group_depsNoOp)^Optimizer/gradients/MatMul_5_grad/MatMul+^Optimizer/gradients/MatMul_5_grad/MatMul_1

:Optimizer/gradients/MatMul_5_grad/tuple/control_dependencyIdentity(Optimizer/gradients/MatMul_5_grad/MatMul3^Optimizer/gradients/MatMul_5_grad/tuple/group_deps*
_output_shapes
:	*
T0*;
_class1
/-loc:@Optimizer/gradients/MatMul_5_grad/MatMul

<Optimizer/gradients/MatMul_5_grad/tuple/control_dependency_1Identity*Optimizer/gradients/MatMul_5_grad/MatMul_13^Optimizer/gradients/MatMul_5_grad/tuple/group_deps* 
_output_shapes
:
ö*
T0*=
_class3
1/loc:@Optimizer/gradients/MatMul_5_grad/MatMul_1
t
/Optimizer/gradients/add_9_grad/tuple/group_depsNoOp;^Optimizer/gradients/MatMul_5_grad/tuple/control_dependency

7Optimizer/gradients/add_9_grad/tuple/control_dependencyIdentity:Optimizer/gradients/MatMul_5_grad/tuple/control_dependency0^Optimizer/gradients/add_9_grad/tuple/group_deps*
T0*;
_class1
/-loc:@Optimizer/gradients/MatMul_5_grad/MatMul*
_output_shapes
:	

9Optimizer/gradients/add_9_grad/tuple/control_dependency_1Identity:Optimizer/gradients/MatMul_5_grad/tuple/control_dependency0^Optimizer/gradients/add_9_grad/tuple/group_deps*
T0*;
_class1
/-loc:@Optimizer/gradients/MatMul_5_grad/MatMul*
_output_shapes
:	

Optimizer/gradients/AddN_1AddN9Optimizer/gradients/Loss/l1_regularization/Abs_5_grad/mul<Optimizer/gradients/MatMul_5_grad/tuple/control_dependency_1*
T0*L
_classB
@>loc:@Optimizer/gradients/Loss/l1_regularization/Abs_5_grad/mul*
N* 
_output_shapes
:
ö
k
(Optimizer/gradients/Maximum_4_grad/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
{
*Optimizer/gradients/Maximum_4_grad/Shape_1Const*
valueB"      *
dtype0*
_output_shapes
:
{
*Optimizer/gradients/Maximum_4_grad/Shape_2Const*
_output_shapes
:*
valueB"      *
dtype0
s
.Optimizer/gradients/Maximum_4_grad/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Č
(Optimizer/gradients/Maximum_4_grad/zerosFill*Optimizer/gradients/Maximum_4_grad/Shape_2.Optimizer/gradients/Maximum_4_grad/zeros/Const*
_output_shapes
:	*
T0*

index_type0
}
/Optimizer/gradients/Maximum_4_grad/GreaterEqualGreaterEqualMaximum_4/xAdd_8*
T0*
_output_shapes
:	
ä
8Optimizer/gradients/Maximum_4_grad/BroadcastGradientArgsBroadcastGradientArgs(Optimizer/gradients/Maximum_4_grad/Shape*Optimizer/gradients/Maximum_4_grad/Shape_1*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
T0
ń
)Optimizer/gradients/Maximum_4_grad/SelectSelect/Optimizer/gradients/Maximum_4_grad/GreaterEqual7Optimizer/gradients/add_9_grad/tuple/control_dependency(Optimizer/gradients/Maximum_4_grad/zeros*
T0*
_output_shapes
:	
ó
+Optimizer/gradients/Maximum_4_grad/Select_1Select/Optimizer/gradients/Maximum_4_grad/GreaterEqual(Optimizer/gradients/Maximum_4_grad/zeros7Optimizer/gradients/add_9_grad/tuple/control_dependency*
T0*
_output_shapes
:	
Đ
&Optimizer/gradients/Maximum_4_grad/SumSum)Optimizer/gradients/Maximum_4_grad/Select8Optimizer/gradients/Maximum_4_grad/BroadcastGradientArgs*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
ś
*Optimizer/gradients/Maximum_4_grad/ReshapeReshape&Optimizer/gradients/Maximum_4_grad/Sum(Optimizer/gradients/Maximum_4_grad/Shape*
_output_shapes
: *
T0*
Tshape0
ß
(Optimizer/gradients/Maximum_4_grad/Sum_1Sum+Optimizer/gradients/Maximum_4_grad/Select_1:Optimizer/gradients/Maximum_4_grad/BroadcastGradientArgs:1*
_output_shapes
:	*
	keep_dims( *

Tidx0*
T0
Ĺ
,Optimizer/gradients/Maximum_4_grad/Reshape_1Reshape(Optimizer/gradients/Maximum_4_grad/Sum_1*Optimizer/gradients/Maximum_4_grad/Shape_1*
Tshape0*
_output_shapes
:	*
T0

3Optimizer/gradients/Maximum_4_grad/tuple/group_depsNoOp+^Optimizer/gradients/Maximum_4_grad/Reshape-^Optimizer/gradients/Maximum_4_grad/Reshape_1

;Optimizer/gradients/Maximum_4_grad/tuple/control_dependencyIdentity*Optimizer/gradients/Maximum_4_grad/Reshape4^Optimizer/gradients/Maximum_4_grad/tuple/group_deps*=
_class3
1/loc:@Optimizer/gradients/Maximum_4_grad/Reshape*
_output_shapes
: *
T0

=Optimizer/gradients/Maximum_4_grad/tuple/control_dependency_1Identity,Optimizer/gradients/Maximum_4_grad/Reshape_14^Optimizer/gradients/Maximum_4_grad/tuple/group_deps*
T0*?
_class5
31loc:@Optimizer/gradients/Maximum_4_grad/Reshape_1*
_output_shapes
:	
o
$Optimizer/gradients/mul_4_grad/ShapeConst*
valueB:*
dtype0*
_output_shapes
:
w
&Optimizer/gradients/mul_4_grad/Shape_1Const*
valueB"      *
dtype0*
_output_shapes
:
Ř
4Optimizer/gradients/mul_4_grad/BroadcastGradientArgsBroadcastGradientArgs$Optimizer/gradients/mul_4_grad/Shape&Optimizer/gradients/mul_4_grad/Shape_1*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
T0

"Optimizer/gradients/mul_4_grad/MulMul9Optimizer/gradients/add_9_grad/tuple/control_dependency_1	Minimum_4*
T0*
_output_shapes
:	
Ć
"Optimizer/gradients/mul_4_grad/SumSum"Optimizer/gradients/mul_4_grad/Mul4Optimizer/gradients/mul_4_grad/BroadcastGradientArgs*
_output_shapes	
:*
	keep_dims( *

Tidx0*
T0
Ż
&Optimizer/gradients/mul_4_grad/ReshapeReshape"Optimizer/gradients/mul_4_grad/Sum$Optimizer/gradients/mul_4_grad/Shape*
T0*
Tshape0*
_output_shapes	
:

$Optimizer/gradients/mul_4_grad/Mul_1Muldecoder2/read9Optimizer/gradients/add_9_grad/tuple/control_dependency_1*
T0*
_output_shapes
:	
Đ
$Optimizer/gradients/mul_4_grad/Sum_1Sum$Optimizer/gradients/mul_4_grad/Mul_16Optimizer/gradients/mul_4_grad/BroadcastGradientArgs:1*
_output_shapes
:	*
	keep_dims( *

Tidx0*
T0
š
(Optimizer/gradients/mul_4_grad/Reshape_1Reshape$Optimizer/gradients/mul_4_grad/Sum_1&Optimizer/gradients/mul_4_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:	

/Optimizer/gradients/mul_4_grad/tuple/group_depsNoOp'^Optimizer/gradients/mul_4_grad/Reshape)^Optimizer/gradients/mul_4_grad/Reshape_1
ţ
7Optimizer/gradients/mul_4_grad/tuple/control_dependencyIdentity&Optimizer/gradients/mul_4_grad/Reshape0^Optimizer/gradients/mul_4_grad/tuple/group_deps*
_output_shapes	
:*
T0*9
_class/
-+loc:@Optimizer/gradients/mul_4_grad/Reshape

9Optimizer/gradients/mul_4_grad/tuple/control_dependency_1Identity(Optimizer/gradients/mul_4_grad/Reshape_10^Optimizer/gradients/mul_4_grad/tuple/group_deps*
_output_shapes
:	*
T0*;
_class1
/-loc:@Optimizer/gradients/mul_4_grad/Reshape_1
k
(Optimizer/gradients/Minimum_4_grad/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
{
*Optimizer/gradients/Minimum_4_grad/Shape_1Const*
valueB"      *
dtype0*
_output_shapes
:
{
*Optimizer/gradients/Minimum_4_grad/Shape_2Const*
_output_shapes
:*
valueB"      *
dtype0
s
.Optimizer/gradients/Minimum_4_grad/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Č
(Optimizer/gradients/Minimum_4_grad/zerosFill*Optimizer/gradients/Minimum_4_grad/Shape_2.Optimizer/gradients/Minimum_4_grad/zeros/Const*
T0*

index_type0*
_output_shapes
:	
w
,Optimizer/gradients/Minimum_4_grad/LessEqual	LessEqualMinimum_4/xAdd_8*
T0*
_output_shapes
:	
ä
8Optimizer/gradients/Minimum_4_grad/BroadcastGradientArgsBroadcastGradientArgs(Optimizer/gradients/Minimum_4_grad/Shape*Optimizer/gradients/Minimum_4_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
đ
)Optimizer/gradients/Minimum_4_grad/SelectSelect,Optimizer/gradients/Minimum_4_grad/LessEqual9Optimizer/gradients/mul_4_grad/tuple/control_dependency_1(Optimizer/gradients/Minimum_4_grad/zeros*
T0*
_output_shapes
:	
ň
+Optimizer/gradients/Minimum_4_grad/Select_1Select,Optimizer/gradients/Minimum_4_grad/LessEqual(Optimizer/gradients/Minimum_4_grad/zeros9Optimizer/gradients/mul_4_grad/tuple/control_dependency_1*
_output_shapes
:	*
T0
Đ
&Optimizer/gradients/Minimum_4_grad/SumSum)Optimizer/gradients/Minimum_4_grad/Select8Optimizer/gradients/Minimum_4_grad/BroadcastGradientArgs*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
ś
*Optimizer/gradients/Minimum_4_grad/ReshapeReshape&Optimizer/gradients/Minimum_4_grad/Sum(Optimizer/gradients/Minimum_4_grad/Shape*
T0*
Tshape0*
_output_shapes
: 
ß
(Optimizer/gradients/Minimum_4_grad/Sum_1Sum+Optimizer/gradients/Minimum_4_grad/Select_1:Optimizer/gradients/Minimum_4_grad/BroadcastGradientArgs:1*
_output_shapes
:	*
	keep_dims( *

Tidx0*
T0
Ĺ
,Optimizer/gradients/Minimum_4_grad/Reshape_1Reshape(Optimizer/gradients/Minimum_4_grad/Sum_1*Optimizer/gradients/Minimum_4_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:	

3Optimizer/gradients/Minimum_4_grad/tuple/group_depsNoOp+^Optimizer/gradients/Minimum_4_grad/Reshape-^Optimizer/gradients/Minimum_4_grad/Reshape_1

;Optimizer/gradients/Minimum_4_grad/tuple/control_dependencyIdentity*Optimizer/gradients/Minimum_4_grad/Reshape4^Optimizer/gradients/Minimum_4_grad/tuple/group_deps*
T0*=
_class3
1/loc:@Optimizer/gradients/Minimum_4_grad/Reshape*
_output_shapes
: 

=Optimizer/gradients/Minimum_4_grad/tuple/control_dependency_1Identity,Optimizer/gradients/Minimum_4_grad/Reshape_14^Optimizer/gradients/Minimum_4_grad/tuple/group_deps*
T0*?
_class5
31loc:@Optimizer/gradients/Minimum_4_grad/Reshape_1*
_output_shapes
:	

Optimizer/gradients/AddN_2AddN=Optimizer/gradients/Maximum_4_grad/tuple/control_dependency_1=Optimizer/gradients/Minimum_4_grad/tuple/control_dependency_1*
T0*?
_class5
31loc:@Optimizer/gradients/Maximum_4_grad/Reshape_1*
N*
_output_shapes
:	
u
$Optimizer/gradients/Add_8_grad/ShapeConst*
valueB"      *
dtype0*
_output_shapes
:
q
&Optimizer/gradients/Add_8_grad/Shape_1Const*
valueB:*
dtype0*
_output_shapes
:
Ř
4Optimizer/gradients/Add_8_grad/BroadcastGradientArgsBroadcastGradientArgs$Optimizer/gradients/Add_8_grad/Shape&Optimizer/gradients/Add_8_grad/Shape_1*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
T0
Â
"Optimizer/gradients/Add_8_grad/SumSumOptimizer/gradients/AddN_24Optimizer/gradients/Add_8_grad/BroadcastGradientArgs*
T0*
_output_shapes
:	*
	keep_dims( *

Tidx0
ł
&Optimizer/gradients/Add_8_grad/ReshapeReshape"Optimizer/gradients/Add_8_grad/Sum$Optimizer/gradients/Add_8_grad/Shape*
T0*
Tshape0*
_output_shapes
:	
Â
$Optimizer/gradients/Add_8_grad/Sum_1SumOptimizer/gradients/AddN_26Optimizer/gradients/Add_8_grad/BroadcastGradientArgs:1*
T0*
_output_shapes	
:*
	keep_dims( *

Tidx0
ľ
(Optimizer/gradients/Add_8_grad/Reshape_1Reshape$Optimizer/gradients/Add_8_grad/Sum_1&Optimizer/gradients/Add_8_grad/Shape_1*
_output_shapes	
:*
T0*
Tshape0

/Optimizer/gradients/Add_8_grad/tuple/group_depsNoOp'^Optimizer/gradients/Add_8_grad/Reshape)^Optimizer/gradients/Add_8_grad/Reshape_1

7Optimizer/gradients/Add_8_grad/tuple/control_dependencyIdentity&Optimizer/gradients/Add_8_grad/Reshape0^Optimizer/gradients/Add_8_grad/tuple/group_deps*
T0*9
_class/
-+loc:@Optimizer/gradients/Add_8_grad/Reshape*
_output_shapes
:	

9Optimizer/gradients/Add_8_grad/tuple/control_dependency_1Identity(Optimizer/gradients/Add_8_grad/Reshape_10^Optimizer/gradients/Add_8_grad/tuple/group_deps*
T0*;
_class1
/-loc:@Optimizer/gradients/Add_8_grad/Reshape_1*
_output_shapes	
:
Ë
(Optimizer/gradients/MatMul_4_grad/MatMulMatMul7Optimizer/gradients/Add_8_grad/tuple/control_dependencyVariable_8/read*
_output_shapes

:@*
transpose_a( *
transpose_b(*
T0
Ä
*Optimizer/gradients/MatMul_4_grad/MatMul_1MatMuladd_77Optimizer/gradients/Add_8_grad/tuple/control_dependency*
transpose_b( *
T0*
_output_shapes
:	@*
transpose_a(

2Optimizer/gradients/MatMul_4_grad/tuple/group_depsNoOp)^Optimizer/gradients/MatMul_4_grad/MatMul+^Optimizer/gradients/MatMul_4_grad/MatMul_1

:Optimizer/gradients/MatMul_4_grad/tuple/control_dependencyIdentity(Optimizer/gradients/MatMul_4_grad/MatMul3^Optimizer/gradients/MatMul_4_grad/tuple/group_deps*
T0*;
_class1
/-loc:@Optimizer/gradients/MatMul_4_grad/MatMul*
_output_shapes

:@

<Optimizer/gradients/MatMul_4_grad/tuple/control_dependency_1Identity*Optimizer/gradients/MatMul_4_grad/MatMul_13^Optimizer/gradients/MatMul_4_grad/tuple/group_deps*=
_class3
1/loc:@Optimizer/gradients/MatMul_4_grad/MatMul_1*
_output_shapes
:	@*
T0
t
/Optimizer/gradients/add_7_grad/tuple/group_depsNoOp;^Optimizer/gradients/MatMul_4_grad/tuple/control_dependency

7Optimizer/gradients/add_7_grad/tuple/control_dependencyIdentity:Optimizer/gradients/MatMul_4_grad/tuple/control_dependency0^Optimizer/gradients/add_7_grad/tuple/group_deps*
T0*;
_class1
/-loc:@Optimizer/gradients/MatMul_4_grad/MatMul*
_output_shapes

:@

9Optimizer/gradients/add_7_grad/tuple/control_dependency_1Identity:Optimizer/gradients/MatMul_4_grad/tuple/control_dependency0^Optimizer/gradients/add_7_grad/tuple/group_deps*
_output_shapes

:@*
T0*;
_class1
/-loc:@Optimizer/gradients/MatMul_4_grad/MatMul

Optimizer/gradients/AddN_3AddN9Optimizer/gradients/Loss/l1_regularization/Abs_4_grad/mul<Optimizer/gradients/MatMul_4_grad/tuple/control_dependency_1*
T0*L
_classB
@>loc:@Optimizer/gradients/Loss/l1_regularization/Abs_4_grad/mul*
N*
_output_shapes
:	@
k
(Optimizer/gradients/Maximum_3_grad/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
{
*Optimizer/gradients/Maximum_3_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"   @   
{
*Optimizer/gradients/Maximum_3_grad/Shape_2Const*
valueB"   @   *
dtype0*
_output_shapes
:
s
.Optimizer/gradients/Maximum_3_grad/zeros/ConstConst*
_output_shapes
: *
valueB
 *    *
dtype0
Ç
(Optimizer/gradients/Maximum_3_grad/zerosFill*Optimizer/gradients/Maximum_3_grad/Shape_2.Optimizer/gradients/Maximum_3_grad/zeros/Const*
_output_shapes

:@*
T0*

index_type0
|
/Optimizer/gradients/Maximum_3_grad/GreaterEqualGreaterEqualMaximum_3/xAdd_6*
_output_shapes

:@*
T0
ä
8Optimizer/gradients/Maximum_3_grad/BroadcastGradientArgsBroadcastGradientArgs(Optimizer/gradients/Maximum_3_grad/Shape*Optimizer/gradients/Maximum_3_grad/Shape_1*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
T0
đ
)Optimizer/gradients/Maximum_3_grad/SelectSelect/Optimizer/gradients/Maximum_3_grad/GreaterEqual7Optimizer/gradients/add_7_grad/tuple/control_dependency(Optimizer/gradients/Maximum_3_grad/zeros*
_output_shapes

:@*
T0
ň
+Optimizer/gradients/Maximum_3_grad/Select_1Select/Optimizer/gradients/Maximum_3_grad/GreaterEqual(Optimizer/gradients/Maximum_3_grad/zeros7Optimizer/gradients/add_7_grad/tuple/control_dependency*
_output_shapes

:@*
T0
Đ
&Optimizer/gradients/Maximum_3_grad/SumSum)Optimizer/gradients/Maximum_3_grad/Select8Optimizer/gradients/Maximum_3_grad/BroadcastGradientArgs*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
ś
*Optimizer/gradients/Maximum_3_grad/ReshapeReshape&Optimizer/gradients/Maximum_3_grad/Sum(Optimizer/gradients/Maximum_3_grad/Shape*
T0*
Tshape0*
_output_shapes
: 
Ţ
(Optimizer/gradients/Maximum_3_grad/Sum_1Sum+Optimizer/gradients/Maximum_3_grad/Select_1:Optimizer/gradients/Maximum_3_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes

:@
Ä
,Optimizer/gradients/Maximum_3_grad/Reshape_1Reshape(Optimizer/gradients/Maximum_3_grad/Sum_1*Optimizer/gradients/Maximum_3_grad/Shape_1*
T0*
Tshape0*
_output_shapes

:@

3Optimizer/gradients/Maximum_3_grad/tuple/group_depsNoOp+^Optimizer/gradients/Maximum_3_grad/Reshape-^Optimizer/gradients/Maximum_3_grad/Reshape_1

;Optimizer/gradients/Maximum_3_grad/tuple/control_dependencyIdentity*Optimizer/gradients/Maximum_3_grad/Reshape4^Optimizer/gradients/Maximum_3_grad/tuple/group_deps*
T0*=
_class3
1/loc:@Optimizer/gradients/Maximum_3_grad/Reshape*
_output_shapes
: 

=Optimizer/gradients/Maximum_3_grad/tuple/control_dependency_1Identity,Optimizer/gradients/Maximum_3_grad/Reshape_14^Optimizer/gradients/Maximum_3_grad/tuple/group_deps*
_output_shapes

:@*
T0*?
_class5
31loc:@Optimizer/gradients/Maximum_3_grad/Reshape_1
n
$Optimizer/gradients/mul_3_grad/ShapeConst*
valueB:@*
dtype0*
_output_shapes
:
w
&Optimizer/gradients/mul_3_grad/Shape_1Const*
valueB"   @   *
dtype0*
_output_shapes
:
Ř
4Optimizer/gradients/mul_3_grad/BroadcastGradientArgsBroadcastGradientArgs$Optimizer/gradients/mul_3_grad/Shape&Optimizer/gradients/mul_3_grad/Shape_1*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
T0

"Optimizer/gradients/mul_3_grad/MulMul9Optimizer/gradients/add_7_grad/tuple/control_dependency_1	Minimum_3*
_output_shapes

:@*
T0
Ĺ
"Optimizer/gradients/mul_3_grad/SumSum"Optimizer/gradients/mul_3_grad/Mul4Optimizer/gradients/mul_3_grad/BroadcastGradientArgs*
T0*
_output_shapes
:@*
	keep_dims( *

Tidx0
Ž
&Optimizer/gradients/mul_3_grad/ReshapeReshape"Optimizer/gradients/mul_3_grad/Sum$Optimizer/gradients/mul_3_grad/Shape*
T0*
Tshape0*
_output_shapes
:@

$Optimizer/gradients/mul_3_grad/Mul_1Muldecoder1/read9Optimizer/gradients/add_7_grad/tuple/control_dependency_1*
T0*
_output_shapes

:@
Ď
$Optimizer/gradients/mul_3_grad/Sum_1Sum$Optimizer/gradients/mul_3_grad/Mul_16Optimizer/gradients/mul_3_grad/BroadcastGradientArgs:1*
T0*
_output_shapes

:@*
	keep_dims( *

Tidx0
¸
(Optimizer/gradients/mul_3_grad/Reshape_1Reshape$Optimizer/gradients/mul_3_grad/Sum_1&Optimizer/gradients/mul_3_grad/Shape_1*
Tshape0*
_output_shapes

:@*
T0

/Optimizer/gradients/mul_3_grad/tuple/group_depsNoOp'^Optimizer/gradients/mul_3_grad/Reshape)^Optimizer/gradients/mul_3_grad/Reshape_1
ý
7Optimizer/gradients/mul_3_grad/tuple/control_dependencyIdentity&Optimizer/gradients/mul_3_grad/Reshape0^Optimizer/gradients/mul_3_grad/tuple/group_deps*
T0*9
_class/
-+loc:@Optimizer/gradients/mul_3_grad/Reshape*
_output_shapes
:@

9Optimizer/gradients/mul_3_grad/tuple/control_dependency_1Identity(Optimizer/gradients/mul_3_grad/Reshape_10^Optimizer/gradients/mul_3_grad/tuple/group_deps*
T0*;
_class1
/-loc:@Optimizer/gradients/mul_3_grad/Reshape_1*
_output_shapes

:@
k
(Optimizer/gradients/Minimum_3_grad/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
{
*Optimizer/gradients/Minimum_3_grad/Shape_1Const*
valueB"   @   *
dtype0*
_output_shapes
:
{
*Optimizer/gradients/Minimum_3_grad/Shape_2Const*
valueB"   @   *
dtype0*
_output_shapes
:
s
.Optimizer/gradients/Minimum_3_grad/zeros/ConstConst*
_output_shapes
: *
valueB
 *    *
dtype0
Ç
(Optimizer/gradients/Minimum_3_grad/zerosFill*Optimizer/gradients/Minimum_3_grad/Shape_2.Optimizer/gradients/Minimum_3_grad/zeros/Const*
T0*

index_type0*
_output_shapes

:@
v
,Optimizer/gradients/Minimum_3_grad/LessEqual	LessEqualMinimum_3/xAdd_6*
_output_shapes

:@*
T0
ä
8Optimizer/gradients/Minimum_3_grad/BroadcastGradientArgsBroadcastGradientArgs(Optimizer/gradients/Minimum_3_grad/Shape*Optimizer/gradients/Minimum_3_grad/Shape_1*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
T0
ď
)Optimizer/gradients/Minimum_3_grad/SelectSelect,Optimizer/gradients/Minimum_3_grad/LessEqual9Optimizer/gradients/mul_3_grad/tuple/control_dependency_1(Optimizer/gradients/Minimum_3_grad/zeros*
_output_shapes

:@*
T0
ń
+Optimizer/gradients/Minimum_3_grad/Select_1Select,Optimizer/gradients/Minimum_3_grad/LessEqual(Optimizer/gradients/Minimum_3_grad/zeros9Optimizer/gradients/mul_3_grad/tuple/control_dependency_1*
T0*
_output_shapes

:@
Đ
&Optimizer/gradients/Minimum_3_grad/SumSum)Optimizer/gradients/Minimum_3_grad/Select8Optimizer/gradients/Minimum_3_grad/BroadcastGradientArgs*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
ś
*Optimizer/gradients/Minimum_3_grad/ReshapeReshape&Optimizer/gradients/Minimum_3_grad/Sum(Optimizer/gradients/Minimum_3_grad/Shape*
_output_shapes
: *
T0*
Tshape0
Ţ
(Optimizer/gradients/Minimum_3_grad/Sum_1Sum+Optimizer/gradients/Minimum_3_grad/Select_1:Optimizer/gradients/Minimum_3_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes

:@
Ä
,Optimizer/gradients/Minimum_3_grad/Reshape_1Reshape(Optimizer/gradients/Minimum_3_grad/Sum_1*Optimizer/gradients/Minimum_3_grad/Shape_1*
T0*
Tshape0*
_output_shapes

:@

3Optimizer/gradients/Minimum_3_grad/tuple/group_depsNoOp+^Optimizer/gradients/Minimum_3_grad/Reshape-^Optimizer/gradients/Minimum_3_grad/Reshape_1

;Optimizer/gradients/Minimum_3_grad/tuple/control_dependencyIdentity*Optimizer/gradients/Minimum_3_grad/Reshape4^Optimizer/gradients/Minimum_3_grad/tuple/group_deps*
T0*=
_class3
1/loc:@Optimizer/gradients/Minimum_3_grad/Reshape*
_output_shapes
: 

=Optimizer/gradients/Minimum_3_grad/tuple/control_dependency_1Identity,Optimizer/gradients/Minimum_3_grad/Reshape_14^Optimizer/gradients/Minimum_3_grad/tuple/group_deps*
T0*?
_class5
31loc:@Optimizer/gradients/Minimum_3_grad/Reshape_1*
_output_shapes

:@

Optimizer/gradients/AddN_4AddN=Optimizer/gradients/Maximum_3_grad/tuple/control_dependency_1=Optimizer/gradients/Minimum_3_grad/tuple/control_dependency_1*
T0*?
_class5
31loc:@Optimizer/gradients/Maximum_3_grad/Reshape_1*
N*
_output_shapes

:@
u
$Optimizer/gradients/Add_6_grad/ShapeConst*
valueB"   @   *
dtype0*
_output_shapes
:
p
&Optimizer/gradients/Add_6_grad/Shape_1Const*
valueB:@*
dtype0*
_output_shapes
:
Ř
4Optimizer/gradients/Add_6_grad/BroadcastGradientArgsBroadcastGradientArgs$Optimizer/gradients/Add_6_grad/Shape&Optimizer/gradients/Add_6_grad/Shape_1*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
T0
Á
"Optimizer/gradients/Add_6_grad/SumSumOptimizer/gradients/AddN_44Optimizer/gradients/Add_6_grad/BroadcastGradientArgs*
_output_shapes

:@*
	keep_dims( *

Tidx0*
T0
˛
&Optimizer/gradients/Add_6_grad/ReshapeReshape"Optimizer/gradients/Add_6_grad/Sum$Optimizer/gradients/Add_6_grad/Shape*
T0*
Tshape0*
_output_shapes

:@
Á
$Optimizer/gradients/Add_6_grad/Sum_1SumOptimizer/gradients/AddN_46Optimizer/gradients/Add_6_grad/BroadcastGradientArgs:1*
_output_shapes
:@*
	keep_dims( *

Tidx0*
T0
´
(Optimizer/gradients/Add_6_grad/Reshape_1Reshape$Optimizer/gradients/Add_6_grad/Sum_1&Optimizer/gradients/Add_6_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:@

/Optimizer/gradients/Add_6_grad/tuple/group_depsNoOp'^Optimizer/gradients/Add_6_grad/Reshape)^Optimizer/gradients/Add_6_grad/Reshape_1

7Optimizer/gradients/Add_6_grad/tuple/control_dependencyIdentity&Optimizer/gradients/Add_6_grad/Reshape0^Optimizer/gradients/Add_6_grad/tuple/group_deps*
T0*9
_class/
-+loc:@Optimizer/gradients/Add_6_grad/Reshape*
_output_shapes

:@

9Optimizer/gradients/Add_6_grad/tuple/control_dependency_1Identity(Optimizer/gradients/Add_6_grad/Reshape_10^Optimizer/gradients/Add_6_grad/tuple/group_deps*
T0*;
_class1
/-loc:@Optimizer/gradients/Add_6_grad/Reshape_1*
_output_shapes
:@
Ë
(Optimizer/gradients/MatMul_3_grad/MatMulMatMul7Optimizer/gradients/Add_6_grad/tuple/control_dependencyVariable_6/read*
_output_shapes

:*
transpose_a( *
transpose_b(*
T0
Ă
*Optimizer/gradients/MatMul_3_grad/MatMul_1MatMuladd_57Optimizer/gradients/Add_6_grad/tuple/control_dependency*
T0*
_output_shapes

:@*
transpose_a(*
transpose_b( 

2Optimizer/gradients/MatMul_3_grad/tuple/group_depsNoOp)^Optimizer/gradients/MatMul_3_grad/MatMul+^Optimizer/gradients/MatMul_3_grad/MatMul_1

:Optimizer/gradients/MatMul_3_grad/tuple/control_dependencyIdentity(Optimizer/gradients/MatMul_3_grad/MatMul3^Optimizer/gradients/MatMul_3_grad/tuple/group_deps*
_output_shapes

:*
T0*;
_class1
/-loc:@Optimizer/gradients/MatMul_3_grad/MatMul

<Optimizer/gradients/MatMul_3_grad/tuple/control_dependency_1Identity*Optimizer/gradients/MatMul_3_grad/MatMul_13^Optimizer/gradients/MatMul_3_grad/tuple/group_deps*
_output_shapes

:@*
T0*=
_class3
1/loc:@Optimizer/gradients/MatMul_3_grad/MatMul_1
t
/Optimizer/gradients/add_5_grad/tuple/group_depsNoOp;^Optimizer/gradients/MatMul_3_grad/tuple/control_dependency

7Optimizer/gradients/add_5_grad/tuple/control_dependencyIdentity:Optimizer/gradients/MatMul_3_grad/tuple/control_dependency0^Optimizer/gradients/add_5_grad/tuple/group_deps*
_output_shapes

:*
T0*;
_class1
/-loc:@Optimizer/gradients/MatMul_3_grad/MatMul

9Optimizer/gradients/add_5_grad/tuple/control_dependency_1Identity:Optimizer/gradients/MatMul_3_grad/tuple/control_dependency0^Optimizer/gradients/add_5_grad/tuple/group_deps*
T0*;
_class1
/-loc:@Optimizer/gradients/MatMul_3_grad/MatMul*
_output_shapes

:

Optimizer/gradients/AddN_5AddN9Optimizer/gradients/Loss/l1_regularization/Abs_3_grad/mul<Optimizer/gradients/MatMul_3_grad/tuple/control_dependency_1*
_output_shapes

:@*
T0*L
_classB
@>loc:@Optimizer/gradients/Loss/l1_regularization/Abs_3_grad/mul*
N
k
(Optimizer/gradients/Maximum_2_grad/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
{
*Optimizer/gradients/Maximum_2_grad/Shape_1Const*
valueB"      *
dtype0*
_output_shapes
:
{
*Optimizer/gradients/Maximum_2_grad/Shape_2Const*
_output_shapes
:*
valueB"      *
dtype0
s
.Optimizer/gradients/Maximum_2_grad/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ç
(Optimizer/gradients/Maximum_2_grad/zerosFill*Optimizer/gradients/Maximum_2_grad/Shape_2.Optimizer/gradients/Maximum_2_grad/zeros/Const*
T0*

index_type0*
_output_shapes

:
|
/Optimizer/gradients/Maximum_2_grad/GreaterEqualGreaterEqualMaximum_2/xAdd_4*
T0*
_output_shapes

:
ä
8Optimizer/gradients/Maximum_2_grad/BroadcastGradientArgsBroadcastGradientArgs(Optimizer/gradients/Maximum_2_grad/Shape*Optimizer/gradients/Maximum_2_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
đ
)Optimizer/gradients/Maximum_2_grad/SelectSelect/Optimizer/gradients/Maximum_2_grad/GreaterEqual7Optimizer/gradients/add_5_grad/tuple/control_dependency(Optimizer/gradients/Maximum_2_grad/zeros*
T0*
_output_shapes

:
ň
+Optimizer/gradients/Maximum_2_grad/Select_1Select/Optimizer/gradients/Maximum_2_grad/GreaterEqual(Optimizer/gradients/Maximum_2_grad/zeros7Optimizer/gradients/add_5_grad/tuple/control_dependency*
T0*
_output_shapes

:
Đ
&Optimizer/gradients/Maximum_2_grad/SumSum)Optimizer/gradients/Maximum_2_grad/Select8Optimizer/gradients/Maximum_2_grad/BroadcastGradientArgs*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
ś
*Optimizer/gradients/Maximum_2_grad/ReshapeReshape&Optimizer/gradients/Maximum_2_grad/Sum(Optimizer/gradients/Maximum_2_grad/Shape*
T0*
Tshape0*
_output_shapes
: 
Ţ
(Optimizer/gradients/Maximum_2_grad/Sum_1Sum+Optimizer/gradients/Maximum_2_grad/Select_1:Optimizer/gradients/Maximum_2_grad/BroadcastGradientArgs:1*
_output_shapes

:*
	keep_dims( *

Tidx0*
T0
Ä
,Optimizer/gradients/Maximum_2_grad/Reshape_1Reshape(Optimizer/gradients/Maximum_2_grad/Sum_1*Optimizer/gradients/Maximum_2_grad/Shape_1*
T0*
Tshape0*
_output_shapes

:

3Optimizer/gradients/Maximum_2_grad/tuple/group_depsNoOp+^Optimizer/gradients/Maximum_2_grad/Reshape-^Optimizer/gradients/Maximum_2_grad/Reshape_1

;Optimizer/gradients/Maximum_2_grad/tuple/control_dependencyIdentity*Optimizer/gradients/Maximum_2_grad/Reshape4^Optimizer/gradients/Maximum_2_grad/tuple/group_deps*
_output_shapes
: *
T0*=
_class3
1/loc:@Optimizer/gradients/Maximum_2_grad/Reshape

=Optimizer/gradients/Maximum_2_grad/tuple/control_dependency_1Identity,Optimizer/gradients/Maximum_2_grad/Reshape_14^Optimizer/gradients/Maximum_2_grad/tuple/group_deps*
_output_shapes

:*
T0*?
_class5
31loc:@Optimizer/gradients/Maximum_2_grad/Reshape_1
n
$Optimizer/gradients/mul_2_grad/ShapeConst*
valueB:*
dtype0*
_output_shapes
:
w
&Optimizer/gradients/mul_2_grad/Shape_1Const*
valueB"      *
dtype0*
_output_shapes
:
Ř
4Optimizer/gradients/mul_2_grad/BroadcastGradientArgsBroadcastGradientArgs$Optimizer/gradients/mul_2_grad/Shape&Optimizer/gradients/mul_2_grad/Shape_1*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
T0

"Optimizer/gradients/mul_2_grad/MulMul9Optimizer/gradients/add_5_grad/tuple/control_dependency_1	Minimum_2*
T0*
_output_shapes

:
Ĺ
"Optimizer/gradients/mul_2_grad/SumSum"Optimizer/gradients/mul_2_grad/Mul4Optimizer/gradients/mul_2_grad/BroadcastGradientArgs*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
Ž
&Optimizer/gradients/mul_2_grad/ReshapeReshape"Optimizer/gradients/mul_2_grad/Sum$Optimizer/gradients/mul_2_grad/Shape*
T0*
Tshape0*
_output_shapes
:

$Optimizer/gradients/mul_2_grad/Mul_1Mulencoder3/read9Optimizer/gradients/add_5_grad/tuple/control_dependency_1*
T0*
_output_shapes

:
Ď
$Optimizer/gradients/mul_2_grad/Sum_1Sum$Optimizer/gradients/mul_2_grad/Mul_16Optimizer/gradients/mul_2_grad/BroadcastGradientArgs:1*
_output_shapes

:*
	keep_dims( *

Tidx0*
T0
¸
(Optimizer/gradients/mul_2_grad/Reshape_1Reshape$Optimizer/gradients/mul_2_grad/Sum_1&Optimizer/gradients/mul_2_grad/Shape_1*
_output_shapes

:*
T0*
Tshape0

/Optimizer/gradients/mul_2_grad/tuple/group_depsNoOp'^Optimizer/gradients/mul_2_grad/Reshape)^Optimizer/gradients/mul_2_grad/Reshape_1
ý
7Optimizer/gradients/mul_2_grad/tuple/control_dependencyIdentity&Optimizer/gradients/mul_2_grad/Reshape0^Optimizer/gradients/mul_2_grad/tuple/group_deps*
_output_shapes
:*
T0*9
_class/
-+loc:@Optimizer/gradients/mul_2_grad/Reshape

9Optimizer/gradients/mul_2_grad/tuple/control_dependency_1Identity(Optimizer/gradients/mul_2_grad/Reshape_10^Optimizer/gradients/mul_2_grad/tuple/group_deps*
T0*;
_class1
/-loc:@Optimizer/gradients/mul_2_grad/Reshape_1*
_output_shapes

:
k
(Optimizer/gradients/Minimum_2_grad/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
{
*Optimizer/gradients/Minimum_2_grad/Shape_1Const*
valueB"      *
dtype0*
_output_shapes
:
{
*Optimizer/gradients/Minimum_2_grad/Shape_2Const*
valueB"      *
dtype0*
_output_shapes
:
s
.Optimizer/gradients/Minimum_2_grad/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ç
(Optimizer/gradients/Minimum_2_grad/zerosFill*Optimizer/gradients/Minimum_2_grad/Shape_2.Optimizer/gradients/Minimum_2_grad/zeros/Const*
T0*

index_type0*
_output_shapes

:
v
,Optimizer/gradients/Minimum_2_grad/LessEqual	LessEqualMinimum_2/xAdd_4*
_output_shapes

:*
T0
ä
8Optimizer/gradients/Minimum_2_grad/BroadcastGradientArgsBroadcastGradientArgs(Optimizer/gradients/Minimum_2_grad/Shape*Optimizer/gradients/Minimum_2_grad/Shape_1*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
T0
ď
)Optimizer/gradients/Minimum_2_grad/SelectSelect,Optimizer/gradients/Minimum_2_grad/LessEqual9Optimizer/gradients/mul_2_grad/tuple/control_dependency_1(Optimizer/gradients/Minimum_2_grad/zeros*
T0*
_output_shapes

:
ń
+Optimizer/gradients/Minimum_2_grad/Select_1Select,Optimizer/gradients/Minimum_2_grad/LessEqual(Optimizer/gradients/Minimum_2_grad/zeros9Optimizer/gradients/mul_2_grad/tuple/control_dependency_1*
T0*
_output_shapes

:
Đ
&Optimizer/gradients/Minimum_2_grad/SumSum)Optimizer/gradients/Minimum_2_grad/Select8Optimizer/gradients/Minimum_2_grad/BroadcastGradientArgs*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
ś
*Optimizer/gradients/Minimum_2_grad/ReshapeReshape&Optimizer/gradients/Minimum_2_grad/Sum(Optimizer/gradients/Minimum_2_grad/Shape*
Tshape0*
_output_shapes
: *
T0
Ţ
(Optimizer/gradients/Minimum_2_grad/Sum_1Sum+Optimizer/gradients/Minimum_2_grad/Select_1:Optimizer/gradients/Minimum_2_grad/BroadcastGradientArgs:1*
_output_shapes

:*
	keep_dims( *

Tidx0*
T0
Ä
,Optimizer/gradients/Minimum_2_grad/Reshape_1Reshape(Optimizer/gradients/Minimum_2_grad/Sum_1*Optimizer/gradients/Minimum_2_grad/Shape_1*
T0*
Tshape0*
_output_shapes

:

3Optimizer/gradients/Minimum_2_grad/tuple/group_depsNoOp+^Optimizer/gradients/Minimum_2_grad/Reshape-^Optimizer/gradients/Minimum_2_grad/Reshape_1

;Optimizer/gradients/Minimum_2_grad/tuple/control_dependencyIdentity*Optimizer/gradients/Minimum_2_grad/Reshape4^Optimizer/gradients/Minimum_2_grad/tuple/group_deps*
_output_shapes
: *
T0*=
_class3
1/loc:@Optimizer/gradients/Minimum_2_grad/Reshape

=Optimizer/gradients/Minimum_2_grad/tuple/control_dependency_1Identity,Optimizer/gradients/Minimum_2_grad/Reshape_14^Optimizer/gradients/Minimum_2_grad/tuple/group_deps*
T0*?
_class5
31loc:@Optimizer/gradients/Minimum_2_grad/Reshape_1*
_output_shapes

:

Optimizer/gradients/AddN_6AddN=Optimizer/gradients/Maximum_2_grad/tuple/control_dependency_1=Optimizer/gradients/Minimum_2_grad/tuple/control_dependency_1*
_output_shapes

:*
T0*?
_class5
31loc:@Optimizer/gradients/Maximum_2_grad/Reshape_1*
N
u
$Optimizer/gradients/Add_4_grad/ShapeConst*
valueB"      *
dtype0*
_output_shapes
:
p
&Optimizer/gradients/Add_4_grad/Shape_1Const*
valueB:*
dtype0*
_output_shapes
:
Ř
4Optimizer/gradients/Add_4_grad/BroadcastGradientArgsBroadcastGradientArgs$Optimizer/gradients/Add_4_grad/Shape&Optimizer/gradients/Add_4_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
Á
"Optimizer/gradients/Add_4_grad/SumSumOptimizer/gradients/AddN_64Optimizer/gradients/Add_4_grad/BroadcastGradientArgs*
_output_shapes

:*
	keep_dims( *

Tidx0*
T0
˛
&Optimizer/gradients/Add_4_grad/ReshapeReshape"Optimizer/gradients/Add_4_grad/Sum$Optimizer/gradients/Add_4_grad/Shape*
T0*
Tshape0*
_output_shapes

:
Á
$Optimizer/gradients/Add_4_grad/Sum_1SumOptimizer/gradients/AddN_66Optimizer/gradients/Add_4_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
´
(Optimizer/gradients/Add_4_grad/Reshape_1Reshape$Optimizer/gradients/Add_4_grad/Sum_1&Optimizer/gradients/Add_4_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:

/Optimizer/gradients/Add_4_grad/tuple/group_depsNoOp'^Optimizer/gradients/Add_4_grad/Reshape)^Optimizer/gradients/Add_4_grad/Reshape_1

7Optimizer/gradients/Add_4_grad/tuple/control_dependencyIdentity&Optimizer/gradients/Add_4_grad/Reshape0^Optimizer/gradients/Add_4_grad/tuple/group_deps*
_output_shapes

:*
T0*9
_class/
-+loc:@Optimizer/gradients/Add_4_grad/Reshape

9Optimizer/gradients/Add_4_grad/tuple/control_dependency_1Identity(Optimizer/gradients/Add_4_grad/Reshape_10^Optimizer/gradients/Add_4_grad/tuple/group_deps*
T0*;
_class1
/-loc:@Optimizer/gradients/Add_4_grad/Reshape_1*
_output_shapes
:
Ë
(Optimizer/gradients/MatMul_2_grad/MatMulMatMul7Optimizer/gradients/Add_4_grad/tuple/control_dependencyVariable_4/read*
transpose_b(*
T0*
_output_shapes

:@*
transpose_a( 
Ă
*Optimizer/gradients/MatMul_2_grad/MatMul_1MatMuladd_37Optimizer/gradients/Add_4_grad/tuple/control_dependency*
T0*
_output_shapes

:@*
transpose_a(*
transpose_b( 

2Optimizer/gradients/MatMul_2_grad/tuple/group_depsNoOp)^Optimizer/gradients/MatMul_2_grad/MatMul+^Optimizer/gradients/MatMul_2_grad/MatMul_1

:Optimizer/gradients/MatMul_2_grad/tuple/control_dependencyIdentity(Optimizer/gradients/MatMul_2_grad/MatMul3^Optimizer/gradients/MatMul_2_grad/tuple/group_deps*
T0*;
_class1
/-loc:@Optimizer/gradients/MatMul_2_grad/MatMul*
_output_shapes

:@

<Optimizer/gradients/MatMul_2_grad/tuple/control_dependency_1Identity*Optimizer/gradients/MatMul_2_grad/MatMul_13^Optimizer/gradients/MatMul_2_grad/tuple/group_deps*
T0*=
_class3
1/loc:@Optimizer/gradients/MatMul_2_grad/MatMul_1*
_output_shapes

:@
t
/Optimizer/gradients/add_3_grad/tuple/group_depsNoOp;^Optimizer/gradients/MatMul_2_grad/tuple/control_dependency

7Optimizer/gradients/add_3_grad/tuple/control_dependencyIdentity:Optimizer/gradients/MatMul_2_grad/tuple/control_dependency0^Optimizer/gradients/add_3_grad/tuple/group_deps*
T0*;
_class1
/-loc:@Optimizer/gradients/MatMul_2_grad/MatMul*
_output_shapes

:@

9Optimizer/gradients/add_3_grad/tuple/control_dependency_1Identity:Optimizer/gradients/MatMul_2_grad/tuple/control_dependency0^Optimizer/gradients/add_3_grad/tuple/group_deps*
T0*;
_class1
/-loc:@Optimizer/gradients/MatMul_2_grad/MatMul*
_output_shapes

:@

Optimizer/gradients/AddN_7AddN9Optimizer/gradients/Loss/l1_regularization/Abs_2_grad/mul<Optimizer/gradients/MatMul_2_grad/tuple/control_dependency_1*
T0*L
_classB
@>loc:@Optimizer/gradients/Loss/l1_regularization/Abs_2_grad/mul*
N*
_output_shapes

:@
k
(Optimizer/gradients/Maximum_1_grad/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
{
*Optimizer/gradients/Maximum_1_grad/Shape_1Const*
valueB"   @   *
dtype0*
_output_shapes
:
{
*Optimizer/gradients/Maximum_1_grad/Shape_2Const*
valueB"   @   *
dtype0*
_output_shapes
:
s
.Optimizer/gradients/Maximum_1_grad/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ç
(Optimizer/gradients/Maximum_1_grad/zerosFill*Optimizer/gradients/Maximum_1_grad/Shape_2.Optimizer/gradients/Maximum_1_grad/zeros/Const*
_output_shapes

:@*
T0*

index_type0
|
/Optimizer/gradients/Maximum_1_grad/GreaterEqualGreaterEqualMaximum_1/xAdd_2*
T0*
_output_shapes

:@
ä
8Optimizer/gradients/Maximum_1_grad/BroadcastGradientArgsBroadcastGradientArgs(Optimizer/gradients/Maximum_1_grad/Shape*Optimizer/gradients/Maximum_1_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
đ
)Optimizer/gradients/Maximum_1_grad/SelectSelect/Optimizer/gradients/Maximum_1_grad/GreaterEqual7Optimizer/gradients/add_3_grad/tuple/control_dependency(Optimizer/gradients/Maximum_1_grad/zeros*
T0*
_output_shapes

:@
ň
+Optimizer/gradients/Maximum_1_grad/Select_1Select/Optimizer/gradients/Maximum_1_grad/GreaterEqual(Optimizer/gradients/Maximum_1_grad/zeros7Optimizer/gradients/add_3_grad/tuple/control_dependency*
T0*
_output_shapes

:@
Đ
&Optimizer/gradients/Maximum_1_grad/SumSum)Optimizer/gradients/Maximum_1_grad/Select8Optimizer/gradients/Maximum_1_grad/BroadcastGradientArgs*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
ś
*Optimizer/gradients/Maximum_1_grad/ReshapeReshape&Optimizer/gradients/Maximum_1_grad/Sum(Optimizer/gradients/Maximum_1_grad/Shape*
_output_shapes
: *
T0*
Tshape0
Ţ
(Optimizer/gradients/Maximum_1_grad/Sum_1Sum+Optimizer/gradients/Maximum_1_grad/Select_1:Optimizer/gradients/Maximum_1_grad/BroadcastGradientArgs:1*
T0*
_output_shapes

:@*
	keep_dims( *

Tidx0
Ä
,Optimizer/gradients/Maximum_1_grad/Reshape_1Reshape(Optimizer/gradients/Maximum_1_grad/Sum_1*Optimizer/gradients/Maximum_1_grad/Shape_1*
_output_shapes

:@*
T0*
Tshape0

3Optimizer/gradients/Maximum_1_grad/tuple/group_depsNoOp+^Optimizer/gradients/Maximum_1_grad/Reshape-^Optimizer/gradients/Maximum_1_grad/Reshape_1

;Optimizer/gradients/Maximum_1_grad/tuple/control_dependencyIdentity*Optimizer/gradients/Maximum_1_grad/Reshape4^Optimizer/gradients/Maximum_1_grad/tuple/group_deps*
_output_shapes
: *
T0*=
_class3
1/loc:@Optimizer/gradients/Maximum_1_grad/Reshape

=Optimizer/gradients/Maximum_1_grad/tuple/control_dependency_1Identity,Optimizer/gradients/Maximum_1_grad/Reshape_14^Optimizer/gradients/Maximum_1_grad/tuple/group_deps*
T0*?
_class5
31loc:@Optimizer/gradients/Maximum_1_grad/Reshape_1*
_output_shapes

:@
n
$Optimizer/gradients/mul_1_grad/ShapeConst*
valueB:@*
dtype0*
_output_shapes
:
w
&Optimizer/gradients/mul_1_grad/Shape_1Const*
valueB"   @   *
dtype0*
_output_shapes
:
Ř
4Optimizer/gradients/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgs$Optimizer/gradients/mul_1_grad/Shape&Optimizer/gradients/mul_1_grad/Shape_1*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
T0

"Optimizer/gradients/mul_1_grad/MulMul9Optimizer/gradients/add_3_grad/tuple/control_dependency_1	Minimum_1*
T0*
_output_shapes

:@
Ĺ
"Optimizer/gradients/mul_1_grad/SumSum"Optimizer/gradients/mul_1_grad/Mul4Optimizer/gradients/mul_1_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:@
Ž
&Optimizer/gradients/mul_1_grad/ReshapeReshape"Optimizer/gradients/mul_1_grad/Sum$Optimizer/gradients/mul_1_grad/Shape*
T0*
Tshape0*
_output_shapes
:@

$Optimizer/gradients/mul_1_grad/Mul_1Mulencoder2/read9Optimizer/gradients/add_3_grad/tuple/control_dependency_1*
T0*
_output_shapes

:@
Ď
$Optimizer/gradients/mul_1_grad/Sum_1Sum$Optimizer/gradients/mul_1_grad/Mul_16Optimizer/gradients/mul_1_grad/BroadcastGradientArgs:1*
T0*
_output_shapes

:@*
	keep_dims( *

Tidx0
¸
(Optimizer/gradients/mul_1_grad/Reshape_1Reshape$Optimizer/gradients/mul_1_grad/Sum_1&Optimizer/gradients/mul_1_grad/Shape_1*
T0*
Tshape0*
_output_shapes

:@

/Optimizer/gradients/mul_1_grad/tuple/group_depsNoOp'^Optimizer/gradients/mul_1_grad/Reshape)^Optimizer/gradients/mul_1_grad/Reshape_1
ý
7Optimizer/gradients/mul_1_grad/tuple/control_dependencyIdentity&Optimizer/gradients/mul_1_grad/Reshape0^Optimizer/gradients/mul_1_grad/tuple/group_deps*
T0*9
_class/
-+loc:@Optimizer/gradients/mul_1_grad/Reshape*
_output_shapes
:@

9Optimizer/gradients/mul_1_grad/tuple/control_dependency_1Identity(Optimizer/gradients/mul_1_grad/Reshape_10^Optimizer/gradients/mul_1_grad/tuple/group_deps*
T0*;
_class1
/-loc:@Optimizer/gradients/mul_1_grad/Reshape_1*
_output_shapes

:@
k
(Optimizer/gradients/Minimum_1_grad/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
{
*Optimizer/gradients/Minimum_1_grad/Shape_1Const*
valueB"   @   *
dtype0*
_output_shapes
:
{
*Optimizer/gradients/Minimum_1_grad/Shape_2Const*
_output_shapes
:*
valueB"   @   *
dtype0
s
.Optimizer/gradients/Minimum_1_grad/zeros/ConstConst*
_output_shapes
: *
valueB
 *    *
dtype0
Ç
(Optimizer/gradients/Minimum_1_grad/zerosFill*Optimizer/gradients/Minimum_1_grad/Shape_2.Optimizer/gradients/Minimum_1_grad/zeros/Const*

index_type0*
_output_shapes

:@*
T0
v
,Optimizer/gradients/Minimum_1_grad/LessEqual	LessEqualMinimum_1/xAdd_2*
T0*
_output_shapes

:@
ä
8Optimizer/gradients/Minimum_1_grad/BroadcastGradientArgsBroadcastGradientArgs(Optimizer/gradients/Minimum_1_grad/Shape*Optimizer/gradients/Minimum_1_grad/Shape_1*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
T0
ď
)Optimizer/gradients/Minimum_1_grad/SelectSelect,Optimizer/gradients/Minimum_1_grad/LessEqual9Optimizer/gradients/mul_1_grad/tuple/control_dependency_1(Optimizer/gradients/Minimum_1_grad/zeros*
_output_shapes

:@*
T0
ń
+Optimizer/gradients/Minimum_1_grad/Select_1Select,Optimizer/gradients/Minimum_1_grad/LessEqual(Optimizer/gradients/Minimum_1_grad/zeros9Optimizer/gradients/mul_1_grad/tuple/control_dependency_1*
_output_shapes

:@*
T0
Đ
&Optimizer/gradients/Minimum_1_grad/SumSum)Optimizer/gradients/Minimum_1_grad/Select8Optimizer/gradients/Minimum_1_grad/BroadcastGradientArgs*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
ś
*Optimizer/gradients/Minimum_1_grad/ReshapeReshape&Optimizer/gradients/Minimum_1_grad/Sum(Optimizer/gradients/Minimum_1_grad/Shape*
T0*
Tshape0*
_output_shapes
: 
Ţ
(Optimizer/gradients/Minimum_1_grad/Sum_1Sum+Optimizer/gradients/Minimum_1_grad/Select_1:Optimizer/gradients/Minimum_1_grad/BroadcastGradientArgs:1*
_output_shapes

:@*
	keep_dims( *

Tidx0*
T0
Ä
,Optimizer/gradients/Minimum_1_grad/Reshape_1Reshape(Optimizer/gradients/Minimum_1_grad/Sum_1*Optimizer/gradients/Minimum_1_grad/Shape_1*
_output_shapes

:@*
T0*
Tshape0

3Optimizer/gradients/Minimum_1_grad/tuple/group_depsNoOp+^Optimizer/gradients/Minimum_1_grad/Reshape-^Optimizer/gradients/Minimum_1_grad/Reshape_1

;Optimizer/gradients/Minimum_1_grad/tuple/control_dependencyIdentity*Optimizer/gradients/Minimum_1_grad/Reshape4^Optimizer/gradients/Minimum_1_grad/tuple/group_deps*
T0*=
_class3
1/loc:@Optimizer/gradients/Minimum_1_grad/Reshape*
_output_shapes
: 

=Optimizer/gradients/Minimum_1_grad/tuple/control_dependency_1Identity,Optimizer/gradients/Minimum_1_grad/Reshape_14^Optimizer/gradients/Minimum_1_grad/tuple/group_deps*
T0*?
_class5
31loc:@Optimizer/gradients/Minimum_1_grad/Reshape_1*
_output_shapes

:@

Optimizer/gradients/AddN_8AddN=Optimizer/gradients/Maximum_1_grad/tuple/control_dependency_1=Optimizer/gradients/Minimum_1_grad/tuple/control_dependency_1*?
_class5
31loc:@Optimizer/gradients/Maximum_1_grad/Reshape_1*
N*
_output_shapes

:@*
T0
u
$Optimizer/gradients/Add_2_grad/ShapeConst*
valueB"   @   *
dtype0*
_output_shapes
:
p
&Optimizer/gradients/Add_2_grad/Shape_1Const*
valueB:@*
dtype0*
_output_shapes
:
Ř
4Optimizer/gradients/Add_2_grad/BroadcastGradientArgsBroadcastGradientArgs$Optimizer/gradients/Add_2_grad/Shape&Optimizer/gradients/Add_2_grad/Shape_1*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
T0
Á
"Optimizer/gradients/Add_2_grad/SumSumOptimizer/gradients/AddN_84Optimizer/gradients/Add_2_grad/BroadcastGradientArgs*
_output_shapes

:@*
	keep_dims( *

Tidx0*
T0
˛
&Optimizer/gradients/Add_2_grad/ReshapeReshape"Optimizer/gradients/Add_2_grad/Sum$Optimizer/gradients/Add_2_grad/Shape*
_output_shapes

:@*
T0*
Tshape0
Á
$Optimizer/gradients/Add_2_grad/Sum_1SumOptimizer/gradients/AddN_86Optimizer/gradients/Add_2_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:@*
	keep_dims( *

Tidx0
´
(Optimizer/gradients/Add_2_grad/Reshape_1Reshape$Optimizer/gradients/Add_2_grad/Sum_1&Optimizer/gradients/Add_2_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:@

/Optimizer/gradients/Add_2_grad/tuple/group_depsNoOp'^Optimizer/gradients/Add_2_grad/Reshape)^Optimizer/gradients/Add_2_grad/Reshape_1

7Optimizer/gradients/Add_2_grad/tuple/control_dependencyIdentity&Optimizer/gradients/Add_2_grad/Reshape0^Optimizer/gradients/Add_2_grad/tuple/group_deps*
T0*9
_class/
-+loc:@Optimizer/gradients/Add_2_grad/Reshape*
_output_shapes

:@

9Optimizer/gradients/Add_2_grad/tuple/control_dependency_1Identity(Optimizer/gradients/Add_2_grad/Reshape_10^Optimizer/gradients/Add_2_grad/tuple/group_deps*
_output_shapes
:@*
T0*;
_class1
/-loc:@Optimizer/gradients/Add_2_grad/Reshape_1
Ě
(Optimizer/gradients/MatMul_1_grad/MatMulMatMul7Optimizer/gradients/Add_2_grad/tuple/control_dependencyVariable_2/read*
T0*
_output_shapes
:	*
transpose_a( *
transpose_b(
Ä
*Optimizer/gradients/MatMul_1_grad/MatMul_1MatMuladd_17Optimizer/gradients/Add_2_grad/tuple/control_dependency*
_output_shapes
:	@*
transpose_a(*
transpose_b( *
T0

2Optimizer/gradients/MatMul_1_grad/tuple/group_depsNoOp)^Optimizer/gradients/MatMul_1_grad/MatMul+^Optimizer/gradients/MatMul_1_grad/MatMul_1

:Optimizer/gradients/MatMul_1_grad/tuple/control_dependencyIdentity(Optimizer/gradients/MatMul_1_grad/MatMul3^Optimizer/gradients/MatMul_1_grad/tuple/group_deps*
T0*;
_class1
/-loc:@Optimizer/gradients/MatMul_1_grad/MatMul*
_output_shapes
:	

<Optimizer/gradients/MatMul_1_grad/tuple/control_dependency_1Identity*Optimizer/gradients/MatMul_1_grad/MatMul_13^Optimizer/gradients/MatMul_1_grad/tuple/group_deps*
T0*=
_class3
1/loc:@Optimizer/gradients/MatMul_1_grad/MatMul_1*
_output_shapes
:	@
t
/Optimizer/gradients/add_1_grad/tuple/group_depsNoOp;^Optimizer/gradients/MatMul_1_grad/tuple/control_dependency

7Optimizer/gradients/add_1_grad/tuple/control_dependencyIdentity:Optimizer/gradients/MatMul_1_grad/tuple/control_dependency0^Optimizer/gradients/add_1_grad/tuple/group_deps*;
_class1
/-loc:@Optimizer/gradients/MatMul_1_grad/MatMul*
_output_shapes
:	*
T0

9Optimizer/gradients/add_1_grad/tuple/control_dependency_1Identity:Optimizer/gradients/MatMul_1_grad/tuple/control_dependency0^Optimizer/gradients/add_1_grad/tuple/group_deps*
_output_shapes
:	*
T0*;
_class1
/-loc:@Optimizer/gradients/MatMul_1_grad/MatMul

Optimizer/gradients/AddN_9AddN9Optimizer/gradients/Loss/l1_regularization/Abs_1_grad/mul<Optimizer/gradients/MatMul_1_grad/tuple/control_dependency_1*
T0*L
_classB
@>loc:@Optimizer/gradients/Loss/l1_regularization/Abs_1_grad/mul*
N*
_output_shapes
:	@
i
&Optimizer/gradients/Maximum_grad/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
y
(Optimizer/gradients/Maximum_grad/Shape_1Const*
valueB"      *
dtype0*
_output_shapes
:
y
(Optimizer/gradients/Maximum_grad/Shape_2Const*
dtype0*
_output_shapes
:*
valueB"      
q
,Optimizer/gradients/Maximum_grad/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Â
&Optimizer/gradients/Maximum_grad/zerosFill(Optimizer/gradients/Maximum_grad/Shape_2,Optimizer/gradients/Maximum_grad/zeros/Const*
_output_shapes
:	*
T0*

index_type0
w
-Optimizer/gradients/Maximum_grad/GreaterEqualGreaterEqual	Maximum/xAdd*
T0*
_output_shapes
:	
Ţ
6Optimizer/gradients/Maximum_grad/BroadcastGradientArgsBroadcastGradientArgs&Optimizer/gradients/Maximum_grad/Shape(Optimizer/gradients/Maximum_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
ë
'Optimizer/gradients/Maximum_grad/SelectSelect-Optimizer/gradients/Maximum_grad/GreaterEqual7Optimizer/gradients/add_1_grad/tuple/control_dependency&Optimizer/gradients/Maximum_grad/zeros*
_output_shapes
:	*
T0
í
)Optimizer/gradients/Maximum_grad/Select_1Select-Optimizer/gradients/Maximum_grad/GreaterEqual&Optimizer/gradients/Maximum_grad/zeros7Optimizer/gradients/add_1_grad/tuple/control_dependency*
T0*
_output_shapes
:	
Ę
$Optimizer/gradients/Maximum_grad/SumSum'Optimizer/gradients/Maximum_grad/Select6Optimizer/gradients/Maximum_grad/BroadcastGradientArgs*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
°
(Optimizer/gradients/Maximum_grad/ReshapeReshape$Optimizer/gradients/Maximum_grad/Sum&Optimizer/gradients/Maximum_grad/Shape*
_output_shapes
: *
T0*
Tshape0
Ů
&Optimizer/gradients/Maximum_grad/Sum_1Sum)Optimizer/gradients/Maximum_grad/Select_18Optimizer/gradients/Maximum_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:	*
	keep_dims( *

Tidx0
ż
*Optimizer/gradients/Maximum_grad/Reshape_1Reshape&Optimizer/gradients/Maximum_grad/Sum_1(Optimizer/gradients/Maximum_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:	

1Optimizer/gradients/Maximum_grad/tuple/group_depsNoOp)^Optimizer/gradients/Maximum_grad/Reshape+^Optimizer/gradients/Maximum_grad/Reshape_1

9Optimizer/gradients/Maximum_grad/tuple/control_dependencyIdentity(Optimizer/gradients/Maximum_grad/Reshape2^Optimizer/gradients/Maximum_grad/tuple/group_deps*;
_class1
/-loc:@Optimizer/gradients/Maximum_grad/Reshape*
_output_shapes
: *
T0

;Optimizer/gradients/Maximum_grad/tuple/control_dependency_1Identity*Optimizer/gradients/Maximum_grad/Reshape_12^Optimizer/gradients/Maximum_grad/tuple/group_deps*
_output_shapes
:	*
T0*=
_class3
1/loc:@Optimizer/gradients/Maximum_grad/Reshape_1
m
"Optimizer/gradients/mul_grad/ShapeConst*
_output_shapes
:*
valueB:*
dtype0
u
$Optimizer/gradients/mul_grad/Shape_1Const*
valueB"      *
dtype0*
_output_shapes
:
Ň
2Optimizer/gradients/mul_grad/BroadcastGradientArgsBroadcastGradientArgs"Optimizer/gradients/mul_grad/Shape$Optimizer/gradients/mul_grad/Shape_1*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
T0

 Optimizer/gradients/mul_grad/MulMul9Optimizer/gradients/add_1_grad/tuple/control_dependency_1Minimum*
_output_shapes
:	*
T0
Ŕ
 Optimizer/gradients/mul_grad/SumSum Optimizer/gradients/mul_grad/Mul2Optimizer/gradients/mul_grad/BroadcastGradientArgs*
T0*
_output_shapes	
:*
	keep_dims( *

Tidx0
Š
$Optimizer/gradients/mul_grad/ReshapeReshape Optimizer/gradients/mul_grad/Sum"Optimizer/gradients/mul_grad/Shape*
T0*
Tshape0*
_output_shapes	
:

"Optimizer/gradients/mul_grad/Mul_1Mulencoder1/read9Optimizer/gradients/add_1_grad/tuple/control_dependency_1*
T0*
_output_shapes
:	
Ę
"Optimizer/gradients/mul_grad/Sum_1Sum"Optimizer/gradients/mul_grad/Mul_14Optimizer/gradients/mul_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:	*
	keep_dims( *

Tidx0
ł
&Optimizer/gradients/mul_grad/Reshape_1Reshape"Optimizer/gradients/mul_grad/Sum_1$Optimizer/gradients/mul_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:	

-Optimizer/gradients/mul_grad/tuple/group_depsNoOp%^Optimizer/gradients/mul_grad/Reshape'^Optimizer/gradients/mul_grad/Reshape_1
ö
5Optimizer/gradients/mul_grad/tuple/control_dependencyIdentity$Optimizer/gradients/mul_grad/Reshape.^Optimizer/gradients/mul_grad/tuple/group_deps*
T0*7
_class-
+)loc:@Optimizer/gradients/mul_grad/Reshape*
_output_shapes	
:

7Optimizer/gradients/mul_grad/tuple/control_dependency_1Identity&Optimizer/gradients/mul_grad/Reshape_1.^Optimizer/gradients/mul_grad/tuple/group_deps*
_output_shapes
:	*
T0*9
_class/
-+loc:@Optimizer/gradients/mul_grad/Reshape_1
i
&Optimizer/gradients/Minimum_grad/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
y
(Optimizer/gradients/Minimum_grad/Shape_1Const*
valueB"      *
dtype0*
_output_shapes
:
y
(Optimizer/gradients/Minimum_grad/Shape_2Const*
valueB"      *
dtype0*
_output_shapes
:
q
,Optimizer/gradients/Minimum_grad/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Â
&Optimizer/gradients/Minimum_grad/zerosFill(Optimizer/gradients/Minimum_grad/Shape_2,Optimizer/gradients/Minimum_grad/zeros/Const*
T0*

index_type0*
_output_shapes
:	
q
*Optimizer/gradients/Minimum_grad/LessEqual	LessEqual	Minimum/xAdd*
_output_shapes
:	*
T0
Ţ
6Optimizer/gradients/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgs&Optimizer/gradients/Minimum_grad/Shape(Optimizer/gradients/Minimum_grad/Shape_1*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
T0
č
'Optimizer/gradients/Minimum_grad/SelectSelect*Optimizer/gradients/Minimum_grad/LessEqual7Optimizer/gradients/mul_grad/tuple/control_dependency_1&Optimizer/gradients/Minimum_grad/zeros*
T0*
_output_shapes
:	
ę
)Optimizer/gradients/Minimum_grad/Select_1Select*Optimizer/gradients/Minimum_grad/LessEqual&Optimizer/gradients/Minimum_grad/zeros7Optimizer/gradients/mul_grad/tuple/control_dependency_1*
T0*
_output_shapes
:	
Ę
$Optimizer/gradients/Minimum_grad/SumSum'Optimizer/gradients/Minimum_grad/Select6Optimizer/gradients/Minimum_grad/BroadcastGradientArgs*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
°
(Optimizer/gradients/Minimum_grad/ReshapeReshape$Optimizer/gradients/Minimum_grad/Sum&Optimizer/gradients/Minimum_grad/Shape*
T0*
Tshape0*
_output_shapes
: 
Ů
&Optimizer/gradients/Minimum_grad/Sum_1Sum)Optimizer/gradients/Minimum_grad/Select_18Optimizer/gradients/Minimum_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:	*
	keep_dims( *

Tidx0
ż
*Optimizer/gradients/Minimum_grad/Reshape_1Reshape&Optimizer/gradients/Minimum_grad/Sum_1(Optimizer/gradients/Minimum_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:	

1Optimizer/gradients/Minimum_grad/tuple/group_depsNoOp)^Optimizer/gradients/Minimum_grad/Reshape+^Optimizer/gradients/Minimum_grad/Reshape_1

9Optimizer/gradients/Minimum_grad/tuple/control_dependencyIdentity(Optimizer/gradients/Minimum_grad/Reshape2^Optimizer/gradients/Minimum_grad/tuple/group_deps*
_output_shapes
: *
T0*;
_class1
/-loc:@Optimizer/gradients/Minimum_grad/Reshape

;Optimizer/gradients/Minimum_grad/tuple/control_dependency_1Identity*Optimizer/gradients/Minimum_grad/Reshape_12^Optimizer/gradients/Minimum_grad/tuple/group_deps*
T0*=
_class3
1/loc:@Optimizer/gradients/Minimum_grad/Reshape_1*
_output_shapes
:	

Optimizer/gradients/AddN_10AddN;Optimizer/gradients/Maximum_grad/tuple/control_dependency_1;Optimizer/gradients/Minimum_grad/tuple/control_dependency_1*=
_class3
1/loc:@Optimizer/gradients/Maximum_grad/Reshape_1*
N*
_output_shapes
:	*
T0
s
"Optimizer/gradients/Add_grad/ShapeConst*
valueB"      *
dtype0*
_output_shapes
:
o
$Optimizer/gradients/Add_grad/Shape_1Const*
_output_shapes
:*
valueB:*
dtype0
Ň
2Optimizer/gradients/Add_grad/BroadcastGradientArgsBroadcastGradientArgs"Optimizer/gradients/Add_grad/Shape$Optimizer/gradients/Add_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
ż
 Optimizer/gradients/Add_grad/SumSumOptimizer/gradients/AddN_102Optimizer/gradients/Add_grad/BroadcastGradientArgs*
T0*
_output_shapes
:	*
	keep_dims( *

Tidx0
­
$Optimizer/gradients/Add_grad/ReshapeReshape Optimizer/gradients/Add_grad/Sum"Optimizer/gradients/Add_grad/Shape*
Tshape0*
_output_shapes
:	*
T0
ż
"Optimizer/gradients/Add_grad/Sum_1SumOptimizer/gradients/AddN_104Optimizer/gradients/Add_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes	
:
Ż
&Optimizer/gradients/Add_grad/Reshape_1Reshape"Optimizer/gradients/Add_grad/Sum_1$Optimizer/gradients/Add_grad/Shape_1*
_output_shapes	
:*
T0*
Tshape0

-Optimizer/gradients/Add_grad/tuple/group_depsNoOp%^Optimizer/gradients/Add_grad/Reshape'^Optimizer/gradients/Add_grad/Reshape_1
ú
5Optimizer/gradients/Add_grad/tuple/control_dependencyIdentity$Optimizer/gradients/Add_grad/Reshape.^Optimizer/gradients/Add_grad/tuple/group_deps*
T0*7
_class-
+)loc:@Optimizer/gradients/Add_grad/Reshape*
_output_shapes
:	
ü
7Optimizer/gradients/Add_grad/tuple/control_dependency_1Identity&Optimizer/gradients/Add_grad/Reshape_1.^Optimizer/gradients/Add_grad/tuple/group_deps*9
_class/
-+loc:@Optimizer/gradients/Add_grad/Reshape_1*
_output_shapes	
:*
T0
Ć
&Optimizer/gradients/MatMul_grad/MatMulMatMul5Optimizer/gradients/Add_grad/tuple/control_dependencyVariable/read*
T0*
_output_shapes
:	ö*
transpose_a( *
transpose_b(
Ď
(Optimizer/gradients/MatMul_grad/MatMul_1MatMulplaceholder/x_input5Optimizer/gradients/Add_grad/tuple/control_dependency* 
_output_shapes
:
ö*
transpose_a(*
transpose_b( *
T0

0Optimizer/gradients/MatMul_grad/tuple/group_depsNoOp'^Optimizer/gradients/MatMul_grad/MatMul)^Optimizer/gradients/MatMul_grad/MatMul_1

8Optimizer/gradients/MatMul_grad/tuple/control_dependencyIdentity&Optimizer/gradients/MatMul_grad/MatMul1^Optimizer/gradients/MatMul_grad/tuple/group_deps*
T0*9
_class/
-+loc:@Optimizer/gradients/MatMul_grad/MatMul*
_output_shapes
:	ö

:Optimizer/gradients/MatMul_grad/tuple/control_dependency_1Identity(Optimizer/gradients/MatMul_grad/MatMul_11^Optimizer/gradients/MatMul_grad/tuple/group_deps*
T0*;
_class1
/-loc:@Optimizer/gradients/MatMul_grad/MatMul_1* 
_output_shapes
:
ö

Optimizer/gradients/AddN_11AddN7Optimizer/gradients/Loss/l1_regularization/Abs_grad/mul:Optimizer/gradients/MatMul_grad/tuple/control_dependency_1*
T0*J
_class@
><loc:@Optimizer/gradients/Loss/l1_regularization/Abs_grad/mul*
N* 
_output_shapes
:
ö

#Optimizer/beta1_power/initial_valueConst*
valueB
 *fff?*
_class
loc:@Variable*
dtype0*
_output_shapes
: 

Optimizer/beta1_power
VariableV2*
dtype0*
_output_shapes
: *
shared_name *
_class
loc:@Variable*
	container *
shape: 
É
Optimizer/beta1_power/AssignAssignOptimizer/beta1_power#Optimizer/beta1_power/initial_value*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(*
_output_shapes
: 
{
Optimizer/beta1_power/readIdentityOptimizer/beta1_power*
_class
loc:@Variable*
_output_shapes
: *
T0

#Optimizer/beta2_power/initial_valueConst*
valueB
 *wž?*
_class
loc:@Variable*
dtype0*
_output_shapes
: 

Optimizer/beta2_power
VariableV2*
shared_name *
_class
loc:@Variable*
	container *
shape: *
dtype0*
_output_shapes
: 
É
Optimizer/beta2_power/AssignAssignOptimizer/beta2_power#Optimizer/beta2_power/initial_value*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(*
_output_shapes
: 
{
Optimizer/beta2_power/readIdentityOptimizer/beta2_power*
T0*
_class
loc:@Variable*
_output_shapes
: 

/Variable/Adam/Initializer/zeros/shape_as_tensorConst*
_class
loc:@Variable*
valueB"ö
     *
dtype0*
_output_shapes
:

%Variable/Adam/Initializer/zeros/ConstConst*
_class
loc:@Variable*
valueB
 *    *
dtype0*
_output_shapes
: 
Ů
Variable/Adam/Initializer/zerosFill/Variable/Adam/Initializer/zeros/shape_as_tensor%Variable/Adam/Initializer/zeros/Const*
T0*
_class
loc:@Variable*

index_type0* 
_output_shapes
:
ö
˘
Variable/Adam
VariableV2*
	container *
shape:
ö*
dtype0* 
_output_shapes
:
ö*
shared_name *
_class
loc:@Variable
ż
Variable/Adam/AssignAssignVariable/AdamVariable/Adam/Initializer/zeros* 
_output_shapes
:
ö*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(
u
Variable/Adam/readIdentityVariable/Adam* 
_output_shapes
:
ö*
T0*
_class
loc:@Variable

1Variable/Adam_1/Initializer/zeros/shape_as_tensorConst*
_class
loc:@Variable*
valueB"ö
     *
dtype0*
_output_shapes
:

'Variable/Adam_1/Initializer/zeros/ConstConst*
_class
loc:@Variable*
valueB
 *    *
dtype0*
_output_shapes
: 
ß
!Variable/Adam_1/Initializer/zerosFill1Variable/Adam_1/Initializer/zeros/shape_as_tensor'Variable/Adam_1/Initializer/zeros/Const*
T0*
_class
loc:@Variable*

index_type0* 
_output_shapes
:
ö
¤
Variable/Adam_1
VariableV2*
	container *
shape:
ö*
dtype0* 
_output_shapes
:
ö*
shared_name *
_class
loc:@Variable
Ĺ
Variable/Adam_1/AssignAssignVariable/Adam_1!Variable/Adam_1/Initializer/zeros*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(* 
_output_shapes
:
ö
y
Variable/Adam_1/readIdentityVariable/Adam_1* 
_output_shapes
:
ö*
T0*
_class
loc:@Variable

!Variable_1/Adam/Initializer/zerosConst*
_class
loc:@Variable_1*
valueB*    *
dtype0*
_output_shapes	
:

Variable_1/Adam
VariableV2*
shared_name *
_class
loc:@Variable_1*
	container *
shape:*
dtype0*
_output_shapes	
:
Â
Variable_1/Adam/AssignAssignVariable_1/Adam!Variable_1/Adam/Initializer/zeros*
_output_shapes	
:*
use_locking(*
T0*
_class
loc:@Variable_1*
validate_shape(
v
Variable_1/Adam/readIdentityVariable_1/Adam*
T0*
_class
loc:@Variable_1*
_output_shapes	
:

#Variable_1/Adam_1/Initializer/zerosConst*
_class
loc:@Variable_1*
valueB*    *
dtype0*
_output_shapes	
:

Variable_1/Adam_1
VariableV2*
dtype0*
_output_shapes	
:*
shared_name *
_class
loc:@Variable_1*
	container *
shape:
Č
Variable_1/Adam_1/AssignAssignVariable_1/Adam_1#Variable_1/Adam_1/Initializer/zeros*
use_locking(*
T0*
_class
loc:@Variable_1*
validate_shape(*
_output_shapes	
:
z
Variable_1/Adam_1/readIdentityVariable_1/Adam_1*
T0*
_class
loc:@Variable_1*
_output_shapes	
:

encoder1/Adam/Initializer/zerosConst*
_class
loc:@encoder1*
valueB*    *
dtype0*
_output_shapes	
:

encoder1/Adam
VariableV2*
shared_name *
_class
loc:@encoder1*
	container *
shape:*
dtype0*
_output_shapes	
:
ş
encoder1/Adam/AssignAssignencoder1/Adamencoder1/Adam/Initializer/zeros*
use_locking(*
T0*
_class
loc:@encoder1*
validate_shape(*
_output_shapes	
:
p
encoder1/Adam/readIdentityencoder1/Adam*
T0*
_class
loc:@encoder1*
_output_shapes	
:

!encoder1/Adam_1/Initializer/zerosConst*
_class
loc:@encoder1*
valueB*    *
dtype0*
_output_shapes	
:

encoder1/Adam_1
VariableV2*
_output_shapes	
:*
shared_name *
_class
loc:@encoder1*
	container *
shape:*
dtype0
Ŕ
encoder1/Adam_1/AssignAssignencoder1/Adam_1!encoder1/Adam_1/Initializer/zeros*
use_locking(*
T0*
_class
loc:@encoder1*
validate_shape(*
_output_shapes	
:
t
encoder1/Adam_1/readIdentityencoder1/Adam_1*
T0*
_class
loc:@encoder1*
_output_shapes	
:
Ą
1Variable_2/Adam/Initializer/zeros/shape_as_tensorConst*
_output_shapes
:*
_class
loc:@Variable_2*
valueB"   @   *
dtype0

'Variable_2/Adam/Initializer/zeros/ConstConst*
_class
loc:@Variable_2*
valueB
 *    *
dtype0*
_output_shapes
: 
ŕ
!Variable_2/Adam/Initializer/zerosFill1Variable_2/Adam/Initializer/zeros/shape_as_tensor'Variable_2/Adam/Initializer/zeros/Const*
T0*
_class
loc:@Variable_2*

index_type0*
_output_shapes
:	@
¤
Variable_2/Adam
VariableV2*
_output_shapes
:	@*
shared_name *
_class
loc:@Variable_2*
	container *
shape:	@*
dtype0
Ć
Variable_2/Adam/AssignAssignVariable_2/Adam!Variable_2/Adam/Initializer/zeros*
use_locking(*
T0*
_class
loc:@Variable_2*
validate_shape(*
_output_shapes
:	@
z
Variable_2/Adam/readIdentityVariable_2/Adam*
_class
loc:@Variable_2*
_output_shapes
:	@*
T0
Ł
3Variable_2/Adam_1/Initializer/zeros/shape_as_tensorConst*
_class
loc:@Variable_2*
valueB"   @   *
dtype0*
_output_shapes
:

)Variable_2/Adam_1/Initializer/zeros/ConstConst*
_class
loc:@Variable_2*
valueB
 *    *
dtype0*
_output_shapes
: 
ć
#Variable_2/Adam_1/Initializer/zerosFill3Variable_2/Adam_1/Initializer/zeros/shape_as_tensor)Variable_2/Adam_1/Initializer/zeros/Const*
T0*
_class
loc:@Variable_2*

index_type0*
_output_shapes
:	@
Ś
Variable_2/Adam_1
VariableV2*
	container *
shape:	@*
dtype0*
_output_shapes
:	@*
shared_name *
_class
loc:@Variable_2
Ě
Variable_2/Adam_1/AssignAssignVariable_2/Adam_1#Variable_2/Adam_1/Initializer/zeros*
validate_shape(*
_output_shapes
:	@*
use_locking(*
T0*
_class
loc:@Variable_2
~
Variable_2/Adam_1/readIdentityVariable_2/Adam_1*
_output_shapes
:	@*
T0*
_class
loc:@Variable_2

!Variable_3/Adam/Initializer/zerosConst*
_class
loc:@Variable_3*
valueB@*    *
dtype0*
_output_shapes
:@

Variable_3/Adam
VariableV2*
	container *
shape:@*
dtype0*
_output_shapes
:@*
shared_name *
_class
loc:@Variable_3
Á
Variable_3/Adam/AssignAssignVariable_3/Adam!Variable_3/Adam/Initializer/zeros*
use_locking(*
T0*
_class
loc:@Variable_3*
validate_shape(*
_output_shapes
:@
u
Variable_3/Adam/readIdentityVariable_3/Adam*
T0*
_class
loc:@Variable_3*
_output_shapes
:@

#Variable_3/Adam_1/Initializer/zerosConst*
_class
loc:@Variable_3*
valueB@*    *
dtype0*
_output_shapes
:@

Variable_3/Adam_1
VariableV2*
dtype0*
_output_shapes
:@*
shared_name *
_class
loc:@Variable_3*
	container *
shape:@
Ç
Variable_3/Adam_1/AssignAssignVariable_3/Adam_1#Variable_3/Adam_1/Initializer/zeros*
use_locking(*
T0*
_class
loc:@Variable_3*
validate_shape(*
_output_shapes
:@
y
Variable_3/Adam_1/readIdentityVariable_3/Adam_1*
T0*
_class
loc:@Variable_3*
_output_shapes
:@

encoder2/Adam/Initializer/zerosConst*
dtype0*
_output_shapes
:@*
_class
loc:@encoder2*
valueB@*    

encoder2/Adam
VariableV2*
shared_name *
_class
loc:@encoder2*
	container *
shape:@*
dtype0*
_output_shapes
:@
š
encoder2/Adam/AssignAssignencoder2/Adamencoder2/Adam/Initializer/zeros*
use_locking(*
T0*
_class
loc:@encoder2*
validate_shape(*
_output_shapes
:@
o
encoder2/Adam/readIdentityencoder2/Adam*
T0*
_class
loc:@encoder2*
_output_shapes
:@

!encoder2/Adam_1/Initializer/zerosConst*
_class
loc:@encoder2*
valueB@*    *
dtype0*
_output_shapes
:@

encoder2/Adam_1
VariableV2*
shared_name *
_class
loc:@encoder2*
	container *
shape:@*
dtype0*
_output_shapes
:@
ż
encoder2/Adam_1/AssignAssignencoder2/Adam_1!encoder2/Adam_1/Initializer/zeros*
_class
loc:@encoder2*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0
s
encoder2/Adam_1/readIdentityencoder2/Adam_1*
T0*
_class
loc:@encoder2*
_output_shapes
:@
Ą
1Variable_4/Adam/Initializer/zeros/shape_as_tensorConst*
_output_shapes
:*
_class
loc:@Variable_4*
valueB"@      *
dtype0

'Variable_4/Adam/Initializer/zeros/ConstConst*
_output_shapes
: *
_class
loc:@Variable_4*
valueB
 *    *
dtype0
ß
!Variable_4/Adam/Initializer/zerosFill1Variable_4/Adam/Initializer/zeros/shape_as_tensor'Variable_4/Adam/Initializer/zeros/Const*
_output_shapes

:@*
T0*
_class
loc:@Variable_4*

index_type0
˘
Variable_4/Adam
VariableV2*
shared_name *
_class
loc:@Variable_4*
	container *
shape
:@*
dtype0*
_output_shapes

:@
Ĺ
Variable_4/Adam/AssignAssignVariable_4/Adam!Variable_4/Adam/Initializer/zeros*
use_locking(*
T0*
_class
loc:@Variable_4*
validate_shape(*
_output_shapes

:@
y
Variable_4/Adam/readIdentityVariable_4/Adam*
T0*
_class
loc:@Variable_4*
_output_shapes

:@
Ł
3Variable_4/Adam_1/Initializer/zeros/shape_as_tensorConst*
_output_shapes
:*
_class
loc:@Variable_4*
valueB"@      *
dtype0

)Variable_4/Adam_1/Initializer/zeros/ConstConst*
_class
loc:@Variable_4*
valueB
 *    *
dtype0*
_output_shapes
: 
ĺ
#Variable_4/Adam_1/Initializer/zerosFill3Variable_4/Adam_1/Initializer/zeros/shape_as_tensor)Variable_4/Adam_1/Initializer/zeros/Const*
_output_shapes

:@*
T0*
_class
loc:@Variable_4*

index_type0
¤
Variable_4/Adam_1
VariableV2*
dtype0*
_output_shapes

:@*
shared_name *
_class
loc:@Variable_4*
	container *
shape
:@
Ë
Variable_4/Adam_1/AssignAssignVariable_4/Adam_1#Variable_4/Adam_1/Initializer/zeros*
use_locking(*
T0*
_class
loc:@Variable_4*
validate_shape(*
_output_shapes

:@
}
Variable_4/Adam_1/readIdentityVariable_4/Adam_1*
T0*
_class
loc:@Variable_4*
_output_shapes

:@

!Variable_5/Adam/Initializer/zerosConst*
_class
loc:@Variable_5*
valueB*    *
dtype0*
_output_shapes
:

Variable_5/Adam
VariableV2*
	container *
shape:*
dtype0*
_output_shapes
:*
shared_name *
_class
loc:@Variable_5
Á
Variable_5/Adam/AssignAssignVariable_5/Adam!Variable_5/Adam/Initializer/zeros*
_output_shapes
:*
use_locking(*
T0*
_class
loc:@Variable_5*
validate_shape(
u
Variable_5/Adam/readIdentityVariable_5/Adam*
T0*
_class
loc:@Variable_5*
_output_shapes
:

#Variable_5/Adam_1/Initializer/zerosConst*
_class
loc:@Variable_5*
valueB*    *
dtype0*
_output_shapes
:

Variable_5/Adam_1
VariableV2*
	container *
shape:*
dtype0*
_output_shapes
:*
shared_name *
_class
loc:@Variable_5
Ç
Variable_5/Adam_1/AssignAssignVariable_5/Adam_1#Variable_5/Adam_1/Initializer/zeros*
use_locking(*
T0*
_class
loc:@Variable_5*
validate_shape(*
_output_shapes
:
y
Variable_5/Adam_1/readIdentityVariable_5/Adam_1*
_class
loc:@Variable_5*
_output_shapes
:*
T0

encoder3/Adam/Initializer/zerosConst*
_class
loc:@encoder3*
valueB*    *
dtype0*
_output_shapes
:

encoder3/Adam
VariableV2*
	container *
shape:*
dtype0*
_output_shapes
:*
shared_name *
_class
loc:@encoder3
š
encoder3/Adam/AssignAssignencoder3/Adamencoder3/Adam/Initializer/zeros*
T0*
_class
loc:@encoder3*
validate_shape(*
_output_shapes
:*
use_locking(
o
encoder3/Adam/readIdentityencoder3/Adam*
_output_shapes
:*
T0*
_class
loc:@encoder3

!encoder3/Adam_1/Initializer/zerosConst*
_class
loc:@encoder3*
valueB*    *
dtype0*
_output_shapes
:

encoder3/Adam_1
VariableV2*
_output_shapes
:*
shared_name *
_class
loc:@encoder3*
	container *
shape:*
dtype0
ż
encoder3/Adam_1/AssignAssignencoder3/Adam_1!encoder3/Adam_1/Initializer/zeros*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*
_class
loc:@encoder3
s
encoder3/Adam_1/readIdentityencoder3/Adam_1*
T0*
_class
loc:@encoder3*
_output_shapes
:
Ą
1Variable_6/Adam/Initializer/zeros/shape_as_tensorConst*
_class
loc:@Variable_6*
valueB"   @   *
dtype0*
_output_shapes
:

'Variable_6/Adam/Initializer/zeros/ConstConst*
_class
loc:@Variable_6*
valueB
 *    *
dtype0*
_output_shapes
: 
ß
!Variable_6/Adam/Initializer/zerosFill1Variable_6/Adam/Initializer/zeros/shape_as_tensor'Variable_6/Adam/Initializer/zeros/Const*
_output_shapes

:@*
T0*
_class
loc:@Variable_6*

index_type0
˘
Variable_6/Adam
VariableV2*
shape
:@*
dtype0*
_output_shapes

:@*
shared_name *
_class
loc:@Variable_6*
	container 
Ĺ
Variable_6/Adam/AssignAssignVariable_6/Adam!Variable_6/Adam/Initializer/zeros*
use_locking(*
T0*
_class
loc:@Variable_6*
validate_shape(*
_output_shapes

:@
y
Variable_6/Adam/readIdentityVariable_6/Adam*
_output_shapes

:@*
T0*
_class
loc:@Variable_6
Ł
3Variable_6/Adam_1/Initializer/zeros/shape_as_tensorConst*
_output_shapes
:*
_class
loc:@Variable_6*
valueB"   @   *
dtype0

)Variable_6/Adam_1/Initializer/zeros/ConstConst*
_class
loc:@Variable_6*
valueB
 *    *
dtype0*
_output_shapes
: 
ĺ
#Variable_6/Adam_1/Initializer/zerosFill3Variable_6/Adam_1/Initializer/zeros/shape_as_tensor)Variable_6/Adam_1/Initializer/zeros/Const*
T0*
_class
loc:@Variable_6*

index_type0*
_output_shapes

:@
¤
Variable_6/Adam_1
VariableV2*
shared_name *
_class
loc:@Variable_6*
	container *
shape
:@*
dtype0*
_output_shapes

:@
Ë
Variable_6/Adam_1/AssignAssignVariable_6/Adam_1#Variable_6/Adam_1/Initializer/zeros*
T0*
_class
loc:@Variable_6*
validate_shape(*
_output_shapes

:@*
use_locking(
}
Variable_6/Adam_1/readIdentityVariable_6/Adam_1*
T0*
_class
loc:@Variable_6*
_output_shapes

:@

!Variable_7/Adam/Initializer/zerosConst*
_class
loc:@Variable_7*
valueB@*    *
dtype0*
_output_shapes
:@

Variable_7/Adam
VariableV2*
dtype0*
_output_shapes
:@*
shared_name *
_class
loc:@Variable_7*
	container *
shape:@
Á
Variable_7/Adam/AssignAssignVariable_7/Adam!Variable_7/Adam/Initializer/zeros*
use_locking(*
T0*
_class
loc:@Variable_7*
validate_shape(*
_output_shapes
:@
u
Variable_7/Adam/readIdentityVariable_7/Adam*
T0*
_class
loc:@Variable_7*
_output_shapes
:@

#Variable_7/Adam_1/Initializer/zerosConst*
_class
loc:@Variable_7*
valueB@*    *
dtype0*
_output_shapes
:@

Variable_7/Adam_1
VariableV2*
shared_name *
_class
loc:@Variable_7*
	container *
shape:@*
dtype0*
_output_shapes
:@
Ç
Variable_7/Adam_1/AssignAssignVariable_7/Adam_1#Variable_7/Adam_1/Initializer/zeros*
use_locking(*
T0*
_class
loc:@Variable_7*
validate_shape(*
_output_shapes
:@
y
Variable_7/Adam_1/readIdentityVariable_7/Adam_1*
_class
loc:@Variable_7*
_output_shapes
:@*
T0

decoder1/Adam/Initializer/zerosConst*
_class
loc:@decoder1*
valueB@*    *
dtype0*
_output_shapes
:@

decoder1/Adam
VariableV2*
_class
loc:@decoder1*
	container *
shape:@*
dtype0*
_output_shapes
:@*
shared_name 
š
decoder1/Adam/AssignAssigndecoder1/Adamdecoder1/Adam/Initializer/zeros*
use_locking(*
T0*
_class
loc:@decoder1*
validate_shape(*
_output_shapes
:@
o
decoder1/Adam/readIdentitydecoder1/Adam*
_output_shapes
:@*
T0*
_class
loc:@decoder1

!decoder1/Adam_1/Initializer/zerosConst*
_class
loc:@decoder1*
valueB@*    *
dtype0*
_output_shapes
:@

decoder1/Adam_1
VariableV2*
	container *
shape:@*
dtype0*
_output_shapes
:@*
shared_name *
_class
loc:@decoder1
ż
decoder1/Adam_1/AssignAssigndecoder1/Adam_1!decoder1/Adam_1/Initializer/zeros*
use_locking(*
T0*
_class
loc:@decoder1*
validate_shape(*
_output_shapes
:@
s
decoder1/Adam_1/readIdentitydecoder1/Adam_1*
_output_shapes
:@*
T0*
_class
loc:@decoder1
Ą
1Variable_8/Adam/Initializer/zeros/shape_as_tensorConst*
dtype0*
_output_shapes
:*
_class
loc:@Variable_8*
valueB"@      

'Variable_8/Adam/Initializer/zeros/ConstConst*
dtype0*
_output_shapes
: *
_class
loc:@Variable_8*
valueB
 *    
ŕ
!Variable_8/Adam/Initializer/zerosFill1Variable_8/Adam/Initializer/zeros/shape_as_tensor'Variable_8/Adam/Initializer/zeros/Const*
T0*
_class
loc:@Variable_8*

index_type0*
_output_shapes
:	@
¤
Variable_8/Adam
VariableV2*
dtype0*
_output_shapes
:	@*
shared_name *
_class
loc:@Variable_8*
	container *
shape:	@
Ć
Variable_8/Adam/AssignAssignVariable_8/Adam!Variable_8/Adam/Initializer/zeros*
validate_shape(*
_output_shapes
:	@*
use_locking(*
T0*
_class
loc:@Variable_8
z
Variable_8/Adam/readIdentityVariable_8/Adam*
T0*
_class
loc:@Variable_8*
_output_shapes
:	@
Ł
3Variable_8/Adam_1/Initializer/zeros/shape_as_tensorConst*
_class
loc:@Variable_8*
valueB"@      *
dtype0*
_output_shapes
:

)Variable_8/Adam_1/Initializer/zeros/ConstConst*
_class
loc:@Variable_8*
valueB
 *    *
dtype0*
_output_shapes
: 
ć
#Variable_8/Adam_1/Initializer/zerosFill3Variable_8/Adam_1/Initializer/zeros/shape_as_tensor)Variable_8/Adam_1/Initializer/zeros/Const*
_output_shapes
:	@*
T0*
_class
loc:@Variable_8*

index_type0
Ś
Variable_8/Adam_1
VariableV2*
dtype0*
_output_shapes
:	@*
shared_name *
_class
loc:@Variable_8*
	container *
shape:	@
Ě
Variable_8/Adam_1/AssignAssignVariable_8/Adam_1#Variable_8/Adam_1/Initializer/zeros*
T0*
_class
loc:@Variable_8*
validate_shape(*
_output_shapes
:	@*
use_locking(
~
Variable_8/Adam_1/readIdentityVariable_8/Adam_1*
T0*
_class
loc:@Variable_8*
_output_shapes
:	@

!Variable_9/Adam/Initializer/zerosConst*
_class
loc:@Variable_9*
valueB*    *
dtype0*
_output_shapes	
:

Variable_9/Adam
VariableV2*
	container *
shape:*
dtype0*
_output_shapes	
:*
shared_name *
_class
loc:@Variable_9
Â
Variable_9/Adam/AssignAssignVariable_9/Adam!Variable_9/Adam/Initializer/zeros*
_class
loc:@Variable_9*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0
v
Variable_9/Adam/readIdentityVariable_9/Adam*
T0*
_class
loc:@Variable_9*
_output_shapes	
:

#Variable_9/Adam_1/Initializer/zerosConst*
_class
loc:@Variable_9*
valueB*    *
dtype0*
_output_shapes	
:

Variable_9/Adam_1
VariableV2*
shared_name *
_class
loc:@Variable_9*
	container *
shape:*
dtype0*
_output_shapes	
:
Č
Variable_9/Adam_1/AssignAssignVariable_9/Adam_1#Variable_9/Adam_1/Initializer/zeros*
T0*
_class
loc:@Variable_9*
validate_shape(*
_output_shapes	
:*
use_locking(
z
Variable_9/Adam_1/readIdentityVariable_9/Adam_1*
T0*
_class
loc:@Variable_9*
_output_shapes	
:

decoder2/Adam/Initializer/zerosConst*
_output_shapes	
:*
_class
loc:@decoder2*
valueB*    *
dtype0

decoder2/Adam
VariableV2*
shared_name *
_class
loc:@decoder2*
	container *
shape:*
dtype0*
_output_shapes	
:
ş
decoder2/Adam/AssignAssigndecoder2/Adamdecoder2/Adam/Initializer/zeros*
use_locking(*
T0*
_class
loc:@decoder2*
validate_shape(*
_output_shapes	
:
p
decoder2/Adam/readIdentitydecoder2/Adam*
_class
loc:@decoder2*
_output_shapes	
:*
T0

!decoder2/Adam_1/Initializer/zerosConst*
_output_shapes	
:*
_class
loc:@decoder2*
valueB*    *
dtype0

decoder2/Adam_1
VariableV2*
_class
loc:@decoder2*
	container *
shape:*
dtype0*
_output_shapes	
:*
shared_name 
Ŕ
decoder2/Adam_1/AssignAssigndecoder2/Adam_1!decoder2/Adam_1/Initializer/zeros*
_output_shapes	
:*
use_locking(*
T0*
_class
loc:@decoder2*
validate_shape(
t
decoder2/Adam_1/readIdentitydecoder2/Adam_1*
_output_shapes	
:*
T0*
_class
loc:@decoder2
Ł
2Variable_10/Adam/Initializer/zeros/shape_as_tensorConst*
dtype0*
_output_shapes
:*
_class
loc:@Variable_10*
valueB"   ö
  

(Variable_10/Adam/Initializer/zeros/ConstConst*
dtype0*
_output_shapes
: *
_class
loc:@Variable_10*
valueB
 *    
ĺ
"Variable_10/Adam/Initializer/zerosFill2Variable_10/Adam/Initializer/zeros/shape_as_tensor(Variable_10/Adam/Initializer/zeros/Const* 
_output_shapes
:
ö*
T0*
_class
loc:@Variable_10*

index_type0
¨
Variable_10/Adam
VariableV2*
_class
loc:@Variable_10*
	container *
shape:
ö*
dtype0* 
_output_shapes
:
ö*
shared_name 
Ë
Variable_10/Adam/AssignAssignVariable_10/Adam"Variable_10/Adam/Initializer/zeros* 
_output_shapes
:
ö*
use_locking(*
T0*
_class
loc:@Variable_10*
validate_shape(
~
Variable_10/Adam/readIdentityVariable_10/Adam*
T0*
_class
loc:@Variable_10* 
_output_shapes
:
ö
Ľ
4Variable_10/Adam_1/Initializer/zeros/shape_as_tensorConst*
dtype0*
_output_shapes
:*
_class
loc:@Variable_10*
valueB"   ö
  

*Variable_10/Adam_1/Initializer/zeros/ConstConst*
_class
loc:@Variable_10*
valueB
 *    *
dtype0*
_output_shapes
: 
ë
$Variable_10/Adam_1/Initializer/zerosFill4Variable_10/Adam_1/Initializer/zeros/shape_as_tensor*Variable_10/Adam_1/Initializer/zeros/Const* 
_output_shapes
:
ö*
T0*
_class
loc:@Variable_10*

index_type0
Ş
Variable_10/Adam_1
VariableV2*
_class
loc:@Variable_10*
	container *
shape:
ö*
dtype0* 
_output_shapes
:
ö*
shared_name 
Ń
Variable_10/Adam_1/AssignAssignVariable_10/Adam_1$Variable_10/Adam_1/Initializer/zeros*
_class
loc:@Variable_10*
validate_shape(* 
_output_shapes
:
ö*
use_locking(*
T0

Variable_10/Adam_1/readIdentityVariable_10/Adam_1* 
_output_shapes
:
ö*
T0*
_class
loc:@Variable_10

2Variable_11/Adam/Initializer/zeros/shape_as_tensorConst*
dtype0*
_output_shapes
:*
_class
loc:@Variable_11*
valueB:ö

(Variable_11/Adam/Initializer/zeros/ConstConst*
dtype0*
_output_shapes
: *
_class
loc:@Variable_11*
valueB
 *    
ŕ
"Variable_11/Adam/Initializer/zerosFill2Variable_11/Adam/Initializer/zeros/shape_as_tensor(Variable_11/Adam/Initializer/zeros/Const*
T0*
_class
loc:@Variable_11*

index_type0*
_output_shapes	
:ö

Variable_11/Adam
VariableV2*
shared_name *
_class
loc:@Variable_11*
	container *
shape:ö*
dtype0*
_output_shapes	
:ö
Ć
Variable_11/Adam/AssignAssignVariable_11/Adam"Variable_11/Adam/Initializer/zeros*
_output_shapes	
:ö*
use_locking(*
T0*
_class
loc:@Variable_11*
validate_shape(
y
Variable_11/Adam/readIdentityVariable_11/Adam*
T0*
_class
loc:@Variable_11*
_output_shapes	
:ö

4Variable_11/Adam_1/Initializer/zeros/shape_as_tensorConst*
_class
loc:@Variable_11*
valueB:ö*
dtype0*
_output_shapes
:

*Variable_11/Adam_1/Initializer/zeros/ConstConst*
_class
loc:@Variable_11*
valueB
 *    *
dtype0*
_output_shapes
: 
ć
$Variable_11/Adam_1/Initializer/zerosFill4Variable_11/Adam_1/Initializer/zeros/shape_as_tensor*Variable_11/Adam_1/Initializer/zeros/Const*
_output_shapes	
:ö*
T0*
_class
loc:@Variable_11*

index_type0
 
Variable_11/Adam_1
VariableV2*
dtype0*
_output_shapes	
:ö*
shared_name *
_class
loc:@Variable_11*
	container *
shape:ö
Ě
Variable_11/Adam_1/AssignAssignVariable_11/Adam_1$Variable_11/Adam_1/Initializer/zeros*
validate_shape(*
_output_shapes	
:ö*
use_locking(*
T0*
_class
loc:@Variable_11
}
Variable_11/Adam_1/readIdentityVariable_11/Adam_1*
T0*
_class
loc:@Variable_11*
_output_shapes	
:ö

/decoder3/Adam/Initializer/zeros/shape_as_tensorConst*
_class
loc:@decoder3*
valueB:ö*
dtype0*
_output_shapes
:

%decoder3/Adam/Initializer/zeros/ConstConst*
_class
loc:@decoder3*
valueB
 *    *
dtype0*
_output_shapes
: 
Ô
decoder3/Adam/Initializer/zerosFill/decoder3/Adam/Initializer/zeros/shape_as_tensor%decoder3/Adam/Initializer/zeros/Const*
T0*
_class
loc:@decoder3*

index_type0*
_output_shapes	
:ö

decoder3/Adam
VariableV2*
_output_shapes	
:ö*
shared_name *
_class
loc:@decoder3*
	container *
shape:ö*
dtype0
ş
decoder3/Adam/AssignAssigndecoder3/Adamdecoder3/Adam/Initializer/zeros*
use_locking(*
T0*
_class
loc:@decoder3*
validate_shape(*
_output_shapes	
:ö
p
decoder3/Adam/readIdentitydecoder3/Adam*
T0*
_class
loc:@decoder3*
_output_shapes	
:ö

1decoder3/Adam_1/Initializer/zeros/shape_as_tensorConst*
_output_shapes
:*
_class
loc:@decoder3*
valueB:ö*
dtype0

'decoder3/Adam_1/Initializer/zeros/ConstConst*
_class
loc:@decoder3*
valueB
 *    *
dtype0*
_output_shapes
: 
Ú
!decoder3/Adam_1/Initializer/zerosFill1decoder3/Adam_1/Initializer/zeros/shape_as_tensor'decoder3/Adam_1/Initializer/zeros/Const*
T0*
_class
loc:@decoder3*

index_type0*
_output_shapes	
:ö

decoder3/Adam_1
VariableV2*
dtype0*
_output_shapes	
:ö*
shared_name *
_class
loc:@decoder3*
	container *
shape:ö
Ŕ
decoder3/Adam_1/AssignAssigndecoder3/Adam_1!decoder3/Adam_1/Initializer/zeros*
use_locking(*
T0*
_class
loc:@decoder3*
validate_shape(*
_output_shapes	
:ö
t
decoder3/Adam_1/readIdentitydecoder3/Adam_1*
T0*
_class
loc:@decoder3*
_output_shapes	
:ö
a
Optimizer/Adam/learning_rateConst*
valueB
 *o:*
dtype0*
_output_shapes
: 
Y
Optimizer/Adam/beta1Const*
valueB
 *fff?*
dtype0*
_output_shapes
: 
Y
Optimizer/Adam/beta2Const*
valueB
 *wž?*
dtype0*
_output_shapes
: 
[
Optimizer/Adam/epsilonConst*
valueB
 *wĚ+2*
dtype0*
_output_shapes
: 

(Optimizer/Adam/update_Variable/ApplyAdam	ApplyAdamVariableVariable/AdamVariable/Adam_1Optimizer/beta1_power/readOptimizer/beta2_power/readOptimizer/Adam/learning_rateOptimizer/Adam/beta1Optimizer/Adam/beta2Optimizer/Adam/epsilonOptimizer/gradients/AddN_11* 
_output_shapes
:
ö*
use_locking( *
T0*
_class
loc:@Variable*
use_nesterov( 
Ś
*Optimizer/Adam/update_Variable_1/ApplyAdam	ApplyAdam
Variable_1Variable_1/AdamVariable_1/Adam_1Optimizer/beta1_power/readOptimizer/beta2_power/readOptimizer/Adam/learning_rateOptimizer/Adam/beta1Optimizer/Adam/beta2Optimizer/Adam/epsilon7Optimizer/gradients/Add_grad/tuple/control_dependency_1*
T0*
_class
loc:@Variable_1*
use_nesterov( *
_output_shapes	
:*
use_locking( 

(Optimizer/Adam/update_encoder1/ApplyAdam	ApplyAdamencoder1encoder1/Adamencoder1/Adam_1Optimizer/beta1_power/readOptimizer/beta2_power/readOptimizer/Adam/learning_rateOptimizer/Adam/beta1Optimizer/Adam/beta2Optimizer/Adam/epsilon5Optimizer/gradients/mul_grad/tuple/control_dependency*
T0*
_class
loc:@encoder1*
use_nesterov( *
_output_shapes	
:*
use_locking( 

*Optimizer/Adam/update_Variable_2/ApplyAdam	ApplyAdam
Variable_2Variable_2/AdamVariable_2/Adam_1Optimizer/beta1_power/readOptimizer/beta2_power/readOptimizer/Adam/learning_rateOptimizer/Adam/beta1Optimizer/Adam/beta2Optimizer/Adam/epsilonOptimizer/gradients/AddN_9*
_output_shapes
:	@*
use_locking( *
T0*
_class
loc:@Variable_2*
use_nesterov( 
§
*Optimizer/Adam/update_Variable_3/ApplyAdam	ApplyAdam
Variable_3Variable_3/AdamVariable_3/Adam_1Optimizer/beta1_power/readOptimizer/beta2_power/readOptimizer/Adam/learning_rateOptimizer/Adam/beta1Optimizer/Adam/beta2Optimizer/Adam/epsilon9Optimizer/gradients/Add_2_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
loc:@Variable_3*
use_nesterov( *
_output_shapes
:@

(Optimizer/Adam/update_encoder2/ApplyAdam	ApplyAdamencoder2encoder2/Adamencoder2/Adam_1Optimizer/beta1_power/readOptimizer/beta2_power/readOptimizer/Adam/learning_rateOptimizer/Adam/beta1Optimizer/Adam/beta2Optimizer/Adam/epsilon7Optimizer/gradients/mul_1_grad/tuple/control_dependency*
_output_shapes
:@*
use_locking( *
T0*
_class
loc:@encoder2*
use_nesterov( 

*Optimizer/Adam/update_Variable_4/ApplyAdam	ApplyAdam
Variable_4Variable_4/AdamVariable_4/Adam_1Optimizer/beta1_power/readOptimizer/beta2_power/readOptimizer/Adam/learning_rateOptimizer/Adam/beta1Optimizer/Adam/beta2Optimizer/Adam/epsilonOptimizer/gradients/AddN_7*
T0*
_class
loc:@Variable_4*
use_nesterov( *
_output_shapes

:@*
use_locking( 
§
*Optimizer/Adam/update_Variable_5/ApplyAdam	ApplyAdam
Variable_5Variable_5/AdamVariable_5/Adam_1Optimizer/beta1_power/readOptimizer/beta2_power/readOptimizer/Adam/learning_rateOptimizer/Adam/beta1Optimizer/Adam/beta2Optimizer/Adam/epsilon9Optimizer/gradients/Add_4_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
loc:@Variable_5*
use_nesterov( *
_output_shapes
:

(Optimizer/Adam/update_encoder3/ApplyAdam	ApplyAdamencoder3encoder3/Adamencoder3/Adam_1Optimizer/beta1_power/readOptimizer/beta2_power/readOptimizer/Adam/learning_rateOptimizer/Adam/beta1Optimizer/Adam/beta2Optimizer/Adam/epsilon7Optimizer/gradients/mul_2_grad/tuple/control_dependency*
use_locking( *
T0*
_class
loc:@encoder3*
use_nesterov( *
_output_shapes
:

*Optimizer/Adam/update_Variable_6/ApplyAdam	ApplyAdam
Variable_6Variable_6/AdamVariable_6/Adam_1Optimizer/beta1_power/readOptimizer/beta2_power/readOptimizer/Adam/learning_rateOptimizer/Adam/beta1Optimizer/Adam/beta2Optimizer/Adam/epsilonOptimizer/gradients/AddN_5*
use_nesterov( *
_output_shapes

:@*
use_locking( *
T0*
_class
loc:@Variable_6
§
*Optimizer/Adam/update_Variable_7/ApplyAdam	ApplyAdam
Variable_7Variable_7/AdamVariable_7/Adam_1Optimizer/beta1_power/readOptimizer/beta2_power/readOptimizer/Adam/learning_rateOptimizer/Adam/beta1Optimizer/Adam/beta2Optimizer/Adam/epsilon9Optimizer/gradients/Add_6_grad/tuple/control_dependency_1*
use_nesterov( *
_output_shapes
:@*
use_locking( *
T0*
_class
loc:@Variable_7

(Optimizer/Adam/update_decoder1/ApplyAdam	ApplyAdamdecoder1decoder1/Adamdecoder1/Adam_1Optimizer/beta1_power/readOptimizer/beta2_power/readOptimizer/Adam/learning_rateOptimizer/Adam/beta1Optimizer/Adam/beta2Optimizer/Adam/epsilon7Optimizer/gradients/mul_3_grad/tuple/control_dependency*
use_nesterov( *
_output_shapes
:@*
use_locking( *
T0*
_class
loc:@decoder1

*Optimizer/Adam/update_Variable_8/ApplyAdam	ApplyAdam
Variable_8Variable_8/AdamVariable_8/Adam_1Optimizer/beta1_power/readOptimizer/beta2_power/readOptimizer/Adam/learning_rateOptimizer/Adam/beta1Optimizer/Adam/beta2Optimizer/Adam/epsilonOptimizer/gradients/AddN_3*
_class
loc:@Variable_8*
use_nesterov( *
_output_shapes
:	@*
use_locking( *
T0
¨
*Optimizer/Adam/update_Variable_9/ApplyAdam	ApplyAdam
Variable_9Variable_9/AdamVariable_9/Adam_1Optimizer/beta1_power/readOptimizer/beta2_power/readOptimizer/Adam/learning_rateOptimizer/Adam/beta1Optimizer/Adam/beta2Optimizer/Adam/epsilon9Optimizer/gradients/Add_8_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
loc:@Variable_9*
use_nesterov( *
_output_shapes	
:

(Optimizer/Adam/update_decoder2/ApplyAdam	ApplyAdamdecoder2decoder2/Adamdecoder2/Adam_1Optimizer/beta1_power/readOptimizer/beta2_power/readOptimizer/Adam/learning_rateOptimizer/Adam/beta1Optimizer/Adam/beta2Optimizer/Adam/epsilon7Optimizer/gradients/mul_4_grad/tuple/control_dependency*
use_locking( *
T0*
_class
loc:@decoder2*
use_nesterov( *
_output_shapes	
:

+Optimizer/Adam/update_Variable_10/ApplyAdam	ApplyAdamVariable_10Variable_10/AdamVariable_10/Adam_1Optimizer/beta1_power/readOptimizer/beta2_power/readOptimizer/Adam/learning_rateOptimizer/Adam/beta1Optimizer/Adam/beta2Optimizer/Adam/epsilonOptimizer/gradients/AddN_1*
use_nesterov( * 
_output_shapes
:
ö*
use_locking( *
T0*
_class
loc:@Variable_10
Ž
+Optimizer/Adam/update_Variable_11/ApplyAdam	ApplyAdamVariable_11Variable_11/AdamVariable_11/Adam_1Optimizer/beta1_power/readOptimizer/beta2_power/readOptimizer/Adam/learning_rateOptimizer/Adam/beta1Optimizer/Adam/beta2Optimizer/Adam/epsilon:Optimizer/gradients/Add_10_grad/tuple/control_dependency_1*
_output_shapes	
:ö*
use_locking( *
T0*
_class
loc:@Variable_11*
use_nesterov( 

(Optimizer/Adam/update_decoder3/ApplyAdam	ApplyAdamdecoder3decoder3/Adamdecoder3/Adam_1Optimizer/beta1_power/readOptimizer/beta2_power/readOptimizer/Adam/learning_rateOptimizer/Adam/beta1Optimizer/Adam/beta2Optimizer/Adam/epsilon7Optimizer/gradients/mul_5_grad/tuple/control_dependency*
use_locking( *
T0*
_class
loc:@decoder3*
use_nesterov( *
_output_shapes	
:ö
§
Optimizer/Adam/mulMulOptimizer/beta1_power/readOptimizer/Adam/beta1)^Optimizer/Adam/update_Variable/ApplyAdam+^Optimizer/Adam/update_Variable_1/ApplyAdam,^Optimizer/Adam/update_Variable_10/ApplyAdam,^Optimizer/Adam/update_Variable_11/ApplyAdam+^Optimizer/Adam/update_Variable_2/ApplyAdam+^Optimizer/Adam/update_Variable_3/ApplyAdam+^Optimizer/Adam/update_Variable_4/ApplyAdam+^Optimizer/Adam/update_Variable_5/ApplyAdam+^Optimizer/Adam/update_Variable_6/ApplyAdam+^Optimizer/Adam/update_Variable_7/ApplyAdam+^Optimizer/Adam/update_Variable_8/ApplyAdam+^Optimizer/Adam/update_Variable_9/ApplyAdam)^Optimizer/Adam/update_decoder1/ApplyAdam)^Optimizer/Adam/update_decoder2/ApplyAdam)^Optimizer/Adam/update_decoder3/ApplyAdam)^Optimizer/Adam/update_encoder1/ApplyAdam)^Optimizer/Adam/update_encoder2/ApplyAdam)^Optimizer/Adam/update_encoder3/ApplyAdam*
T0*
_class
loc:@Variable*
_output_shapes
: 
ą
Optimizer/Adam/AssignAssignOptimizer/beta1_powerOptimizer/Adam/mul*
_output_shapes
: *
use_locking( *
T0*
_class
loc:@Variable*
validate_shape(
Š
Optimizer/Adam/mul_1MulOptimizer/beta2_power/readOptimizer/Adam/beta2)^Optimizer/Adam/update_Variable/ApplyAdam+^Optimizer/Adam/update_Variable_1/ApplyAdam,^Optimizer/Adam/update_Variable_10/ApplyAdam,^Optimizer/Adam/update_Variable_11/ApplyAdam+^Optimizer/Adam/update_Variable_2/ApplyAdam+^Optimizer/Adam/update_Variable_3/ApplyAdam+^Optimizer/Adam/update_Variable_4/ApplyAdam+^Optimizer/Adam/update_Variable_5/ApplyAdam+^Optimizer/Adam/update_Variable_6/ApplyAdam+^Optimizer/Adam/update_Variable_7/ApplyAdam+^Optimizer/Adam/update_Variable_8/ApplyAdam+^Optimizer/Adam/update_Variable_9/ApplyAdam)^Optimizer/Adam/update_decoder1/ApplyAdam)^Optimizer/Adam/update_decoder2/ApplyAdam)^Optimizer/Adam/update_decoder3/ApplyAdam)^Optimizer/Adam/update_encoder1/ApplyAdam)^Optimizer/Adam/update_encoder2/ApplyAdam)^Optimizer/Adam/update_encoder3/ApplyAdam*
_output_shapes
: *
T0*
_class
loc:@Variable
ľ
Optimizer/Adam/Assign_1AssignOptimizer/beta2_powerOptimizer/Adam/mul_1*
use_locking( *
T0*
_class
loc:@Variable*
validate_shape(*
_output_shapes
: 
ć
Optimizer/AdamNoOp^Optimizer/Adam/Assign^Optimizer/Adam/Assign_1)^Optimizer/Adam/update_Variable/ApplyAdam+^Optimizer/Adam/update_Variable_1/ApplyAdam,^Optimizer/Adam/update_Variable_10/ApplyAdam,^Optimizer/Adam/update_Variable_11/ApplyAdam+^Optimizer/Adam/update_Variable_2/ApplyAdam+^Optimizer/Adam/update_Variable_3/ApplyAdam+^Optimizer/Adam/update_Variable_4/ApplyAdam+^Optimizer/Adam/update_Variable_5/ApplyAdam+^Optimizer/Adam/update_Variable_6/ApplyAdam+^Optimizer/Adam/update_Variable_7/ApplyAdam+^Optimizer/Adam/update_Variable_8/ApplyAdam+^Optimizer/Adam/update_Variable_9/ApplyAdam)^Optimizer/Adam/update_decoder1/ApplyAdam)^Optimizer/Adam/update_decoder2/ApplyAdam)^Optimizer/Adam/update_decoder3/ApplyAdam)^Optimizer/Adam/update_encoder1/ApplyAdam)^Optimizer/Adam/update_encoder2/ApplyAdam)^Optimizer/Adam/update_encoder3/ApplyAdam"nĺfÇ     ,9#Q	ĹHŕ?×AJşŤ

ŕ
,
Abs
x"T
y"T"
Ttype:

2	
:
Add
x"T
y"T
z"T"
Ttype:
2	
W
AddN
inputs"T*N
sum"T"
Nint(0"!
Ttype:
2	
î
	ApplyAdam
var"T	
m"T	
v"T
beta1_power"T
beta2_power"T
lr"T

beta1"T

beta2"T
epsilon"T	
grad"T
out"T" 
Ttype:
2	"
use_lockingbool( "
use_nesterovbool( 
x
Assign
ref"T

value"T

output_ref"T"	
Ttype"
validate_shapebool("
use_lockingbool(
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
B
GreaterEqual
x"T
y"T
z
"
Ttype:
2	
.
Identity

input"T
output"T"	
Ttype
?
	LessEqual
x"T
y"T
z
"
Ttype:
2	
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
;
Maximum
x"T
y"T
z"T"
Ttype:

2	

Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
;
Minimum
x"T
y"T
z"T"
Ttype:

2	
=
Mul
x"T
y"T
z"T"
Ttype:
2	
.
Neg
x"T
y"T"
Ttype:

2	

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
a
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:	
2	
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
P
ScalarSummary
tags
values"T
summary"
Ttype:
2	
?
Select
	condition

t"T
e"T
output"T"	
Ttype
/
Sign
x"T
y"T"
Ttype:

2	
G
SquaredDifference
x"T
y"T
z"T"
Ttype:

2	
:
Sub
x"T
y"T
z"T"
Ttype:
2	

Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	

TruncatedNormal

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
P
Unpack

value"T
output"T*num"
numint("	
Ttype"
axisint 
s

VariableV2
ref"dtype"
shapeshape"
dtypetype"
	containerstring "
shared_namestring *1.13.12b'v1.13.0-rc2-5-g6612da8951'ÄÝ	
f
placeholder/x_inputPlaceholder*
shape:	ö*
dtype0*
_output_shapes
:	ö
g
truncated_normal/shapeConst*
valueB"ö
     *
dtype0*
_output_shapes
:
Z
truncated_normal/meanConst*
_output_shapes
: *
valueB
 *    *
dtype0
\
truncated_normal/stddevConst*
valueB
 *ÍĚĚ=*
dtype0*
_output_shapes
: 

 truncated_normal/TruncatedNormalTruncatedNormaltruncated_normal/shape*
T0*
dtype0*
seed2 * 
_output_shapes
:
ö*

seed 

truncated_normal/mulMul truncated_normal/TruncatedNormaltruncated_normal/stddev*
T0* 
_output_shapes
:
ö
o
truncated_normalAddtruncated_normal/multruncated_normal/mean*
T0* 
_output_shapes
:
ö

Variable
VariableV2*
	container * 
_output_shapes
:
ö*
shape:
ö*
shared_name *
dtype0
Ś
Variable/AssignAssignVariabletruncated_normal*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(* 
_output_shapes
:
ö
k
Variable/readIdentityVariable* 
_output_shapes
:
ö*
T0*
_class
loc:@Variable
c
truncated_normal_1/shapeConst*
_output_shapes
:*
valueB:*
dtype0
\
truncated_normal_1/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
^
truncated_normal_1/stddevConst*
valueB
 *ÍĚĚ=*
dtype0*
_output_shapes
: 

"truncated_normal_1/TruncatedNormalTruncatedNormaltruncated_normal_1/shape*
seed2 *
_output_shapes	
:*

seed *
T0*
dtype0

truncated_normal_1/mulMul"truncated_normal_1/TruncatedNormaltruncated_normal_1/stddev*
T0*
_output_shapes	
:
p
truncated_normal_1Addtruncated_normal_1/multruncated_normal_1/mean*
T0*
_output_shapes	
:
x

Variable_1
VariableV2*
	container *
_output_shapes	
:*
shape:*
shared_name *
dtype0
Š
Variable_1/AssignAssign
Variable_1truncated_normal_1*
_class
loc:@Variable_1*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0
l
Variable_1/readIdentity
Variable_1*
_output_shapes	
:*
T0*
_class
loc:@Variable_1

MatMulMatMulplaceholder/x_inputVariable/read*
T0*
transpose_a( *
_output_shapes
:	*
transpose_b( 
M
AddAddMatMulVariable_1/read*
_output_shapes
:	*
T0

encoder1/Initializer/ConstConst*
_class
loc:@encoder1*
valueB*ÍĚĚ=*
dtype0*
_output_shapes	
:

encoder1
VariableV2*
shared_name *
_class
loc:@encoder1*
	container *
shape:*
dtype0*
_output_shapes	
:
Ť
encoder1/AssignAssignencoder1encoder1/Initializer/Const*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*
_class
loc:@encoder1
f
encoder1/readIdentityencoder1*
T0*
_class
loc:@encoder1*
_output_shapes	
:
N
	Maximum/xConst*
valueB
 *    *
dtype0*
_output_shapes
: 
L
MaximumMaximum	Maximum/xAdd*
T0*
_output_shapes
:	
N
	Minimum/xConst*
valueB
 *    *
dtype0*
_output_shapes
: 
L
MinimumMinimum	Minimum/xAdd*
_output_shapes
:	*
T0
L
mulMulencoder1/readMinimum*
T0*
_output_shapes
:	
D
add_1AddMaximummul*
_output_shapes
:	*
T0
i
truncated_normal_2/shapeConst*
dtype0*
_output_shapes
:*
valueB"   @   
\
truncated_normal_2/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
^
truncated_normal_2/stddevConst*
valueB
 *ÍĚĚ=*
dtype0*
_output_shapes
: 

"truncated_normal_2/TruncatedNormalTruncatedNormaltruncated_normal_2/shape*
seed2 *
_output_shapes
:	@*

seed *
T0*
dtype0

truncated_normal_2/mulMul"truncated_normal_2/TruncatedNormaltruncated_normal_2/stddev*
_output_shapes
:	@*
T0
t
truncated_normal_2Addtruncated_normal_2/multruncated_normal_2/mean*
T0*
_output_shapes
:	@


Variable_2
VariableV2*
dtype0*
	container *
_output_shapes
:	@*
shape:	@*
shared_name 
­
Variable_2/AssignAssign
Variable_2truncated_normal_2*
validate_shape(*
_output_shapes
:	@*
use_locking(*
T0*
_class
loc:@Variable_2
p
Variable_2/readIdentity
Variable_2*
_output_shapes
:	@*
T0*
_class
loc:@Variable_2
b
truncated_normal_3/shapeConst*
dtype0*
_output_shapes
:*
valueB:@
\
truncated_normal_3/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
^
truncated_normal_3/stddevConst*
valueB
 *ÍĚĚ=*
dtype0*
_output_shapes
: 

"truncated_normal_3/TruncatedNormalTruncatedNormaltruncated_normal_3/shape*
T0*
dtype0*
seed2 *
_output_shapes
:@*

seed 

truncated_normal_3/mulMul"truncated_normal_3/TruncatedNormaltruncated_normal_3/stddev*
_output_shapes
:@*
T0
o
truncated_normal_3Addtruncated_normal_3/multruncated_normal_3/mean*
T0*
_output_shapes
:@
v

Variable_3
VariableV2*
shape:@*
shared_name *
dtype0*
	container *
_output_shapes
:@
¨
Variable_3/AssignAssign
Variable_3truncated_normal_3*
_output_shapes
:@*
use_locking(*
T0*
_class
loc:@Variable_3*
validate_shape(
k
Variable_3/readIdentity
Variable_3*
T0*
_class
loc:@Variable_3*
_output_shapes
:@
y
MatMul_1MatMuladd_1Variable_2/read*
T0*
transpose_a( *
_output_shapes

:@*
transpose_b( 
P
Add_2AddMatMul_1Variable_3/read*
_output_shapes

:@*
T0

encoder2/Initializer/ConstConst*
_class
loc:@encoder2*
valueB@*ÍĚĚ=*
dtype0*
_output_shapes
:@

encoder2
VariableV2*
	container *
shape:@*
dtype0*
_output_shapes
:@*
shared_name *
_class
loc:@encoder2
Ş
encoder2/AssignAssignencoder2encoder2/Initializer/Const*
_output_shapes
:@*
use_locking(*
T0*
_class
loc:@encoder2*
validate_shape(
e
encoder2/readIdentityencoder2*
_output_shapes
:@*
T0*
_class
loc:@encoder2
P
Maximum_1/xConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Q
	Maximum_1MaximumMaximum_1/xAdd_2*
T0*
_output_shapes

:@
P
Minimum_1/xConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Q
	Minimum_1MinimumMinimum_1/xAdd_2*
_output_shapes

:@*
T0
O
mul_1Mulencoder2/read	Minimum_1*
_output_shapes

:@*
T0
G
add_3Add	Maximum_1mul_1*
T0*
_output_shapes

:@
i
truncated_normal_4/shapeConst*
valueB"@      *
dtype0*
_output_shapes
:
\
truncated_normal_4/meanConst*
dtype0*
_output_shapes
: *
valueB
 *    
^
truncated_normal_4/stddevConst*
valueB
 *ÍĚĚ=*
dtype0*
_output_shapes
: 

"truncated_normal_4/TruncatedNormalTruncatedNormaltruncated_normal_4/shape*
dtype0*
seed2 *
_output_shapes

:@*

seed *
T0

truncated_normal_4/mulMul"truncated_normal_4/TruncatedNormaltruncated_normal_4/stddev*
_output_shapes

:@*
T0
s
truncated_normal_4Addtruncated_normal_4/multruncated_normal_4/mean*
_output_shapes

:@*
T0
~

Variable_4
VariableV2*
dtype0*
	container *
_output_shapes

:@*
shape
:@*
shared_name 
Ź
Variable_4/AssignAssign
Variable_4truncated_normal_4*
T0*
_class
loc:@Variable_4*
validate_shape(*
_output_shapes

:@*
use_locking(
o
Variable_4/readIdentity
Variable_4*
T0*
_class
loc:@Variable_4*
_output_shapes

:@
b
truncated_normal_5/shapeConst*
valueB:*
dtype0*
_output_shapes
:
\
truncated_normal_5/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
^
truncated_normal_5/stddevConst*
valueB
 *ÍĚĚ=*
dtype0*
_output_shapes
: 

"truncated_normal_5/TruncatedNormalTruncatedNormaltruncated_normal_5/shape*
T0*
dtype0*
seed2 *
_output_shapes
:*

seed 

truncated_normal_5/mulMul"truncated_normal_5/TruncatedNormaltruncated_normal_5/stddev*
_output_shapes
:*
T0
o
truncated_normal_5Addtruncated_normal_5/multruncated_normal_5/mean*
T0*
_output_shapes
:
v

Variable_5
VariableV2*
	container *
_output_shapes
:*
shape:*
shared_name *
dtype0
¨
Variable_5/AssignAssign
Variable_5truncated_normal_5*
use_locking(*
T0*
_class
loc:@Variable_5*
validate_shape(*
_output_shapes
:
k
Variable_5/readIdentity
Variable_5*
T0*
_class
loc:@Variable_5*
_output_shapes
:
y
MatMul_2MatMuladd_3Variable_4/read*
T0*
transpose_a( *
_output_shapes

:*
transpose_b( 
P
Add_4AddMatMul_2Variable_5/read*
_output_shapes

:*
T0

encoder3/Initializer/ConstConst*
_output_shapes
:*
_class
loc:@encoder3*
valueB*ÍĚĚ=*
dtype0

encoder3
VariableV2*
dtype0*
_output_shapes
:*
shared_name *
_class
loc:@encoder3*
	container *
shape:
Ş
encoder3/AssignAssignencoder3encoder3/Initializer/Const*
_class
loc:@encoder3*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
e
encoder3/readIdentityencoder3*
T0*
_class
loc:@encoder3*
_output_shapes
:
P
Maximum_2/xConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Q
	Maximum_2MaximumMaximum_2/xAdd_4*
T0*
_output_shapes

:
P
Minimum_2/xConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Q
	Minimum_2MinimumMinimum_2/xAdd_4*
_output_shapes

:*
T0
O
mul_2Mulencoder3/read	Minimum_2*
T0*
_output_shapes

:
G
add_5Add	Maximum_2mul_2*
T0*
_output_shapes

:
i
truncated_normal_6/shapeConst*
valueB"   @   *
dtype0*
_output_shapes
:
\
truncated_normal_6/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
^
truncated_normal_6/stddevConst*
valueB
 *ÍĚĚ=*
dtype0*
_output_shapes
: 

"truncated_normal_6/TruncatedNormalTruncatedNormaltruncated_normal_6/shape*
T0*
dtype0*
seed2 *
_output_shapes

:@*

seed 

truncated_normal_6/mulMul"truncated_normal_6/TruncatedNormaltruncated_normal_6/stddev*
T0*
_output_shapes

:@
s
truncated_normal_6Addtruncated_normal_6/multruncated_normal_6/mean*
T0*
_output_shapes

:@
~

Variable_6
VariableV2*
shared_name *
dtype0*
	container *
_output_shapes

:@*
shape
:@
Ź
Variable_6/AssignAssign
Variable_6truncated_normal_6*
use_locking(*
T0*
_class
loc:@Variable_6*
validate_shape(*
_output_shapes

:@
o
Variable_6/readIdentity
Variable_6*
T0*
_class
loc:@Variable_6*
_output_shapes

:@
b
truncated_normal_7/shapeConst*
valueB:@*
dtype0*
_output_shapes
:
\
truncated_normal_7/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
^
truncated_normal_7/stddevConst*
valueB
 *ÍĚĚ=*
dtype0*
_output_shapes
: 

"truncated_normal_7/TruncatedNormalTruncatedNormaltruncated_normal_7/shape*
T0*
dtype0*
seed2 *
_output_shapes
:@*

seed 

truncated_normal_7/mulMul"truncated_normal_7/TruncatedNormaltruncated_normal_7/stddev*
T0*
_output_shapes
:@
o
truncated_normal_7Addtruncated_normal_7/multruncated_normal_7/mean*
_output_shapes
:@*
T0
v

Variable_7
VariableV2*
shape:@*
shared_name *
dtype0*
	container *
_output_shapes
:@
¨
Variable_7/AssignAssign
Variable_7truncated_normal_7*
_output_shapes
:@*
use_locking(*
T0*
_class
loc:@Variable_7*
validate_shape(
k
Variable_7/readIdentity
Variable_7*
T0*
_class
loc:@Variable_7*
_output_shapes
:@
y
MatMul_3MatMuladd_5Variable_6/read*
transpose_b( *
T0*
transpose_a( *
_output_shapes

:@
P
Add_6AddMatMul_3Variable_7/read*
T0*
_output_shapes

:@

decoder1/Initializer/ConstConst*
_class
loc:@decoder1*
valueB@*ÍĚĚ=*
dtype0*
_output_shapes
:@

decoder1
VariableV2*
shape:@*
dtype0*
_output_shapes
:@*
shared_name *
_class
loc:@decoder1*
	container 
Ş
decoder1/AssignAssigndecoder1decoder1/Initializer/Const*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*
_class
loc:@decoder1
e
decoder1/readIdentitydecoder1*
T0*
_class
loc:@decoder1*
_output_shapes
:@
P
Maximum_3/xConst*
dtype0*
_output_shapes
: *
valueB
 *    
Q
	Maximum_3MaximumMaximum_3/xAdd_6*
T0*
_output_shapes

:@
P
Minimum_3/xConst*
_output_shapes
: *
valueB
 *    *
dtype0
Q
	Minimum_3MinimumMinimum_3/xAdd_6*
T0*
_output_shapes

:@
O
mul_3Muldecoder1/read	Minimum_3*
T0*
_output_shapes

:@
G
add_7Add	Maximum_3mul_3*
_output_shapes

:@*
T0
i
truncated_normal_8/shapeConst*
_output_shapes
:*
valueB"@      *
dtype0
\
truncated_normal_8/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
^
truncated_normal_8/stddevConst*
valueB
 *ÍĚĚ=*
dtype0*
_output_shapes
: 

"truncated_normal_8/TruncatedNormalTruncatedNormaltruncated_normal_8/shape*
dtype0*
seed2 *
_output_shapes
:	@*

seed *
T0

truncated_normal_8/mulMul"truncated_normal_8/TruncatedNormaltruncated_normal_8/stddev*
T0*
_output_shapes
:	@
t
truncated_normal_8Addtruncated_normal_8/multruncated_normal_8/mean*
T0*
_output_shapes
:	@


Variable_8
VariableV2*
	container *
_output_shapes
:	@*
shape:	@*
shared_name *
dtype0
­
Variable_8/AssignAssign
Variable_8truncated_normal_8*
use_locking(*
T0*
_class
loc:@Variable_8*
validate_shape(*
_output_shapes
:	@
p
Variable_8/readIdentity
Variable_8*
_output_shapes
:	@*
T0*
_class
loc:@Variable_8
c
truncated_normal_9/shapeConst*
_output_shapes
:*
valueB:*
dtype0
\
truncated_normal_9/meanConst*
_output_shapes
: *
valueB
 *    *
dtype0
^
truncated_normal_9/stddevConst*
valueB
 *ÍĚĚ=*
dtype0*
_output_shapes
: 

"truncated_normal_9/TruncatedNormalTruncatedNormaltruncated_normal_9/shape*
T0*
dtype0*
seed2 *
_output_shapes	
:*

seed 

truncated_normal_9/mulMul"truncated_normal_9/TruncatedNormaltruncated_normal_9/stddev*
T0*
_output_shapes	
:
p
truncated_normal_9Addtruncated_normal_9/multruncated_normal_9/mean*
_output_shapes	
:*
T0
x

Variable_9
VariableV2*
dtype0*
	container *
_output_shapes	
:*
shape:*
shared_name 
Š
Variable_9/AssignAssign
Variable_9truncated_normal_9*
T0*
_class
loc:@Variable_9*
validate_shape(*
_output_shapes	
:*
use_locking(
l
Variable_9/readIdentity
Variable_9*
T0*
_class
loc:@Variable_9*
_output_shapes	
:
z
MatMul_4MatMuladd_7Variable_8/read*
T0*
transpose_a( *
_output_shapes
:	*
transpose_b( 
Q
Add_8AddMatMul_4Variable_9/read*
_output_shapes
:	*
T0

decoder2/Initializer/ConstConst*
dtype0*
_output_shapes	
:*
_class
loc:@decoder2*
valueB*ÍĚĚ=

decoder2
VariableV2*
_class
loc:@decoder2*
	container *
shape:*
dtype0*
_output_shapes	
:*
shared_name 
Ť
decoder2/AssignAssigndecoder2decoder2/Initializer/Const*
_output_shapes	
:*
use_locking(*
T0*
_class
loc:@decoder2*
validate_shape(
f
decoder2/readIdentitydecoder2*
T0*
_class
loc:@decoder2*
_output_shapes	
:
P
Maximum_4/xConst*
valueB
 *    *
dtype0*
_output_shapes
: 
R
	Maximum_4MaximumMaximum_4/xAdd_8*
T0*
_output_shapes
:	
P
Minimum_4/xConst*
valueB
 *    *
dtype0*
_output_shapes
: 
R
	Minimum_4MinimumMinimum_4/xAdd_8*
T0*
_output_shapes
:	
P
mul_4Muldecoder2/read	Minimum_4*
T0*
_output_shapes
:	
H
add_9Add	Maximum_4mul_4*
_output_shapes
:	*
T0
j
truncated_normal_10/shapeConst*
valueB"   ö
  *
dtype0*
_output_shapes
:
]
truncated_normal_10/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
_
truncated_normal_10/stddevConst*
valueB
 *ÍĚĚ=*
dtype0*
_output_shapes
: 
˘
#truncated_normal_10/TruncatedNormalTruncatedNormaltruncated_normal_10/shape*
dtype0*
seed2 * 
_output_shapes
:
ö*

seed *
T0

truncated_normal_10/mulMul#truncated_normal_10/TruncatedNormaltruncated_normal_10/stddev*
T0* 
_output_shapes
:
ö
x
truncated_normal_10Addtruncated_normal_10/multruncated_normal_10/mean*
T0* 
_output_shapes
:
ö

Variable_10
VariableV2*
shared_name *
dtype0*
	container * 
_output_shapes
:
ö*
shape:
ö
˛
Variable_10/AssignAssignVariable_10truncated_normal_10*
use_locking(*
T0*
_class
loc:@Variable_10*
validate_shape(* 
_output_shapes
:
ö
t
Variable_10/readIdentityVariable_10* 
_output_shapes
:
ö*
T0*
_class
loc:@Variable_10
d
truncated_normal_11/shapeConst*
valueB:ö*
dtype0*
_output_shapes
:
]
truncated_normal_11/meanConst*
dtype0*
_output_shapes
: *
valueB
 *    
_
truncated_normal_11/stddevConst*
dtype0*
_output_shapes
: *
valueB
 *ÍĚĚ=

#truncated_normal_11/TruncatedNormalTruncatedNormaltruncated_normal_11/shape*

seed *
T0*
dtype0*
seed2 *
_output_shapes	
:ö

truncated_normal_11/mulMul#truncated_normal_11/TruncatedNormaltruncated_normal_11/stddev*
T0*
_output_shapes	
:ö
s
truncated_normal_11Addtruncated_normal_11/multruncated_normal_11/mean*
T0*
_output_shapes	
:ö
y
Variable_11
VariableV2*
	container *
_output_shapes	
:ö*
shape:ö*
shared_name *
dtype0
­
Variable_11/AssignAssignVariable_11truncated_normal_11*
use_locking(*
T0*
_class
loc:@Variable_11*
validate_shape(*
_output_shapes	
:ö
o
Variable_11/readIdentityVariable_11*
_output_shapes	
:ö*
T0*
_class
loc:@Variable_11
{
MatMul_5MatMuladd_9Variable_10/read*
T0*
transpose_a( *
_output_shapes
:	ö*
transpose_b( 
S
Add_10AddMatMul_5Variable_11/read*
T0*
_output_shapes
:	ö

decoder3/Initializer/ConstConst*
dtype0*
_output_shapes	
:ö*
_class
loc:@decoder3*
valueBö*ÍĚĚ=

decoder3
VariableV2*
dtype0*
_output_shapes	
:ö*
shared_name *
_class
loc:@decoder3*
	container *
shape:ö
Ť
decoder3/AssignAssigndecoder3decoder3/Initializer/Const*
validate_shape(*
_output_shapes	
:ö*
use_locking(*
T0*
_class
loc:@decoder3
f
decoder3/readIdentitydecoder3*
T0*
_class
loc:@decoder3*
_output_shapes	
:ö
P
Maximum_5/xConst*
valueB
 *    *
dtype0*
_output_shapes
: 
S
	Maximum_5MaximumMaximum_5/xAdd_10*
_output_shapes
:	ö*
T0
P
Minimum_5/xConst*
dtype0*
_output_shapes
: *
valueB
 *    
S
	Minimum_5MinimumMinimum_5/xAdd_10*
T0*
_output_shapes
:	ö
P
mul_5Muldecoder3/read	Minimum_5*
T0*
_output_shapes
:	ö
I
add_11Add	Maximum_5mul_5*
_output_shapes
:	ö*
T0
~
"Loss/mean_square/SquaredDifferenceSquaredDifferenceadd_11placeholder/x_input*
T0*
_output_shapes
:	ö
g
Loss/mean_square/ConstConst*
valueB"       *
dtype0*
_output_shapes
:

Loss/mean_square/MeanMean"Loss/mean_square/SquaredDifferenceLoss/mean_square/Const*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0

&Loss/mean_square/Loss_mean_square/tagsConst*
dtype0*
_output_shapes
: *2
value)B' B!Loss/mean_square/Loss_mean_square

!Loss/mean_square/Loss_mean_squareScalarSummary&Loss/mean_square/Loss_mean_square/tagsLoss/mean_square/Mean*
_output_shapes
: *
T0
[
Loss/l1_regularization/AbsAbsVariable/read*
T0* 
_output_shapes
:
ö
m
Loss/l1_regularization/ConstConst*
valueB"       *
dtype0*
_output_shapes
:

Loss/l1_regularization/SumSumLoss/l1_regularization/AbsLoss/l1_regularization/Const*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0
^
Loss/l1_regularization/Abs_1AbsVariable_2/read*
T0*
_output_shapes
:	@
o
Loss/l1_regularization/Const_1Const*
_output_shapes
:*
valueB"       *
dtype0

Loss/l1_regularization/Sum_1SumLoss/l1_regularization/Abs_1Loss/l1_regularization/Const_1*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0
]
Loss/l1_regularization/Abs_2AbsVariable_4/read*
T0*
_output_shapes

:@
o
Loss/l1_regularization/Const_2Const*
valueB"       *
dtype0*
_output_shapes
:

Loss/l1_regularization/Sum_2SumLoss/l1_regularization/Abs_2Loss/l1_regularization/Const_2*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
]
Loss/l1_regularization/Abs_3AbsVariable_6/read*
T0*
_output_shapes

:@
o
Loss/l1_regularization/Const_3Const*
valueB"       *
dtype0*
_output_shapes
:

Loss/l1_regularization/Sum_3SumLoss/l1_regularization/Abs_3Loss/l1_regularization/Const_3*
T0*
_output_shapes
: *

Tidx0*
	keep_dims( 
^
Loss/l1_regularization/Abs_4AbsVariable_8/read*
T0*
_output_shapes
:	@
o
Loss/l1_regularization/Const_4Const*
valueB"       *
dtype0*
_output_shapes
:

Loss/l1_regularization/Sum_4SumLoss/l1_regularization/Abs_4Loss/l1_regularization/Const_4*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0
`
Loss/l1_regularization/Abs_5AbsVariable_10/read* 
_output_shapes
:
ö*
T0
o
Loss/l1_regularization/Const_5Const*
valueB"       *
dtype0*
_output_shapes
:

Loss/l1_regularization/Sum_5SumLoss/l1_regularization/Abs_5Loss/l1_regularization/Const_5*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 

"Loss/l1_regularization/Rank/packedPackLoss/l1_regularization/SumLoss/l1_regularization/Sum_1Loss/l1_regularization/Sum_2Loss/l1_regularization/Sum_3Loss/l1_regularization/Sum_4Loss/l1_regularization/Sum_5*
T0*

axis *
N*
_output_shapes
:
]
Loss/l1_regularization/RankConst*
value	B :*
dtype0*
_output_shapes
: 
d
"Loss/l1_regularization/range/startConst*
_output_shapes
: *
value	B : *
dtype0
d
"Loss/l1_regularization/range/deltaConst*
dtype0*
_output_shapes
: *
value	B :
˛
Loss/l1_regularization/rangeRange"Loss/l1_regularization/range/startLoss/l1_regularization/Rank"Loss/l1_regularization/range/delta*
_output_shapes
:*

Tidx0

"Loss/l1_regularization/Sum_6/inputPackLoss/l1_regularization/SumLoss/l1_regularization/Sum_1Loss/l1_regularization/Sum_2Loss/l1_regularization/Sum_3Loss/l1_regularization/Sum_4Loss/l1_regularization/Sum_5*
T0*

axis *
N*
_output_shapes
:
Ł
Loss/l1_regularization/Sum_6Sum"Loss/l1_regularization/Sum_6/inputLoss/l1_regularization/range*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0
a
Loss/l1_regularization/mul/xConst*
valueB
 *ˇŃ8*
dtype0*
_output_shapes
: 
~
Loss/l1_regularization/mulMulLoss/l1_regularization/mul/xLoss/l1_regularization/Sum_6*
_output_shapes
: *
T0

&Loss/l1_regularization/Loss_class/tagsConst*2
value)B' B!Loss/l1_regularization/Loss_class*
dtype0*
_output_shapes
: 

!Loss/l1_regularization/Loss_classScalarSummary&Loss/l1_regularization/Loss_class/tagsLoss/l1_regularization/mul*
T0*
_output_shapes
: 
j
Loss/total_lossAddLoss/mean_square/MeanLoss/l1_regularization/mul*
_output_shapes
: *
T0
h
Loss/Total_loss_1/tagsConst*"
valueB BLoss/Total_loss_1*
dtype0*
_output_shapes
: 
l
Loss/Total_loss_1ScalarSummaryLoss/Total_loss_1/tagsLoss/total_loss*
_output_shapes
: *
T0
\
Optimizer/gradients/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
b
Optimizer/gradients/grad_ys_0Const*
valueB
 *  ?*
dtype0*
_output_shapes
: 

Optimizer/gradients/FillFillOptimizer/gradients/ShapeOptimizer/gradients/grad_ys_0*
T0*

index_type0*
_output_shapes
: 
\
9Optimizer/gradients/Loss/total_loss_grad/tuple/group_depsNoOp^Optimizer/gradients/Fill
ń
AOptimizer/gradients/Loss/total_loss_grad/tuple/control_dependencyIdentityOptimizer/gradients/Fill:^Optimizer/gradients/Loss/total_loss_grad/tuple/group_deps*
T0*+
_class!
loc:@Optimizer/gradients/Fill*
_output_shapes
: 
ó
COptimizer/gradients/Loss/total_loss_grad/tuple/control_dependency_1IdentityOptimizer/gradients/Fill:^Optimizer/gradients/Loss/total_loss_grad/tuple/group_deps*+
_class!
loc:@Optimizer/gradients/Fill*
_output_shapes
: *
T0

<Optimizer/gradients/Loss/mean_square/Mean_grad/Reshape/shapeConst*
dtype0*
_output_shapes
:*
valueB"      
ů
6Optimizer/gradients/Loss/mean_square/Mean_grad/ReshapeReshapeAOptimizer/gradients/Loss/total_loss_grad/tuple/control_dependency<Optimizer/gradients/Loss/mean_square/Mean_grad/Reshape/shape*
Tshape0*
_output_shapes

:*
T0

4Optimizer/gradients/Loss/mean_square/Mean_grad/ConstConst*
valueB"   ö
  *
dtype0*
_output_shapes
:
ĺ
3Optimizer/gradients/Loss/mean_square/Mean_grad/TileTile6Optimizer/gradients/Loss/mean_square/Mean_grad/Reshape4Optimizer/gradients/Loss/mean_square/Mean_grad/Const*

Tmultiples0*
T0*
_output_shapes
:	ö
{
6Optimizer/gradients/Loss/mean_square/Mean_grad/Const_1Const*
valueB
 * G*
dtype0*
_output_shapes
: 
Ř
6Optimizer/gradients/Loss/mean_square/Mean_grad/truedivRealDiv3Optimizer/gradients/Loss/mean_square/Mean_grad/Tile6Optimizer/gradients/Loss/mean_square/Mean_grad/Const_1*
T0*
_output_shapes
:	ö
Â
7Optimizer/gradients/Loss/l1_regularization/mul_grad/MulMulCOptimizer/gradients/Loss/total_loss_grad/tuple/control_dependency_1Loss/l1_regularization/Sum_6*
T0*
_output_shapes
: 
Ä
9Optimizer/gradients/Loss/l1_regularization/mul_grad/Mul_1MulCOptimizer/gradients/Loss/total_loss_grad/tuple/control_dependency_1Loss/l1_regularization/mul/x*
_output_shapes
: *
T0
Â
DOptimizer/gradients/Loss/l1_regularization/mul_grad/tuple/group_depsNoOp8^Optimizer/gradients/Loss/l1_regularization/mul_grad/Mul:^Optimizer/gradients/Loss/l1_regularization/mul_grad/Mul_1
Ĺ
LOptimizer/gradients/Loss/l1_regularization/mul_grad/tuple/control_dependencyIdentity7Optimizer/gradients/Loss/l1_regularization/mul_grad/MulE^Optimizer/gradients/Loss/l1_regularization/mul_grad/tuple/group_deps*J
_class@
><loc:@Optimizer/gradients/Loss/l1_regularization/mul_grad/Mul*
_output_shapes
: *
T0
Ë
NOptimizer/gradients/Loss/l1_regularization/mul_grad/tuple/control_dependency_1Identity9Optimizer/gradients/Loss/l1_regularization/mul_grad/Mul_1E^Optimizer/gradients/Loss/l1_regularization/mul_grad/tuple/group_deps*
_output_shapes
: *
T0*L
_classB
@>loc:@Optimizer/gradients/Loss/l1_regularization/mul_grad/Mul_1

AOptimizer/gradients/Loss/mean_square/SquaredDifference_grad/ShapeConst*
_output_shapes
:*
valueB"   ö
  *
dtype0

COptimizer/gradients/Loss/mean_square/SquaredDifference_grad/Shape_1Const*
valueB"   ö
  *
dtype0*
_output_shapes
:
Ż
QOptimizer/gradients/Loss/mean_square/SquaredDifference_grad/BroadcastGradientArgsBroadcastGradientArgsAOptimizer/gradients/Loss/mean_square/SquaredDifference_grad/ShapeCOptimizer/gradients/Loss/mean_square/SquaredDifference_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
Ŕ
BOptimizer/gradients/Loss/mean_square/SquaredDifference_grad/scalarConst7^Optimizer/gradients/Loss/mean_square/Mean_grad/truediv*
valueB
 *   @*
dtype0*
_output_shapes
: 
ě
?Optimizer/gradients/Loss/mean_square/SquaredDifference_grad/MulMulBOptimizer/gradients/Loss/mean_square/SquaredDifference_grad/scalar6Optimizer/gradients/Loss/mean_square/Mean_grad/truediv*
_output_shapes
:	ö*
T0
Ć
?Optimizer/gradients/Loss/mean_square/SquaredDifference_grad/subSubadd_11placeholder/x_input7^Optimizer/gradients/Loss/mean_square/Mean_grad/truediv*
T0*
_output_shapes
:	ö
ô
AOptimizer/gradients/Loss/mean_square/SquaredDifference_grad/mul_1Mul?Optimizer/gradients/Loss/mean_square/SquaredDifference_grad/Mul?Optimizer/gradients/Loss/mean_square/SquaredDifference_grad/sub*
T0*
_output_shapes
:	ö
Ł
?Optimizer/gradients/Loss/mean_square/SquaredDifference_grad/SumSumAOptimizer/gradients/Loss/mean_square/SquaredDifference_grad/mul_1QOptimizer/gradients/Loss/mean_square/SquaredDifference_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:	ö

COptimizer/gradients/Loss/mean_square/SquaredDifference_grad/ReshapeReshape?Optimizer/gradients/Loss/mean_square/SquaredDifference_grad/SumAOptimizer/gradients/Loss/mean_square/SquaredDifference_grad/Shape*
T0*
Tshape0*
_output_shapes
:	ö
§
AOptimizer/gradients/Loss/mean_square/SquaredDifference_grad/Sum_1SumAOptimizer/gradients/Loss/mean_square/SquaredDifference_grad/mul_1SOptimizer/gradients/Loss/mean_square/SquaredDifference_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:	ö

EOptimizer/gradients/Loss/mean_square/SquaredDifference_grad/Reshape_1ReshapeAOptimizer/gradients/Loss/mean_square/SquaredDifference_grad/Sum_1COptimizer/gradients/Loss/mean_square/SquaredDifference_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:	ö
ˇ
?Optimizer/gradients/Loss/mean_square/SquaredDifference_grad/NegNegEOptimizer/gradients/Loss/mean_square/SquaredDifference_grad/Reshape_1*
T0*
_output_shapes
:	ö
Ü
LOptimizer/gradients/Loss/mean_square/SquaredDifference_grad/tuple/group_depsNoOp@^Optimizer/gradients/Loss/mean_square/SquaredDifference_grad/NegD^Optimizer/gradients/Loss/mean_square/SquaredDifference_grad/Reshape
ö
TOptimizer/gradients/Loss/mean_square/SquaredDifference_grad/tuple/control_dependencyIdentityCOptimizer/gradients/Loss/mean_square/SquaredDifference_grad/ReshapeM^Optimizer/gradients/Loss/mean_square/SquaredDifference_grad/tuple/group_deps*
T0*V
_classL
JHloc:@Optimizer/gradients/Loss/mean_square/SquaredDifference_grad/Reshape*
_output_shapes
:	ö
đ
VOptimizer/gradients/Loss/mean_square/SquaredDifference_grad/tuple/control_dependency_1Identity?Optimizer/gradients/Loss/mean_square/SquaredDifference_grad/NegM^Optimizer/gradients/Loss/mean_square/SquaredDifference_grad/tuple/group_deps*
_output_shapes
:	ö*
T0*R
_classH
FDloc:@Optimizer/gradients/Loss/mean_square/SquaredDifference_grad/Neg

COptimizer/gradients/Loss/l1_regularization/Sum_6_grad/Reshape/shapeConst*
valueB:*
dtype0*
_output_shapes
:

=Optimizer/gradients/Loss/l1_regularization/Sum_6_grad/ReshapeReshapeNOptimizer/gradients/Loss/l1_regularization/mul_grad/tuple/control_dependency_1COptimizer/gradients/Loss/l1_regularization/Sum_6_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
:

;Optimizer/gradients/Loss/l1_regularization/Sum_6_grad/ConstConst*
valueB:*
dtype0*
_output_shapes
:
ő
:Optimizer/gradients/Loss/l1_regularization/Sum_6_grad/TileTile=Optimizer/gradients/Loss/l1_regularization/Sum_6_grad/Reshape;Optimizer/gradients/Loss/l1_regularization/Sum_6_grad/Const*

Tmultiples0*
T0*
_output_shapes
:

0Optimizer/gradients/add_11_grad/tuple/group_depsNoOpU^Optimizer/gradients/Loss/mean_square/SquaredDifference_grad/tuple/control_dependency
Ď
8Optimizer/gradients/add_11_grad/tuple/control_dependencyIdentityTOptimizer/gradients/Loss/mean_square/SquaredDifference_grad/tuple/control_dependency1^Optimizer/gradients/add_11_grad/tuple/group_deps*
_output_shapes
:	ö*
T0*V
_classL
JHloc:@Optimizer/gradients/Loss/mean_square/SquaredDifference_grad/Reshape
Ń
:Optimizer/gradients/add_11_grad/tuple/control_dependency_1IdentityTOptimizer/gradients/Loss/mean_square/SquaredDifference_grad/tuple/control_dependency1^Optimizer/gradients/add_11_grad/tuple/group_deps*V
_classL
JHloc:@Optimizer/gradients/Loss/mean_square/SquaredDifference_grad/Reshape*
_output_shapes
:	ö*
T0
Ë
COptimizer/gradients/Loss/l1_regularization/Sum_6/input_grad/unstackUnpack:Optimizer/gradients/Loss/l1_regularization/Sum_6_grad/Tile* 
_output_shapes
: : : : : : *
T0*	
num*

axis 

LOptimizer/gradients/Loss/l1_regularization/Sum_6/input_grad/tuple/group_depsNoOpD^Optimizer/gradients/Loss/l1_regularization/Sum_6/input_grad/unstack
í
TOptimizer/gradients/Loss/l1_regularization/Sum_6/input_grad/tuple/control_dependencyIdentityCOptimizer/gradients/Loss/l1_regularization/Sum_6/input_grad/unstackM^Optimizer/gradients/Loss/l1_regularization/Sum_6/input_grad/tuple/group_deps*
T0*V
_classL
JHloc:@Optimizer/gradients/Loss/l1_regularization/Sum_6/input_grad/unstack*
_output_shapes
: 
ń
VOptimizer/gradients/Loss/l1_regularization/Sum_6/input_grad/tuple/control_dependency_1IdentityEOptimizer/gradients/Loss/l1_regularization/Sum_6/input_grad/unstack:1M^Optimizer/gradients/Loss/l1_regularization/Sum_6/input_grad/tuple/group_deps*
T0*V
_classL
JHloc:@Optimizer/gradients/Loss/l1_regularization/Sum_6/input_grad/unstack*
_output_shapes
: 
ń
VOptimizer/gradients/Loss/l1_regularization/Sum_6/input_grad/tuple/control_dependency_2IdentityEOptimizer/gradients/Loss/l1_regularization/Sum_6/input_grad/unstack:2M^Optimizer/gradients/Loss/l1_regularization/Sum_6/input_grad/tuple/group_deps*
T0*V
_classL
JHloc:@Optimizer/gradients/Loss/l1_regularization/Sum_6/input_grad/unstack*
_output_shapes
: 
ń
VOptimizer/gradients/Loss/l1_regularization/Sum_6/input_grad/tuple/control_dependency_3IdentityEOptimizer/gradients/Loss/l1_regularization/Sum_6/input_grad/unstack:3M^Optimizer/gradients/Loss/l1_regularization/Sum_6/input_grad/tuple/group_deps*
_output_shapes
: *
T0*V
_classL
JHloc:@Optimizer/gradients/Loss/l1_regularization/Sum_6/input_grad/unstack
ń
VOptimizer/gradients/Loss/l1_regularization/Sum_6/input_grad/tuple/control_dependency_4IdentityEOptimizer/gradients/Loss/l1_regularization/Sum_6/input_grad/unstack:4M^Optimizer/gradients/Loss/l1_regularization/Sum_6/input_grad/tuple/group_deps*
T0*V
_classL
JHloc:@Optimizer/gradients/Loss/l1_regularization/Sum_6/input_grad/unstack*
_output_shapes
: 
ń
VOptimizer/gradients/Loss/l1_regularization/Sum_6/input_grad/tuple/control_dependency_5IdentityEOptimizer/gradients/Loss/l1_regularization/Sum_6/input_grad/unstack:5M^Optimizer/gradients/Loss/l1_regularization/Sum_6/input_grad/tuple/group_deps*
T0*V
_classL
JHloc:@Optimizer/gradients/Loss/l1_regularization/Sum_6/input_grad/unstack*
_output_shapes
: 
k
(Optimizer/gradients/Maximum_5_grad/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
{
*Optimizer/gradients/Maximum_5_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"   ö
  
{
*Optimizer/gradients/Maximum_5_grad/Shape_2Const*
valueB"   ö
  *
dtype0*
_output_shapes
:
s
.Optimizer/gradients/Maximum_5_grad/zeros/ConstConst*
_output_shapes
: *
valueB
 *    *
dtype0
Č
(Optimizer/gradients/Maximum_5_grad/zerosFill*Optimizer/gradients/Maximum_5_grad/Shape_2.Optimizer/gradients/Maximum_5_grad/zeros/Const*
T0*

index_type0*
_output_shapes
:	ö
~
/Optimizer/gradients/Maximum_5_grad/GreaterEqualGreaterEqualMaximum_5/xAdd_10*
T0*
_output_shapes
:	ö
ä
8Optimizer/gradients/Maximum_5_grad/BroadcastGradientArgsBroadcastGradientArgs(Optimizer/gradients/Maximum_5_grad/Shape*Optimizer/gradients/Maximum_5_grad/Shape_1*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
T0
ň
)Optimizer/gradients/Maximum_5_grad/SelectSelect/Optimizer/gradients/Maximum_5_grad/GreaterEqual8Optimizer/gradients/add_11_grad/tuple/control_dependency(Optimizer/gradients/Maximum_5_grad/zeros*
_output_shapes
:	ö*
T0
ô
+Optimizer/gradients/Maximum_5_grad/Select_1Select/Optimizer/gradients/Maximum_5_grad/GreaterEqual(Optimizer/gradients/Maximum_5_grad/zeros8Optimizer/gradients/add_11_grad/tuple/control_dependency*
T0*
_output_shapes
:	ö
Đ
&Optimizer/gradients/Maximum_5_grad/SumSum)Optimizer/gradients/Maximum_5_grad/Select8Optimizer/gradients/Maximum_5_grad/BroadcastGradientArgs*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0
ś
*Optimizer/gradients/Maximum_5_grad/ReshapeReshape&Optimizer/gradients/Maximum_5_grad/Sum(Optimizer/gradients/Maximum_5_grad/Shape*
T0*
Tshape0*
_output_shapes
: 
ß
(Optimizer/gradients/Maximum_5_grad/Sum_1Sum+Optimizer/gradients/Maximum_5_grad/Select_1:Optimizer/gradients/Maximum_5_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:	ö*

Tidx0*
	keep_dims( 
Ĺ
,Optimizer/gradients/Maximum_5_grad/Reshape_1Reshape(Optimizer/gradients/Maximum_5_grad/Sum_1*Optimizer/gradients/Maximum_5_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:	ö

3Optimizer/gradients/Maximum_5_grad/tuple/group_depsNoOp+^Optimizer/gradients/Maximum_5_grad/Reshape-^Optimizer/gradients/Maximum_5_grad/Reshape_1

;Optimizer/gradients/Maximum_5_grad/tuple/control_dependencyIdentity*Optimizer/gradients/Maximum_5_grad/Reshape4^Optimizer/gradients/Maximum_5_grad/tuple/group_deps*
T0*=
_class3
1/loc:@Optimizer/gradients/Maximum_5_grad/Reshape*
_output_shapes
: 

=Optimizer/gradients/Maximum_5_grad/tuple/control_dependency_1Identity,Optimizer/gradients/Maximum_5_grad/Reshape_14^Optimizer/gradients/Maximum_5_grad/tuple/group_deps*
_output_shapes
:	ö*
T0*?
_class5
31loc:@Optimizer/gradients/Maximum_5_grad/Reshape_1
o
$Optimizer/gradients/mul_5_grad/ShapeConst*
valueB:ö*
dtype0*
_output_shapes
:
w
&Optimizer/gradients/mul_5_grad/Shape_1Const*
valueB"   ö
  *
dtype0*
_output_shapes
:
Ř
4Optimizer/gradients/mul_5_grad/BroadcastGradientArgsBroadcastGradientArgs$Optimizer/gradients/mul_5_grad/Shape&Optimizer/gradients/mul_5_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙

"Optimizer/gradients/mul_5_grad/MulMul:Optimizer/gradients/add_11_grad/tuple/control_dependency_1	Minimum_5*
T0*
_output_shapes
:	ö
Ć
"Optimizer/gradients/mul_5_grad/SumSum"Optimizer/gradients/mul_5_grad/Mul4Optimizer/gradients/mul_5_grad/BroadcastGradientArgs*
_output_shapes	
:ö*

Tidx0*
	keep_dims( *
T0
Ż
&Optimizer/gradients/mul_5_grad/ReshapeReshape"Optimizer/gradients/mul_5_grad/Sum$Optimizer/gradients/mul_5_grad/Shape*
T0*
Tshape0*
_output_shapes	
:ö
 
$Optimizer/gradients/mul_5_grad/Mul_1Muldecoder3/read:Optimizer/gradients/add_11_grad/tuple/control_dependency_1*
T0*
_output_shapes
:	ö
Đ
$Optimizer/gradients/mul_5_grad/Sum_1Sum$Optimizer/gradients/mul_5_grad/Mul_16Optimizer/gradients/mul_5_grad/BroadcastGradientArgs:1*
_output_shapes
:	ö*

Tidx0*
	keep_dims( *
T0
š
(Optimizer/gradients/mul_5_grad/Reshape_1Reshape$Optimizer/gradients/mul_5_grad/Sum_1&Optimizer/gradients/mul_5_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:	ö

/Optimizer/gradients/mul_5_grad/tuple/group_depsNoOp'^Optimizer/gradients/mul_5_grad/Reshape)^Optimizer/gradients/mul_5_grad/Reshape_1
ţ
7Optimizer/gradients/mul_5_grad/tuple/control_dependencyIdentity&Optimizer/gradients/mul_5_grad/Reshape0^Optimizer/gradients/mul_5_grad/tuple/group_deps*
T0*9
_class/
-+loc:@Optimizer/gradients/mul_5_grad/Reshape*
_output_shapes	
:ö

9Optimizer/gradients/mul_5_grad/tuple/control_dependency_1Identity(Optimizer/gradients/mul_5_grad/Reshape_10^Optimizer/gradients/mul_5_grad/tuple/group_deps*;
_class1
/-loc:@Optimizer/gradients/mul_5_grad/Reshape_1*
_output_shapes
:	ö*
T0

AOptimizer/gradients/Loss/l1_regularization/Sum_grad/Reshape/shapeConst*
valueB"      *
dtype0*
_output_shapes
:

;Optimizer/gradients/Loss/l1_regularization/Sum_grad/ReshapeReshapeTOptimizer/gradients/Loss/l1_regularization/Sum_6/input_grad/tuple/control_dependencyAOptimizer/gradients/Loss/l1_regularization/Sum_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes

:

9Optimizer/gradients/Loss/l1_regularization/Sum_grad/ConstConst*
valueB"ö
     *
dtype0*
_output_shapes
:
ő
8Optimizer/gradients/Loss/l1_regularization/Sum_grad/TileTile;Optimizer/gradients/Loss/l1_regularization/Sum_grad/Reshape9Optimizer/gradients/Loss/l1_regularization/Sum_grad/Const*

Tmultiples0*
T0* 
_output_shapes
:
ö

COptimizer/gradients/Loss/l1_regularization/Sum_1_grad/Reshape/shapeConst*
dtype0*
_output_shapes
:*
valueB"      

=Optimizer/gradients/Loss/l1_regularization/Sum_1_grad/ReshapeReshapeVOptimizer/gradients/Loss/l1_regularization/Sum_6/input_grad/tuple/control_dependency_1COptimizer/gradients/Loss/l1_regularization/Sum_1_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes

:

;Optimizer/gradients/Loss/l1_regularization/Sum_1_grad/ConstConst*
valueB"   @   *
dtype0*
_output_shapes
:
ú
:Optimizer/gradients/Loss/l1_regularization/Sum_1_grad/TileTile=Optimizer/gradients/Loss/l1_regularization/Sum_1_grad/Reshape;Optimizer/gradients/Loss/l1_regularization/Sum_1_grad/Const*
T0*
_output_shapes
:	@*

Tmultiples0

COptimizer/gradients/Loss/l1_regularization/Sum_2_grad/Reshape/shapeConst*
dtype0*
_output_shapes
:*
valueB"      

=Optimizer/gradients/Loss/l1_regularization/Sum_2_grad/ReshapeReshapeVOptimizer/gradients/Loss/l1_regularization/Sum_6/input_grad/tuple/control_dependency_2COptimizer/gradients/Loss/l1_regularization/Sum_2_grad/Reshape/shape*
_output_shapes

:*
T0*
Tshape0

;Optimizer/gradients/Loss/l1_regularization/Sum_2_grad/ConstConst*
valueB"@      *
dtype0*
_output_shapes
:
ů
:Optimizer/gradients/Loss/l1_regularization/Sum_2_grad/TileTile=Optimizer/gradients/Loss/l1_regularization/Sum_2_grad/Reshape;Optimizer/gradients/Loss/l1_regularization/Sum_2_grad/Const*

Tmultiples0*
T0*
_output_shapes

:@

COptimizer/gradients/Loss/l1_regularization/Sum_3_grad/Reshape/shapeConst*
_output_shapes
:*
valueB"      *
dtype0

=Optimizer/gradients/Loss/l1_regularization/Sum_3_grad/ReshapeReshapeVOptimizer/gradients/Loss/l1_regularization/Sum_6/input_grad/tuple/control_dependency_3COptimizer/gradients/Loss/l1_regularization/Sum_3_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes

:

;Optimizer/gradients/Loss/l1_regularization/Sum_3_grad/ConstConst*
valueB"   @   *
dtype0*
_output_shapes
:
ů
:Optimizer/gradients/Loss/l1_regularization/Sum_3_grad/TileTile=Optimizer/gradients/Loss/l1_regularization/Sum_3_grad/Reshape;Optimizer/gradients/Loss/l1_regularization/Sum_3_grad/Const*

Tmultiples0*
T0*
_output_shapes

:@

COptimizer/gradients/Loss/l1_regularization/Sum_4_grad/Reshape/shapeConst*
valueB"      *
dtype0*
_output_shapes
:

=Optimizer/gradients/Loss/l1_regularization/Sum_4_grad/ReshapeReshapeVOptimizer/gradients/Loss/l1_regularization/Sum_6/input_grad/tuple/control_dependency_4COptimizer/gradients/Loss/l1_regularization/Sum_4_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes

:

;Optimizer/gradients/Loss/l1_regularization/Sum_4_grad/ConstConst*
valueB"@      *
dtype0*
_output_shapes
:
ú
:Optimizer/gradients/Loss/l1_regularization/Sum_4_grad/TileTile=Optimizer/gradients/Loss/l1_regularization/Sum_4_grad/Reshape;Optimizer/gradients/Loss/l1_regularization/Sum_4_grad/Const*

Tmultiples0*
T0*
_output_shapes
:	@

COptimizer/gradients/Loss/l1_regularization/Sum_5_grad/Reshape/shapeConst*
valueB"      *
dtype0*
_output_shapes
:

=Optimizer/gradients/Loss/l1_regularization/Sum_5_grad/ReshapeReshapeVOptimizer/gradients/Loss/l1_regularization/Sum_6/input_grad/tuple/control_dependency_5COptimizer/gradients/Loss/l1_regularization/Sum_5_grad/Reshape/shape*
Tshape0*
_output_shapes

:*
T0

;Optimizer/gradients/Loss/l1_regularization/Sum_5_grad/ConstConst*
valueB"   ö
  *
dtype0*
_output_shapes
:
ű
:Optimizer/gradients/Loss/l1_regularization/Sum_5_grad/TileTile=Optimizer/gradients/Loss/l1_regularization/Sum_5_grad/Reshape;Optimizer/gradients/Loss/l1_regularization/Sum_5_grad/Const*

Tmultiples0*
T0* 
_output_shapes
:
ö
k
(Optimizer/gradients/Minimum_5_grad/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
{
*Optimizer/gradients/Minimum_5_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"   ö
  
{
*Optimizer/gradients/Minimum_5_grad/Shape_2Const*
_output_shapes
:*
valueB"   ö
  *
dtype0
s
.Optimizer/gradients/Minimum_5_grad/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Č
(Optimizer/gradients/Minimum_5_grad/zerosFill*Optimizer/gradients/Minimum_5_grad/Shape_2.Optimizer/gradients/Minimum_5_grad/zeros/Const*
T0*

index_type0*
_output_shapes
:	ö
x
,Optimizer/gradients/Minimum_5_grad/LessEqual	LessEqualMinimum_5/xAdd_10*
_output_shapes
:	ö*
T0
ä
8Optimizer/gradients/Minimum_5_grad/BroadcastGradientArgsBroadcastGradientArgs(Optimizer/gradients/Minimum_5_grad/Shape*Optimizer/gradients/Minimum_5_grad/Shape_1*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
T0
đ
)Optimizer/gradients/Minimum_5_grad/SelectSelect,Optimizer/gradients/Minimum_5_grad/LessEqual9Optimizer/gradients/mul_5_grad/tuple/control_dependency_1(Optimizer/gradients/Minimum_5_grad/zeros*
T0*
_output_shapes
:	ö
ň
+Optimizer/gradients/Minimum_5_grad/Select_1Select,Optimizer/gradients/Minimum_5_grad/LessEqual(Optimizer/gradients/Minimum_5_grad/zeros9Optimizer/gradients/mul_5_grad/tuple/control_dependency_1*
T0*
_output_shapes
:	ö
Đ
&Optimizer/gradients/Minimum_5_grad/SumSum)Optimizer/gradients/Minimum_5_grad/Select8Optimizer/gradients/Minimum_5_grad/BroadcastGradientArgs*
T0*
_output_shapes
: *

Tidx0*
	keep_dims( 
ś
*Optimizer/gradients/Minimum_5_grad/ReshapeReshape&Optimizer/gradients/Minimum_5_grad/Sum(Optimizer/gradients/Minimum_5_grad/Shape*
T0*
Tshape0*
_output_shapes
: 
ß
(Optimizer/gradients/Minimum_5_grad/Sum_1Sum+Optimizer/gradients/Minimum_5_grad/Select_1:Optimizer/gradients/Minimum_5_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:	ö*

Tidx0*
	keep_dims( 
Ĺ
,Optimizer/gradients/Minimum_5_grad/Reshape_1Reshape(Optimizer/gradients/Minimum_5_grad/Sum_1*Optimizer/gradients/Minimum_5_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:	ö

3Optimizer/gradients/Minimum_5_grad/tuple/group_depsNoOp+^Optimizer/gradients/Minimum_5_grad/Reshape-^Optimizer/gradients/Minimum_5_grad/Reshape_1

;Optimizer/gradients/Minimum_5_grad/tuple/control_dependencyIdentity*Optimizer/gradients/Minimum_5_grad/Reshape4^Optimizer/gradients/Minimum_5_grad/tuple/group_deps*
T0*=
_class3
1/loc:@Optimizer/gradients/Minimum_5_grad/Reshape*
_output_shapes
: 

=Optimizer/gradients/Minimum_5_grad/tuple/control_dependency_1Identity,Optimizer/gradients/Minimum_5_grad/Reshape_14^Optimizer/gradients/Minimum_5_grad/tuple/group_deps*
_output_shapes
:	ö*
T0*?
_class5
31loc:@Optimizer/gradients/Minimum_5_grad/Reshape_1
z
8Optimizer/gradients/Loss/l1_regularization/Abs_grad/SignSignVariable/read* 
_output_shapes
:
ö*
T0
Ý
7Optimizer/gradients/Loss/l1_regularization/Abs_grad/mulMul8Optimizer/gradients/Loss/l1_regularization/Sum_grad/Tile8Optimizer/gradients/Loss/l1_regularization/Abs_grad/Sign* 
_output_shapes
:
ö*
T0
}
:Optimizer/gradients/Loss/l1_regularization/Abs_1_grad/SignSignVariable_2/read*
T0*
_output_shapes
:	@
â
9Optimizer/gradients/Loss/l1_regularization/Abs_1_grad/mulMul:Optimizer/gradients/Loss/l1_regularization/Sum_1_grad/Tile:Optimizer/gradients/Loss/l1_regularization/Abs_1_grad/Sign*
T0*
_output_shapes
:	@
|
:Optimizer/gradients/Loss/l1_regularization/Abs_2_grad/SignSignVariable_4/read*
T0*
_output_shapes

:@
á
9Optimizer/gradients/Loss/l1_regularization/Abs_2_grad/mulMul:Optimizer/gradients/Loss/l1_regularization/Sum_2_grad/Tile:Optimizer/gradients/Loss/l1_regularization/Abs_2_grad/Sign*
T0*
_output_shapes

:@
|
:Optimizer/gradients/Loss/l1_regularization/Abs_3_grad/SignSignVariable_6/read*
_output_shapes

:@*
T0
á
9Optimizer/gradients/Loss/l1_regularization/Abs_3_grad/mulMul:Optimizer/gradients/Loss/l1_regularization/Sum_3_grad/Tile:Optimizer/gradients/Loss/l1_regularization/Abs_3_grad/Sign*
T0*
_output_shapes

:@
}
:Optimizer/gradients/Loss/l1_regularization/Abs_4_grad/SignSignVariable_8/read*
_output_shapes
:	@*
T0
â
9Optimizer/gradients/Loss/l1_regularization/Abs_4_grad/mulMul:Optimizer/gradients/Loss/l1_regularization/Sum_4_grad/Tile:Optimizer/gradients/Loss/l1_regularization/Abs_4_grad/Sign*
T0*
_output_shapes
:	@

:Optimizer/gradients/Loss/l1_regularization/Abs_5_grad/SignSignVariable_10/read*
T0* 
_output_shapes
:
ö
ă
9Optimizer/gradients/Loss/l1_regularization/Abs_5_grad/mulMul:Optimizer/gradients/Loss/l1_regularization/Sum_5_grad/Tile:Optimizer/gradients/Loss/l1_regularization/Abs_5_grad/Sign*
T0* 
_output_shapes
:
ö

Optimizer/gradients/AddNAddN=Optimizer/gradients/Maximum_5_grad/tuple/control_dependency_1=Optimizer/gradients/Minimum_5_grad/tuple/control_dependency_1*
T0*?
_class5
31loc:@Optimizer/gradients/Maximum_5_grad/Reshape_1*
N*
_output_shapes
:	ö
v
%Optimizer/gradients/Add_10_grad/ShapeConst*
valueB"   ö
  *
dtype0*
_output_shapes
:
r
'Optimizer/gradients/Add_10_grad/Shape_1Const*
valueB:ö*
dtype0*
_output_shapes
:
Ű
5Optimizer/gradients/Add_10_grad/BroadcastGradientArgsBroadcastGradientArgs%Optimizer/gradients/Add_10_grad/Shape'Optimizer/gradients/Add_10_grad/Shape_1*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
T0
Â
#Optimizer/gradients/Add_10_grad/SumSumOptimizer/gradients/AddN5Optimizer/gradients/Add_10_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:	ö
ś
'Optimizer/gradients/Add_10_grad/ReshapeReshape#Optimizer/gradients/Add_10_grad/Sum%Optimizer/gradients/Add_10_grad/Shape*
T0*
Tshape0*
_output_shapes
:	ö
Â
%Optimizer/gradients/Add_10_grad/Sum_1SumOptimizer/gradients/AddN7Optimizer/gradients/Add_10_grad/BroadcastGradientArgs:1*
T0*
_output_shapes	
:ö*

Tidx0*
	keep_dims( 
¸
)Optimizer/gradients/Add_10_grad/Reshape_1Reshape%Optimizer/gradients/Add_10_grad/Sum_1'Optimizer/gradients/Add_10_grad/Shape_1*
_output_shapes	
:ö*
T0*
Tshape0

0Optimizer/gradients/Add_10_grad/tuple/group_depsNoOp(^Optimizer/gradients/Add_10_grad/Reshape*^Optimizer/gradients/Add_10_grad/Reshape_1

8Optimizer/gradients/Add_10_grad/tuple/control_dependencyIdentity'Optimizer/gradients/Add_10_grad/Reshape1^Optimizer/gradients/Add_10_grad/tuple/group_deps*
_output_shapes
:	ö*
T0*:
_class0
.,loc:@Optimizer/gradients/Add_10_grad/Reshape

:Optimizer/gradients/Add_10_grad/tuple/control_dependency_1Identity)Optimizer/gradients/Add_10_grad/Reshape_11^Optimizer/gradients/Add_10_grad/tuple/group_deps*<
_class2
0.loc:@Optimizer/gradients/Add_10_grad/Reshape_1*
_output_shapes	
:ö*
T0
Î
(Optimizer/gradients/MatMul_5_grad/MatMulMatMul8Optimizer/gradients/Add_10_grad/tuple/control_dependencyVariable_10/read*
T0*
transpose_a( *
_output_shapes
:	*
transpose_b(
Ć
*Optimizer/gradients/MatMul_5_grad/MatMul_1MatMuladd_98Optimizer/gradients/Add_10_grad/tuple/control_dependency*
transpose_a(* 
_output_shapes
:
ö*
transpose_b( *
T0

2Optimizer/gradients/MatMul_5_grad/tuple/group_depsNoOp)^Optimizer/gradients/MatMul_5_grad/MatMul+^Optimizer/gradients/MatMul_5_grad/MatMul_1

:Optimizer/gradients/MatMul_5_grad/tuple/control_dependencyIdentity(Optimizer/gradients/MatMul_5_grad/MatMul3^Optimizer/gradients/MatMul_5_grad/tuple/group_deps*
T0*;
_class1
/-loc:@Optimizer/gradients/MatMul_5_grad/MatMul*
_output_shapes
:	

<Optimizer/gradients/MatMul_5_grad/tuple/control_dependency_1Identity*Optimizer/gradients/MatMul_5_grad/MatMul_13^Optimizer/gradients/MatMul_5_grad/tuple/group_deps*
T0*=
_class3
1/loc:@Optimizer/gradients/MatMul_5_grad/MatMul_1* 
_output_shapes
:
ö
t
/Optimizer/gradients/add_9_grad/tuple/group_depsNoOp;^Optimizer/gradients/MatMul_5_grad/tuple/control_dependency

7Optimizer/gradients/add_9_grad/tuple/control_dependencyIdentity:Optimizer/gradients/MatMul_5_grad/tuple/control_dependency0^Optimizer/gradients/add_9_grad/tuple/group_deps*
T0*;
_class1
/-loc:@Optimizer/gradients/MatMul_5_grad/MatMul*
_output_shapes
:	

9Optimizer/gradients/add_9_grad/tuple/control_dependency_1Identity:Optimizer/gradients/MatMul_5_grad/tuple/control_dependency0^Optimizer/gradients/add_9_grad/tuple/group_deps*
T0*;
_class1
/-loc:@Optimizer/gradients/MatMul_5_grad/MatMul*
_output_shapes
:	

Optimizer/gradients/AddN_1AddN9Optimizer/gradients/Loss/l1_regularization/Abs_5_grad/mul<Optimizer/gradients/MatMul_5_grad/tuple/control_dependency_1*
T0*L
_classB
@>loc:@Optimizer/gradients/Loss/l1_regularization/Abs_5_grad/mul*
N* 
_output_shapes
:
ö
k
(Optimizer/gradients/Maximum_4_grad/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
{
*Optimizer/gradients/Maximum_4_grad/Shape_1Const*
valueB"      *
dtype0*
_output_shapes
:
{
*Optimizer/gradients/Maximum_4_grad/Shape_2Const*
valueB"      *
dtype0*
_output_shapes
:
s
.Optimizer/gradients/Maximum_4_grad/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Č
(Optimizer/gradients/Maximum_4_grad/zerosFill*Optimizer/gradients/Maximum_4_grad/Shape_2.Optimizer/gradients/Maximum_4_grad/zeros/Const*
_output_shapes
:	*
T0*

index_type0
}
/Optimizer/gradients/Maximum_4_grad/GreaterEqualGreaterEqualMaximum_4/xAdd_8*
T0*
_output_shapes
:	
ä
8Optimizer/gradients/Maximum_4_grad/BroadcastGradientArgsBroadcastGradientArgs(Optimizer/gradients/Maximum_4_grad/Shape*Optimizer/gradients/Maximum_4_grad/Shape_1*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
T0
ń
)Optimizer/gradients/Maximum_4_grad/SelectSelect/Optimizer/gradients/Maximum_4_grad/GreaterEqual7Optimizer/gradients/add_9_grad/tuple/control_dependency(Optimizer/gradients/Maximum_4_grad/zeros*
T0*
_output_shapes
:	
ó
+Optimizer/gradients/Maximum_4_grad/Select_1Select/Optimizer/gradients/Maximum_4_grad/GreaterEqual(Optimizer/gradients/Maximum_4_grad/zeros7Optimizer/gradients/add_9_grad/tuple/control_dependency*
T0*
_output_shapes
:	
Đ
&Optimizer/gradients/Maximum_4_grad/SumSum)Optimizer/gradients/Maximum_4_grad/Select8Optimizer/gradients/Maximum_4_grad/BroadcastGradientArgs*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0
ś
*Optimizer/gradients/Maximum_4_grad/ReshapeReshape&Optimizer/gradients/Maximum_4_grad/Sum(Optimizer/gradients/Maximum_4_grad/Shape*
T0*
Tshape0*
_output_shapes
: 
ß
(Optimizer/gradients/Maximum_4_grad/Sum_1Sum+Optimizer/gradients/Maximum_4_grad/Select_1:Optimizer/gradients/Maximum_4_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:	*

Tidx0*
	keep_dims( 
Ĺ
,Optimizer/gradients/Maximum_4_grad/Reshape_1Reshape(Optimizer/gradients/Maximum_4_grad/Sum_1*Optimizer/gradients/Maximum_4_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:	

3Optimizer/gradients/Maximum_4_grad/tuple/group_depsNoOp+^Optimizer/gradients/Maximum_4_grad/Reshape-^Optimizer/gradients/Maximum_4_grad/Reshape_1

;Optimizer/gradients/Maximum_4_grad/tuple/control_dependencyIdentity*Optimizer/gradients/Maximum_4_grad/Reshape4^Optimizer/gradients/Maximum_4_grad/tuple/group_deps*
T0*=
_class3
1/loc:@Optimizer/gradients/Maximum_4_grad/Reshape*
_output_shapes
: 

=Optimizer/gradients/Maximum_4_grad/tuple/control_dependency_1Identity,Optimizer/gradients/Maximum_4_grad/Reshape_14^Optimizer/gradients/Maximum_4_grad/tuple/group_deps*
_output_shapes
:	*
T0*?
_class5
31loc:@Optimizer/gradients/Maximum_4_grad/Reshape_1
o
$Optimizer/gradients/mul_4_grad/ShapeConst*
valueB:*
dtype0*
_output_shapes
:
w
&Optimizer/gradients/mul_4_grad/Shape_1Const*
valueB"      *
dtype0*
_output_shapes
:
Ř
4Optimizer/gradients/mul_4_grad/BroadcastGradientArgsBroadcastGradientArgs$Optimizer/gradients/mul_4_grad/Shape&Optimizer/gradients/mul_4_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙

"Optimizer/gradients/mul_4_grad/MulMul9Optimizer/gradients/add_9_grad/tuple/control_dependency_1	Minimum_4*
T0*
_output_shapes
:	
Ć
"Optimizer/gradients/mul_4_grad/SumSum"Optimizer/gradients/mul_4_grad/Mul4Optimizer/gradients/mul_4_grad/BroadcastGradientArgs*
_output_shapes	
:*

Tidx0*
	keep_dims( *
T0
Ż
&Optimizer/gradients/mul_4_grad/ReshapeReshape"Optimizer/gradients/mul_4_grad/Sum$Optimizer/gradients/mul_4_grad/Shape*
T0*
Tshape0*
_output_shapes	
:

$Optimizer/gradients/mul_4_grad/Mul_1Muldecoder2/read9Optimizer/gradients/add_9_grad/tuple/control_dependency_1*
T0*
_output_shapes
:	
Đ
$Optimizer/gradients/mul_4_grad/Sum_1Sum$Optimizer/gradients/mul_4_grad/Mul_16Optimizer/gradients/mul_4_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:	
š
(Optimizer/gradients/mul_4_grad/Reshape_1Reshape$Optimizer/gradients/mul_4_grad/Sum_1&Optimizer/gradients/mul_4_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:	

/Optimizer/gradients/mul_4_grad/tuple/group_depsNoOp'^Optimizer/gradients/mul_4_grad/Reshape)^Optimizer/gradients/mul_4_grad/Reshape_1
ţ
7Optimizer/gradients/mul_4_grad/tuple/control_dependencyIdentity&Optimizer/gradients/mul_4_grad/Reshape0^Optimizer/gradients/mul_4_grad/tuple/group_deps*
_output_shapes	
:*
T0*9
_class/
-+loc:@Optimizer/gradients/mul_4_grad/Reshape

9Optimizer/gradients/mul_4_grad/tuple/control_dependency_1Identity(Optimizer/gradients/mul_4_grad/Reshape_10^Optimizer/gradients/mul_4_grad/tuple/group_deps*
T0*;
_class1
/-loc:@Optimizer/gradients/mul_4_grad/Reshape_1*
_output_shapes
:	
k
(Optimizer/gradients/Minimum_4_grad/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
{
*Optimizer/gradients/Minimum_4_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"      
{
*Optimizer/gradients/Minimum_4_grad/Shape_2Const*
_output_shapes
:*
valueB"      *
dtype0
s
.Optimizer/gradients/Minimum_4_grad/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Č
(Optimizer/gradients/Minimum_4_grad/zerosFill*Optimizer/gradients/Minimum_4_grad/Shape_2.Optimizer/gradients/Minimum_4_grad/zeros/Const*
T0*

index_type0*
_output_shapes
:	
w
,Optimizer/gradients/Minimum_4_grad/LessEqual	LessEqualMinimum_4/xAdd_8*
_output_shapes
:	*
T0
ä
8Optimizer/gradients/Minimum_4_grad/BroadcastGradientArgsBroadcastGradientArgs(Optimizer/gradients/Minimum_4_grad/Shape*Optimizer/gradients/Minimum_4_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
đ
)Optimizer/gradients/Minimum_4_grad/SelectSelect,Optimizer/gradients/Minimum_4_grad/LessEqual9Optimizer/gradients/mul_4_grad/tuple/control_dependency_1(Optimizer/gradients/Minimum_4_grad/zeros*
T0*
_output_shapes
:	
ň
+Optimizer/gradients/Minimum_4_grad/Select_1Select,Optimizer/gradients/Minimum_4_grad/LessEqual(Optimizer/gradients/Minimum_4_grad/zeros9Optimizer/gradients/mul_4_grad/tuple/control_dependency_1*
T0*
_output_shapes
:	
Đ
&Optimizer/gradients/Minimum_4_grad/SumSum)Optimizer/gradients/Minimum_4_grad/Select8Optimizer/gradients/Minimum_4_grad/BroadcastGradientArgs*
T0*
_output_shapes
: *

Tidx0*
	keep_dims( 
ś
*Optimizer/gradients/Minimum_4_grad/ReshapeReshape&Optimizer/gradients/Minimum_4_grad/Sum(Optimizer/gradients/Minimum_4_grad/Shape*
Tshape0*
_output_shapes
: *
T0
ß
(Optimizer/gradients/Minimum_4_grad/Sum_1Sum+Optimizer/gradients/Minimum_4_grad/Select_1:Optimizer/gradients/Minimum_4_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:	*

Tidx0*
	keep_dims( 
Ĺ
,Optimizer/gradients/Minimum_4_grad/Reshape_1Reshape(Optimizer/gradients/Minimum_4_grad/Sum_1*Optimizer/gradients/Minimum_4_grad/Shape_1*
Tshape0*
_output_shapes
:	*
T0

3Optimizer/gradients/Minimum_4_grad/tuple/group_depsNoOp+^Optimizer/gradients/Minimum_4_grad/Reshape-^Optimizer/gradients/Minimum_4_grad/Reshape_1

;Optimizer/gradients/Minimum_4_grad/tuple/control_dependencyIdentity*Optimizer/gradients/Minimum_4_grad/Reshape4^Optimizer/gradients/Minimum_4_grad/tuple/group_deps*
T0*=
_class3
1/loc:@Optimizer/gradients/Minimum_4_grad/Reshape*
_output_shapes
: 

=Optimizer/gradients/Minimum_4_grad/tuple/control_dependency_1Identity,Optimizer/gradients/Minimum_4_grad/Reshape_14^Optimizer/gradients/Minimum_4_grad/tuple/group_deps*?
_class5
31loc:@Optimizer/gradients/Minimum_4_grad/Reshape_1*
_output_shapes
:	*
T0

Optimizer/gradients/AddN_2AddN=Optimizer/gradients/Maximum_4_grad/tuple/control_dependency_1=Optimizer/gradients/Minimum_4_grad/tuple/control_dependency_1*
T0*?
_class5
31loc:@Optimizer/gradients/Maximum_4_grad/Reshape_1*
N*
_output_shapes
:	
u
$Optimizer/gradients/Add_8_grad/ShapeConst*
valueB"      *
dtype0*
_output_shapes
:
q
&Optimizer/gradients/Add_8_grad/Shape_1Const*
valueB:*
dtype0*
_output_shapes
:
Ř
4Optimizer/gradients/Add_8_grad/BroadcastGradientArgsBroadcastGradientArgs$Optimizer/gradients/Add_8_grad/Shape&Optimizer/gradients/Add_8_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
Â
"Optimizer/gradients/Add_8_grad/SumSumOptimizer/gradients/AddN_24Optimizer/gradients/Add_8_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:	
ł
&Optimizer/gradients/Add_8_grad/ReshapeReshape"Optimizer/gradients/Add_8_grad/Sum$Optimizer/gradients/Add_8_grad/Shape*
Tshape0*
_output_shapes
:	*
T0
Â
$Optimizer/gradients/Add_8_grad/Sum_1SumOptimizer/gradients/AddN_26Optimizer/gradients/Add_8_grad/BroadcastGradientArgs:1*
_output_shapes	
:*

Tidx0*
	keep_dims( *
T0
ľ
(Optimizer/gradients/Add_8_grad/Reshape_1Reshape$Optimizer/gradients/Add_8_grad/Sum_1&Optimizer/gradients/Add_8_grad/Shape_1*
T0*
Tshape0*
_output_shapes	
:

/Optimizer/gradients/Add_8_grad/tuple/group_depsNoOp'^Optimizer/gradients/Add_8_grad/Reshape)^Optimizer/gradients/Add_8_grad/Reshape_1

7Optimizer/gradients/Add_8_grad/tuple/control_dependencyIdentity&Optimizer/gradients/Add_8_grad/Reshape0^Optimizer/gradients/Add_8_grad/tuple/group_deps*
_output_shapes
:	*
T0*9
_class/
-+loc:@Optimizer/gradients/Add_8_grad/Reshape

9Optimizer/gradients/Add_8_grad/tuple/control_dependency_1Identity(Optimizer/gradients/Add_8_grad/Reshape_10^Optimizer/gradients/Add_8_grad/tuple/group_deps*
_output_shapes	
:*
T0*;
_class1
/-loc:@Optimizer/gradients/Add_8_grad/Reshape_1
Ë
(Optimizer/gradients/MatMul_4_grad/MatMulMatMul7Optimizer/gradients/Add_8_grad/tuple/control_dependencyVariable_8/read*
T0*
transpose_a( *
_output_shapes

:@*
transpose_b(
Ä
*Optimizer/gradients/MatMul_4_grad/MatMul_1MatMuladd_77Optimizer/gradients/Add_8_grad/tuple/control_dependency*
T0*
transpose_a(*
_output_shapes
:	@*
transpose_b( 

2Optimizer/gradients/MatMul_4_grad/tuple/group_depsNoOp)^Optimizer/gradients/MatMul_4_grad/MatMul+^Optimizer/gradients/MatMul_4_grad/MatMul_1

:Optimizer/gradients/MatMul_4_grad/tuple/control_dependencyIdentity(Optimizer/gradients/MatMul_4_grad/MatMul3^Optimizer/gradients/MatMul_4_grad/tuple/group_deps*
T0*;
_class1
/-loc:@Optimizer/gradients/MatMul_4_grad/MatMul*
_output_shapes

:@

<Optimizer/gradients/MatMul_4_grad/tuple/control_dependency_1Identity*Optimizer/gradients/MatMul_4_grad/MatMul_13^Optimizer/gradients/MatMul_4_grad/tuple/group_deps*
_output_shapes
:	@*
T0*=
_class3
1/loc:@Optimizer/gradients/MatMul_4_grad/MatMul_1
t
/Optimizer/gradients/add_7_grad/tuple/group_depsNoOp;^Optimizer/gradients/MatMul_4_grad/tuple/control_dependency

7Optimizer/gradients/add_7_grad/tuple/control_dependencyIdentity:Optimizer/gradients/MatMul_4_grad/tuple/control_dependency0^Optimizer/gradients/add_7_grad/tuple/group_deps*
_output_shapes

:@*
T0*;
_class1
/-loc:@Optimizer/gradients/MatMul_4_grad/MatMul

9Optimizer/gradients/add_7_grad/tuple/control_dependency_1Identity:Optimizer/gradients/MatMul_4_grad/tuple/control_dependency0^Optimizer/gradients/add_7_grad/tuple/group_deps*
_output_shapes

:@*
T0*;
_class1
/-loc:@Optimizer/gradients/MatMul_4_grad/MatMul

Optimizer/gradients/AddN_3AddN9Optimizer/gradients/Loss/l1_regularization/Abs_4_grad/mul<Optimizer/gradients/MatMul_4_grad/tuple/control_dependency_1*
T0*L
_classB
@>loc:@Optimizer/gradients/Loss/l1_regularization/Abs_4_grad/mul*
N*
_output_shapes
:	@
k
(Optimizer/gradients/Maximum_3_grad/ShapeConst*
_output_shapes
: *
valueB *
dtype0
{
*Optimizer/gradients/Maximum_3_grad/Shape_1Const*
valueB"   @   *
dtype0*
_output_shapes
:
{
*Optimizer/gradients/Maximum_3_grad/Shape_2Const*
valueB"   @   *
dtype0*
_output_shapes
:
s
.Optimizer/gradients/Maximum_3_grad/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ç
(Optimizer/gradients/Maximum_3_grad/zerosFill*Optimizer/gradients/Maximum_3_grad/Shape_2.Optimizer/gradients/Maximum_3_grad/zeros/Const*
T0*

index_type0*
_output_shapes

:@
|
/Optimizer/gradients/Maximum_3_grad/GreaterEqualGreaterEqualMaximum_3/xAdd_6*
_output_shapes

:@*
T0
ä
8Optimizer/gradients/Maximum_3_grad/BroadcastGradientArgsBroadcastGradientArgs(Optimizer/gradients/Maximum_3_grad/Shape*Optimizer/gradients/Maximum_3_grad/Shape_1*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
T0
đ
)Optimizer/gradients/Maximum_3_grad/SelectSelect/Optimizer/gradients/Maximum_3_grad/GreaterEqual7Optimizer/gradients/add_7_grad/tuple/control_dependency(Optimizer/gradients/Maximum_3_grad/zeros*
_output_shapes

:@*
T0
ň
+Optimizer/gradients/Maximum_3_grad/Select_1Select/Optimizer/gradients/Maximum_3_grad/GreaterEqual(Optimizer/gradients/Maximum_3_grad/zeros7Optimizer/gradients/add_7_grad/tuple/control_dependency*
T0*
_output_shapes

:@
Đ
&Optimizer/gradients/Maximum_3_grad/SumSum)Optimizer/gradients/Maximum_3_grad/Select8Optimizer/gradients/Maximum_3_grad/BroadcastGradientArgs*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0
ś
*Optimizer/gradients/Maximum_3_grad/ReshapeReshape&Optimizer/gradients/Maximum_3_grad/Sum(Optimizer/gradients/Maximum_3_grad/Shape*
_output_shapes
: *
T0*
Tshape0
Ţ
(Optimizer/gradients/Maximum_3_grad/Sum_1Sum+Optimizer/gradients/Maximum_3_grad/Select_1:Optimizer/gradients/Maximum_3_grad/BroadcastGradientArgs:1*
_output_shapes

:@*

Tidx0*
	keep_dims( *
T0
Ä
,Optimizer/gradients/Maximum_3_grad/Reshape_1Reshape(Optimizer/gradients/Maximum_3_grad/Sum_1*Optimizer/gradients/Maximum_3_grad/Shape_1*
T0*
Tshape0*
_output_shapes

:@

3Optimizer/gradients/Maximum_3_grad/tuple/group_depsNoOp+^Optimizer/gradients/Maximum_3_grad/Reshape-^Optimizer/gradients/Maximum_3_grad/Reshape_1

;Optimizer/gradients/Maximum_3_grad/tuple/control_dependencyIdentity*Optimizer/gradients/Maximum_3_grad/Reshape4^Optimizer/gradients/Maximum_3_grad/tuple/group_deps*
T0*=
_class3
1/loc:@Optimizer/gradients/Maximum_3_grad/Reshape*
_output_shapes
: 

=Optimizer/gradients/Maximum_3_grad/tuple/control_dependency_1Identity,Optimizer/gradients/Maximum_3_grad/Reshape_14^Optimizer/gradients/Maximum_3_grad/tuple/group_deps*
_output_shapes

:@*
T0*?
_class5
31loc:@Optimizer/gradients/Maximum_3_grad/Reshape_1
n
$Optimizer/gradients/mul_3_grad/ShapeConst*
valueB:@*
dtype0*
_output_shapes
:
w
&Optimizer/gradients/mul_3_grad/Shape_1Const*
valueB"   @   *
dtype0*
_output_shapes
:
Ř
4Optimizer/gradients/mul_3_grad/BroadcastGradientArgsBroadcastGradientArgs$Optimizer/gradients/mul_3_grad/Shape&Optimizer/gradients/mul_3_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙

"Optimizer/gradients/mul_3_grad/MulMul9Optimizer/gradients/add_7_grad/tuple/control_dependency_1	Minimum_3*
T0*
_output_shapes

:@
Ĺ
"Optimizer/gradients/mul_3_grad/SumSum"Optimizer/gradients/mul_3_grad/Mul4Optimizer/gradients/mul_3_grad/BroadcastGradientArgs*
_output_shapes
:@*

Tidx0*
	keep_dims( *
T0
Ž
&Optimizer/gradients/mul_3_grad/ReshapeReshape"Optimizer/gradients/mul_3_grad/Sum$Optimizer/gradients/mul_3_grad/Shape*
T0*
Tshape0*
_output_shapes
:@

$Optimizer/gradients/mul_3_grad/Mul_1Muldecoder1/read9Optimizer/gradients/add_7_grad/tuple/control_dependency_1*
_output_shapes

:@*
T0
Ď
$Optimizer/gradients/mul_3_grad/Sum_1Sum$Optimizer/gradients/mul_3_grad/Mul_16Optimizer/gradients/mul_3_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*
_output_shapes

:@
¸
(Optimizer/gradients/mul_3_grad/Reshape_1Reshape$Optimizer/gradients/mul_3_grad/Sum_1&Optimizer/gradients/mul_3_grad/Shape_1*
_output_shapes

:@*
T0*
Tshape0

/Optimizer/gradients/mul_3_grad/tuple/group_depsNoOp'^Optimizer/gradients/mul_3_grad/Reshape)^Optimizer/gradients/mul_3_grad/Reshape_1
ý
7Optimizer/gradients/mul_3_grad/tuple/control_dependencyIdentity&Optimizer/gradients/mul_3_grad/Reshape0^Optimizer/gradients/mul_3_grad/tuple/group_deps*
T0*9
_class/
-+loc:@Optimizer/gradients/mul_3_grad/Reshape*
_output_shapes
:@

9Optimizer/gradients/mul_3_grad/tuple/control_dependency_1Identity(Optimizer/gradients/mul_3_grad/Reshape_10^Optimizer/gradients/mul_3_grad/tuple/group_deps*
T0*;
_class1
/-loc:@Optimizer/gradients/mul_3_grad/Reshape_1*
_output_shapes

:@
k
(Optimizer/gradients/Minimum_3_grad/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
{
*Optimizer/gradients/Minimum_3_grad/Shape_1Const*
valueB"   @   *
dtype0*
_output_shapes
:
{
*Optimizer/gradients/Minimum_3_grad/Shape_2Const*
valueB"   @   *
dtype0*
_output_shapes
:
s
.Optimizer/gradients/Minimum_3_grad/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ç
(Optimizer/gradients/Minimum_3_grad/zerosFill*Optimizer/gradients/Minimum_3_grad/Shape_2.Optimizer/gradients/Minimum_3_grad/zeros/Const*
_output_shapes

:@*
T0*

index_type0
v
,Optimizer/gradients/Minimum_3_grad/LessEqual	LessEqualMinimum_3/xAdd_6*
_output_shapes

:@*
T0
ä
8Optimizer/gradients/Minimum_3_grad/BroadcastGradientArgsBroadcastGradientArgs(Optimizer/gradients/Minimum_3_grad/Shape*Optimizer/gradients/Minimum_3_grad/Shape_1*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
T0
ď
)Optimizer/gradients/Minimum_3_grad/SelectSelect,Optimizer/gradients/Minimum_3_grad/LessEqual9Optimizer/gradients/mul_3_grad/tuple/control_dependency_1(Optimizer/gradients/Minimum_3_grad/zeros*
_output_shapes

:@*
T0
ń
+Optimizer/gradients/Minimum_3_grad/Select_1Select,Optimizer/gradients/Minimum_3_grad/LessEqual(Optimizer/gradients/Minimum_3_grad/zeros9Optimizer/gradients/mul_3_grad/tuple/control_dependency_1*
T0*
_output_shapes

:@
Đ
&Optimizer/gradients/Minimum_3_grad/SumSum)Optimizer/gradients/Minimum_3_grad/Select8Optimizer/gradients/Minimum_3_grad/BroadcastGradientArgs*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0
ś
*Optimizer/gradients/Minimum_3_grad/ReshapeReshape&Optimizer/gradients/Minimum_3_grad/Sum(Optimizer/gradients/Minimum_3_grad/Shape*
_output_shapes
: *
T0*
Tshape0
Ţ
(Optimizer/gradients/Minimum_3_grad/Sum_1Sum+Optimizer/gradients/Minimum_3_grad/Select_1:Optimizer/gradients/Minimum_3_grad/BroadcastGradientArgs:1*
T0*
_output_shapes

:@*

Tidx0*
	keep_dims( 
Ä
,Optimizer/gradients/Minimum_3_grad/Reshape_1Reshape(Optimizer/gradients/Minimum_3_grad/Sum_1*Optimizer/gradients/Minimum_3_grad/Shape_1*
T0*
Tshape0*
_output_shapes

:@

3Optimizer/gradients/Minimum_3_grad/tuple/group_depsNoOp+^Optimizer/gradients/Minimum_3_grad/Reshape-^Optimizer/gradients/Minimum_3_grad/Reshape_1

;Optimizer/gradients/Minimum_3_grad/tuple/control_dependencyIdentity*Optimizer/gradients/Minimum_3_grad/Reshape4^Optimizer/gradients/Minimum_3_grad/tuple/group_deps*
T0*=
_class3
1/loc:@Optimizer/gradients/Minimum_3_grad/Reshape*
_output_shapes
: 

=Optimizer/gradients/Minimum_3_grad/tuple/control_dependency_1Identity,Optimizer/gradients/Minimum_3_grad/Reshape_14^Optimizer/gradients/Minimum_3_grad/tuple/group_deps*
T0*?
_class5
31loc:@Optimizer/gradients/Minimum_3_grad/Reshape_1*
_output_shapes

:@

Optimizer/gradients/AddN_4AddN=Optimizer/gradients/Maximum_3_grad/tuple/control_dependency_1=Optimizer/gradients/Minimum_3_grad/tuple/control_dependency_1*
T0*?
_class5
31loc:@Optimizer/gradients/Maximum_3_grad/Reshape_1*
N*
_output_shapes

:@
u
$Optimizer/gradients/Add_6_grad/ShapeConst*
valueB"   @   *
dtype0*
_output_shapes
:
p
&Optimizer/gradients/Add_6_grad/Shape_1Const*
valueB:@*
dtype0*
_output_shapes
:
Ř
4Optimizer/gradients/Add_6_grad/BroadcastGradientArgsBroadcastGradientArgs$Optimizer/gradients/Add_6_grad/Shape&Optimizer/gradients/Add_6_grad/Shape_1*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
T0
Á
"Optimizer/gradients/Add_6_grad/SumSumOptimizer/gradients/AddN_44Optimizer/gradients/Add_6_grad/BroadcastGradientArgs*
_output_shapes

:@*

Tidx0*
	keep_dims( *
T0
˛
&Optimizer/gradients/Add_6_grad/ReshapeReshape"Optimizer/gradients/Add_6_grad/Sum$Optimizer/gradients/Add_6_grad/Shape*
_output_shapes

:@*
T0*
Tshape0
Á
$Optimizer/gradients/Add_6_grad/Sum_1SumOptimizer/gradients/AddN_46Optimizer/gradients/Add_6_grad/BroadcastGradientArgs:1*
_output_shapes
:@*

Tidx0*
	keep_dims( *
T0
´
(Optimizer/gradients/Add_6_grad/Reshape_1Reshape$Optimizer/gradients/Add_6_grad/Sum_1&Optimizer/gradients/Add_6_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:@

/Optimizer/gradients/Add_6_grad/tuple/group_depsNoOp'^Optimizer/gradients/Add_6_grad/Reshape)^Optimizer/gradients/Add_6_grad/Reshape_1

7Optimizer/gradients/Add_6_grad/tuple/control_dependencyIdentity&Optimizer/gradients/Add_6_grad/Reshape0^Optimizer/gradients/Add_6_grad/tuple/group_deps*
T0*9
_class/
-+loc:@Optimizer/gradients/Add_6_grad/Reshape*
_output_shapes

:@

9Optimizer/gradients/Add_6_grad/tuple/control_dependency_1Identity(Optimizer/gradients/Add_6_grad/Reshape_10^Optimizer/gradients/Add_6_grad/tuple/group_deps*
_output_shapes
:@*
T0*;
_class1
/-loc:@Optimizer/gradients/Add_6_grad/Reshape_1
Ë
(Optimizer/gradients/MatMul_3_grad/MatMulMatMul7Optimizer/gradients/Add_6_grad/tuple/control_dependencyVariable_6/read*
T0*
transpose_a( *
_output_shapes

:*
transpose_b(
Ă
*Optimizer/gradients/MatMul_3_grad/MatMul_1MatMuladd_57Optimizer/gradients/Add_6_grad/tuple/control_dependency*
T0*
transpose_a(*
_output_shapes

:@*
transpose_b( 

2Optimizer/gradients/MatMul_3_grad/tuple/group_depsNoOp)^Optimizer/gradients/MatMul_3_grad/MatMul+^Optimizer/gradients/MatMul_3_grad/MatMul_1

:Optimizer/gradients/MatMul_3_grad/tuple/control_dependencyIdentity(Optimizer/gradients/MatMul_3_grad/MatMul3^Optimizer/gradients/MatMul_3_grad/tuple/group_deps*
_output_shapes

:*
T0*;
_class1
/-loc:@Optimizer/gradients/MatMul_3_grad/MatMul

<Optimizer/gradients/MatMul_3_grad/tuple/control_dependency_1Identity*Optimizer/gradients/MatMul_3_grad/MatMul_13^Optimizer/gradients/MatMul_3_grad/tuple/group_deps*
_output_shapes

:@*
T0*=
_class3
1/loc:@Optimizer/gradients/MatMul_3_grad/MatMul_1
t
/Optimizer/gradients/add_5_grad/tuple/group_depsNoOp;^Optimizer/gradients/MatMul_3_grad/tuple/control_dependency

7Optimizer/gradients/add_5_grad/tuple/control_dependencyIdentity:Optimizer/gradients/MatMul_3_grad/tuple/control_dependency0^Optimizer/gradients/add_5_grad/tuple/group_deps*
T0*;
_class1
/-loc:@Optimizer/gradients/MatMul_3_grad/MatMul*
_output_shapes

:

9Optimizer/gradients/add_5_grad/tuple/control_dependency_1Identity:Optimizer/gradients/MatMul_3_grad/tuple/control_dependency0^Optimizer/gradients/add_5_grad/tuple/group_deps*
T0*;
_class1
/-loc:@Optimizer/gradients/MatMul_3_grad/MatMul*
_output_shapes

:

Optimizer/gradients/AddN_5AddN9Optimizer/gradients/Loss/l1_regularization/Abs_3_grad/mul<Optimizer/gradients/MatMul_3_grad/tuple/control_dependency_1*
T0*L
_classB
@>loc:@Optimizer/gradients/Loss/l1_regularization/Abs_3_grad/mul*
N*
_output_shapes

:@
k
(Optimizer/gradients/Maximum_2_grad/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
{
*Optimizer/gradients/Maximum_2_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"      
{
*Optimizer/gradients/Maximum_2_grad/Shape_2Const*
valueB"      *
dtype0*
_output_shapes
:
s
.Optimizer/gradients/Maximum_2_grad/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ç
(Optimizer/gradients/Maximum_2_grad/zerosFill*Optimizer/gradients/Maximum_2_grad/Shape_2.Optimizer/gradients/Maximum_2_grad/zeros/Const*
T0*

index_type0*
_output_shapes

:
|
/Optimizer/gradients/Maximum_2_grad/GreaterEqualGreaterEqualMaximum_2/xAdd_4*
_output_shapes

:*
T0
ä
8Optimizer/gradients/Maximum_2_grad/BroadcastGradientArgsBroadcastGradientArgs(Optimizer/gradients/Maximum_2_grad/Shape*Optimizer/gradients/Maximum_2_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
đ
)Optimizer/gradients/Maximum_2_grad/SelectSelect/Optimizer/gradients/Maximum_2_grad/GreaterEqual7Optimizer/gradients/add_5_grad/tuple/control_dependency(Optimizer/gradients/Maximum_2_grad/zeros*
T0*
_output_shapes

:
ň
+Optimizer/gradients/Maximum_2_grad/Select_1Select/Optimizer/gradients/Maximum_2_grad/GreaterEqual(Optimizer/gradients/Maximum_2_grad/zeros7Optimizer/gradients/add_5_grad/tuple/control_dependency*
_output_shapes

:*
T0
Đ
&Optimizer/gradients/Maximum_2_grad/SumSum)Optimizer/gradients/Maximum_2_grad/Select8Optimizer/gradients/Maximum_2_grad/BroadcastGradientArgs*
T0*
_output_shapes
: *

Tidx0*
	keep_dims( 
ś
*Optimizer/gradients/Maximum_2_grad/ReshapeReshape&Optimizer/gradients/Maximum_2_grad/Sum(Optimizer/gradients/Maximum_2_grad/Shape*
T0*
Tshape0*
_output_shapes
: 
Ţ
(Optimizer/gradients/Maximum_2_grad/Sum_1Sum+Optimizer/gradients/Maximum_2_grad/Select_1:Optimizer/gradients/Maximum_2_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*
_output_shapes

:
Ä
,Optimizer/gradients/Maximum_2_grad/Reshape_1Reshape(Optimizer/gradients/Maximum_2_grad/Sum_1*Optimizer/gradients/Maximum_2_grad/Shape_1*
T0*
Tshape0*
_output_shapes

:

3Optimizer/gradients/Maximum_2_grad/tuple/group_depsNoOp+^Optimizer/gradients/Maximum_2_grad/Reshape-^Optimizer/gradients/Maximum_2_grad/Reshape_1

;Optimizer/gradients/Maximum_2_grad/tuple/control_dependencyIdentity*Optimizer/gradients/Maximum_2_grad/Reshape4^Optimizer/gradients/Maximum_2_grad/tuple/group_deps*
T0*=
_class3
1/loc:@Optimizer/gradients/Maximum_2_grad/Reshape*
_output_shapes
: 

=Optimizer/gradients/Maximum_2_grad/tuple/control_dependency_1Identity,Optimizer/gradients/Maximum_2_grad/Reshape_14^Optimizer/gradients/Maximum_2_grad/tuple/group_deps*
T0*?
_class5
31loc:@Optimizer/gradients/Maximum_2_grad/Reshape_1*
_output_shapes

:
n
$Optimizer/gradients/mul_2_grad/ShapeConst*
valueB:*
dtype0*
_output_shapes
:
w
&Optimizer/gradients/mul_2_grad/Shape_1Const*
valueB"      *
dtype0*
_output_shapes
:
Ř
4Optimizer/gradients/mul_2_grad/BroadcastGradientArgsBroadcastGradientArgs$Optimizer/gradients/mul_2_grad/Shape&Optimizer/gradients/mul_2_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙

"Optimizer/gradients/mul_2_grad/MulMul9Optimizer/gradients/add_5_grad/tuple/control_dependency_1	Minimum_2*
T0*
_output_shapes

:
Ĺ
"Optimizer/gradients/mul_2_grad/SumSum"Optimizer/gradients/mul_2_grad/Mul4Optimizer/gradients/mul_2_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
Ž
&Optimizer/gradients/mul_2_grad/ReshapeReshape"Optimizer/gradients/mul_2_grad/Sum$Optimizer/gradients/mul_2_grad/Shape*
Tshape0*
_output_shapes
:*
T0

$Optimizer/gradients/mul_2_grad/Mul_1Mulencoder3/read9Optimizer/gradients/add_5_grad/tuple/control_dependency_1*
T0*
_output_shapes

:
Ď
$Optimizer/gradients/mul_2_grad/Sum_1Sum$Optimizer/gradients/mul_2_grad/Mul_16Optimizer/gradients/mul_2_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*
_output_shapes

:
¸
(Optimizer/gradients/mul_2_grad/Reshape_1Reshape$Optimizer/gradients/mul_2_grad/Sum_1&Optimizer/gradients/mul_2_grad/Shape_1*
_output_shapes

:*
T0*
Tshape0

/Optimizer/gradients/mul_2_grad/tuple/group_depsNoOp'^Optimizer/gradients/mul_2_grad/Reshape)^Optimizer/gradients/mul_2_grad/Reshape_1
ý
7Optimizer/gradients/mul_2_grad/tuple/control_dependencyIdentity&Optimizer/gradients/mul_2_grad/Reshape0^Optimizer/gradients/mul_2_grad/tuple/group_deps*
T0*9
_class/
-+loc:@Optimizer/gradients/mul_2_grad/Reshape*
_output_shapes
:

9Optimizer/gradients/mul_2_grad/tuple/control_dependency_1Identity(Optimizer/gradients/mul_2_grad/Reshape_10^Optimizer/gradients/mul_2_grad/tuple/group_deps*
T0*;
_class1
/-loc:@Optimizer/gradients/mul_2_grad/Reshape_1*
_output_shapes

:
k
(Optimizer/gradients/Minimum_2_grad/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
{
*Optimizer/gradients/Minimum_2_grad/Shape_1Const*
valueB"      *
dtype0*
_output_shapes
:
{
*Optimizer/gradients/Minimum_2_grad/Shape_2Const*
valueB"      *
dtype0*
_output_shapes
:
s
.Optimizer/gradients/Minimum_2_grad/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ç
(Optimizer/gradients/Minimum_2_grad/zerosFill*Optimizer/gradients/Minimum_2_grad/Shape_2.Optimizer/gradients/Minimum_2_grad/zeros/Const*
_output_shapes

:*
T0*

index_type0
v
,Optimizer/gradients/Minimum_2_grad/LessEqual	LessEqualMinimum_2/xAdd_4*
_output_shapes

:*
T0
ä
8Optimizer/gradients/Minimum_2_grad/BroadcastGradientArgsBroadcastGradientArgs(Optimizer/gradients/Minimum_2_grad/Shape*Optimizer/gradients/Minimum_2_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
ď
)Optimizer/gradients/Minimum_2_grad/SelectSelect,Optimizer/gradients/Minimum_2_grad/LessEqual9Optimizer/gradients/mul_2_grad/tuple/control_dependency_1(Optimizer/gradients/Minimum_2_grad/zeros*
T0*
_output_shapes

:
ń
+Optimizer/gradients/Minimum_2_grad/Select_1Select,Optimizer/gradients/Minimum_2_grad/LessEqual(Optimizer/gradients/Minimum_2_grad/zeros9Optimizer/gradients/mul_2_grad/tuple/control_dependency_1*
T0*
_output_shapes

:
Đ
&Optimizer/gradients/Minimum_2_grad/SumSum)Optimizer/gradients/Minimum_2_grad/Select8Optimizer/gradients/Minimum_2_grad/BroadcastGradientArgs*
T0*
_output_shapes
: *

Tidx0*
	keep_dims( 
ś
*Optimizer/gradients/Minimum_2_grad/ReshapeReshape&Optimizer/gradients/Minimum_2_grad/Sum(Optimizer/gradients/Minimum_2_grad/Shape*
T0*
Tshape0*
_output_shapes
: 
Ţ
(Optimizer/gradients/Minimum_2_grad/Sum_1Sum+Optimizer/gradients/Minimum_2_grad/Select_1:Optimizer/gradients/Minimum_2_grad/BroadcastGradientArgs:1*
_output_shapes

:*

Tidx0*
	keep_dims( *
T0
Ä
,Optimizer/gradients/Minimum_2_grad/Reshape_1Reshape(Optimizer/gradients/Minimum_2_grad/Sum_1*Optimizer/gradients/Minimum_2_grad/Shape_1*
_output_shapes

:*
T0*
Tshape0

3Optimizer/gradients/Minimum_2_grad/tuple/group_depsNoOp+^Optimizer/gradients/Minimum_2_grad/Reshape-^Optimizer/gradients/Minimum_2_grad/Reshape_1

;Optimizer/gradients/Minimum_2_grad/tuple/control_dependencyIdentity*Optimizer/gradients/Minimum_2_grad/Reshape4^Optimizer/gradients/Minimum_2_grad/tuple/group_deps*
_output_shapes
: *
T0*=
_class3
1/loc:@Optimizer/gradients/Minimum_2_grad/Reshape

=Optimizer/gradients/Minimum_2_grad/tuple/control_dependency_1Identity,Optimizer/gradients/Minimum_2_grad/Reshape_14^Optimizer/gradients/Minimum_2_grad/tuple/group_deps*?
_class5
31loc:@Optimizer/gradients/Minimum_2_grad/Reshape_1*
_output_shapes

:*
T0

Optimizer/gradients/AddN_6AddN=Optimizer/gradients/Maximum_2_grad/tuple/control_dependency_1=Optimizer/gradients/Minimum_2_grad/tuple/control_dependency_1*
T0*?
_class5
31loc:@Optimizer/gradients/Maximum_2_grad/Reshape_1*
N*
_output_shapes

:
u
$Optimizer/gradients/Add_4_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"      
p
&Optimizer/gradients/Add_4_grad/Shape_1Const*
_output_shapes
:*
valueB:*
dtype0
Ř
4Optimizer/gradients/Add_4_grad/BroadcastGradientArgsBroadcastGradientArgs$Optimizer/gradients/Add_4_grad/Shape&Optimizer/gradients/Add_4_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
Á
"Optimizer/gradients/Add_4_grad/SumSumOptimizer/gradients/AddN_64Optimizer/gradients/Add_4_grad/BroadcastGradientArgs*
_output_shapes

:*

Tidx0*
	keep_dims( *
T0
˛
&Optimizer/gradients/Add_4_grad/ReshapeReshape"Optimizer/gradients/Add_4_grad/Sum$Optimizer/gradients/Add_4_grad/Shape*
T0*
Tshape0*
_output_shapes

:
Á
$Optimizer/gradients/Add_4_grad/Sum_1SumOptimizer/gradients/AddN_66Optimizer/gradients/Add_4_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
´
(Optimizer/gradients/Add_4_grad/Reshape_1Reshape$Optimizer/gradients/Add_4_grad/Sum_1&Optimizer/gradients/Add_4_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:

/Optimizer/gradients/Add_4_grad/tuple/group_depsNoOp'^Optimizer/gradients/Add_4_grad/Reshape)^Optimizer/gradients/Add_4_grad/Reshape_1

7Optimizer/gradients/Add_4_grad/tuple/control_dependencyIdentity&Optimizer/gradients/Add_4_grad/Reshape0^Optimizer/gradients/Add_4_grad/tuple/group_deps*
_output_shapes

:*
T0*9
_class/
-+loc:@Optimizer/gradients/Add_4_grad/Reshape

9Optimizer/gradients/Add_4_grad/tuple/control_dependency_1Identity(Optimizer/gradients/Add_4_grad/Reshape_10^Optimizer/gradients/Add_4_grad/tuple/group_deps*
T0*;
_class1
/-loc:@Optimizer/gradients/Add_4_grad/Reshape_1*
_output_shapes
:
Ë
(Optimizer/gradients/MatMul_2_grad/MatMulMatMul7Optimizer/gradients/Add_4_grad/tuple/control_dependencyVariable_4/read*
T0*
transpose_a( *
_output_shapes

:@*
transpose_b(
Ă
*Optimizer/gradients/MatMul_2_grad/MatMul_1MatMuladd_37Optimizer/gradients/Add_4_grad/tuple/control_dependency*
transpose_b( *
T0*
transpose_a(*
_output_shapes

:@

2Optimizer/gradients/MatMul_2_grad/tuple/group_depsNoOp)^Optimizer/gradients/MatMul_2_grad/MatMul+^Optimizer/gradients/MatMul_2_grad/MatMul_1

:Optimizer/gradients/MatMul_2_grad/tuple/control_dependencyIdentity(Optimizer/gradients/MatMul_2_grad/MatMul3^Optimizer/gradients/MatMul_2_grad/tuple/group_deps*
T0*;
_class1
/-loc:@Optimizer/gradients/MatMul_2_grad/MatMul*
_output_shapes

:@

<Optimizer/gradients/MatMul_2_grad/tuple/control_dependency_1Identity*Optimizer/gradients/MatMul_2_grad/MatMul_13^Optimizer/gradients/MatMul_2_grad/tuple/group_deps*
T0*=
_class3
1/loc:@Optimizer/gradients/MatMul_2_grad/MatMul_1*
_output_shapes

:@
t
/Optimizer/gradients/add_3_grad/tuple/group_depsNoOp;^Optimizer/gradients/MatMul_2_grad/tuple/control_dependency

7Optimizer/gradients/add_3_grad/tuple/control_dependencyIdentity:Optimizer/gradients/MatMul_2_grad/tuple/control_dependency0^Optimizer/gradients/add_3_grad/tuple/group_deps*
_output_shapes

:@*
T0*;
_class1
/-loc:@Optimizer/gradients/MatMul_2_grad/MatMul

9Optimizer/gradients/add_3_grad/tuple/control_dependency_1Identity:Optimizer/gradients/MatMul_2_grad/tuple/control_dependency0^Optimizer/gradients/add_3_grad/tuple/group_deps*
T0*;
_class1
/-loc:@Optimizer/gradients/MatMul_2_grad/MatMul*
_output_shapes

:@

Optimizer/gradients/AddN_7AddN9Optimizer/gradients/Loss/l1_regularization/Abs_2_grad/mul<Optimizer/gradients/MatMul_2_grad/tuple/control_dependency_1*
T0*L
_classB
@>loc:@Optimizer/gradients/Loss/l1_regularization/Abs_2_grad/mul*
N*
_output_shapes

:@
k
(Optimizer/gradients/Maximum_1_grad/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
{
*Optimizer/gradients/Maximum_1_grad/Shape_1Const*
valueB"   @   *
dtype0*
_output_shapes
:
{
*Optimizer/gradients/Maximum_1_grad/Shape_2Const*
valueB"   @   *
dtype0*
_output_shapes
:
s
.Optimizer/gradients/Maximum_1_grad/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ç
(Optimizer/gradients/Maximum_1_grad/zerosFill*Optimizer/gradients/Maximum_1_grad/Shape_2.Optimizer/gradients/Maximum_1_grad/zeros/Const*
T0*

index_type0*
_output_shapes

:@
|
/Optimizer/gradients/Maximum_1_grad/GreaterEqualGreaterEqualMaximum_1/xAdd_2*
T0*
_output_shapes

:@
ä
8Optimizer/gradients/Maximum_1_grad/BroadcastGradientArgsBroadcastGradientArgs(Optimizer/gradients/Maximum_1_grad/Shape*Optimizer/gradients/Maximum_1_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
đ
)Optimizer/gradients/Maximum_1_grad/SelectSelect/Optimizer/gradients/Maximum_1_grad/GreaterEqual7Optimizer/gradients/add_3_grad/tuple/control_dependency(Optimizer/gradients/Maximum_1_grad/zeros*
T0*
_output_shapes

:@
ň
+Optimizer/gradients/Maximum_1_grad/Select_1Select/Optimizer/gradients/Maximum_1_grad/GreaterEqual(Optimizer/gradients/Maximum_1_grad/zeros7Optimizer/gradients/add_3_grad/tuple/control_dependency*
T0*
_output_shapes

:@
Đ
&Optimizer/gradients/Maximum_1_grad/SumSum)Optimizer/gradients/Maximum_1_grad/Select8Optimizer/gradients/Maximum_1_grad/BroadcastGradientArgs*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0
ś
*Optimizer/gradients/Maximum_1_grad/ReshapeReshape&Optimizer/gradients/Maximum_1_grad/Sum(Optimizer/gradients/Maximum_1_grad/Shape*
T0*
Tshape0*
_output_shapes
: 
Ţ
(Optimizer/gradients/Maximum_1_grad/Sum_1Sum+Optimizer/gradients/Maximum_1_grad/Select_1:Optimizer/gradients/Maximum_1_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*
_output_shapes

:@
Ä
,Optimizer/gradients/Maximum_1_grad/Reshape_1Reshape(Optimizer/gradients/Maximum_1_grad/Sum_1*Optimizer/gradients/Maximum_1_grad/Shape_1*
_output_shapes

:@*
T0*
Tshape0

3Optimizer/gradients/Maximum_1_grad/tuple/group_depsNoOp+^Optimizer/gradients/Maximum_1_grad/Reshape-^Optimizer/gradients/Maximum_1_grad/Reshape_1

;Optimizer/gradients/Maximum_1_grad/tuple/control_dependencyIdentity*Optimizer/gradients/Maximum_1_grad/Reshape4^Optimizer/gradients/Maximum_1_grad/tuple/group_deps*
_output_shapes
: *
T0*=
_class3
1/loc:@Optimizer/gradients/Maximum_1_grad/Reshape

=Optimizer/gradients/Maximum_1_grad/tuple/control_dependency_1Identity,Optimizer/gradients/Maximum_1_grad/Reshape_14^Optimizer/gradients/Maximum_1_grad/tuple/group_deps*?
_class5
31loc:@Optimizer/gradients/Maximum_1_grad/Reshape_1*
_output_shapes

:@*
T0
n
$Optimizer/gradients/mul_1_grad/ShapeConst*
valueB:@*
dtype0*
_output_shapes
:
w
&Optimizer/gradients/mul_1_grad/Shape_1Const*
valueB"   @   *
dtype0*
_output_shapes
:
Ř
4Optimizer/gradients/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgs$Optimizer/gradients/mul_1_grad/Shape&Optimizer/gradients/mul_1_grad/Shape_1*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
T0

"Optimizer/gradients/mul_1_grad/MulMul9Optimizer/gradients/add_3_grad/tuple/control_dependency_1	Minimum_1*
T0*
_output_shapes

:@
Ĺ
"Optimizer/gradients/mul_1_grad/SumSum"Optimizer/gradients/mul_1_grad/Mul4Optimizer/gradients/mul_1_grad/BroadcastGradientArgs*
_output_shapes
:@*

Tidx0*
	keep_dims( *
T0
Ž
&Optimizer/gradients/mul_1_grad/ReshapeReshape"Optimizer/gradients/mul_1_grad/Sum$Optimizer/gradients/mul_1_grad/Shape*
T0*
Tshape0*
_output_shapes
:@

$Optimizer/gradients/mul_1_grad/Mul_1Mulencoder2/read9Optimizer/gradients/add_3_grad/tuple/control_dependency_1*
T0*
_output_shapes

:@
Ď
$Optimizer/gradients/mul_1_grad/Sum_1Sum$Optimizer/gradients/mul_1_grad/Mul_16Optimizer/gradients/mul_1_grad/BroadcastGradientArgs:1*
_output_shapes

:@*

Tidx0*
	keep_dims( *
T0
¸
(Optimizer/gradients/mul_1_grad/Reshape_1Reshape$Optimizer/gradients/mul_1_grad/Sum_1&Optimizer/gradients/mul_1_grad/Shape_1*
Tshape0*
_output_shapes

:@*
T0

/Optimizer/gradients/mul_1_grad/tuple/group_depsNoOp'^Optimizer/gradients/mul_1_grad/Reshape)^Optimizer/gradients/mul_1_grad/Reshape_1
ý
7Optimizer/gradients/mul_1_grad/tuple/control_dependencyIdentity&Optimizer/gradients/mul_1_grad/Reshape0^Optimizer/gradients/mul_1_grad/tuple/group_deps*
T0*9
_class/
-+loc:@Optimizer/gradients/mul_1_grad/Reshape*
_output_shapes
:@

9Optimizer/gradients/mul_1_grad/tuple/control_dependency_1Identity(Optimizer/gradients/mul_1_grad/Reshape_10^Optimizer/gradients/mul_1_grad/tuple/group_deps*
_output_shapes

:@*
T0*;
_class1
/-loc:@Optimizer/gradients/mul_1_grad/Reshape_1
k
(Optimizer/gradients/Minimum_1_grad/ShapeConst*
_output_shapes
: *
valueB *
dtype0
{
*Optimizer/gradients/Minimum_1_grad/Shape_1Const*
valueB"   @   *
dtype0*
_output_shapes
:
{
*Optimizer/gradients/Minimum_1_grad/Shape_2Const*
valueB"   @   *
dtype0*
_output_shapes
:
s
.Optimizer/gradients/Minimum_1_grad/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ç
(Optimizer/gradients/Minimum_1_grad/zerosFill*Optimizer/gradients/Minimum_1_grad/Shape_2.Optimizer/gradients/Minimum_1_grad/zeros/Const*
_output_shapes

:@*
T0*

index_type0
v
,Optimizer/gradients/Minimum_1_grad/LessEqual	LessEqualMinimum_1/xAdd_2*
_output_shapes

:@*
T0
ä
8Optimizer/gradients/Minimum_1_grad/BroadcastGradientArgsBroadcastGradientArgs(Optimizer/gradients/Minimum_1_grad/Shape*Optimizer/gradients/Minimum_1_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
ď
)Optimizer/gradients/Minimum_1_grad/SelectSelect,Optimizer/gradients/Minimum_1_grad/LessEqual9Optimizer/gradients/mul_1_grad/tuple/control_dependency_1(Optimizer/gradients/Minimum_1_grad/zeros*
T0*
_output_shapes

:@
ń
+Optimizer/gradients/Minimum_1_grad/Select_1Select,Optimizer/gradients/Minimum_1_grad/LessEqual(Optimizer/gradients/Minimum_1_grad/zeros9Optimizer/gradients/mul_1_grad/tuple/control_dependency_1*
T0*
_output_shapes

:@
Đ
&Optimizer/gradients/Minimum_1_grad/SumSum)Optimizer/gradients/Minimum_1_grad/Select8Optimizer/gradients/Minimum_1_grad/BroadcastGradientArgs*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0
ś
*Optimizer/gradients/Minimum_1_grad/ReshapeReshape&Optimizer/gradients/Minimum_1_grad/Sum(Optimizer/gradients/Minimum_1_grad/Shape*
T0*
Tshape0*
_output_shapes
: 
Ţ
(Optimizer/gradients/Minimum_1_grad/Sum_1Sum+Optimizer/gradients/Minimum_1_grad/Select_1:Optimizer/gradients/Minimum_1_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*
_output_shapes

:@
Ä
,Optimizer/gradients/Minimum_1_grad/Reshape_1Reshape(Optimizer/gradients/Minimum_1_grad/Sum_1*Optimizer/gradients/Minimum_1_grad/Shape_1*
_output_shapes

:@*
T0*
Tshape0

3Optimizer/gradients/Minimum_1_grad/tuple/group_depsNoOp+^Optimizer/gradients/Minimum_1_grad/Reshape-^Optimizer/gradients/Minimum_1_grad/Reshape_1

;Optimizer/gradients/Minimum_1_grad/tuple/control_dependencyIdentity*Optimizer/gradients/Minimum_1_grad/Reshape4^Optimizer/gradients/Minimum_1_grad/tuple/group_deps*
T0*=
_class3
1/loc:@Optimizer/gradients/Minimum_1_grad/Reshape*
_output_shapes
: 

=Optimizer/gradients/Minimum_1_grad/tuple/control_dependency_1Identity,Optimizer/gradients/Minimum_1_grad/Reshape_14^Optimizer/gradients/Minimum_1_grad/tuple/group_deps*?
_class5
31loc:@Optimizer/gradients/Minimum_1_grad/Reshape_1*
_output_shapes

:@*
T0

Optimizer/gradients/AddN_8AddN=Optimizer/gradients/Maximum_1_grad/tuple/control_dependency_1=Optimizer/gradients/Minimum_1_grad/tuple/control_dependency_1*
_output_shapes

:@*
T0*?
_class5
31loc:@Optimizer/gradients/Maximum_1_grad/Reshape_1*
N
u
$Optimizer/gradients/Add_2_grad/ShapeConst*
valueB"   @   *
dtype0*
_output_shapes
:
p
&Optimizer/gradients/Add_2_grad/Shape_1Const*
valueB:@*
dtype0*
_output_shapes
:
Ř
4Optimizer/gradients/Add_2_grad/BroadcastGradientArgsBroadcastGradientArgs$Optimizer/gradients/Add_2_grad/Shape&Optimizer/gradients/Add_2_grad/Shape_1*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
T0
Á
"Optimizer/gradients/Add_2_grad/SumSumOptimizer/gradients/AddN_84Optimizer/gradients/Add_2_grad/BroadcastGradientArgs*
T0*
_output_shapes

:@*

Tidx0*
	keep_dims( 
˛
&Optimizer/gradients/Add_2_grad/ReshapeReshape"Optimizer/gradients/Add_2_grad/Sum$Optimizer/gradients/Add_2_grad/Shape*
T0*
Tshape0*
_output_shapes

:@
Á
$Optimizer/gradients/Add_2_grad/Sum_1SumOptimizer/gradients/AddN_86Optimizer/gradients/Add_2_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:@
´
(Optimizer/gradients/Add_2_grad/Reshape_1Reshape$Optimizer/gradients/Add_2_grad/Sum_1&Optimizer/gradients/Add_2_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:@

/Optimizer/gradients/Add_2_grad/tuple/group_depsNoOp'^Optimizer/gradients/Add_2_grad/Reshape)^Optimizer/gradients/Add_2_grad/Reshape_1

7Optimizer/gradients/Add_2_grad/tuple/control_dependencyIdentity&Optimizer/gradients/Add_2_grad/Reshape0^Optimizer/gradients/Add_2_grad/tuple/group_deps*9
_class/
-+loc:@Optimizer/gradients/Add_2_grad/Reshape*
_output_shapes

:@*
T0

9Optimizer/gradients/Add_2_grad/tuple/control_dependency_1Identity(Optimizer/gradients/Add_2_grad/Reshape_10^Optimizer/gradients/Add_2_grad/tuple/group_deps*
T0*;
_class1
/-loc:@Optimizer/gradients/Add_2_grad/Reshape_1*
_output_shapes
:@
Ě
(Optimizer/gradients/MatMul_1_grad/MatMulMatMul7Optimizer/gradients/Add_2_grad/tuple/control_dependencyVariable_2/read*
transpose_a( *
_output_shapes
:	*
transpose_b(*
T0
Ä
*Optimizer/gradients/MatMul_1_grad/MatMul_1MatMuladd_17Optimizer/gradients/Add_2_grad/tuple/control_dependency*
T0*
transpose_a(*
_output_shapes
:	@*
transpose_b( 

2Optimizer/gradients/MatMul_1_grad/tuple/group_depsNoOp)^Optimizer/gradients/MatMul_1_grad/MatMul+^Optimizer/gradients/MatMul_1_grad/MatMul_1

:Optimizer/gradients/MatMul_1_grad/tuple/control_dependencyIdentity(Optimizer/gradients/MatMul_1_grad/MatMul3^Optimizer/gradients/MatMul_1_grad/tuple/group_deps*
T0*;
_class1
/-loc:@Optimizer/gradients/MatMul_1_grad/MatMul*
_output_shapes
:	

<Optimizer/gradients/MatMul_1_grad/tuple/control_dependency_1Identity*Optimizer/gradients/MatMul_1_grad/MatMul_13^Optimizer/gradients/MatMul_1_grad/tuple/group_deps*
T0*=
_class3
1/loc:@Optimizer/gradients/MatMul_1_grad/MatMul_1*
_output_shapes
:	@
t
/Optimizer/gradients/add_1_grad/tuple/group_depsNoOp;^Optimizer/gradients/MatMul_1_grad/tuple/control_dependency

7Optimizer/gradients/add_1_grad/tuple/control_dependencyIdentity:Optimizer/gradients/MatMul_1_grad/tuple/control_dependency0^Optimizer/gradients/add_1_grad/tuple/group_deps*
T0*;
_class1
/-loc:@Optimizer/gradients/MatMul_1_grad/MatMul*
_output_shapes
:	

9Optimizer/gradients/add_1_grad/tuple/control_dependency_1Identity:Optimizer/gradients/MatMul_1_grad/tuple/control_dependency0^Optimizer/gradients/add_1_grad/tuple/group_deps*
T0*;
_class1
/-loc:@Optimizer/gradients/MatMul_1_grad/MatMul*
_output_shapes
:	

Optimizer/gradients/AddN_9AddN9Optimizer/gradients/Loss/l1_regularization/Abs_1_grad/mul<Optimizer/gradients/MatMul_1_grad/tuple/control_dependency_1*
_output_shapes
:	@*
T0*L
_classB
@>loc:@Optimizer/gradients/Loss/l1_regularization/Abs_1_grad/mul*
N
i
&Optimizer/gradients/Maximum_grad/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
y
(Optimizer/gradients/Maximum_grad/Shape_1Const*
valueB"      *
dtype0*
_output_shapes
:
y
(Optimizer/gradients/Maximum_grad/Shape_2Const*
valueB"      *
dtype0*
_output_shapes
:
q
,Optimizer/gradients/Maximum_grad/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Â
&Optimizer/gradients/Maximum_grad/zerosFill(Optimizer/gradients/Maximum_grad/Shape_2,Optimizer/gradients/Maximum_grad/zeros/Const*
_output_shapes
:	*
T0*

index_type0
w
-Optimizer/gradients/Maximum_grad/GreaterEqualGreaterEqual	Maximum/xAdd*
_output_shapes
:	*
T0
Ţ
6Optimizer/gradients/Maximum_grad/BroadcastGradientArgsBroadcastGradientArgs&Optimizer/gradients/Maximum_grad/Shape(Optimizer/gradients/Maximum_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
ë
'Optimizer/gradients/Maximum_grad/SelectSelect-Optimizer/gradients/Maximum_grad/GreaterEqual7Optimizer/gradients/add_1_grad/tuple/control_dependency&Optimizer/gradients/Maximum_grad/zeros*
T0*
_output_shapes
:	
í
)Optimizer/gradients/Maximum_grad/Select_1Select-Optimizer/gradients/Maximum_grad/GreaterEqual&Optimizer/gradients/Maximum_grad/zeros7Optimizer/gradients/add_1_grad/tuple/control_dependency*
T0*
_output_shapes
:	
Ę
$Optimizer/gradients/Maximum_grad/SumSum'Optimizer/gradients/Maximum_grad/Select6Optimizer/gradients/Maximum_grad/BroadcastGradientArgs*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0
°
(Optimizer/gradients/Maximum_grad/ReshapeReshape$Optimizer/gradients/Maximum_grad/Sum&Optimizer/gradients/Maximum_grad/Shape*
_output_shapes
: *
T0*
Tshape0
Ů
&Optimizer/gradients/Maximum_grad/Sum_1Sum)Optimizer/gradients/Maximum_grad/Select_18Optimizer/gradients/Maximum_grad/BroadcastGradientArgs:1*
_output_shapes
:	*

Tidx0*
	keep_dims( *
T0
ż
*Optimizer/gradients/Maximum_grad/Reshape_1Reshape&Optimizer/gradients/Maximum_grad/Sum_1(Optimizer/gradients/Maximum_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:	

1Optimizer/gradients/Maximum_grad/tuple/group_depsNoOp)^Optimizer/gradients/Maximum_grad/Reshape+^Optimizer/gradients/Maximum_grad/Reshape_1

9Optimizer/gradients/Maximum_grad/tuple/control_dependencyIdentity(Optimizer/gradients/Maximum_grad/Reshape2^Optimizer/gradients/Maximum_grad/tuple/group_deps*
T0*;
_class1
/-loc:@Optimizer/gradients/Maximum_grad/Reshape*
_output_shapes
: 

;Optimizer/gradients/Maximum_grad/tuple/control_dependency_1Identity*Optimizer/gradients/Maximum_grad/Reshape_12^Optimizer/gradients/Maximum_grad/tuple/group_deps*
T0*=
_class3
1/loc:@Optimizer/gradients/Maximum_grad/Reshape_1*
_output_shapes
:	
m
"Optimizer/gradients/mul_grad/ShapeConst*
valueB:*
dtype0*
_output_shapes
:
u
$Optimizer/gradients/mul_grad/Shape_1Const*
valueB"      *
dtype0*
_output_shapes
:
Ň
2Optimizer/gradients/mul_grad/BroadcastGradientArgsBroadcastGradientArgs"Optimizer/gradients/mul_grad/Shape$Optimizer/gradients/mul_grad/Shape_1*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
T0

 Optimizer/gradients/mul_grad/MulMul9Optimizer/gradients/add_1_grad/tuple/control_dependency_1Minimum*
_output_shapes
:	*
T0
Ŕ
 Optimizer/gradients/mul_grad/SumSum Optimizer/gradients/mul_grad/Mul2Optimizer/gradients/mul_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*
_output_shapes	
:
Š
$Optimizer/gradients/mul_grad/ReshapeReshape Optimizer/gradients/mul_grad/Sum"Optimizer/gradients/mul_grad/Shape*
T0*
Tshape0*
_output_shapes	
:

"Optimizer/gradients/mul_grad/Mul_1Mulencoder1/read9Optimizer/gradients/add_1_grad/tuple/control_dependency_1*
T0*
_output_shapes
:	
Ę
"Optimizer/gradients/mul_grad/Sum_1Sum"Optimizer/gradients/mul_grad/Mul_14Optimizer/gradients/mul_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:	
ł
&Optimizer/gradients/mul_grad/Reshape_1Reshape"Optimizer/gradients/mul_grad/Sum_1$Optimizer/gradients/mul_grad/Shape_1*
Tshape0*
_output_shapes
:	*
T0

-Optimizer/gradients/mul_grad/tuple/group_depsNoOp%^Optimizer/gradients/mul_grad/Reshape'^Optimizer/gradients/mul_grad/Reshape_1
ö
5Optimizer/gradients/mul_grad/tuple/control_dependencyIdentity$Optimizer/gradients/mul_grad/Reshape.^Optimizer/gradients/mul_grad/tuple/group_deps*
T0*7
_class-
+)loc:@Optimizer/gradients/mul_grad/Reshape*
_output_shapes	
:

7Optimizer/gradients/mul_grad/tuple/control_dependency_1Identity&Optimizer/gradients/mul_grad/Reshape_1.^Optimizer/gradients/mul_grad/tuple/group_deps*
_output_shapes
:	*
T0*9
_class/
-+loc:@Optimizer/gradients/mul_grad/Reshape_1
i
&Optimizer/gradients/Minimum_grad/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
y
(Optimizer/gradients/Minimum_grad/Shape_1Const*
valueB"      *
dtype0*
_output_shapes
:
y
(Optimizer/gradients/Minimum_grad/Shape_2Const*
valueB"      *
dtype0*
_output_shapes
:
q
,Optimizer/gradients/Minimum_grad/zeros/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    
Â
&Optimizer/gradients/Minimum_grad/zerosFill(Optimizer/gradients/Minimum_grad/Shape_2,Optimizer/gradients/Minimum_grad/zeros/Const*
T0*

index_type0*
_output_shapes
:	
q
*Optimizer/gradients/Minimum_grad/LessEqual	LessEqual	Minimum/xAdd*
T0*
_output_shapes
:	
Ţ
6Optimizer/gradients/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgs&Optimizer/gradients/Minimum_grad/Shape(Optimizer/gradients/Minimum_grad/Shape_1*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
T0
č
'Optimizer/gradients/Minimum_grad/SelectSelect*Optimizer/gradients/Minimum_grad/LessEqual7Optimizer/gradients/mul_grad/tuple/control_dependency_1&Optimizer/gradients/Minimum_grad/zeros*
_output_shapes
:	*
T0
ę
)Optimizer/gradients/Minimum_grad/Select_1Select*Optimizer/gradients/Minimum_grad/LessEqual&Optimizer/gradients/Minimum_grad/zeros7Optimizer/gradients/mul_grad/tuple/control_dependency_1*
T0*
_output_shapes
:	
Ę
$Optimizer/gradients/Minimum_grad/SumSum'Optimizer/gradients/Minimum_grad/Select6Optimizer/gradients/Minimum_grad/BroadcastGradientArgs*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0
°
(Optimizer/gradients/Minimum_grad/ReshapeReshape$Optimizer/gradients/Minimum_grad/Sum&Optimizer/gradients/Minimum_grad/Shape*
_output_shapes
: *
T0*
Tshape0
Ů
&Optimizer/gradients/Minimum_grad/Sum_1Sum)Optimizer/gradients/Minimum_grad/Select_18Optimizer/gradients/Minimum_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:	*

Tidx0*
	keep_dims( 
ż
*Optimizer/gradients/Minimum_grad/Reshape_1Reshape&Optimizer/gradients/Minimum_grad/Sum_1(Optimizer/gradients/Minimum_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:	

1Optimizer/gradients/Minimum_grad/tuple/group_depsNoOp)^Optimizer/gradients/Minimum_grad/Reshape+^Optimizer/gradients/Minimum_grad/Reshape_1

9Optimizer/gradients/Minimum_grad/tuple/control_dependencyIdentity(Optimizer/gradients/Minimum_grad/Reshape2^Optimizer/gradients/Minimum_grad/tuple/group_deps*
T0*;
_class1
/-loc:@Optimizer/gradients/Minimum_grad/Reshape*
_output_shapes
: 

;Optimizer/gradients/Minimum_grad/tuple/control_dependency_1Identity*Optimizer/gradients/Minimum_grad/Reshape_12^Optimizer/gradients/Minimum_grad/tuple/group_deps*
_output_shapes
:	*
T0*=
_class3
1/loc:@Optimizer/gradients/Minimum_grad/Reshape_1

Optimizer/gradients/AddN_10AddN;Optimizer/gradients/Maximum_grad/tuple/control_dependency_1;Optimizer/gradients/Minimum_grad/tuple/control_dependency_1*
T0*=
_class3
1/loc:@Optimizer/gradients/Maximum_grad/Reshape_1*
N*
_output_shapes
:	
s
"Optimizer/gradients/Add_grad/ShapeConst*
valueB"      *
dtype0*
_output_shapes
:
o
$Optimizer/gradients/Add_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB:
Ň
2Optimizer/gradients/Add_grad/BroadcastGradientArgsBroadcastGradientArgs"Optimizer/gradients/Add_grad/Shape$Optimizer/gradients/Add_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
ż
 Optimizer/gradients/Add_grad/SumSumOptimizer/gradients/AddN_102Optimizer/gradients/Add_grad/BroadcastGradientArgs*
T0*
_output_shapes
:	*

Tidx0*
	keep_dims( 
­
$Optimizer/gradients/Add_grad/ReshapeReshape Optimizer/gradients/Add_grad/Sum"Optimizer/gradients/Add_grad/Shape*
T0*
Tshape0*
_output_shapes
:	
ż
"Optimizer/gradients/Add_grad/Sum_1SumOptimizer/gradients/AddN_104Optimizer/gradients/Add_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*
_output_shapes	
:
Ż
&Optimizer/gradients/Add_grad/Reshape_1Reshape"Optimizer/gradients/Add_grad/Sum_1$Optimizer/gradients/Add_grad/Shape_1*
T0*
Tshape0*
_output_shapes	
:

-Optimizer/gradients/Add_grad/tuple/group_depsNoOp%^Optimizer/gradients/Add_grad/Reshape'^Optimizer/gradients/Add_grad/Reshape_1
ú
5Optimizer/gradients/Add_grad/tuple/control_dependencyIdentity$Optimizer/gradients/Add_grad/Reshape.^Optimizer/gradients/Add_grad/tuple/group_deps*7
_class-
+)loc:@Optimizer/gradients/Add_grad/Reshape*
_output_shapes
:	*
T0
ü
7Optimizer/gradients/Add_grad/tuple/control_dependency_1Identity&Optimizer/gradients/Add_grad/Reshape_1.^Optimizer/gradients/Add_grad/tuple/group_deps*
_output_shapes	
:*
T0*9
_class/
-+loc:@Optimizer/gradients/Add_grad/Reshape_1
Ć
&Optimizer/gradients/MatMul_grad/MatMulMatMul5Optimizer/gradients/Add_grad/tuple/control_dependencyVariable/read*
transpose_a( *
_output_shapes
:	ö*
transpose_b(*
T0
Ď
(Optimizer/gradients/MatMul_grad/MatMul_1MatMulplaceholder/x_input5Optimizer/gradients/Add_grad/tuple/control_dependency*
transpose_a(* 
_output_shapes
:
ö*
transpose_b( *
T0

0Optimizer/gradients/MatMul_grad/tuple/group_depsNoOp'^Optimizer/gradients/MatMul_grad/MatMul)^Optimizer/gradients/MatMul_grad/MatMul_1

8Optimizer/gradients/MatMul_grad/tuple/control_dependencyIdentity&Optimizer/gradients/MatMul_grad/MatMul1^Optimizer/gradients/MatMul_grad/tuple/group_deps*
T0*9
_class/
-+loc:@Optimizer/gradients/MatMul_grad/MatMul*
_output_shapes
:	ö

:Optimizer/gradients/MatMul_grad/tuple/control_dependency_1Identity(Optimizer/gradients/MatMul_grad/MatMul_11^Optimizer/gradients/MatMul_grad/tuple/group_deps*;
_class1
/-loc:@Optimizer/gradients/MatMul_grad/MatMul_1* 
_output_shapes
:
ö*
T0

Optimizer/gradients/AddN_11AddN7Optimizer/gradients/Loss/l1_regularization/Abs_grad/mul:Optimizer/gradients/MatMul_grad/tuple/control_dependency_1*J
_class@
><loc:@Optimizer/gradients/Loss/l1_regularization/Abs_grad/mul*
N* 
_output_shapes
:
ö*
T0

#Optimizer/beta1_power/initial_valueConst*
_class
loc:@Variable*
valueB
 *fff?*
dtype0*
_output_shapes
: 

Optimizer/beta1_power
VariableV2*
dtype0*
_output_shapes
: *
shared_name *
_class
loc:@Variable*
	container *
shape: 
É
Optimizer/beta1_power/AssignAssignOptimizer/beta1_power#Optimizer/beta1_power/initial_value*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(*
_output_shapes
: 
{
Optimizer/beta1_power/readIdentityOptimizer/beta1_power*
T0*
_class
loc:@Variable*
_output_shapes
: 

#Optimizer/beta2_power/initial_valueConst*
_output_shapes
: *
_class
loc:@Variable*
valueB
 *wž?*
dtype0

Optimizer/beta2_power
VariableV2*
dtype0*
_output_shapes
: *
shared_name *
_class
loc:@Variable*
	container *
shape: 
É
Optimizer/beta2_power/AssignAssignOptimizer/beta2_power#Optimizer/beta2_power/initial_value*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@Variable
{
Optimizer/beta2_power/readIdentityOptimizer/beta2_power*
T0*
_class
loc:@Variable*
_output_shapes
: 

/Variable/Adam/Initializer/zeros/shape_as_tensorConst*
valueB"ö
     *
_class
loc:@Variable*
dtype0*
_output_shapes
:

%Variable/Adam/Initializer/zeros/ConstConst*
valueB
 *    *
_class
loc:@Variable*
dtype0*
_output_shapes
: 
Ů
Variable/Adam/Initializer/zerosFill/Variable/Adam/Initializer/zeros/shape_as_tensor%Variable/Adam/Initializer/zeros/Const* 
_output_shapes
:
ö*
T0*

index_type0*
_class
loc:@Variable
˘
Variable/Adam
VariableV2*
shared_name *
_class
loc:@Variable*
	container *
shape:
ö*
dtype0* 
_output_shapes
:
ö
ż
Variable/Adam/AssignAssignVariable/AdamVariable/Adam/Initializer/zeros*
_class
loc:@Variable*
validate_shape(* 
_output_shapes
:
ö*
use_locking(*
T0
u
Variable/Adam/readIdentityVariable/Adam*
T0*
_class
loc:@Variable* 
_output_shapes
:
ö

1Variable/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB"ö
     *
_class
loc:@Variable*
dtype0*
_output_shapes
:

'Variable/Adam_1/Initializer/zeros/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    *
_class
loc:@Variable
ß
!Variable/Adam_1/Initializer/zerosFill1Variable/Adam_1/Initializer/zeros/shape_as_tensor'Variable/Adam_1/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@Variable* 
_output_shapes
:
ö
¤
Variable/Adam_1
VariableV2*
	container *
shape:
ö*
dtype0* 
_output_shapes
:
ö*
shared_name *
_class
loc:@Variable
Ĺ
Variable/Adam_1/AssignAssignVariable/Adam_1!Variable/Adam_1/Initializer/zeros*
T0*
_class
loc:@Variable*
validate_shape(* 
_output_shapes
:
ö*
use_locking(
y
Variable/Adam_1/readIdentityVariable/Adam_1* 
_output_shapes
:
ö*
T0*
_class
loc:@Variable

!Variable_1/Adam/Initializer/zerosConst*
valueB*    *
_class
loc:@Variable_1*
dtype0*
_output_shapes	
:

Variable_1/Adam
VariableV2*
_class
loc:@Variable_1*
	container *
shape:*
dtype0*
_output_shapes	
:*
shared_name 
Â
Variable_1/Adam/AssignAssignVariable_1/Adam!Variable_1/Adam/Initializer/zeros*
use_locking(*
T0*
_class
loc:@Variable_1*
validate_shape(*
_output_shapes	
:
v
Variable_1/Adam/readIdentityVariable_1/Adam*
_output_shapes	
:*
T0*
_class
loc:@Variable_1

#Variable_1/Adam_1/Initializer/zerosConst*
valueB*    *
_class
loc:@Variable_1*
dtype0*
_output_shapes	
:

Variable_1/Adam_1
VariableV2*
shape:*
dtype0*
_output_shapes	
:*
shared_name *
_class
loc:@Variable_1*
	container 
Č
Variable_1/Adam_1/AssignAssignVariable_1/Adam_1#Variable_1/Adam_1/Initializer/zeros*
T0*
_class
loc:@Variable_1*
validate_shape(*
_output_shapes	
:*
use_locking(
z
Variable_1/Adam_1/readIdentityVariable_1/Adam_1*
_output_shapes	
:*
T0*
_class
loc:@Variable_1

encoder1/Adam/Initializer/zerosConst*
dtype0*
_output_shapes	
:*
valueB*    *
_class
loc:@encoder1

encoder1/Adam
VariableV2*
shape:*
dtype0*
_output_shapes	
:*
shared_name *
_class
loc:@encoder1*
	container 
ş
encoder1/Adam/AssignAssignencoder1/Adamencoder1/Adam/Initializer/zeros*
_output_shapes	
:*
use_locking(*
T0*
_class
loc:@encoder1*
validate_shape(
p
encoder1/Adam/readIdentityencoder1/Adam*
_output_shapes	
:*
T0*
_class
loc:@encoder1

!encoder1/Adam_1/Initializer/zerosConst*
valueB*    *
_class
loc:@encoder1*
dtype0*
_output_shapes	
:

encoder1/Adam_1
VariableV2*
_output_shapes	
:*
shared_name *
_class
loc:@encoder1*
	container *
shape:*
dtype0
Ŕ
encoder1/Adam_1/AssignAssignencoder1/Adam_1!encoder1/Adam_1/Initializer/zeros*
use_locking(*
T0*
_class
loc:@encoder1*
validate_shape(*
_output_shapes	
:
t
encoder1/Adam_1/readIdentityencoder1/Adam_1*
_class
loc:@encoder1*
_output_shapes	
:*
T0
Ą
1Variable_2/Adam/Initializer/zeros/shape_as_tensorConst*
valueB"   @   *
_class
loc:@Variable_2*
dtype0*
_output_shapes
:

'Variable_2/Adam/Initializer/zeros/ConstConst*
valueB
 *    *
_class
loc:@Variable_2*
dtype0*
_output_shapes
: 
ŕ
!Variable_2/Adam/Initializer/zerosFill1Variable_2/Adam/Initializer/zeros/shape_as_tensor'Variable_2/Adam/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@Variable_2*
_output_shapes
:	@
¤
Variable_2/Adam
VariableV2*
_class
loc:@Variable_2*
	container *
shape:	@*
dtype0*
_output_shapes
:	@*
shared_name 
Ć
Variable_2/Adam/AssignAssignVariable_2/Adam!Variable_2/Adam/Initializer/zeros*
use_locking(*
T0*
_class
loc:@Variable_2*
validate_shape(*
_output_shapes
:	@
z
Variable_2/Adam/readIdentityVariable_2/Adam*
T0*
_class
loc:@Variable_2*
_output_shapes
:	@
Ł
3Variable_2/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB"   @   *
_class
loc:@Variable_2*
dtype0*
_output_shapes
:

)Variable_2/Adam_1/Initializer/zeros/ConstConst*
_output_shapes
: *
valueB
 *    *
_class
loc:@Variable_2*
dtype0
ć
#Variable_2/Adam_1/Initializer/zerosFill3Variable_2/Adam_1/Initializer/zeros/shape_as_tensor)Variable_2/Adam_1/Initializer/zeros/Const*
_output_shapes
:	@*
T0*

index_type0*
_class
loc:@Variable_2
Ś
Variable_2/Adam_1
VariableV2*
	container *
shape:	@*
dtype0*
_output_shapes
:	@*
shared_name *
_class
loc:@Variable_2
Ě
Variable_2/Adam_1/AssignAssignVariable_2/Adam_1#Variable_2/Adam_1/Initializer/zeros*
use_locking(*
T0*
_class
loc:@Variable_2*
validate_shape(*
_output_shapes
:	@
~
Variable_2/Adam_1/readIdentityVariable_2/Adam_1*
T0*
_class
loc:@Variable_2*
_output_shapes
:	@

!Variable_3/Adam/Initializer/zerosConst*
_output_shapes
:@*
valueB@*    *
_class
loc:@Variable_3*
dtype0

Variable_3/Adam
VariableV2*
dtype0*
_output_shapes
:@*
shared_name *
_class
loc:@Variable_3*
	container *
shape:@
Á
Variable_3/Adam/AssignAssignVariable_3/Adam!Variable_3/Adam/Initializer/zeros*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*
_class
loc:@Variable_3
u
Variable_3/Adam/readIdentityVariable_3/Adam*
_output_shapes
:@*
T0*
_class
loc:@Variable_3

#Variable_3/Adam_1/Initializer/zerosConst*
valueB@*    *
_class
loc:@Variable_3*
dtype0*
_output_shapes
:@

Variable_3/Adam_1
VariableV2*
	container *
shape:@*
dtype0*
_output_shapes
:@*
shared_name *
_class
loc:@Variable_3
Ç
Variable_3/Adam_1/AssignAssignVariable_3/Adam_1#Variable_3/Adam_1/Initializer/zeros*
T0*
_class
loc:@Variable_3*
validate_shape(*
_output_shapes
:@*
use_locking(
y
Variable_3/Adam_1/readIdentityVariable_3/Adam_1*
_class
loc:@Variable_3*
_output_shapes
:@*
T0

encoder2/Adam/Initializer/zerosConst*
valueB@*    *
_class
loc:@encoder2*
dtype0*
_output_shapes
:@

encoder2/Adam
VariableV2*
dtype0*
_output_shapes
:@*
shared_name *
_class
loc:@encoder2*
	container *
shape:@
š
encoder2/Adam/AssignAssignencoder2/Adamencoder2/Adam/Initializer/zeros*
use_locking(*
T0*
_class
loc:@encoder2*
validate_shape(*
_output_shapes
:@
o
encoder2/Adam/readIdentityencoder2/Adam*
T0*
_class
loc:@encoder2*
_output_shapes
:@

!encoder2/Adam_1/Initializer/zerosConst*
_output_shapes
:@*
valueB@*    *
_class
loc:@encoder2*
dtype0

encoder2/Adam_1
VariableV2*
dtype0*
_output_shapes
:@*
shared_name *
_class
loc:@encoder2*
	container *
shape:@
ż
encoder2/Adam_1/AssignAssignencoder2/Adam_1!encoder2/Adam_1/Initializer/zeros*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*
_class
loc:@encoder2
s
encoder2/Adam_1/readIdentityencoder2/Adam_1*
_output_shapes
:@*
T0*
_class
loc:@encoder2
Ą
1Variable_4/Adam/Initializer/zeros/shape_as_tensorConst*
valueB"@      *
_class
loc:@Variable_4*
dtype0*
_output_shapes
:

'Variable_4/Adam/Initializer/zeros/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    *
_class
loc:@Variable_4
ß
!Variable_4/Adam/Initializer/zerosFill1Variable_4/Adam/Initializer/zeros/shape_as_tensor'Variable_4/Adam/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@Variable_4*
_output_shapes

:@
˘
Variable_4/Adam
VariableV2*
shared_name *
_class
loc:@Variable_4*
	container *
shape
:@*
dtype0*
_output_shapes

:@
Ĺ
Variable_4/Adam/AssignAssignVariable_4/Adam!Variable_4/Adam/Initializer/zeros*
use_locking(*
T0*
_class
loc:@Variable_4*
validate_shape(*
_output_shapes

:@
y
Variable_4/Adam/readIdentityVariable_4/Adam*
_output_shapes

:@*
T0*
_class
loc:@Variable_4
Ł
3Variable_4/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB"@      *
_class
loc:@Variable_4*
dtype0*
_output_shapes
:

)Variable_4/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *
_class
loc:@Variable_4*
dtype0*
_output_shapes
: 
ĺ
#Variable_4/Adam_1/Initializer/zerosFill3Variable_4/Adam_1/Initializer/zeros/shape_as_tensor)Variable_4/Adam_1/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@Variable_4*
_output_shapes

:@
¤
Variable_4/Adam_1
VariableV2*
_class
loc:@Variable_4*
	container *
shape
:@*
dtype0*
_output_shapes

:@*
shared_name 
Ë
Variable_4/Adam_1/AssignAssignVariable_4/Adam_1#Variable_4/Adam_1/Initializer/zeros*
use_locking(*
T0*
_class
loc:@Variable_4*
validate_shape(*
_output_shapes

:@
}
Variable_4/Adam_1/readIdentityVariable_4/Adam_1*
T0*
_class
loc:@Variable_4*
_output_shapes

:@

!Variable_5/Adam/Initializer/zerosConst*
valueB*    *
_class
loc:@Variable_5*
dtype0*
_output_shapes
:

Variable_5/Adam
VariableV2*
_class
loc:@Variable_5*
	container *
shape:*
dtype0*
_output_shapes
:*
shared_name 
Á
Variable_5/Adam/AssignAssignVariable_5/Adam!Variable_5/Adam/Initializer/zeros*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*
_class
loc:@Variable_5
u
Variable_5/Adam/readIdentityVariable_5/Adam*
T0*
_class
loc:@Variable_5*
_output_shapes
:

#Variable_5/Adam_1/Initializer/zerosConst*
valueB*    *
_class
loc:@Variable_5*
dtype0*
_output_shapes
:

Variable_5/Adam_1
VariableV2*
dtype0*
_output_shapes
:*
shared_name *
_class
loc:@Variable_5*
	container *
shape:
Ç
Variable_5/Adam_1/AssignAssignVariable_5/Adam_1#Variable_5/Adam_1/Initializer/zeros*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*
_class
loc:@Variable_5
y
Variable_5/Adam_1/readIdentityVariable_5/Adam_1*
_output_shapes
:*
T0*
_class
loc:@Variable_5

encoder3/Adam/Initializer/zerosConst*
valueB*    *
_class
loc:@encoder3*
dtype0*
_output_shapes
:

encoder3/Adam
VariableV2*
shared_name *
_class
loc:@encoder3*
	container *
shape:*
dtype0*
_output_shapes
:
š
encoder3/Adam/AssignAssignencoder3/Adamencoder3/Adam/Initializer/zeros*
use_locking(*
T0*
_class
loc:@encoder3*
validate_shape(*
_output_shapes
:
o
encoder3/Adam/readIdentityencoder3/Adam*
T0*
_class
loc:@encoder3*
_output_shapes
:

!encoder3/Adam_1/Initializer/zerosConst*
valueB*    *
_class
loc:@encoder3*
dtype0*
_output_shapes
:

encoder3/Adam_1
VariableV2*
dtype0*
_output_shapes
:*
shared_name *
_class
loc:@encoder3*
	container *
shape:
ż
encoder3/Adam_1/AssignAssignencoder3/Adam_1!encoder3/Adam_1/Initializer/zeros*
T0*
_class
loc:@encoder3*
validate_shape(*
_output_shapes
:*
use_locking(
s
encoder3/Adam_1/readIdentityencoder3/Adam_1*
T0*
_class
loc:@encoder3*
_output_shapes
:
Ą
1Variable_6/Adam/Initializer/zeros/shape_as_tensorConst*
valueB"   @   *
_class
loc:@Variable_6*
dtype0*
_output_shapes
:

'Variable_6/Adam/Initializer/zeros/ConstConst*
valueB
 *    *
_class
loc:@Variable_6*
dtype0*
_output_shapes
: 
ß
!Variable_6/Adam/Initializer/zerosFill1Variable_6/Adam/Initializer/zeros/shape_as_tensor'Variable_6/Adam/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@Variable_6*
_output_shapes

:@
˘
Variable_6/Adam
VariableV2*
	container *
shape
:@*
dtype0*
_output_shapes

:@*
shared_name *
_class
loc:@Variable_6
Ĺ
Variable_6/Adam/AssignAssignVariable_6/Adam!Variable_6/Adam/Initializer/zeros*
use_locking(*
T0*
_class
loc:@Variable_6*
validate_shape(*
_output_shapes

:@
y
Variable_6/Adam/readIdentityVariable_6/Adam*
T0*
_class
loc:@Variable_6*
_output_shapes

:@
Ł
3Variable_6/Adam_1/Initializer/zeros/shape_as_tensorConst*
dtype0*
_output_shapes
:*
valueB"   @   *
_class
loc:@Variable_6

)Variable_6/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *
_class
loc:@Variable_6*
dtype0*
_output_shapes
: 
ĺ
#Variable_6/Adam_1/Initializer/zerosFill3Variable_6/Adam_1/Initializer/zeros/shape_as_tensor)Variable_6/Adam_1/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@Variable_6*
_output_shapes

:@
¤
Variable_6/Adam_1
VariableV2*
dtype0*
_output_shapes

:@*
shared_name *
_class
loc:@Variable_6*
	container *
shape
:@
Ë
Variable_6/Adam_1/AssignAssignVariable_6/Adam_1#Variable_6/Adam_1/Initializer/zeros*
use_locking(*
T0*
_class
loc:@Variable_6*
validate_shape(*
_output_shapes

:@
}
Variable_6/Adam_1/readIdentityVariable_6/Adam_1*
_output_shapes

:@*
T0*
_class
loc:@Variable_6

!Variable_7/Adam/Initializer/zerosConst*
valueB@*    *
_class
loc:@Variable_7*
dtype0*
_output_shapes
:@

Variable_7/Adam
VariableV2*
_output_shapes
:@*
shared_name *
_class
loc:@Variable_7*
	container *
shape:@*
dtype0
Á
Variable_7/Adam/AssignAssignVariable_7/Adam!Variable_7/Adam/Initializer/zeros*
use_locking(*
T0*
_class
loc:@Variable_7*
validate_shape(*
_output_shapes
:@
u
Variable_7/Adam/readIdentityVariable_7/Adam*
T0*
_class
loc:@Variable_7*
_output_shapes
:@

#Variable_7/Adam_1/Initializer/zerosConst*
valueB@*    *
_class
loc:@Variable_7*
dtype0*
_output_shapes
:@

Variable_7/Adam_1
VariableV2*
shared_name *
_class
loc:@Variable_7*
	container *
shape:@*
dtype0*
_output_shapes
:@
Ç
Variable_7/Adam_1/AssignAssignVariable_7/Adam_1#Variable_7/Adam_1/Initializer/zeros*
use_locking(*
T0*
_class
loc:@Variable_7*
validate_shape(*
_output_shapes
:@
y
Variable_7/Adam_1/readIdentityVariable_7/Adam_1*
T0*
_class
loc:@Variable_7*
_output_shapes
:@

decoder1/Adam/Initializer/zerosConst*
valueB@*    *
_class
loc:@decoder1*
dtype0*
_output_shapes
:@

decoder1/Adam
VariableV2*
	container *
shape:@*
dtype0*
_output_shapes
:@*
shared_name *
_class
loc:@decoder1
š
decoder1/Adam/AssignAssigndecoder1/Adamdecoder1/Adam/Initializer/zeros*
use_locking(*
T0*
_class
loc:@decoder1*
validate_shape(*
_output_shapes
:@
o
decoder1/Adam/readIdentitydecoder1/Adam*
T0*
_class
loc:@decoder1*
_output_shapes
:@

!decoder1/Adam_1/Initializer/zerosConst*
valueB@*    *
_class
loc:@decoder1*
dtype0*
_output_shapes
:@

decoder1/Adam_1
VariableV2*
	container *
shape:@*
dtype0*
_output_shapes
:@*
shared_name *
_class
loc:@decoder1
ż
decoder1/Adam_1/AssignAssigndecoder1/Adam_1!decoder1/Adam_1/Initializer/zeros*
use_locking(*
T0*
_class
loc:@decoder1*
validate_shape(*
_output_shapes
:@
s
decoder1/Adam_1/readIdentitydecoder1/Adam_1*
T0*
_class
loc:@decoder1*
_output_shapes
:@
Ą
1Variable_8/Adam/Initializer/zeros/shape_as_tensorConst*
_output_shapes
:*
valueB"@      *
_class
loc:@Variable_8*
dtype0

'Variable_8/Adam/Initializer/zeros/ConstConst*
valueB
 *    *
_class
loc:@Variable_8*
dtype0*
_output_shapes
: 
ŕ
!Variable_8/Adam/Initializer/zerosFill1Variable_8/Adam/Initializer/zeros/shape_as_tensor'Variable_8/Adam/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@Variable_8*
_output_shapes
:	@
¤
Variable_8/Adam
VariableV2*
shared_name *
_class
loc:@Variable_8*
	container *
shape:	@*
dtype0*
_output_shapes
:	@
Ć
Variable_8/Adam/AssignAssignVariable_8/Adam!Variable_8/Adam/Initializer/zeros*
_class
loc:@Variable_8*
validate_shape(*
_output_shapes
:	@*
use_locking(*
T0
z
Variable_8/Adam/readIdentityVariable_8/Adam*
T0*
_class
loc:@Variable_8*
_output_shapes
:	@
Ł
3Variable_8/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB"@      *
_class
loc:@Variable_8*
dtype0*
_output_shapes
:

)Variable_8/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *
_class
loc:@Variable_8*
dtype0*
_output_shapes
: 
ć
#Variable_8/Adam_1/Initializer/zerosFill3Variable_8/Adam_1/Initializer/zeros/shape_as_tensor)Variable_8/Adam_1/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@Variable_8*
_output_shapes
:	@
Ś
Variable_8/Adam_1
VariableV2*
shape:	@*
dtype0*
_output_shapes
:	@*
shared_name *
_class
loc:@Variable_8*
	container 
Ě
Variable_8/Adam_1/AssignAssignVariable_8/Adam_1#Variable_8/Adam_1/Initializer/zeros*
T0*
_class
loc:@Variable_8*
validate_shape(*
_output_shapes
:	@*
use_locking(
~
Variable_8/Adam_1/readIdentityVariable_8/Adam_1*
_output_shapes
:	@*
T0*
_class
loc:@Variable_8

!Variable_9/Adam/Initializer/zerosConst*
dtype0*
_output_shapes	
:*
valueB*    *
_class
loc:@Variable_9

Variable_9/Adam
VariableV2*
shape:*
dtype0*
_output_shapes	
:*
shared_name *
_class
loc:@Variable_9*
	container 
Â
Variable_9/Adam/AssignAssignVariable_9/Adam!Variable_9/Adam/Initializer/zeros*
_class
loc:@Variable_9*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0
v
Variable_9/Adam/readIdentityVariable_9/Adam*
_output_shapes	
:*
T0*
_class
loc:@Variable_9

#Variable_9/Adam_1/Initializer/zerosConst*
valueB*    *
_class
loc:@Variable_9*
dtype0*
_output_shapes	
:

Variable_9/Adam_1
VariableV2*
dtype0*
_output_shapes	
:*
shared_name *
_class
loc:@Variable_9*
	container *
shape:
Č
Variable_9/Adam_1/AssignAssignVariable_9/Adam_1#Variable_9/Adam_1/Initializer/zeros*
use_locking(*
T0*
_class
loc:@Variable_9*
validate_shape(*
_output_shapes	
:
z
Variable_9/Adam_1/readIdentityVariable_9/Adam_1*
T0*
_class
loc:@Variable_9*
_output_shapes	
:

decoder2/Adam/Initializer/zerosConst*
valueB*    *
_class
loc:@decoder2*
dtype0*
_output_shapes	
:

decoder2/Adam
VariableV2*
_class
loc:@decoder2*
	container *
shape:*
dtype0*
_output_shapes	
:*
shared_name 
ş
decoder2/Adam/AssignAssigndecoder2/Adamdecoder2/Adam/Initializer/zeros*
_output_shapes	
:*
use_locking(*
T0*
_class
loc:@decoder2*
validate_shape(
p
decoder2/Adam/readIdentitydecoder2/Adam*
T0*
_class
loc:@decoder2*
_output_shapes	
:

!decoder2/Adam_1/Initializer/zerosConst*
valueB*    *
_class
loc:@decoder2*
dtype0*
_output_shapes	
:

decoder2/Adam_1
VariableV2*
dtype0*
_output_shapes	
:*
shared_name *
_class
loc:@decoder2*
	container *
shape:
Ŕ
decoder2/Adam_1/AssignAssigndecoder2/Adam_1!decoder2/Adam_1/Initializer/zeros*
use_locking(*
T0*
_class
loc:@decoder2*
validate_shape(*
_output_shapes	
:
t
decoder2/Adam_1/readIdentitydecoder2/Adam_1*
T0*
_class
loc:@decoder2*
_output_shapes	
:
Ł
2Variable_10/Adam/Initializer/zeros/shape_as_tensorConst*
valueB"   ö
  *
_class
loc:@Variable_10*
dtype0*
_output_shapes
:

(Variable_10/Adam/Initializer/zeros/ConstConst*
valueB
 *    *
_class
loc:@Variable_10*
dtype0*
_output_shapes
: 
ĺ
"Variable_10/Adam/Initializer/zerosFill2Variable_10/Adam/Initializer/zeros/shape_as_tensor(Variable_10/Adam/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@Variable_10* 
_output_shapes
:
ö
¨
Variable_10/Adam
VariableV2*
dtype0* 
_output_shapes
:
ö*
shared_name *
_class
loc:@Variable_10*
	container *
shape:
ö
Ë
Variable_10/Adam/AssignAssignVariable_10/Adam"Variable_10/Adam/Initializer/zeros* 
_output_shapes
:
ö*
use_locking(*
T0*
_class
loc:@Variable_10*
validate_shape(
~
Variable_10/Adam/readIdentityVariable_10/Adam* 
_output_shapes
:
ö*
T0*
_class
loc:@Variable_10
Ľ
4Variable_10/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB"   ö
  *
_class
loc:@Variable_10*
dtype0*
_output_shapes
:

*Variable_10/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *
_class
loc:@Variable_10*
dtype0*
_output_shapes
: 
ë
$Variable_10/Adam_1/Initializer/zerosFill4Variable_10/Adam_1/Initializer/zeros/shape_as_tensor*Variable_10/Adam_1/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@Variable_10* 
_output_shapes
:
ö
Ş
Variable_10/Adam_1
VariableV2*
shared_name *
_class
loc:@Variable_10*
	container *
shape:
ö*
dtype0* 
_output_shapes
:
ö
Ń
Variable_10/Adam_1/AssignAssignVariable_10/Adam_1$Variable_10/Adam_1/Initializer/zeros* 
_output_shapes
:
ö*
use_locking(*
T0*
_class
loc:@Variable_10*
validate_shape(

Variable_10/Adam_1/readIdentityVariable_10/Adam_1* 
_output_shapes
:
ö*
T0*
_class
loc:@Variable_10

2Variable_11/Adam/Initializer/zeros/shape_as_tensorConst*
valueB:ö*
_class
loc:@Variable_11*
dtype0*
_output_shapes
:

(Variable_11/Adam/Initializer/zeros/ConstConst*
valueB
 *    *
_class
loc:@Variable_11*
dtype0*
_output_shapes
: 
ŕ
"Variable_11/Adam/Initializer/zerosFill2Variable_11/Adam/Initializer/zeros/shape_as_tensor(Variable_11/Adam/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@Variable_11*
_output_shapes	
:ö

Variable_11/Adam
VariableV2*
shared_name *
_class
loc:@Variable_11*
	container *
shape:ö*
dtype0*
_output_shapes	
:ö
Ć
Variable_11/Adam/AssignAssignVariable_11/Adam"Variable_11/Adam/Initializer/zeros*
use_locking(*
T0*
_class
loc:@Variable_11*
validate_shape(*
_output_shapes	
:ö
y
Variable_11/Adam/readIdentityVariable_11/Adam*
T0*
_class
loc:@Variable_11*
_output_shapes	
:ö

4Variable_11/Adam_1/Initializer/zeros/shape_as_tensorConst*
dtype0*
_output_shapes
:*
valueB:ö*
_class
loc:@Variable_11

*Variable_11/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *
_class
loc:@Variable_11*
dtype0*
_output_shapes
: 
ć
$Variable_11/Adam_1/Initializer/zerosFill4Variable_11/Adam_1/Initializer/zeros/shape_as_tensor*Variable_11/Adam_1/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@Variable_11*
_output_shapes	
:ö
 
Variable_11/Adam_1
VariableV2*
	container *
shape:ö*
dtype0*
_output_shapes	
:ö*
shared_name *
_class
loc:@Variable_11
Ě
Variable_11/Adam_1/AssignAssignVariable_11/Adam_1$Variable_11/Adam_1/Initializer/zeros*
use_locking(*
T0*
_class
loc:@Variable_11*
validate_shape(*
_output_shapes	
:ö
}
Variable_11/Adam_1/readIdentityVariable_11/Adam_1*
T0*
_class
loc:@Variable_11*
_output_shapes	
:ö

/decoder3/Adam/Initializer/zeros/shape_as_tensorConst*
valueB:ö*
_class
loc:@decoder3*
dtype0*
_output_shapes
:

%decoder3/Adam/Initializer/zeros/ConstConst*
valueB
 *    *
_class
loc:@decoder3*
dtype0*
_output_shapes
: 
Ô
decoder3/Adam/Initializer/zerosFill/decoder3/Adam/Initializer/zeros/shape_as_tensor%decoder3/Adam/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@decoder3*
_output_shapes	
:ö

decoder3/Adam
VariableV2*
dtype0*
_output_shapes	
:ö*
shared_name *
_class
loc:@decoder3*
	container *
shape:ö
ş
decoder3/Adam/AssignAssigndecoder3/Adamdecoder3/Adam/Initializer/zeros*
_output_shapes	
:ö*
use_locking(*
T0*
_class
loc:@decoder3*
validate_shape(
p
decoder3/Adam/readIdentitydecoder3/Adam*
T0*
_class
loc:@decoder3*
_output_shapes	
:ö

1decoder3/Adam_1/Initializer/zeros/shape_as_tensorConst*
dtype0*
_output_shapes
:*
valueB:ö*
_class
loc:@decoder3

'decoder3/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *
_class
loc:@decoder3*
dtype0*
_output_shapes
: 
Ú
!decoder3/Adam_1/Initializer/zerosFill1decoder3/Adam_1/Initializer/zeros/shape_as_tensor'decoder3/Adam_1/Initializer/zeros/Const*
_output_shapes	
:ö*
T0*

index_type0*
_class
loc:@decoder3

decoder3/Adam_1
VariableV2*
_output_shapes	
:ö*
shared_name *
_class
loc:@decoder3*
	container *
shape:ö*
dtype0
Ŕ
decoder3/Adam_1/AssignAssigndecoder3/Adam_1!decoder3/Adam_1/Initializer/zeros*
use_locking(*
T0*
_class
loc:@decoder3*
validate_shape(*
_output_shapes	
:ö
t
decoder3/Adam_1/readIdentitydecoder3/Adam_1*
T0*
_class
loc:@decoder3*
_output_shapes	
:ö
a
Optimizer/Adam/learning_rateConst*
valueB
 *o:*
dtype0*
_output_shapes
: 
Y
Optimizer/Adam/beta1Const*
_output_shapes
: *
valueB
 *fff?*
dtype0
Y
Optimizer/Adam/beta2Const*
valueB
 *wž?*
dtype0*
_output_shapes
: 
[
Optimizer/Adam/epsilonConst*
valueB
 *wĚ+2*
dtype0*
_output_shapes
: 

(Optimizer/Adam/update_Variable/ApplyAdam	ApplyAdamVariableVariable/AdamVariable/Adam_1Optimizer/beta1_power/readOptimizer/beta2_power/readOptimizer/Adam/learning_rateOptimizer/Adam/beta1Optimizer/Adam/beta2Optimizer/Adam/epsilonOptimizer/gradients/AddN_11*
T0*
_class
loc:@Variable*
use_nesterov( * 
_output_shapes
:
ö*
use_locking( 
Ś
*Optimizer/Adam/update_Variable_1/ApplyAdam	ApplyAdam
Variable_1Variable_1/AdamVariable_1/Adam_1Optimizer/beta1_power/readOptimizer/beta2_power/readOptimizer/Adam/learning_rateOptimizer/Adam/beta1Optimizer/Adam/beta2Optimizer/Adam/epsilon7Optimizer/gradients/Add_grad/tuple/control_dependency_1*
_class
loc:@Variable_1*
use_nesterov( *
_output_shapes	
:*
use_locking( *
T0

(Optimizer/Adam/update_encoder1/ApplyAdam	ApplyAdamencoder1encoder1/Adamencoder1/Adam_1Optimizer/beta1_power/readOptimizer/beta2_power/readOptimizer/Adam/learning_rateOptimizer/Adam/beta1Optimizer/Adam/beta2Optimizer/Adam/epsilon5Optimizer/gradients/mul_grad/tuple/control_dependency*
use_nesterov( *
_output_shapes	
:*
use_locking( *
T0*
_class
loc:@encoder1

*Optimizer/Adam/update_Variable_2/ApplyAdam	ApplyAdam
Variable_2Variable_2/AdamVariable_2/Adam_1Optimizer/beta1_power/readOptimizer/beta2_power/readOptimizer/Adam/learning_rateOptimizer/Adam/beta1Optimizer/Adam/beta2Optimizer/Adam/epsilonOptimizer/gradients/AddN_9*
use_locking( *
T0*
_class
loc:@Variable_2*
use_nesterov( *
_output_shapes
:	@
§
*Optimizer/Adam/update_Variable_3/ApplyAdam	ApplyAdam
Variable_3Variable_3/AdamVariable_3/Adam_1Optimizer/beta1_power/readOptimizer/beta2_power/readOptimizer/Adam/learning_rateOptimizer/Adam/beta1Optimizer/Adam/beta2Optimizer/Adam/epsilon9Optimizer/gradients/Add_2_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
loc:@Variable_3*
use_nesterov( *
_output_shapes
:@

(Optimizer/Adam/update_encoder2/ApplyAdam	ApplyAdamencoder2encoder2/Adamencoder2/Adam_1Optimizer/beta1_power/readOptimizer/beta2_power/readOptimizer/Adam/learning_rateOptimizer/Adam/beta1Optimizer/Adam/beta2Optimizer/Adam/epsilon7Optimizer/gradients/mul_1_grad/tuple/control_dependency*
use_locking( *
T0*
_class
loc:@encoder2*
use_nesterov( *
_output_shapes
:@

*Optimizer/Adam/update_Variable_4/ApplyAdam	ApplyAdam
Variable_4Variable_4/AdamVariable_4/Adam_1Optimizer/beta1_power/readOptimizer/beta2_power/readOptimizer/Adam/learning_rateOptimizer/Adam/beta1Optimizer/Adam/beta2Optimizer/Adam/epsilonOptimizer/gradients/AddN_7*
use_locking( *
T0*
_class
loc:@Variable_4*
use_nesterov( *
_output_shapes

:@
§
*Optimizer/Adam/update_Variable_5/ApplyAdam	ApplyAdam
Variable_5Variable_5/AdamVariable_5/Adam_1Optimizer/beta1_power/readOptimizer/beta2_power/readOptimizer/Adam/learning_rateOptimizer/Adam/beta1Optimizer/Adam/beta2Optimizer/Adam/epsilon9Optimizer/gradients/Add_4_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
loc:@Variable_5*
use_nesterov( *
_output_shapes
:

(Optimizer/Adam/update_encoder3/ApplyAdam	ApplyAdamencoder3encoder3/Adamencoder3/Adam_1Optimizer/beta1_power/readOptimizer/beta2_power/readOptimizer/Adam/learning_rateOptimizer/Adam/beta1Optimizer/Adam/beta2Optimizer/Adam/epsilon7Optimizer/gradients/mul_2_grad/tuple/control_dependency*
_output_shapes
:*
use_locking( *
T0*
_class
loc:@encoder3*
use_nesterov( 

*Optimizer/Adam/update_Variable_6/ApplyAdam	ApplyAdam
Variable_6Variable_6/AdamVariable_6/Adam_1Optimizer/beta1_power/readOptimizer/beta2_power/readOptimizer/Adam/learning_rateOptimizer/Adam/beta1Optimizer/Adam/beta2Optimizer/Adam/epsilonOptimizer/gradients/AddN_5*
use_locking( *
T0*
_class
loc:@Variable_6*
use_nesterov( *
_output_shapes

:@
§
*Optimizer/Adam/update_Variable_7/ApplyAdam	ApplyAdam
Variable_7Variable_7/AdamVariable_7/Adam_1Optimizer/beta1_power/readOptimizer/beta2_power/readOptimizer/Adam/learning_rateOptimizer/Adam/beta1Optimizer/Adam/beta2Optimizer/Adam/epsilon9Optimizer/gradients/Add_6_grad/tuple/control_dependency_1*
T0*
_class
loc:@Variable_7*
use_nesterov( *
_output_shapes
:@*
use_locking( 

(Optimizer/Adam/update_decoder1/ApplyAdam	ApplyAdamdecoder1decoder1/Adamdecoder1/Adam_1Optimizer/beta1_power/readOptimizer/beta2_power/readOptimizer/Adam/learning_rateOptimizer/Adam/beta1Optimizer/Adam/beta2Optimizer/Adam/epsilon7Optimizer/gradients/mul_3_grad/tuple/control_dependency*
use_locking( *
T0*
_class
loc:@decoder1*
use_nesterov( *
_output_shapes
:@

*Optimizer/Adam/update_Variable_8/ApplyAdam	ApplyAdam
Variable_8Variable_8/AdamVariable_8/Adam_1Optimizer/beta1_power/readOptimizer/beta2_power/readOptimizer/Adam/learning_rateOptimizer/Adam/beta1Optimizer/Adam/beta2Optimizer/Adam/epsilonOptimizer/gradients/AddN_3*
_class
loc:@Variable_8*
use_nesterov( *
_output_shapes
:	@*
use_locking( *
T0
¨
*Optimizer/Adam/update_Variable_9/ApplyAdam	ApplyAdam
Variable_9Variable_9/AdamVariable_9/Adam_1Optimizer/beta1_power/readOptimizer/beta2_power/readOptimizer/Adam/learning_rateOptimizer/Adam/beta1Optimizer/Adam/beta2Optimizer/Adam/epsilon9Optimizer/gradients/Add_8_grad/tuple/control_dependency_1*
use_nesterov( *
_output_shapes	
:*
use_locking( *
T0*
_class
loc:@Variable_9

(Optimizer/Adam/update_decoder2/ApplyAdam	ApplyAdamdecoder2decoder2/Adamdecoder2/Adam_1Optimizer/beta1_power/readOptimizer/beta2_power/readOptimizer/Adam/learning_rateOptimizer/Adam/beta1Optimizer/Adam/beta2Optimizer/Adam/epsilon7Optimizer/gradients/mul_4_grad/tuple/control_dependency*
_output_shapes	
:*
use_locking( *
T0*
_class
loc:@decoder2*
use_nesterov( 

+Optimizer/Adam/update_Variable_10/ApplyAdam	ApplyAdamVariable_10Variable_10/AdamVariable_10/Adam_1Optimizer/beta1_power/readOptimizer/beta2_power/readOptimizer/Adam/learning_rateOptimizer/Adam/beta1Optimizer/Adam/beta2Optimizer/Adam/epsilonOptimizer/gradients/AddN_1*
use_locking( *
T0*
_class
loc:@Variable_10*
use_nesterov( * 
_output_shapes
:
ö
Ž
+Optimizer/Adam/update_Variable_11/ApplyAdam	ApplyAdamVariable_11Variable_11/AdamVariable_11/Adam_1Optimizer/beta1_power/readOptimizer/beta2_power/readOptimizer/Adam/learning_rateOptimizer/Adam/beta1Optimizer/Adam/beta2Optimizer/Adam/epsilon:Optimizer/gradients/Add_10_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
loc:@Variable_11*
use_nesterov( *
_output_shapes	
:ö

(Optimizer/Adam/update_decoder3/ApplyAdam	ApplyAdamdecoder3decoder3/Adamdecoder3/Adam_1Optimizer/beta1_power/readOptimizer/beta2_power/readOptimizer/Adam/learning_rateOptimizer/Adam/beta1Optimizer/Adam/beta2Optimizer/Adam/epsilon7Optimizer/gradients/mul_5_grad/tuple/control_dependency*
use_locking( *
T0*
_class
loc:@decoder3*
use_nesterov( *
_output_shapes	
:ö
§
Optimizer/Adam/mulMulOptimizer/beta1_power/readOptimizer/Adam/beta1)^Optimizer/Adam/update_Variable/ApplyAdam+^Optimizer/Adam/update_Variable_1/ApplyAdam,^Optimizer/Adam/update_Variable_10/ApplyAdam,^Optimizer/Adam/update_Variable_11/ApplyAdam+^Optimizer/Adam/update_Variable_2/ApplyAdam+^Optimizer/Adam/update_Variable_3/ApplyAdam+^Optimizer/Adam/update_Variable_4/ApplyAdam+^Optimizer/Adam/update_Variable_5/ApplyAdam+^Optimizer/Adam/update_Variable_6/ApplyAdam+^Optimizer/Adam/update_Variable_7/ApplyAdam+^Optimizer/Adam/update_Variable_8/ApplyAdam+^Optimizer/Adam/update_Variable_9/ApplyAdam)^Optimizer/Adam/update_decoder1/ApplyAdam)^Optimizer/Adam/update_decoder2/ApplyAdam)^Optimizer/Adam/update_decoder3/ApplyAdam)^Optimizer/Adam/update_encoder1/ApplyAdam)^Optimizer/Adam/update_encoder2/ApplyAdam)^Optimizer/Adam/update_encoder3/ApplyAdam*
_output_shapes
: *
T0*
_class
loc:@Variable
ą
Optimizer/Adam/AssignAssignOptimizer/beta1_powerOptimizer/Adam/mul*
validate_shape(*
_output_shapes
: *
use_locking( *
T0*
_class
loc:@Variable
Š
Optimizer/Adam/mul_1MulOptimizer/beta2_power/readOptimizer/Adam/beta2)^Optimizer/Adam/update_Variable/ApplyAdam+^Optimizer/Adam/update_Variable_1/ApplyAdam,^Optimizer/Adam/update_Variable_10/ApplyAdam,^Optimizer/Adam/update_Variable_11/ApplyAdam+^Optimizer/Adam/update_Variable_2/ApplyAdam+^Optimizer/Adam/update_Variable_3/ApplyAdam+^Optimizer/Adam/update_Variable_4/ApplyAdam+^Optimizer/Adam/update_Variable_5/ApplyAdam+^Optimizer/Adam/update_Variable_6/ApplyAdam+^Optimizer/Adam/update_Variable_7/ApplyAdam+^Optimizer/Adam/update_Variable_8/ApplyAdam+^Optimizer/Adam/update_Variable_9/ApplyAdam)^Optimizer/Adam/update_decoder1/ApplyAdam)^Optimizer/Adam/update_decoder2/ApplyAdam)^Optimizer/Adam/update_decoder3/ApplyAdam)^Optimizer/Adam/update_encoder1/ApplyAdam)^Optimizer/Adam/update_encoder2/ApplyAdam)^Optimizer/Adam/update_encoder3/ApplyAdam*
T0*
_class
loc:@Variable*
_output_shapes
: 
ľ
Optimizer/Adam/Assign_1AssignOptimizer/beta2_powerOptimizer/Adam/mul_1*
validate_shape(*
_output_shapes
: *
use_locking( *
T0*
_class
loc:@Variable
ć
Optimizer/AdamNoOp^Optimizer/Adam/Assign^Optimizer/Adam/Assign_1)^Optimizer/Adam/update_Variable/ApplyAdam+^Optimizer/Adam/update_Variable_1/ApplyAdam,^Optimizer/Adam/update_Variable_10/ApplyAdam,^Optimizer/Adam/update_Variable_11/ApplyAdam+^Optimizer/Adam/update_Variable_2/ApplyAdam+^Optimizer/Adam/update_Variable_3/ApplyAdam+^Optimizer/Adam/update_Variable_4/ApplyAdam+^Optimizer/Adam/update_Variable_5/ApplyAdam+^Optimizer/Adam/update_Variable_6/ApplyAdam+^Optimizer/Adam/update_Variable_7/ApplyAdam+^Optimizer/Adam/update_Variable_8/ApplyAdam+^Optimizer/Adam/update_Variable_9/ApplyAdam)^Optimizer/Adam/update_decoder1/ApplyAdam)^Optimizer/Adam/update_decoder2/ApplyAdam)^Optimizer/Adam/update_decoder3/ApplyAdam)^Optimizer/Adam/update_encoder1/ApplyAdam)^Optimizer/Adam/update_encoder2/ApplyAdam)^Optimizer/Adam/update_encoder3/ApplyAdam""
train_op

Optimizer/Adam"­+
	variables++
D

Variable:0Variable/AssignVariable/read:02truncated_normal:08
L
Variable_1:0Variable_1/AssignVariable_1/read:02truncated_normal_1:08
N

encoder1:0encoder1/Assignencoder1/read:02encoder1/Initializer/Const:08
L
Variable_2:0Variable_2/AssignVariable_2/read:02truncated_normal_2:08
L
Variable_3:0Variable_3/AssignVariable_3/read:02truncated_normal_3:08
N

encoder2:0encoder2/Assignencoder2/read:02encoder2/Initializer/Const:08
L
Variable_4:0Variable_4/AssignVariable_4/read:02truncated_normal_4:08
L
Variable_5:0Variable_5/AssignVariable_5/read:02truncated_normal_5:08
N

encoder3:0encoder3/Assignencoder3/read:02encoder3/Initializer/Const:08
L
Variable_6:0Variable_6/AssignVariable_6/read:02truncated_normal_6:08
L
Variable_7:0Variable_7/AssignVariable_7/read:02truncated_normal_7:08
N

decoder1:0decoder1/Assigndecoder1/read:02decoder1/Initializer/Const:08
L
Variable_8:0Variable_8/AssignVariable_8/read:02truncated_normal_8:08
L
Variable_9:0Variable_9/AssignVariable_9/read:02truncated_normal_9:08
N

decoder2:0decoder2/Assigndecoder2/read:02decoder2/Initializer/Const:08
P
Variable_10:0Variable_10/AssignVariable_10/read:02truncated_normal_10:08
P
Variable_11:0Variable_11/AssignVariable_11/read:02truncated_normal_11:08
N

decoder3:0decoder3/Assigndecoder3/read:02decoder3/Initializer/Const:08
|
Optimizer/beta1_power:0Optimizer/beta1_power/AssignOptimizer/beta1_power/read:02%Optimizer/beta1_power/initial_value:0
|
Optimizer/beta2_power:0Optimizer/beta2_power/AssignOptimizer/beta2_power/read:02%Optimizer/beta2_power/initial_value:0
`
Variable/Adam:0Variable/Adam/AssignVariable/Adam/read:02!Variable/Adam/Initializer/zeros:0
h
Variable/Adam_1:0Variable/Adam_1/AssignVariable/Adam_1/read:02#Variable/Adam_1/Initializer/zeros:0
h
Variable_1/Adam:0Variable_1/Adam/AssignVariable_1/Adam/read:02#Variable_1/Adam/Initializer/zeros:0
p
Variable_1/Adam_1:0Variable_1/Adam_1/AssignVariable_1/Adam_1/read:02%Variable_1/Adam_1/Initializer/zeros:0
`
encoder1/Adam:0encoder1/Adam/Assignencoder1/Adam/read:02!encoder1/Adam/Initializer/zeros:0
h
encoder1/Adam_1:0encoder1/Adam_1/Assignencoder1/Adam_1/read:02#encoder1/Adam_1/Initializer/zeros:0
h
Variable_2/Adam:0Variable_2/Adam/AssignVariable_2/Adam/read:02#Variable_2/Adam/Initializer/zeros:0
p
Variable_2/Adam_1:0Variable_2/Adam_1/AssignVariable_2/Adam_1/read:02%Variable_2/Adam_1/Initializer/zeros:0
h
Variable_3/Adam:0Variable_3/Adam/AssignVariable_3/Adam/read:02#Variable_3/Adam/Initializer/zeros:0
p
Variable_3/Adam_1:0Variable_3/Adam_1/AssignVariable_3/Adam_1/read:02%Variable_3/Adam_1/Initializer/zeros:0
`
encoder2/Adam:0encoder2/Adam/Assignencoder2/Adam/read:02!encoder2/Adam/Initializer/zeros:0
h
encoder2/Adam_1:0encoder2/Adam_1/Assignencoder2/Adam_1/read:02#encoder2/Adam_1/Initializer/zeros:0
h
Variable_4/Adam:0Variable_4/Adam/AssignVariable_4/Adam/read:02#Variable_4/Adam/Initializer/zeros:0
p
Variable_4/Adam_1:0Variable_4/Adam_1/AssignVariable_4/Adam_1/read:02%Variable_4/Adam_1/Initializer/zeros:0
h
Variable_5/Adam:0Variable_5/Adam/AssignVariable_5/Adam/read:02#Variable_5/Adam/Initializer/zeros:0
p
Variable_5/Adam_1:0Variable_5/Adam_1/AssignVariable_5/Adam_1/read:02%Variable_5/Adam_1/Initializer/zeros:0
`
encoder3/Adam:0encoder3/Adam/Assignencoder3/Adam/read:02!encoder3/Adam/Initializer/zeros:0
h
encoder3/Adam_1:0encoder3/Adam_1/Assignencoder3/Adam_1/read:02#encoder3/Adam_1/Initializer/zeros:0
h
Variable_6/Adam:0Variable_6/Adam/AssignVariable_6/Adam/read:02#Variable_6/Adam/Initializer/zeros:0
p
Variable_6/Adam_1:0Variable_6/Adam_1/AssignVariable_6/Adam_1/read:02%Variable_6/Adam_1/Initializer/zeros:0
h
Variable_7/Adam:0Variable_7/Adam/AssignVariable_7/Adam/read:02#Variable_7/Adam/Initializer/zeros:0
p
Variable_7/Adam_1:0Variable_7/Adam_1/AssignVariable_7/Adam_1/read:02%Variable_7/Adam_1/Initializer/zeros:0
`
decoder1/Adam:0decoder1/Adam/Assigndecoder1/Adam/read:02!decoder1/Adam/Initializer/zeros:0
h
decoder1/Adam_1:0decoder1/Adam_1/Assigndecoder1/Adam_1/read:02#decoder1/Adam_1/Initializer/zeros:0
h
Variable_8/Adam:0Variable_8/Adam/AssignVariable_8/Adam/read:02#Variable_8/Adam/Initializer/zeros:0
p
Variable_8/Adam_1:0Variable_8/Adam_1/AssignVariable_8/Adam_1/read:02%Variable_8/Adam_1/Initializer/zeros:0
h
Variable_9/Adam:0Variable_9/Adam/AssignVariable_9/Adam/read:02#Variable_9/Adam/Initializer/zeros:0
p
Variable_9/Adam_1:0Variable_9/Adam_1/AssignVariable_9/Adam_1/read:02%Variable_9/Adam_1/Initializer/zeros:0
`
decoder2/Adam:0decoder2/Adam/Assigndecoder2/Adam/read:02!decoder2/Adam/Initializer/zeros:0
h
decoder2/Adam_1:0decoder2/Adam_1/Assigndecoder2/Adam_1/read:02#decoder2/Adam_1/Initializer/zeros:0
l
Variable_10/Adam:0Variable_10/Adam/AssignVariable_10/Adam/read:02$Variable_10/Adam/Initializer/zeros:0
t
Variable_10/Adam_1:0Variable_10/Adam_1/AssignVariable_10/Adam_1/read:02&Variable_10/Adam_1/Initializer/zeros:0
l
Variable_11/Adam:0Variable_11/Adam/AssignVariable_11/Adam/read:02$Variable_11/Adam/Initializer/zeros:0
t
Variable_11/Adam_1:0Variable_11/Adam_1/AssignVariable_11/Adam_1/read:02&Variable_11/Adam_1/Initializer/zeros:0
`
decoder3/Adam:0decoder3/Adam/Assigndecoder3/Adam/read:02!decoder3/Adam/Initializer/zeros:0
h
decoder3/Adam_1:0decoder3/Adam_1/Assigndecoder3/Adam_1/read:02#decoder3/Adam_1/Initializer/zeros:0"n
	summariesa
_
#Loss/mean_square/Loss_mean_square:0
#Loss/l1_regularization/Loss_class:0
Loss/Total_loss_1:0"Ł
trainable_variables
D

Variable:0Variable/AssignVariable/read:02truncated_normal:08
L
Variable_1:0Variable_1/AssignVariable_1/read:02truncated_normal_1:08
N

encoder1:0encoder1/Assignencoder1/read:02encoder1/Initializer/Const:08
L
Variable_2:0Variable_2/AssignVariable_2/read:02truncated_normal_2:08
L
Variable_3:0Variable_3/AssignVariable_3/read:02truncated_normal_3:08
N

encoder2:0encoder2/Assignencoder2/read:02encoder2/Initializer/Const:08
L
Variable_4:0Variable_4/AssignVariable_4/read:02truncated_normal_4:08
L
Variable_5:0Variable_5/AssignVariable_5/read:02truncated_normal_5:08
N

encoder3:0encoder3/Assignencoder3/read:02encoder3/Initializer/Const:08
L
Variable_6:0Variable_6/AssignVariable_6/read:02truncated_normal_6:08
L
Variable_7:0Variable_7/AssignVariable_7/read:02truncated_normal_7:08
N

decoder1:0decoder1/Assigndecoder1/read:02decoder1/Initializer/Const:08
L
Variable_8:0Variable_8/AssignVariable_8/read:02truncated_normal_8:08
L
Variable_9:0Variable_9/AssignVariable_9/read:02truncated_normal_9:08
N

decoder2:0decoder2/Assigndecoder2/read:02decoder2/Initializer/Const:08
P
Variable_10:0Variable_10/AssignVariable_10/read:02truncated_normal_10:08
P
Variable_11:0Variable_11/AssignVariable_11/read:02truncated_normal_11:08
N

decoder3:0decoder3/Assigndecoder3/read:02decoder3/Initializer/Const:08a.8|