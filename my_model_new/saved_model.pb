е5
О
D
AddV2
x"T
y"T
z"T"
Ttype:
2	
B
AssignVariableOp
resource
value"dtype"
dtypetype
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(

NoOp
U
NotEqual
x"T
y"T
z
"	
Ttype"$
incompatible_shape_errorbool(
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
@
ReadVariableOp
resource
value"dtype"
dtypetype
E
Relu
features"T
activations"T"
Ttype:
2	
Ѕ
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
n
	ReverseV2
tensor"T
axis"Tidx
output"T"
Tidxtype0:
2	"
Ttype:
2	

l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
С
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring Ј
@
StaticRegexFullMatch	
input

output
"
patternstring
і
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
-
Tanh
x"T
y"T"
Ttype:

2
Ћ
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type*
output_handleщelement_dtype"
element_dtypetype"

shape_typetype:
2	

TensorListReserve
element_shape"
shape_type
num_elements#
handleщelement_dtype"
element_dtypetype"

shape_typetype:
2	

TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsintџџџџџџџџџ
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 

While

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint

&
	ZerosLike
x"T
y"T"	
Ttype"serve*2.7.02v2.7.0-rc1-69-gc256c071bb28п3

embedding_1/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Љ @*'
shared_nameembedding_1/embeddings

*embedding_1/embeddings/Read/ReadVariableOpReadVariableOpembedding_1/embeddings*
_output_shapes
:	Љ @*
dtype0
y
dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@*
shared_namedense_2/kernel
r
"dense_2/kernel/Read/ReadVariableOpReadVariableOpdense_2/kernel*
_output_shapes
:	@*
dtype0
p
dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_2/bias
i
 dense_2/bias/Read/ReadVariableOpReadVariableOpdense_2/bias*
_output_shapes
:@*
dtype0
x
dense_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*
shared_namedense_3/kernel
q
"dense_3/kernel/Read/ReadVariableOpReadVariableOpdense_3/kernel*
_output_shapes

:@*
dtype0
p
dense_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_3/bias
i
 dense_3/bias/Read/ReadVariableOpReadVariableOpdense_3/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
ж
=bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*N
shared_name?=bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/kernel
Я
Qbidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/kernel/Read/ReadVariableOpReadVariableOp=bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/kernel*
_output_shapes

:@@*
dtype0
ъ
Gbidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*X
shared_nameIGbidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/recurrent_kernel
у
[bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/recurrent_kernel/Read/ReadVariableOpReadVariableOpGbidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/recurrent_kernel*
_output_shapes

:@@*
dtype0
Ю
;bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*L
shared_name=;bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/bias
Ч
Obidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/bias/Read/ReadVariableOpReadVariableOp;bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/bias*
_output_shapes
:@*
dtype0
и
>bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*O
shared_name@>bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/kernel
б
Rbidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/kernel/Read/ReadVariableOpReadVariableOp>bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/kernel*
_output_shapes

:@@*
dtype0
ь
Hbidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*Y
shared_nameJHbidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/recurrent_kernel
х
\bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/recurrent_kernel/Read/ReadVariableOpReadVariableOpHbidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/recurrent_kernel*
_output_shapes

:@@*
dtype0
а
<bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*M
shared_name><bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/bias
Щ
Pbidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/bias/Read/ReadVariableOpReadVariableOp<bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/bias*
_output_shapes
:@*
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0

Adam/embedding_1/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Љ @*.
shared_nameAdam/embedding_1/embeddings/m

1Adam/embedding_1/embeddings/m/Read/ReadVariableOpReadVariableOpAdam/embedding_1/embeddings/m*
_output_shapes
:	Љ @*
dtype0

Adam/dense_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@*&
shared_nameAdam/dense_2/kernel/m

)Adam/dense_2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_2/kernel/m*
_output_shapes
:	@*
dtype0
~
Adam/dense_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*$
shared_nameAdam/dense_2/bias/m
w
'Adam/dense_2/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_2/bias/m*
_output_shapes
:@*
dtype0

Adam/dense_3/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*&
shared_nameAdam/dense_3/kernel/m

)Adam/dense_3/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_3/kernel/m*
_output_shapes

:@*
dtype0
~
Adam/dense_3/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_3/bias/m
w
'Adam/dense_3/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_3/bias/m*
_output_shapes
:*
dtype0
ф
DAdam/bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*U
shared_nameFDAdam/bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/kernel/m
н
XAdam/bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/kernel/m/Read/ReadVariableOpReadVariableOpDAdam/bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/kernel/m*
_output_shapes

:@@*
dtype0
ј
NAdam/bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*_
shared_namePNAdam/bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/recurrent_kernel/m
ё
bAdam/bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/recurrent_kernel/m/Read/ReadVariableOpReadVariableOpNAdam/bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/recurrent_kernel/m*
_output_shapes

:@@*
dtype0
м
BAdam/bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*S
shared_nameDBAdam/bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/bias/m
е
VAdam/bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/bias/m/Read/ReadVariableOpReadVariableOpBAdam/bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/bias/m*
_output_shapes
:@*
dtype0
ц
EAdam/bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*V
shared_nameGEAdam/bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/kernel/m
п
YAdam/bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/kernel/m/Read/ReadVariableOpReadVariableOpEAdam/bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/kernel/m*
_output_shapes

:@@*
dtype0
њ
OAdam/bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*`
shared_nameQOAdam/bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/recurrent_kernel/m
ѓ
cAdam/bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/recurrent_kernel/m/Read/ReadVariableOpReadVariableOpOAdam/bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/recurrent_kernel/m*
_output_shapes

:@@*
dtype0
о
CAdam/bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*T
shared_nameECAdam/bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/bias/m
з
WAdam/bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/bias/m/Read/ReadVariableOpReadVariableOpCAdam/bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/bias/m*
_output_shapes
:@*
dtype0

Adam/embedding_1/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Љ @*.
shared_nameAdam/embedding_1/embeddings/v

1Adam/embedding_1/embeddings/v/Read/ReadVariableOpReadVariableOpAdam/embedding_1/embeddings/v*
_output_shapes
:	Љ @*
dtype0

Adam/dense_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@*&
shared_nameAdam/dense_2/kernel/v

)Adam/dense_2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_2/kernel/v*
_output_shapes
:	@*
dtype0
~
Adam/dense_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*$
shared_nameAdam/dense_2/bias/v
w
'Adam/dense_2/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_2/bias/v*
_output_shapes
:@*
dtype0

Adam/dense_3/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*&
shared_nameAdam/dense_3/kernel/v

)Adam/dense_3/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_3/kernel/v*
_output_shapes

:@*
dtype0
~
Adam/dense_3/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_3/bias/v
w
'Adam/dense_3/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_3/bias/v*
_output_shapes
:*
dtype0
ф
DAdam/bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*U
shared_nameFDAdam/bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/kernel/v
н
XAdam/bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/kernel/v/Read/ReadVariableOpReadVariableOpDAdam/bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/kernel/v*
_output_shapes

:@@*
dtype0
ј
NAdam/bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*_
shared_namePNAdam/bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/recurrent_kernel/v
ё
bAdam/bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/recurrent_kernel/v/Read/ReadVariableOpReadVariableOpNAdam/bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/recurrent_kernel/v*
_output_shapes

:@@*
dtype0
м
BAdam/bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*S
shared_nameDBAdam/bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/bias/v
е
VAdam/bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/bias/v/Read/ReadVariableOpReadVariableOpBAdam/bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/bias/v*
_output_shapes
:@*
dtype0
ц
EAdam/bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*V
shared_nameGEAdam/bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/kernel/v
п
YAdam/bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/kernel/v/Read/ReadVariableOpReadVariableOpEAdam/bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/kernel/v*
_output_shapes

:@@*
dtype0
њ
OAdam/bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*`
shared_nameQOAdam/bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/recurrent_kernel/v
ѓ
cAdam/bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/recurrent_kernel/v/Read/ReadVariableOpReadVariableOpOAdam/bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/recurrent_kernel/v*
_output_shapes

:@@*
dtype0
о
CAdam/bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*T
shared_nameECAdam/bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/bias/v
з
WAdam/bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/bias/v/Read/ReadVariableOpReadVariableOpCAdam/bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/bias/v*
_output_shapes
:@*
dtype0

NoOpNoOp
H
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*кG
valueаGBЭG BЦG

layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
	optimizer
	variables
trainable_variables
regularization_losses
		keras_api


signatures
b

embeddings
	variables
trainable_variables
regularization_losses
	keras_api
y
forward_layer
backward_layer
	variables
trainable_variables
regularization_losses
	keras_api
h

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
h

kernel
bias
	variables
trainable_variables
 regularization_losses
!	keras_api

"iter

#beta_1

$beta_2
	%decay
&learning_ratem{m|m}m~m'm(m)m*m+m,mvvvvv'v(v)v*v+v,v
N
0
'1
(2
)3
*4
+5
,6
7
8
9
10
N
0
'1
(2
)3
*4
+5
,6
7
8
9
10
 
­
-non_trainable_variables

.layers
/metrics
0layer_regularization_losses
1layer_metrics
	variables
trainable_variables
regularization_losses
 
fd
VARIABLE_VALUEembedding_1/embeddings:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUE

0

0
 
­
2non_trainable_variables

3layers
4metrics
5layer_regularization_losses
6layer_metrics
	variables
trainable_variables
regularization_losses
l
7cell
8
state_spec
9	variables
:trainable_variables
;regularization_losses
<	keras_api
l
=cell
>
state_spec
?	variables
@trainable_variables
Aregularization_losses
B	keras_api
*
'0
(1
)2
*3
+4
,5
*
'0
(1
)2
*3
+4
,5
 
­
Cnon_trainable_variables

Dlayers
Emetrics
Flayer_regularization_losses
Glayer_metrics
	variables
trainable_variables
regularization_losses
ZX
VARIABLE_VALUEdense_2/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_2/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
­
Hnon_trainable_variables

Ilayers
Jmetrics
Klayer_regularization_losses
Llayer_metrics
	variables
trainable_variables
regularization_losses
ZX
VARIABLE_VALUEdense_3/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_3/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
­
Mnon_trainable_variables

Nlayers
Ometrics
Player_regularization_losses
Qlayer_metrics
	variables
trainable_variables
 regularization_losses
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUE=bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUEGbidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/recurrent_kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUE;bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE>bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUEHbidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/recurrent_kernel&variables/5/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE<bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/bias&variables/6/.ATTRIBUTES/VARIABLE_VALUE
 

0
1
2
3

R0
S1
 
 
 
 
 
 
 
~

'kernel
(recurrent_kernel
)bias
T	variables
Utrainable_variables
Vregularization_losses
W	keras_api
 

'0
(1
)2

'0
(1
)2
 
Й

Xstates
Ynon_trainable_variables

Zlayers
[metrics
\layer_regularization_losses
]layer_metrics
9	variables
:trainable_variables
;regularization_losses
~

*kernel
+recurrent_kernel
,bias
^	variables
_trainable_variables
`regularization_losses
a	keras_api
 

*0
+1
,2

*0
+1
,2
 
Й

bstates
cnon_trainable_variables

dlayers
emetrics
flayer_regularization_losses
glayer_metrics
?	variables
@trainable_variables
Aregularization_losses
 

0
1
 
 
 
 
 
 
 
 
 
 
 
 
 
4
	htotal
	icount
j	variables
k	keras_api
D
	ltotal
	mcount
n
_fn_kwargs
o	variables
p	keras_api

'0
(1
)2

'0
(1
)2
 
­
qnon_trainable_variables

rlayers
smetrics
tlayer_regularization_losses
ulayer_metrics
T	variables
Utrainable_variables
Vregularization_losses
 
 

70
 
 
 

*0
+1
,2

*0
+1
,2
 
­
vnon_trainable_variables

wlayers
xmetrics
ylayer_regularization_losses
zlayer_metrics
^	variables
_trainable_variables
`regularization_losses
 
 

=0
 
 
 
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

h0
i1

j	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

l0
m1

o	variables
 
 
 
 
 
 
 
 
 
 

VARIABLE_VALUEAdam/embedding_1/embeddings/mVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_2/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_2/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_3/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_3/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUEDAdam/bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ЇЄ
VARIABLE_VALUENAdam/bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/recurrent_kernel/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUEBAdam/bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/bias/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUEEAdam/bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ЈЅ
VARIABLE_VALUEOAdam/bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/recurrent_kernel/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUECAdam/bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/bias/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUEAdam/embedding_1/embeddings/vVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_2/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_2/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_3/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_3/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUEDAdam/bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ЇЄ
VARIABLE_VALUENAdam/bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/recurrent_kernel/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUEBAdam/bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/bias/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUEEAdam/bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ЈЅ
VARIABLE_VALUEOAdam/bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/recurrent_kernel/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUECAdam/bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/bias/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

!serving_default_embedding_1_inputPlaceholder*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
dtype0*%
shape:џџџџџџџџџџџџџџџџџџ
В
StatefulPartitionedCallStatefulPartitionedCall!serving_default_embedding_1_inputembedding_1/embeddings=bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/kernel;bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/biasGbidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/recurrent_kernel>bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/kernel<bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/biasHbidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/recurrent_kerneldense_2/kerneldense_2/biasdense_3/kerneldense_3/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *,
f'R%
#__inference_signature_wrapper_68945
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
Ў
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename*embedding_1/embeddings/Read/ReadVariableOp"dense_2/kernel/Read/ReadVariableOp dense_2/bias/Read/ReadVariableOp"dense_3/kernel/Read/ReadVariableOp dense_3/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOpQbidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/kernel/Read/ReadVariableOp[bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/recurrent_kernel/Read/ReadVariableOpObidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/bias/Read/ReadVariableOpRbidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/kernel/Read/ReadVariableOp\bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/recurrent_kernel/Read/ReadVariableOpPbidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp1Adam/embedding_1/embeddings/m/Read/ReadVariableOp)Adam/dense_2/kernel/m/Read/ReadVariableOp'Adam/dense_2/bias/m/Read/ReadVariableOp)Adam/dense_3/kernel/m/Read/ReadVariableOp'Adam/dense_3/bias/m/Read/ReadVariableOpXAdam/bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/kernel/m/Read/ReadVariableOpbAdam/bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/recurrent_kernel/m/Read/ReadVariableOpVAdam/bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/bias/m/Read/ReadVariableOpYAdam/bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/kernel/m/Read/ReadVariableOpcAdam/bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/recurrent_kernel/m/Read/ReadVariableOpWAdam/bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/bias/m/Read/ReadVariableOp1Adam/embedding_1/embeddings/v/Read/ReadVariableOp)Adam/dense_2/kernel/v/Read/ReadVariableOp'Adam/dense_2/bias/v/Read/ReadVariableOp)Adam/dense_3/kernel/v/Read/ReadVariableOp'Adam/dense_3/bias/v/Read/ReadVariableOpXAdam/bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/kernel/v/Read/ReadVariableOpbAdam/bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/recurrent_kernel/v/Read/ReadVariableOpVAdam/bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/bias/v/Read/ReadVariableOpYAdam/bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/kernel/v/Read/ReadVariableOpcAdam/bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/recurrent_kernel/v/Read/ReadVariableOpWAdam/bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/bias/v/Read/ReadVariableOpConst*7
Tin0
.2,	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *'
f"R 
__inference__traced_save_71898
с
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameembedding_1/embeddingsdense_2/kerneldense_2/biasdense_3/kerneldense_3/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_rate=bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/kernelGbidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/recurrent_kernel;bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/bias>bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/kernelHbidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/recurrent_kernel<bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/biastotalcounttotal_1count_1Adam/embedding_1/embeddings/mAdam/dense_2/kernel/mAdam/dense_2/bias/mAdam/dense_3/kernel/mAdam/dense_3/bias/mDAdam/bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/kernel/mNAdam/bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/recurrent_kernel/mBAdam/bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/bias/mEAdam/bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/kernel/mOAdam/bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/recurrent_kernel/mCAdam/bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/bias/mAdam/embedding_1/embeddings/vAdam/dense_2/kernel/vAdam/dense_2/bias/vAdam/dense_3/kernel/vAdam/dense_3/bias/vDAdam/bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/kernel/vNAdam/bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/recurrent_kernel/vBAdam/bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/bias/vEAdam/bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/kernel/vOAdam/bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/recurrent_kernel/vCAdam/bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/bias/v*6
Tin/
-2+*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 **
f%R#
!__inference__traced_restore_72034хћ1
Ў	

/__inference_bidirectional_1_layer_call_fn_69624
inputs_0
unknown:@@
	unknown_0:@
	unknown_1:@@
	unknown_2:@@
	unknown_3:@
	unknown_4:@@
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_bidirectional_1_layer_call_and_return_conditional_losses_68025p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:'џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:g c
=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
"
_user_specified_name
inputs/0
ц?
У
P__inference_backward_simple_rnn_1_layer_call_and_return_conditional_losses_67864

inputsB
0simple_rnn_cell_5_matmul_readvariableop_resource:@@?
1simple_rnn_cell_5_biasadd_readvariableop_resource:@D
2simple_rnn_cell_5_matmul_1_readvariableop_resource:@@
identityЂ(simple_rnn_cell_5/BiasAdd/ReadVariableOpЂ'simple_rnn_cell_5/MatMul/ReadVariableOpЂ)simple_rnn_cell_5/MatMul_1/ReadVariableOpЂwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
	transpose	Transposeinputstranspose/perm:output:0*
T0*=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвX
ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: 
	ReverseV2	ReverseV2transpose:y:0ReverseV2/axis:output:0*
T0*=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџџџџџх
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensorReverseV2:output:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ђ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
shrink_axis_mask
'simple_rnn_cell_5/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_5_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype0
simple_rnn_cell_5/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@
(simple_rnn_cell_5/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_5_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ќ
simple_rnn_cell_5/BiasAddBiasAdd"simple_rnn_cell_5/MatMul:product:00simple_rnn_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@
)simple_rnn_cell_5/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_5_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0
simple_rnn_cell_5/MatMul_1MatMulzeros:output:01simple_rnn_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@
simple_rnn_cell_5/addAddV2"simple_rnn_cell_5/BiasAdd:output:0$simple_rnn_cell_5/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@k
simple_rnn_cell_5/TanhTanhsimple_rnn_cell_5/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ж
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_5_matmul_readvariableop_resource1simple_rnn_cell_5_biasadd_readvariableop_resource2simple_rnn_cell_5_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџ@: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_67798*
condR
while_cond_67797*8
output_shapes'
%: : : : :џџџџџџџџџ@: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   Ы
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@Я
NoOpNoOp)^simple_rnn_cell_5/BiasAdd/ReadVariableOp(^simple_rnn_cell_5/MatMul/ReadVariableOp*^simple_rnn_cell_5/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:'џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : 2T
(simple_rnn_cell_5/BiasAdd/ReadVariableOp(simple_rnn_cell_5/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_5/MatMul/ReadVariableOp'simple_rnn_cell_5/MatMul/ReadVariableOp2V
)simple_rnn_cell_5/MatMul_1/ReadVariableOp)simple_rnn_cell_5/MatMul_1/ReadVariableOp2
whilewhile:e a
=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Њ
ж
G__inference_sequential_1_layer_call_and_return_conditional_losses_69573

inputs5
"embedding_1_embedding_lookup_69290:	Љ @g
Ubidirectional_1_forward_simple_rnn_1_simple_rnn_cell_4_matmul_readvariableop_resource:@@d
Vbidirectional_1_forward_simple_rnn_1_simple_rnn_cell_4_biasadd_readvariableop_resource:@i
Wbidirectional_1_forward_simple_rnn_1_simple_rnn_cell_4_matmul_1_readvariableop_resource:@@h
Vbidirectional_1_backward_simple_rnn_1_simple_rnn_cell_5_matmul_readvariableop_resource:@@e
Wbidirectional_1_backward_simple_rnn_1_simple_rnn_cell_5_biasadd_readvariableop_resource:@j
Xbidirectional_1_backward_simple_rnn_1_simple_rnn_cell_5_matmul_1_readvariableop_resource:@@9
&dense_2_matmul_readvariableop_resource:	@5
'dense_2_biasadd_readvariableop_resource:@8
&dense_3_matmul_readvariableop_resource:@5
'dense_3_biasadd_readvariableop_resource:
identityЂNbidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/BiasAdd/ReadVariableOpЂMbidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/MatMul/ReadVariableOpЂObidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/MatMul_1/ReadVariableOpЂ+bidirectional_1/backward_simple_rnn_1/whileЂMbidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/BiasAdd/ReadVariableOpЂLbidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/MatMul/ReadVariableOpЂNbidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/MatMul_1/ReadVariableOpЂ*bidirectional_1/forward_simple_rnn_1/whileЂdense_2/BiasAdd/ReadVariableOpЂdense_2/MatMul/ReadVariableOpЂdense_3/BiasAdd/ReadVariableOpЂdense_3/MatMul/ReadVariableOpЂembedding_1/embedding_lookupj
embedding_1/CastCastinputs*

DstT0*

SrcT0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџђ
embedding_1/embedding_lookupResourceGather"embedding_1_embedding_lookup_69290embedding_1/Cast:y:0*
Tindices0*5
_class+
)'loc:@embedding_1/embedding_lookup/69290*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@*
dtype0Ю
%embedding_1/embedding_lookup/IdentityIdentity%embedding_1/embedding_lookup:output:0*
T0*5
_class+
)'loc:@embedding_1/embedding_lookup/69290*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@Ђ
'embedding_1/embedding_lookup/Identity_1Identity.embedding_1/embedding_lookup/Identity:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@[
embedding_1/NotEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
embedding_1/NotEqualNotEqualinputsembedding_1/NotEqual/y:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
*bidirectional_1/forward_simple_rnn_1/ShapeShape0embedding_1/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:
8bidirectional_1/forward_simple_rnn_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
:bidirectional_1/forward_simple_rnn_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
:bidirectional_1/forward_simple_rnn_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
2bidirectional_1/forward_simple_rnn_1/strided_sliceStridedSlice3bidirectional_1/forward_simple_rnn_1/Shape:output:0Abidirectional_1/forward_simple_rnn_1/strided_slice/stack:output:0Cbidirectional_1/forward_simple_rnn_1/strided_slice/stack_1:output:0Cbidirectional_1/forward_simple_rnn_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masku
3bidirectional_1/forward_simple_rnn_1/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@т
1bidirectional_1/forward_simple_rnn_1/zeros/packedPack;bidirectional_1/forward_simple_rnn_1/strided_slice:output:0<bidirectional_1/forward_simple_rnn_1/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:u
0bidirectional_1/forward_simple_rnn_1/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    л
*bidirectional_1/forward_simple_rnn_1/zerosFill:bidirectional_1/forward_simple_rnn_1/zeros/packed:output:09bidirectional_1/forward_simple_rnn_1/zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
3bidirectional_1/forward_simple_rnn_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ъ
.bidirectional_1/forward_simple_rnn_1/transpose	Transpose0embedding_1/embedding_lookup/Identity_1:output:0<bidirectional_1/forward_simple_rnn_1/transpose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@
,bidirectional_1/forward_simple_rnn_1/Shape_1Shape2bidirectional_1/forward_simple_rnn_1/transpose:y:0*
T0*
_output_shapes
:
:bidirectional_1/forward_simple_rnn_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
<bidirectional_1/forward_simple_rnn_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
<bidirectional_1/forward_simple_rnn_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
4bidirectional_1/forward_simple_rnn_1/strided_slice_1StridedSlice5bidirectional_1/forward_simple_rnn_1/Shape_1:output:0Cbidirectional_1/forward_simple_rnn_1/strided_slice_1/stack:output:0Ebidirectional_1/forward_simple_rnn_1/strided_slice_1/stack_1:output:0Ebidirectional_1/forward_simple_rnn_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3bidirectional_1/forward_simple_rnn_1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџд
/bidirectional_1/forward_simple_rnn_1/ExpandDims
ExpandDimsembedding_1/NotEqual:z:0<bidirectional_1/forward_simple_rnn_1/ExpandDims/dim:output:0*
T0
*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
5bidirectional_1/forward_simple_rnn_1/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          і
0bidirectional_1/forward_simple_rnn_1/transpose_1	Transpose8bidirectional_1/forward_simple_rnn_1/ExpandDims:output:0>bidirectional_1/forward_simple_rnn_1/transpose_1/perm:output:0*
T0
*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
@bidirectional_1/forward_simple_rnn_1/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџЃ
2bidirectional_1/forward_simple_rnn_1/TensorArrayV2TensorListReserveIbidirectional_1/forward_simple_rnn_1/TensorArrayV2/element_shape:output:0=bidirectional_1/forward_simple_rnn_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвЋ
Zbidirectional_1/forward_simple_rnn_1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   Я
Lbidirectional_1/forward_simple_rnn_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor2bidirectional_1/forward_simple_rnn_1/transpose:y:0cbidirectional_1/forward_simple_rnn_1/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
:bidirectional_1/forward_simple_rnn_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 
<bidirectional_1/forward_simple_rnn_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
<bidirectional_1/forward_simple_rnn_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ђ
4bidirectional_1/forward_simple_rnn_1/strided_slice_2StridedSlice2bidirectional_1/forward_simple_rnn_1/transpose:y:0Cbidirectional_1/forward_simple_rnn_1/strided_slice_2/stack:output:0Ebidirectional_1/forward_simple_rnn_1/strided_slice_2/stack_1:output:0Ebidirectional_1/forward_simple_rnn_1/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@*
shrink_axis_maskт
Lbidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/MatMul/ReadVariableOpReadVariableOpUbidirectional_1_forward_simple_rnn_1_simple_rnn_cell_4_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype0
=bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/MatMulMatMul=bidirectional_1/forward_simple_rnn_1/strided_slice_2:output:0Tbidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@р
Mbidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/BiasAdd/ReadVariableOpReadVariableOpVbidirectional_1_forward_simple_rnn_1_simple_rnn_cell_4_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
>bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/BiasAddBiasAddGbidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/MatMul:product:0Ubidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@ц
Nbidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/MatMul_1/ReadVariableOpReadVariableOpWbidirectional_1_forward_simple_rnn_1_simple_rnn_cell_4_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0
?bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/MatMul_1MatMul3bidirectional_1/forward_simple_rnn_1/zeros:output:0Vbidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@
:bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/addAddV2Gbidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/BiasAdd:output:0Ibidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@Е
;bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/TanhTanh>bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@
Bbidirectional_1/forward_simple_rnn_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   Ї
4bidirectional_1/forward_simple_rnn_1/TensorArrayV2_1TensorListReserveKbidirectional_1/forward_simple_rnn_1/TensorArrayV2_1/element_shape:output:0=bidirectional_1/forward_simple_rnn_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвk
)bidirectional_1/forward_simple_rnn_1/timeConst*
_output_shapes
: *
dtype0*
value	B : 
Bbidirectional_1/forward_simple_rnn_1/TensorArrayV2_2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџЇ
4bidirectional_1/forward_simple_rnn_1/TensorArrayV2_2TensorListReserveKbidirectional_1/forward_simple_rnn_1/TensorArrayV2_2/element_shape:output:0=bidirectional_1/forward_simple_rnn_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0
*

shape_type0:щшШ­
\bidirectional_1/forward_simple_rnn_1/TensorArrayUnstack_1/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   е
Nbidirectional_1/forward_simple_rnn_1/TensorArrayUnstack_1/TensorListFromTensorTensorListFromTensor4bidirectional_1/forward_simple_rnn_1/transpose_1:y:0ebidirectional_1/forward_simple_rnn_1/TensorArrayUnstack_1/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0
*

shape_type0:щшШЏ
/bidirectional_1/forward_simple_rnn_1/zeros_like	ZerosLike?bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@
=bidirectional_1/forward_simple_rnn_1/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџy
7bidirectional_1/forward_simple_rnn_1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ј

*bidirectional_1/forward_simple_rnn_1/whileWhile@bidirectional_1/forward_simple_rnn_1/while/loop_counter:output:0Fbidirectional_1/forward_simple_rnn_1/while/maximum_iterations:output:02bidirectional_1/forward_simple_rnn_1/time:output:0=bidirectional_1/forward_simple_rnn_1/TensorArrayV2_1:handle:03bidirectional_1/forward_simple_rnn_1/zeros_like:y:03bidirectional_1/forward_simple_rnn_1/zeros:output:0=bidirectional_1/forward_simple_rnn_1/strided_slice_1:output:0\bidirectional_1/forward_simple_rnn_1/TensorArrayUnstack/TensorListFromTensor:output_handle:0^bidirectional_1/forward_simple_rnn_1/TensorArrayUnstack_1/TensorListFromTensor:output_handle:0Ubidirectional_1_forward_simple_rnn_1_simple_rnn_cell_4_matmul_readvariableop_resourceVbidirectional_1_forward_simple_rnn_1_simple_rnn_cell_4_biasadd_readvariableop_resourceWbidirectional_1_forward_simple_rnn_1_simple_rnn_cell_4_matmul_1_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :џџџџџџџџџ@:џџџџџџџџџ@: : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *A
body9R7
5bidirectional_1_forward_simple_rnn_1_while_body_69345*A
cond9R7
5bidirectional_1_forward_simple_rnn_1_while_cond_69344*M
output_shapes<
:: : : : :џџџџџџџџџ@:џџџџџџџџџ@: : : : : : *
parallel_iterations І
Ubidirectional_1/forward_simple_rnn_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   К
Gbidirectional_1/forward_simple_rnn_1/TensorArrayV2Stack/TensorListStackTensorListStack3bidirectional_1/forward_simple_rnn_1/while:output:3^bidirectional_1/forward_simple_rnn_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@*
element_dtype0
:bidirectional_1/forward_simple_rnn_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ
<bidirectional_1/forward_simple_rnn_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
<bidirectional_1/forward_simple_rnn_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Р
4bidirectional_1/forward_simple_rnn_1/strided_slice_3StridedSlicePbidirectional_1/forward_simple_rnn_1/TensorArrayV2Stack/TensorListStack:tensor:0Cbidirectional_1/forward_simple_rnn_1/strided_slice_3/stack:output:0Ebidirectional_1/forward_simple_rnn_1/strided_slice_3/stack_1:output:0Ebidirectional_1/forward_simple_rnn_1/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@*
shrink_axis_mask
5bidirectional_1/forward_simple_rnn_1/transpose_2/permConst*
_output_shapes
:*
dtype0*!
valueB"          
0bidirectional_1/forward_simple_rnn_1/transpose_2	TransposePbidirectional_1/forward_simple_rnn_1/TensorArrayV2Stack/TensorListStack:tensor:0>bidirectional_1/forward_simple_rnn_1/transpose_2/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@
+bidirectional_1/backward_simple_rnn_1/ShapeShape0embedding_1/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:
9bidirectional_1/backward_simple_rnn_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
;bidirectional_1/backward_simple_rnn_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
;bidirectional_1/backward_simple_rnn_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
3bidirectional_1/backward_simple_rnn_1/strided_sliceStridedSlice4bidirectional_1/backward_simple_rnn_1/Shape:output:0Bbidirectional_1/backward_simple_rnn_1/strided_slice/stack:output:0Dbidirectional_1/backward_simple_rnn_1/strided_slice/stack_1:output:0Dbidirectional_1/backward_simple_rnn_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskv
4bidirectional_1/backward_simple_rnn_1/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@х
2bidirectional_1/backward_simple_rnn_1/zeros/packedPack<bidirectional_1/backward_simple_rnn_1/strided_slice:output:0=bidirectional_1/backward_simple_rnn_1/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:v
1bidirectional_1/backward_simple_rnn_1/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    о
+bidirectional_1/backward_simple_rnn_1/zerosFill;bidirectional_1/backward_simple_rnn_1/zeros/packed:output:0:bidirectional_1/backward_simple_rnn_1/zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
4bidirectional_1/backward_simple_rnn_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ь
/bidirectional_1/backward_simple_rnn_1/transpose	Transpose0embedding_1/embedding_lookup/Identity_1:output:0=bidirectional_1/backward_simple_rnn_1/transpose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@
-bidirectional_1/backward_simple_rnn_1/Shape_1Shape3bidirectional_1/backward_simple_rnn_1/transpose:y:0*
T0*
_output_shapes
:
;bidirectional_1/backward_simple_rnn_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
=bidirectional_1/backward_simple_rnn_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
=bidirectional_1/backward_simple_rnn_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
5bidirectional_1/backward_simple_rnn_1/strided_slice_1StridedSlice6bidirectional_1/backward_simple_rnn_1/Shape_1:output:0Dbidirectional_1/backward_simple_rnn_1/strided_slice_1/stack:output:0Fbidirectional_1/backward_simple_rnn_1/strided_slice_1/stack_1:output:0Fbidirectional_1/backward_simple_rnn_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
4bidirectional_1/backward_simple_rnn_1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџж
0bidirectional_1/backward_simple_rnn_1/ExpandDims
ExpandDimsembedding_1/NotEqual:z:0=bidirectional_1/backward_simple_rnn_1/ExpandDims/dim:output:0*
T0
*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
6bidirectional_1/backward_simple_rnn_1/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          љ
1bidirectional_1/backward_simple_rnn_1/transpose_1	Transpose9bidirectional_1/backward_simple_rnn_1/ExpandDims:output:0?bidirectional_1/backward_simple_rnn_1/transpose_1/perm:output:0*
T0
*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
Abidirectional_1/backward_simple_rnn_1/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџІ
3bidirectional_1/backward_simple_rnn_1/TensorArrayV2TensorListReserveJbidirectional_1/backward_simple_rnn_1/TensorArrayV2/element_shape:output:0>bidirectional_1/backward_simple_rnn_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв~
4bidirectional_1/backward_simple_rnn_1/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: я
/bidirectional_1/backward_simple_rnn_1/ReverseV2	ReverseV23bidirectional_1/backward_simple_rnn_1/transpose:y:0=bidirectional_1/backward_simple_rnn_1/ReverseV2/axis:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@Ќ
[bidirectional_1/backward_simple_rnn_1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   з
Mbidirectional_1/backward_simple_rnn_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor8bidirectional_1/backward_simple_rnn_1/ReverseV2:output:0dbidirectional_1/backward_simple_rnn_1/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
;bidirectional_1/backward_simple_rnn_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 
=bidirectional_1/backward_simple_rnn_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
=bidirectional_1/backward_simple_rnn_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ї
5bidirectional_1/backward_simple_rnn_1/strided_slice_2StridedSlice3bidirectional_1/backward_simple_rnn_1/transpose:y:0Dbidirectional_1/backward_simple_rnn_1/strided_slice_2/stack:output:0Fbidirectional_1/backward_simple_rnn_1/strided_slice_2/stack_1:output:0Fbidirectional_1/backward_simple_rnn_1/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@*
shrink_axis_maskф
Mbidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/MatMul/ReadVariableOpReadVariableOpVbidirectional_1_backward_simple_rnn_1_simple_rnn_cell_5_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype0
>bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/MatMulMatMul>bidirectional_1/backward_simple_rnn_1/strided_slice_2:output:0Ubidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@т
Nbidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/BiasAdd/ReadVariableOpReadVariableOpWbidirectional_1_backward_simple_rnn_1_simple_rnn_cell_5_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
?bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/BiasAddBiasAddHbidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/MatMul:product:0Vbidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@ш
Obidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/MatMul_1/ReadVariableOpReadVariableOpXbidirectional_1_backward_simple_rnn_1_simple_rnn_cell_5_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0
@bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/MatMul_1MatMul4bidirectional_1/backward_simple_rnn_1/zeros:output:0Wbidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@
;bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/addAddV2Hbidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/BiasAdd:output:0Jbidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@З
<bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/TanhTanh?bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@
Cbidirectional_1/backward_simple_rnn_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   Њ
5bidirectional_1/backward_simple_rnn_1/TensorArrayV2_1TensorListReserveLbidirectional_1/backward_simple_rnn_1/TensorArrayV2_1/element_shape:output:0>bidirectional_1/backward_simple_rnn_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвl
*bidirectional_1/backward_simple_rnn_1/timeConst*
_output_shapes
: *
dtype0*
value	B : 
6bidirectional_1/backward_simple_rnn_1/ReverseV2_1/axisConst*
_output_shapes
:*
dtype0*
valueB: ѕ
1bidirectional_1/backward_simple_rnn_1/ReverseV2_1	ReverseV25bidirectional_1/backward_simple_rnn_1/transpose_1:y:0?bidirectional_1/backward_simple_rnn_1/ReverseV2_1/axis:output:0*
T0
*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
Cbidirectional_1/backward_simple_rnn_1/TensorArrayV2_2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџЊ
5bidirectional_1/backward_simple_rnn_1/TensorArrayV2_2TensorListReserveLbidirectional_1/backward_simple_rnn_1/TensorArrayV2_2/element_shape:output:0>bidirectional_1/backward_simple_rnn_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0
*

shape_type0:щшШЎ
]bidirectional_1/backward_simple_rnn_1/TensorArrayUnstack_1/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   н
Obidirectional_1/backward_simple_rnn_1/TensorArrayUnstack_1/TensorListFromTensorTensorListFromTensor:bidirectional_1/backward_simple_rnn_1/ReverseV2_1:output:0fbidirectional_1/backward_simple_rnn_1/TensorArrayUnstack_1/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0
*

shape_type0:щшШБ
0bidirectional_1/backward_simple_rnn_1/zeros_like	ZerosLike@bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@
>bidirectional_1/backward_simple_rnn_1/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџz
8bidirectional_1/backward_simple_rnn_1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
+bidirectional_1/backward_simple_rnn_1/whileWhileAbidirectional_1/backward_simple_rnn_1/while/loop_counter:output:0Gbidirectional_1/backward_simple_rnn_1/while/maximum_iterations:output:03bidirectional_1/backward_simple_rnn_1/time:output:0>bidirectional_1/backward_simple_rnn_1/TensorArrayV2_1:handle:04bidirectional_1/backward_simple_rnn_1/zeros_like:y:04bidirectional_1/backward_simple_rnn_1/zeros:output:0>bidirectional_1/backward_simple_rnn_1/strided_slice_1:output:0]bidirectional_1/backward_simple_rnn_1/TensorArrayUnstack/TensorListFromTensor:output_handle:0_bidirectional_1/backward_simple_rnn_1/TensorArrayUnstack_1/TensorListFromTensor:output_handle:0Vbidirectional_1_backward_simple_rnn_1_simple_rnn_cell_5_matmul_readvariableop_resourceWbidirectional_1_backward_simple_rnn_1_simple_rnn_cell_5_biasadd_readvariableop_resourceXbidirectional_1_backward_simple_rnn_1_simple_rnn_cell_5_matmul_1_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :џџџџџџџџџ@:џџџџџџџџџ@: : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *B
body:R8
6bidirectional_1_backward_simple_rnn_1_while_body_69477*B
cond:R8
6bidirectional_1_backward_simple_rnn_1_while_cond_69476*M
output_shapes<
:: : : : :џџџџџџџџџ@:џџџџџџџџџ@: : : : : : *
parallel_iterations Ї
Vbidirectional_1/backward_simple_rnn_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   Н
Hbidirectional_1/backward_simple_rnn_1/TensorArrayV2Stack/TensorListStackTensorListStack4bidirectional_1/backward_simple_rnn_1/while:output:3_bidirectional_1/backward_simple_rnn_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@*
element_dtype0
;bidirectional_1/backward_simple_rnn_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ
=bidirectional_1/backward_simple_rnn_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
=bidirectional_1/backward_simple_rnn_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Х
5bidirectional_1/backward_simple_rnn_1/strided_slice_3StridedSliceQbidirectional_1/backward_simple_rnn_1/TensorArrayV2Stack/TensorListStack:tensor:0Dbidirectional_1/backward_simple_rnn_1/strided_slice_3/stack:output:0Fbidirectional_1/backward_simple_rnn_1/strided_slice_3/stack_1:output:0Fbidirectional_1/backward_simple_rnn_1/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@*
shrink_axis_mask
6bidirectional_1/backward_simple_rnn_1/transpose_2/permConst*
_output_shapes
:*
dtype0*!
valueB"          
1bidirectional_1/backward_simple_rnn_1/transpose_2	TransposeQbidirectional_1/backward_simple_rnn_1/TensorArrayV2Stack/TensorListStack:tensor:0?bidirectional_1/backward_simple_rnn_1/transpose_2/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@]
bidirectional_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :
bidirectional_1/concatConcatV2=bidirectional_1/forward_simple_rnn_1/strided_slice_3:output:0>bidirectional_1/backward_simple_rnn_1/strided_slice_3:output:0$bidirectional_1/concat/axis:output:0*
N*
T0*(
_output_shapes
:џџџџџџџџџ
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes
:	@*
dtype0
dense_2/MatMulMatMulbidirectional_1/concat:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@`
dense_2/ReluReludense_2/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0
dense_3/MatMulMatMuldense_2/Relu:activations:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџg
IdentityIdentitydense_3/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџЅ
NoOpNoOpO^bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/BiasAdd/ReadVariableOpN^bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/MatMul/ReadVariableOpP^bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/MatMul_1/ReadVariableOp,^bidirectional_1/backward_simple_rnn_1/whileN^bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/BiasAdd/ReadVariableOpM^bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/MatMul/ReadVariableOpO^bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/MatMul_1/ReadVariableOp+^bidirectional_1/forward_simple_rnn_1/while^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp^embedding_1/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:џџџџџџџџџџџџџџџџџџ: : : : : : : : : : : 2 
Nbidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/BiasAdd/ReadVariableOpNbidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/BiasAdd/ReadVariableOp2
Mbidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/MatMul/ReadVariableOpMbidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/MatMul/ReadVariableOp2Ђ
Obidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/MatMul_1/ReadVariableOpObidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/MatMul_1/ReadVariableOp2Z
+bidirectional_1/backward_simple_rnn_1/while+bidirectional_1/backward_simple_rnn_1/while2
Mbidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/BiasAdd/ReadVariableOpMbidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/BiasAdd/ReadVariableOp2
Lbidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/MatMul/ReadVariableOpLbidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/MatMul/ReadVariableOp2 
Nbidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/MatMul_1/ReadVariableOpNbidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/MatMul_1/ReadVariableOp2X
*bidirectional_1/forward_simple_rnn_1/while*bidirectional_1/forward_simple_rnn_1/while2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp2<
embedding_1/embedding_lookupembedding_1/embedding_lookup:X T
0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
4

O__inference_forward_simple_rnn_1_layer_call_and_return_conditional_losses_67020

inputs)
simple_rnn_cell_4_66945:@@%
simple_rnn_cell_4_66947:@)
simple_rnn_cell_4_66949:@@
identityЂ)simple_rnn_cell_4/StatefulPartitionedCallЂwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@*
shrink_axis_maskу
)simple_rnn_cell_4/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_4_66945simple_rnn_cell_4_66947simple_rnn_cell_4_66949*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:џџџџџџџџџ@:џџџџџџџџџ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_simple_rnn_cell_4_layer_call_and_return_conditional_losses_66944n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_4_66945simple_rnn_cell_4_66947simple_rnn_cell_4_66949*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџ@: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_66957*
condR
while_cond_66956*8
output_shapes'
%: : : : :џџџџџџџџџ@: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   Ы
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@z
NoOpNoOp*^simple_rnn_cell_4/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ@: : : 2V
)simple_rnn_cell_4/StatefulPartitionedCall)simple_rnn_cell_4/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs
@
О
%forward_simple_rnn_1_while_body_69702F
Bforward_simple_rnn_1_while_forward_simple_rnn_1_while_loop_counterL
Hforward_simple_rnn_1_while_forward_simple_rnn_1_while_maximum_iterations*
&forward_simple_rnn_1_while_placeholder,
(forward_simple_rnn_1_while_placeholder_1,
(forward_simple_rnn_1_while_placeholder_2E
Aforward_simple_rnn_1_while_forward_simple_rnn_1_strided_slice_1_0
}forward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_forward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0_
Mforward_simple_rnn_1_while_simple_rnn_cell_4_matmul_readvariableop_resource_0:@@\
Nforward_simple_rnn_1_while_simple_rnn_cell_4_biasadd_readvariableop_resource_0:@a
Oforward_simple_rnn_1_while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0:@@'
#forward_simple_rnn_1_while_identity)
%forward_simple_rnn_1_while_identity_1)
%forward_simple_rnn_1_while_identity_2)
%forward_simple_rnn_1_while_identity_3)
%forward_simple_rnn_1_while_identity_4C
?forward_simple_rnn_1_while_forward_simple_rnn_1_strided_slice_1
{forward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_forward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor]
Kforward_simple_rnn_1_while_simple_rnn_cell_4_matmul_readvariableop_resource:@@Z
Lforward_simple_rnn_1_while_simple_rnn_cell_4_biasadd_readvariableop_resource:@_
Mforward_simple_rnn_1_while_simple_rnn_cell_4_matmul_1_readvariableop_resource:@@ЂCforward_simple_rnn_1/while/simple_rnn_cell_4/BiasAdd/ReadVariableOpЂBforward_simple_rnn_1/while/simple_rnn_cell_4/MatMul/ReadVariableOpЂDforward_simple_rnn_1/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp
Lforward_simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџџџџџ
>forward_simple_rnn_1/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem}forward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_forward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0&forward_simple_rnn_1_while_placeholderUforward_simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
element_dtype0а
Bforward_simple_rnn_1/while/simple_rnn_cell_4/MatMul/ReadVariableOpReadVariableOpMforward_simple_rnn_1_while_simple_rnn_cell_4_matmul_readvariableop_resource_0*
_output_shapes

:@@*
dtype0
3forward_simple_rnn_1/while/simple_rnn_cell_4/MatMulMatMulEforward_simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem:item:0Jforward_simple_rnn_1/while/simple_rnn_cell_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@Ю
Cforward_simple_rnn_1/while/simple_rnn_cell_4/BiasAdd/ReadVariableOpReadVariableOpNforward_simple_rnn_1_while_simple_rnn_cell_4_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0§
4forward_simple_rnn_1/while/simple_rnn_cell_4/BiasAddBiasAdd=forward_simple_rnn_1/while/simple_rnn_cell_4/MatMul:product:0Kforward_simple_rnn_1/while/simple_rnn_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@д
Dforward_simple_rnn_1/while/simple_rnn_cell_4/MatMul_1/ReadVariableOpReadVariableOpOforward_simple_rnn_1_while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype0щ
5forward_simple_rnn_1/while/simple_rnn_cell_4/MatMul_1MatMul(forward_simple_rnn_1_while_placeholder_2Lforward_simple_rnn_1/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@ы
0forward_simple_rnn_1/while/simple_rnn_cell_4/addAddV2=forward_simple_rnn_1/while/simple_rnn_cell_4/BiasAdd:output:0?forward_simple_rnn_1/while/simple_rnn_cell_4/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@Ё
1forward_simple_rnn_1/while/simple_rnn_cell_4/TanhTanh4forward_simple_rnn_1/while/simple_rnn_cell_4/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@
?forward_simple_rnn_1/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem(forward_simple_rnn_1_while_placeholder_1&forward_simple_rnn_1_while_placeholder5forward_simple_rnn_1/while/simple_rnn_cell_4/Tanh:y:0*
_output_shapes
: *
element_dtype0:щшвb
 forward_simple_rnn_1/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
forward_simple_rnn_1/while/addAddV2&forward_simple_rnn_1_while_placeholder)forward_simple_rnn_1/while/add/y:output:0*
T0*
_output_shapes
: d
"forward_simple_rnn_1/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Л
 forward_simple_rnn_1/while/add_1AddV2Bforward_simple_rnn_1_while_forward_simple_rnn_1_while_loop_counter+forward_simple_rnn_1/while/add_1/y:output:0*
T0*
_output_shapes
: 
#forward_simple_rnn_1/while/IdentityIdentity$forward_simple_rnn_1/while/add_1:z:0 ^forward_simple_rnn_1/while/NoOp*
T0*
_output_shapes
: О
%forward_simple_rnn_1/while/Identity_1IdentityHforward_simple_rnn_1_while_forward_simple_rnn_1_while_maximum_iterations ^forward_simple_rnn_1/while/NoOp*
T0*
_output_shapes
: 
%forward_simple_rnn_1/while/Identity_2Identity"forward_simple_rnn_1/while/add:z:0 ^forward_simple_rnn_1/while/NoOp*
T0*
_output_shapes
: Х
%forward_simple_rnn_1/while/Identity_3IdentityOforward_simple_rnn_1/while/TensorArrayV2Write/TensorListSetItem:output_handle:0 ^forward_simple_rnn_1/while/NoOp*
T0*
_output_shapes
: М
%forward_simple_rnn_1/while/Identity_4Identity5forward_simple_rnn_1/while/simple_rnn_cell_4/Tanh:y:0 ^forward_simple_rnn_1/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@Г
forward_simple_rnn_1/while/NoOpNoOpD^forward_simple_rnn_1/while/simple_rnn_cell_4/BiasAdd/ReadVariableOpC^forward_simple_rnn_1/while/simple_rnn_cell_4/MatMul/ReadVariableOpE^forward_simple_rnn_1/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
?forward_simple_rnn_1_while_forward_simple_rnn_1_strided_slice_1Aforward_simple_rnn_1_while_forward_simple_rnn_1_strided_slice_1_0"S
#forward_simple_rnn_1_while_identity,forward_simple_rnn_1/while/Identity:output:0"W
%forward_simple_rnn_1_while_identity_1.forward_simple_rnn_1/while/Identity_1:output:0"W
%forward_simple_rnn_1_while_identity_2.forward_simple_rnn_1/while/Identity_2:output:0"W
%forward_simple_rnn_1_while_identity_3.forward_simple_rnn_1/while/Identity_3:output:0"W
%forward_simple_rnn_1_while_identity_4.forward_simple_rnn_1/while/Identity_4:output:0"
Lforward_simple_rnn_1_while_simple_rnn_cell_4_biasadd_readvariableop_resourceNforward_simple_rnn_1_while_simple_rnn_cell_4_biasadd_readvariableop_resource_0" 
Mforward_simple_rnn_1_while_simple_rnn_cell_4_matmul_1_readvariableop_resourceOforward_simple_rnn_1_while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0"
Kforward_simple_rnn_1_while_simple_rnn_cell_4_matmul_readvariableop_resourceMforward_simple_rnn_1_while_simple_rnn_cell_4_matmul_readvariableop_resource_0"ќ
{forward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_forward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor}forward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_forward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :џџџџџџџџџ@: : : : : 2
Cforward_simple_rnn_1/while/simple_rnn_cell_4/BiasAdd/ReadVariableOpCforward_simple_rnn_1/while/simple_rnn_cell_4/BiasAdd/ReadVariableOp2
Bforward_simple_rnn_1/while/simple_rnn_cell_4/MatMul/ReadVariableOpBforward_simple_rnn_1/while/simple_rnn_cell_4/MatMul/ReadVariableOp2
Dforward_simple_rnn_1/while/simple_rnn_cell_4/MatMul_1/ReadVariableOpDforward_simple_rnn_1/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
: 
Љ,
Ч
while_body_71339
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0J
8while_simple_rnn_cell_5_matmul_readvariableop_resource_0:@@G
9while_simple_rnn_cell_5_biasadd_readvariableop_resource_0:@L
:while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0:@@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorH
6while_simple_rnn_cell_5_matmul_readvariableop_resource:@@E
7while_simple_rnn_cell_5_biasadd_readvariableop_resource:@J
8while_simple_rnn_cell_5_matmul_1_readvariableop_resource:@@Ђ.while/simple_rnn_cell_5/BiasAdd/ReadVariableOpЂ-while/simple_rnn_cell_5/MatMul/ReadVariableOpЂ/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ@*
element_dtype0І
-while/simple_rnn_cell_5/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_5_matmul_readvariableop_resource_0*
_output_shapes

:@@*
dtype0У
while/simple_rnn_cell_5/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@Є
.while/simple_rnn_cell_5/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_5_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0О
while/simple_rnn_cell_5/BiasAddBiasAdd(while/simple_rnn_cell_5/MatMul:product:06while/simple_rnn_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@Њ
/while/simple_rnn_cell_5/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype0Њ
 while/simple_rnn_cell_5/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@Ќ
while/simple_rnn_cell_5/addAddV2(while/simple_rnn_cell_5/BiasAdd:output:0*while/simple_rnn_cell_5/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@w
while/simple_rnn_cell_5/TanhTanhwhile/simple_rnn_cell_5/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@Щ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder while/simple_rnn_cell_5/Tanh:y:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: }
while/Identity_4Identity while/simple_rnn_cell_5/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@п

while/NoOpNoOp/^while/simple_rnn_cell_5/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_5/MatMul/ReadVariableOp0^while/simple_rnn_cell_5/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_5_biasadd_readvariableop_resource9while_simple_rnn_cell_5_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_5_matmul_1_readvariableop_resource:while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_5_matmul_readvariableop_resource8while_simple_rnn_cell_5_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :џџџџџџџџџ@: : : : : 2`
.while/simple_rnn_cell_5/BiasAdd/ReadVariableOp.while/simple_rnn_cell_5/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_5/MatMul/ReadVariableOp-while/simple_rnn_cell_5/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
: 
Р?
Х
P__inference_backward_simple_rnn_1_layer_call_and_return_conditional_losses_71405
inputs_0B
0simple_rnn_cell_5_matmul_readvariableop_resource:@@?
1simple_rnn_cell_5_biasadd_readvariableop_resource:@D
2simple_rnn_cell_5_matmul_1_readvariableop_resource:@@
identityЂ(simple_rnn_cell_5/BiasAdd/ReadVariableOpЂ'simple_rnn_cell_5/MatMul/ReadVariableOpЂ)simple_rnn_cell_5/MatMul_1/ReadVariableOpЂwhile=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвX
ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: }
	ReverseV2	ReverseV2transpose:y:0ReverseV2/axis:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   х
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensorReverseV2:output:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@*
shrink_axis_mask
'simple_rnn_cell_5/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_5_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype0
simple_rnn_cell_5/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@
(simple_rnn_cell_5/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_5_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ќ
simple_rnn_cell_5/BiasAddBiasAdd"simple_rnn_cell_5/MatMul:product:00simple_rnn_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@
)simple_rnn_cell_5/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_5_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0
simple_rnn_cell_5/MatMul_1MatMulzeros:output:01simple_rnn_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@
simple_rnn_cell_5/addAddV2"simple_rnn_cell_5/BiasAdd:output:0$simple_rnn_cell_5/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@k
simple_rnn_cell_5/TanhTanhsimple_rnn_cell_5/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ж
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_5_matmul_readvariableop_resource1simple_rnn_cell_5_biasadd_readvariableop_resource2simple_rnn_cell_5_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџ@: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_71339*
condR
while_cond_71338*8
output_shapes'
%: : : : :џџџџџџџџџ@: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   Ы
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@Я
NoOpNoOp)^simple_rnn_cell_5/BiasAdd/ReadVariableOp(^simple_rnn_cell_5/MatMul/ReadVariableOp*^simple_rnn_cell_5/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ@: : : 2T
(simple_rnn_cell_5/BiasAdd/ReadVariableOp(simple_rnn_cell_5/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_5/MatMul/ReadVariableOp'simple_rnn_cell_5/MatMul/ReadVariableOp2V
)simple_rnn_cell_5/MatMul_1/ReadVariableOp)simple_rnn_cell_5/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@
"
_user_specified_name
inputs/0
З

й
1__inference_simple_rnn_cell_5_layer_call_fn_71715

inputs
states_0
unknown:@@
	unknown_0:@
	unknown_1:@@
identity

identity_1ЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:џџџџџџџџџ@:џџџџџџџџџ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_simple_rnn_cell_5_layer_call_and_return_conditional_losses_67358o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:џџџџџџџџџ@:џџџџџџџџџ@: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџ@
"
_user_specified_name
states/0
U
І
%forward_simple_rnn_1_while_body_68114F
Bforward_simple_rnn_1_while_forward_simple_rnn_1_while_loop_counterL
Hforward_simple_rnn_1_while_forward_simple_rnn_1_while_maximum_iterations*
&forward_simple_rnn_1_while_placeholder,
(forward_simple_rnn_1_while_placeholder_1,
(forward_simple_rnn_1_while_placeholder_2,
(forward_simple_rnn_1_while_placeholder_3E
Aforward_simple_rnn_1_while_forward_simple_rnn_1_strided_slice_1_0
}forward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_forward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0
forward_simple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_forward_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensor_0_
Mforward_simple_rnn_1_while_simple_rnn_cell_4_matmul_readvariableop_resource_0:@@\
Nforward_simple_rnn_1_while_simple_rnn_cell_4_biasadd_readvariableop_resource_0:@a
Oforward_simple_rnn_1_while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0:@@'
#forward_simple_rnn_1_while_identity)
%forward_simple_rnn_1_while_identity_1)
%forward_simple_rnn_1_while_identity_2)
%forward_simple_rnn_1_while_identity_3)
%forward_simple_rnn_1_while_identity_4)
%forward_simple_rnn_1_while_identity_5C
?forward_simple_rnn_1_while_forward_simple_rnn_1_strided_slice_1
{forward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_forward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor
forward_simple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_forward_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensor]
Kforward_simple_rnn_1_while_simple_rnn_cell_4_matmul_readvariableop_resource:@@Z
Lforward_simple_rnn_1_while_simple_rnn_cell_4_biasadd_readvariableop_resource:@_
Mforward_simple_rnn_1_while_simple_rnn_cell_4_matmul_1_readvariableop_resource:@@ЂCforward_simple_rnn_1/while/simple_rnn_cell_4/BiasAdd/ReadVariableOpЂBforward_simple_rnn_1/while/simple_rnn_cell_4/MatMul/ReadVariableOpЂDforward_simple_rnn_1/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp
Lforward_simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   
>forward_simple_rnn_1/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem}forward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_forward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0&forward_simple_rnn_1_while_placeholderUforward_simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ@*
element_dtype0
Nforward_simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   
@forward_simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItemTensorListGetItemforward_simple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_forward_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensor_0&forward_simple_rnn_1_while_placeholderWforward_simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0
а
Bforward_simple_rnn_1/while/simple_rnn_cell_4/MatMul/ReadVariableOpReadVariableOpMforward_simple_rnn_1_while_simple_rnn_cell_4_matmul_readvariableop_resource_0*
_output_shapes

:@@*
dtype0
3forward_simple_rnn_1/while/simple_rnn_cell_4/MatMulMatMulEforward_simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem:item:0Jforward_simple_rnn_1/while/simple_rnn_cell_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@Ю
Cforward_simple_rnn_1/while/simple_rnn_cell_4/BiasAdd/ReadVariableOpReadVariableOpNforward_simple_rnn_1_while_simple_rnn_cell_4_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0§
4forward_simple_rnn_1/while/simple_rnn_cell_4/BiasAddBiasAdd=forward_simple_rnn_1/while/simple_rnn_cell_4/MatMul:product:0Kforward_simple_rnn_1/while/simple_rnn_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@д
Dforward_simple_rnn_1/while/simple_rnn_cell_4/MatMul_1/ReadVariableOpReadVariableOpOforward_simple_rnn_1_while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype0щ
5forward_simple_rnn_1/while/simple_rnn_cell_4/MatMul_1MatMul(forward_simple_rnn_1_while_placeholder_3Lforward_simple_rnn_1/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@ы
0forward_simple_rnn_1/while/simple_rnn_cell_4/addAddV2=forward_simple_rnn_1/while/simple_rnn_cell_4/BiasAdd:output:0?forward_simple_rnn_1/while/simple_rnn_cell_4/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@Ё
1forward_simple_rnn_1/while/simple_rnn_cell_4/TanhTanh4forward_simple_rnn_1/while/simple_rnn_cell_4/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@z
)forward_simple_rnn_1/while/Tile/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      ж
forward_simple_rnn_1/while/TileTileGforward_simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItem:item:02forward_simple_rnn_1/while/Tile/multiples:output:0*
T0
*'
_output_shapes
:џџџџџџџџџь
#forward_simple_rnn_1/while/SelectV2SelectV2(forward_simple_rnn_1/while/Tile:output:05forward_simple_rnn_1/while/simple_rnn_cell_4/Tanh:y:0(forward_simple_rnn_1_while_placeholder_2*
T0*'
_output_shapes
:џџџџџџџџџ@|
+forward_simple_rnn_1/while/Tile_1/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      к
!forward_simple_rnn_1/while/Tile_1TileGforward_simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItem:item:04forward_simple_rnn_1/while/Tile_1/multiples:output:0*
T0
*'
_output_shapes
:џџџџџџџџџ№
%forward_simple_rnn_1/while/SelectV2_1SelectV2*forward_simple_rnn_1/while/Tile_1:output:05forward_simple_rnn_1/while/simple_rnn_cell_4/Tanh:y:0(forward_simple_rnn_1_while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ@
?forward_simple_rnn_1/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem(forward_simple_rnn_1_while_placeholder_1&forward_simple_rnn_1_while_placeholder,forward_simple_rnn_1/while/SelectV2:output:0*
_output_shapes
: *
element_dtype0:щшвb
 forward_simple_rnn_1/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
forward_simple_rnn_1/while/addAddV2&forward_simple_rnn_1_while_placeholder)forward_simple_rnn_1/while/add/y:output:0*
T0*
_output_shapes
: d
"forward_simple_rnn_1/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Л
 forward_simple_rnn_1/while/add_1AddV2Bforward_simple_rnn_1_while_forward_simple_rnn_1_while_loop_counter+forward_simple_rnn_1/while/add_1/y:output:0*
T0*
_output_shapes
: 
#forward_simple_rnn_1/while/IdentityIdentity$forward_simple_rnn_1/while/add_1:z:0 ^forward_simple_rnn_1/while/NoOp*
T0*
_output_shapes
: О
%forward_simple_rnn_1/while/Identity_1IdentityHforward_simple_rnn_1_while_forward_simple_rnn_1_while_maximum_iterations ^forward_simple_rnn_1/while/NoOp*
T0*
_output_shapes
: 
%forward_simple_rnn_1/while/Identity_2Identity"forward_simple_rnn_1/while/add:z:0 ^forward_simple_rnn_1/while/NoOp*
T0*
_output_shapes
: Х
%forward_simple_rnn_1/while/Identity_3IdentityOforward_simple_rnn_1/while/TensorArrayV2Write/TensorListSetItem:output_handle:0 ^forward_simple_rnn_1/while/NoOp*
T0*
_output_shapes
: Г
%forward_simple_rnn_1/while/Identity_4Identity,forward_simple_rnn_1/while/SelectV2:output:0 ^forward_simple_rnn_1/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@Е
%forward_simple_rnn_1/while/Identity_5Identity.forward_simple_rnn_1/while/SelectV2_1:output:0 ^forward_simple_rnn_1/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@Г
forward_simple_rnn_1/while/NoOpNoOpD^forward_simple_rnn_1/while/simple_rnn_cell_4/BiasAdd/ReadVariableOpC^forward_simple_rnn_1/while/simple_rnn_cell_4/MatMul/ReadVariableOpE^forward_simple_rnn_1/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
?forward_simple_rnn_1_while_forward_simple_rnn_1_strided_slice_1Aforward_simple_rnn_1_while_forward_simple_rnn_1_strided_slice_1_0"S
#forward_simple_rnn_1_while_identity,forward_simple_rnn_1/while/Identity:output:0"W
%forward_simple_rnn_1_while_identity_1.forward_simple_rnn_1/while/Identity_1:output:0"W
%forward_simple_rnn_1_while_identity_2.forward_simple_rnn_1/while/Identity_2:output:0"W
%forward_simple_rnn_1_while_identity_3.forward_simple_rnn_1/while/Identity_3:output:0"W
%forward_simple_rnn_1_while_identity_4.forward_simple_rnn_1/while/Identity_4:output:0"W
%forward_simple_rnn_1_while_identity_5.forward_simple_rnn_1/while/Identity_5:output:0"
Lforward_simple_rnn_1_while_simple_rnn_cell_4_biasadd_readvariableop_resourceNforward_simple_rnn_1_while_simple_rnn_cell_4_biasadd_readvariableop_resource_0" 
Mforward_simple_rnn_1_while_simple_rnn_cell_4_matmul_1_readvariableop_resourceOforward_simple_rnn_1_while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0"
Kforward_simple_rnn_1_while_simple_rnn_cell_4_matmul_readvariableop_resourceMforward_simple_rnn_1_while_simple_rnn_cell_4_matmul_readvariableop_resource_0"
forward_simple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_forward_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensorforward_simple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_forward_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensor_0"ќ
{forward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_forward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor}forward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_forward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :џџџџџџџџџ@:џџџџџџџџџ@: : : : : : 2
Cforward_simple_rnn_1/while/simple_rnn_cell_4/BiasAdd/ReadVariableOpCforward_simple_rnn_1/while/simple_rnn_cell_4/BiasAdd/ReadVariableOp2
Bforward_simple_rnn_1/while/simple_rnn_cell_4/MatMul/ReadVariableOpBforward_simple_rnn_1/while/simple_rnn_cell_4/MatMul/ReadVariableOp2
Dforward_simple_rnn_1/while/simple_rnn_cell_4/MatMul_1/ReadVariableOpDforward_simple_rnn_1/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
Ѕ
Р
J__inference_bidirectional_1_layer_call_and_return_conditional_losses_70092
inputs_0W
Eforward_simple_rnn_1_simple_rnn_cell_4_matmul_readvariableop_resource:@@T
Fforward_simple_rnn_1_simple_rnn_cell_4_biasadd_readvariableop_resource:@Y
Gforward_simple_rnn_1_simple_rnn_cell_4_matmul_1_readvariableop_resource:@@X
Fbackward_simple_rnn_1_simple_rnn_cell_5_matmul_readvariableop_resource:@@U
Gbackward_simple_rnn_1_simple_rnn_cell_5_biasadd_readvariableop_resource:@Z
Hbackward_simple_rnn_1_simple_rnn_cell_5_matmul_1_readvariableop_resource:@@
identityЂ>backward_simple_rnn_1/simple_rnn_cell_5/BiasAdd/ReadVariableOpЂ=backward_simple_rnn_1/simple_rnn_cell_5/MatMul/ReadVariableOpЂ?backward_simple_rnn_1/simple_rnn_cell_5/MatMul_1/ReadVariableOpЂbackward_simple_rnn_1/whileЂ=forward_simple_rnn_1/simple_rnn_cell_4/BiasAdd/ReadVariableOpЂ<forward_simple_rnn_1/simple_rnn_cell_4/MatMul/ReadVariableOpЂ>forward_simple_rnn_1/simple_rnn_cell_4/MatMul_1/ReadVariableOpЂforward_simple_rnn_1/whileR
forward_simple_rnn_1/ShapeShapeinputs_0*
T0*
_output_shapes
:r
(forward_simple_rnn_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*forward_simple_rnn_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*forward_simple_rnn_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:К
"forward_simple_rnn_1/strided_sliceStridedSlice#forward_simple_rnn_1/Shape:output:01forward_simple_rnn_1/strided_slice/stack:output:03forward_simple_rnn_1/strided_slice/stack_1:output:03forward_simple_rnn_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maske
#forward_simple_rnn_1/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@В
!forward_simple_rnn_1/zeros/packedPack+forward_simple_rnn_1/strided_slice:output:0,forward_simple_rnn_1/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:e
 forward_simple_rnn_1/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ћ
forward_simple_rnn_1/zerosFill*forward_simple_rnn_1/zeros/packed:output:0)forward_simple_rnn_1/zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@x
#forward_simple_rnn_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ћ
forward_simple_rnn_1/transpose	Transposeinputs_0,forward_simple_rnn_1/transpose/perm:output:0*
T0*=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџn
forward_simple_rnn_1/Shape_1Shape"forward_simple_rnn_1/transpose:y:0*
T0*
_output_shapes
:t
*forward_simple_rnn_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,forward_simple_rnn_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,forward_simple_rnn_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ф
$forward_simple_rnn_1/strided_slice_1StridedSlice%forward_simple_rnn_1/Shape_1:output:03forward_simple_rnn_1/strided_slice_1/stack:output:05forward_simple_rnn_1/strided_slice_1/stack_1:output:05forward_simple_rnn_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask{
0forward_simple_rnn_1/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџѓ
"forward_simple_rnn_1/TensorArrayV2TensorListReserve9forward_simple_rnn_1/TensorArrayV2/element_shape:output:0-forward_simple_rnn_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
Jforward_simple_rnn_1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџџџџџ
<forward_simple_rnn_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor"forward_simple_rnn_1/transpose:y:0Sforward_simple_rnn_1/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвt
*forward_simple_rnn_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,forward_simple_rnn_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,forward_simple_rnn_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
$forward_simple_rnn_1/strided_slice_2StridedSlice"forward_simple_rnn_1/transpose:y:03forward_simple_rnn_1/strided_slice_2/stack:output:05forward_simple_rnn_1/strided_slice_2/stack_1:output:05forward_simple_rnn_1/strided_slice_2/stack_2:output:0*
Index0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
shrink_axis_maskТ
<forward_simple_rnn_1/simple_rnn_cell_4/MatMul/ReadVariableOpReadVariableOpEforward_simple_rnn_1_simple_rnn_cell_4_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype0о
-forward_simple_rnn_1/simple_rnn_cell_4/MatMulMatMul-forward_simple_rnn_1/strided_slice_2:output:0Dforward_simple_rnn_1/simple_rnn_cell_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@Р
=forward_simple_rnn_1/simple_rnn_cell_4/BiasAdd/ReadVariableOpReadVariableOpFforward_simple_rnn_1_simple_rnn_cell_4_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0ы
.forward_simple_rnn_1/simple_rnn_cell_4/BiasAddBiasAdd7forward_simple_rnn_1/simple_rnn_cell_4/MatMul:product:0Eforward_simple_rnn_1/simple_rnn_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@Ц
>forward_simple_rnn_1/simple_rnn_cell_4/MatMul_1/ReadVariableOpReadVariableOpGforward_simple_rnn_1_simple_rnn_cell_4_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0и
/forward_simple_rnn_1/simple_rnn_cell_4/MatMul_1MatMul#forward_simple_rnn_1/zeros:output:0Fforward_simple_rnn_1/simple_rnn_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@й
*forward_simple_rnn_1/simple_rnn_cell_4/addAddV27forward_simple_rnn_1/simple_rnn_cell_4/BiasAdd:output:09forward_simple_rnn_1/simple_rnn_cell_4/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@
+forward_simple_rnn_1/simple_rnn_cell_4/TanhTanh.forward_simple_rnn_1/simple_rnn_cell_4/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@
2forward_simple_rnn_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   ї
$forward_simple_rnn_1/TensorArrayV2_1TensorListReserve;forward_simple_rnn_1/TensorArrayV2_1/element_shape:output:0-forward_simple_rnn_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв[
forward_simple_rnn_1/timeConst*
_output_shapes
: *
dtype0*
value	B : x
-forward_simple_rnn_1/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџi
'forward_simple_rnn_1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ч
forward_simple_rnn_1/whileWhile0forward_simple_rnn_1/while/loop_counter:output:06forward_simple_rnn_1/while/maximum_iterations:output:0"forward_simple_rnn_1/time:output:0-forward_simple_rnn_1/TensorArrayV2_1:handle:0#forward_simple_rnn_1/zeros:output:0-forward_simple_rnn_1/strided_slice_1:output:0Lforward_simple_rnn_1/TensorArrayUnstack/TensorListFromTensor:output_handle:0Eforward_simple_rnn_1_simple_rnn_cell_4_matmul_readvariableop_resourceFforward_simple_rnn_1_simple_rnn_cell_4_biasadd_readvariableop_resourceGforward_simple_rnn_1_simple_rnn_cell_4_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџ@: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *1
body)R'
%forward_simple_rnn_1_while_body_69918*1
cond)R'
%forward_simple_rnn_1_while_cond_69917*8
output_shapes'
%: : : : :џџџџџџџџџ@: : : : : *
parallel_iterations 
Eforward_simple_rnn_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   
7forward_simple_rnn_1/TensorArrayV2Stack/TensorListStackTensorListStack#forward_simple_rnn_1/while:output:3Nforward_simple_rnn_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@*
element_dtype0}
*forward_simple_rnn_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџv
,forward_simple_rnn_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: v
,forward_simple_rnn_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:№
$forward_simple_rnn_1/strided_slice_3StridedSlice@forward_simple_rnn_1/TensorArrayV2Stack/TensorListStack:tensor:03forward_simple_rnn_1/strided_slice_3/stack:output:05forward_simple_rnn_1/strided_slice_3/stack_1:output:05forward_simple_rnn_1/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@*
shrink_axis_maskz
%forward_simple_rnn_1/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          о
 forward_simple_rnn_1/transpose_1	Transpose@forward_simple_rnn_1/TensorArrayV2Stack/TensorListStack:tensor:0.forward_simple_rnn_1/transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@S
backward_simple_rnn_1/ShapeShapeinputs_0*
T0*
_output_shapes
:s
)backward_simple_rnn_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+backward_simple_rnn_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+backward_simple_rnn_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:П
#backward_simple_rnn_1/strided_sliceStridedSlice$backward_simple_rnn_1/Shape:output:02backward_simple_rnn_1/strided_slice/stack:output:04backward_simple_rnn_1/strided_slice/stack_1:output:04backward_simple_rnn_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
$backward_simple_rnn_1/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@Е
"backward_simple_rnn_1/zeros/packedPack,backward_simple_rnn_1/strided_slice:output:0-backward_simple_rnn_1/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:f
!backward_simple_rnn_1/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ў
backward_simple_rnn_1/zerosFill+backward_simple_rnn_1/zeros/packed:output:0*backward_simple_rnn_1/zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@y
$backward_simple_rnn_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ­
backward_simple_rnn_1/transpose	Transposeinputs_0-backward_simple_rnn_1/transpose/perm:output:0*
T0*=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџp
backward_simple_rnn_1/Shape_1Shape#backward_simple_rnn_1/transpose:y:0*
T0*
_output_shapes
:u
+backward_simple_rnn_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-backward_simple_rnn_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-backward_simple_rnn_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Щ
%backward_simple_rnn_1/strided_slice_1StridedSlice&backward_simple_rnn_1/Shape_1:output:04backward_simple_rnn_1/strided_slice_1/stack:output:06backward_simple_rnn_1/strided_slice_1/stack_1:output:06backward_simple_rnn_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask|
1backward_simple_rnn_1/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџі
#backward_simple_rnn_1/TensorArrayV2TensorListReserve:backward_simple_rnn_1/TensorArrayV2/element_shape:output:0.backward_simple_rnn_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвn
$backward_simple_rnn_1/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: Ш
backward_simple_rnn_1/ReverseV2	ReverseV2#backward_simple_rnn_1/transpose:y:0-backward_simple_rnn_1/ReverseV2/axis:output:0*
T0*=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
Kbackward_simple_rnn_1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџџџџџЇ
=backward_simple_rnn_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor(backward_simple_rnn_1/ReverseV2:output:0Tbackward_simple_rnn_1/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвu
+backward_simple_rnn_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-backward_simple_rnn_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-backward_simple_rnn_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:р
%backward_simple_rnn_1/strided_slice_2StridedSlice#backward_simple_rnn_1/transpose:y:04backward_simple_rnn_1/strided_slice_2/stack:output:06backward_simple_rnn_1/strided_slice_2/stack_1:output:06backward_simple_rnn_1/strided_slice_2/stack_2:output:0*
Index0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
shrink_axis_maskФ
=backward_simple_rnn_1/simple_rnn_cell_5/MatMul/ReadVariableOpReadVariableOpFbackward_simple_rnn_1_simple_rnn_cell_5_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype0с
.backward_simple_rnn_1/simple_rnn_cell_5/MatMulMatMul.backward_simple_rnn_1/strided_slice_2:output:0Ebackward_simple_rnn_1/simple_rnn_cell_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@Т
>backward_simple_rnn_1/simple_rnn_cell_5/BiasAdd/ReadVariableOpReadVariableOpGbackward_simple_rnn_1_simple_rnn_cell_5_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0ю
/backward_simple_rnn_1/simple_rnn_cell_5/BiasAddBiasAdd8backward_simple_rnn_1/simple_rnn_cell_5/MatMul:product:0Fbackward_simple_rnn_1/simple_rnn_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@Ш
?backward_simple_rnn_1/simple_rnn_cell_5/MatMul_1/ReadVariableOpReadVariableOpHbackward_simple_rnn_1_simple_rnn_cell_5_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0л
0backward_simple_rnn_1/simple_rnn_cell_5/MatMul_1MatMul$backward_simple_rnn_1/zeros:output:0Gbackward_simple_rnn_1/simple_rnn_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@м
+backward_simple_rnn_1/simple_rnn_cell_5/addAddV28backward_simple_rnn_1/simple_rnn_cell_5/BiasAdd:output:0:backward_simple_rnn_1/simple_rnn_cell_5/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@
,backward_simple_rnn_1/simple_rnn_cell_5/TanhTanh/backward_simple_rnn_1/simple_rnn_cell_5/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@
3backward_simple_rnn_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   њ
%backward_simple_rnn_1/TensorArrayV2_1TensorListReserve<backward_simple_rnn_1/TensorArrayV2_1/element_shape:output:0.backward_simple_rnn_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв\
backward_simple_rnn_1/timeConst*
_output_shapes
: *
dtype0*
value	B : y
.backward_simple_rnn_1/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџj
(backward_simple_rnn_1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : є
backward_simple_rnn_1/whileWhile1backward_simple_rnn_1/while/loop_counter:output:07backward_simple_rnn_1/while/maximum_iterations:output:0#backward_simple_rnn_1/time:output:0.backward_simple_rnn_1/TensorArrayV2_1:handle:0$backward_simple_rnn_1/zeros:output:0.backward_simple_rnn_1/strided_slice_1:output:0Mbackward_simple_rnn_1/TensorArrayUnstack/TensorListFromTensor:output_handle:0Fbackward_simple_rnn_1_simple_rnn_cell_5_matmul_readvariableop_resourceGbackward_simple_rnn_1_simple_rnn_cell_5_biasadd_readvariableop_resourceHbackward_simple_rnn_1_simple_rnn_cell_5_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџ@: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *2
body*R(
&backward_simple_rnn_1_while_body_70024*2
cond*R(
&backward_simple_rnn_1_while_cond_70023*8
output_shapes'
%: : : : :џџџџџџџџџ@: : : : : *
parallel_iterations 
Fbackward_simple_rnn_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   
8backward_simple_rnn_1/TensorArrayV2Stack/TensorListStackTensorListStack$backward_simple_rnn_1/while:output:3Obackward_simple_rnn_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@*
element_dtype0~
+backward_simple_rnn_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџw
-backward_simple_rnn_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: w
-backward_simple_rnn_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ѕ
%backward_simple_rnn_1/strided_slice_3StridedSliceAbackward_simple_rnn_1/TensorArrayV2Stack/TensorListStack:tensor:04backward_simple_rnn_1/strided_slice_3/stack:output:06backward_simple_rnn_1/strided_slice_3/stack_1:output:06backward_simple_rnn_1/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@*
shrink_axis_mask{
&backward_simple_rnn_1/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          с
!backward_simple_rnn_1/transpose_1	TransposeAbackward_simple_rnn_1/TensorArrayV2Stack/TensorListStack:tensor:0/backward_simple_rnn_1/transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :У
concatConcatV2-forward_simple_rnn_1/strided_slice_3:output:0.backward_simple_rnn_1/strided_slice_3:output:0concat/axis:output:0*
N*
T0*(
_output_shapes
:џџџџџџџџџ_
IdentityIdentityconcat:output:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџ
NoOpNoOp?^backward_simple_rnn_1/simple_rnn_cell_5/BiasAdd/ReadVariableOp>^backward_simple_rnn_1/simple_rnn_cell_5/MatMul/ReadVariableOp@^backward_simple_rnn_1/simple_rnn_cell_5/MatMul_1/ReadVariableOp^backward_simple_rnn_1/while>^forward_simple_rnn_1/simple_rnn_cell_4/BiasAdd/ReadVariableOp=^forward_simple_rnn_1/simple_rnn_cell_4/MatMul/ReadVariableOp?^forward_simple_rnn_1/simple_rnn_cell_4/MatMul_1/ReadVariableOp^forward_simple_rnn_1/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:'џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : : : 2
>backward_simple_rnn_1/simple_rnn_cell_5/BiasAdd/ReadVariableOp>backward_simple_rnn_1/simple_rnn_cell_5/BiasAdd/ReadVariableOp2~
=backward_simple_rnn_1/simple_rnn_cell_5/MatMul/ReadVariableOp=backward_simple_rnn_1/simple_rnn_cell_5/MatMul/ReadVariableOp2
?backward_simple_rnn_1/simple_rnn_cell_5/MatMul_1/ReadVariableOp?backward_simple_rnn_1/simple_rnn_cell_5/MatMul_1/ReadVariableOp2:
backward_simple_rnn_1/whilebackward_simple_rnn_1/while2~
=forward_simple_rnn_1/simple_rnn_cell_4/BiasAdd/ReadVariableOp=forward_simple_rnn_1/simple_rnn_cell_4/BiasAdd/ReadVariableOp2|
<forward_simple_rnn_1/simple_rnn_cell_4/MatMul/ReadVariableOp<forward_simple_rnn_1/simple_rnn_cell_4/MatMul/ReadVariableOp2
>forward_simple_rnn_1/simple_rnn_cell_4/MatMul_1/ReadVariableOp>forward_simple_rnn_1/simple_rnn_cell_4/MatMul_1/ReadVariableOp28
forward_simple_rnn_1/whileforward_simple_rnn_1/while:g c
=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
"
_user_specified_name
inputs/0
Љ,
Ч
while_body_70751
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0J
8while_simple_rnn_cell_4_matmul_readvariableop_resource_0:@@G
9while_simple_rnn_cell_4_biasadd_readvariableop_resource_0:@L
:while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0:@@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorH
6while_simple_rnn_cell_4_matmul_readvariableop_resource:@@E
7while_simple_rnn_cell_4_biasadd_readvariableop_resource:@J
8while_simple_rnn_cell_4_matmul_1_readvariableop_resource:@@Ђ.while/simple_rnn_cell_4/BiasAdd/ReadVariableOpЂ-while/simple_rnn_cell_4/MatMul/ReadVariableOpЂ/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ@*
element_dtype0І
-while/simple_rnn_cell_4/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_4_matmul_readvariableop_resource_0*
_output_shapes

:@@*
dtype0У
while/simple_rnn_cell_4/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@Є
.while/simple_rnn_cell_4/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_4_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0О
while/simple_rnn_cell_4/BiasAddBiasAdd(while/simple_rnn_cell_4/MatMul:product:06while/simple_rnn_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@Њ
/while/simple_rnn_cell_4/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype0Њ
 while/simple_rnn_cell_4/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@Ќ
while/simple_rnn_cell_4/addAddV2(while/simple_rnn_cell_4/BiasAdd:output:0*while/simple_rnn_cell_4/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@w
while/simple_rnn_cell_4/TanhTanhwhile/simple_rnn_cell_4/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@Щ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder while/simple_rnn_cell_4/Tanh:y:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: }
while/Identity_4Identity while/simple_rnn_cell_4/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@п

while/NoOpNoOp/^while/simple_rnn_cell_4/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_4/MatMul/ReadVariableOp0^while/simple_rnn_cell_4/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_4_biasadd_readvariableop_resource9while_simple_rnn_cell_4_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_4_matmul_1_readvariableop_resource:while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_4_matmul_readvariableop_resource8while_simple_rnn_cell_4_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :џџџџџџџџџ@: : : : : 2`
.while/simple_rnn_cell_4/BiasAdd/ReadVariableOp.while/simple_rnn_cell_4/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_4/MatMul/ReadVariableOp-while/simple_rnn_cell_4/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
: 
Ѕ
Р
J__inference_bidirectional_1_layer_call_and_return_conditional_losses_69876
inputs_0W
Eforward_simple_rnn_1_simple_rnn_cell_4_matmul_readvariableop_resource:@@T
Fforward_simple_rnn_1_simple_rnn_cell_4_biasadd_readvariableop_resource:@Y
Gforward_simple_rnn_1_simple_rnn_cell_4_matmul_1_readvariableop_resource:@@X
Fbackward_simple_rnn_1_simple_rnn_cell_5_matmul_readvariableop_resource:@@U
Gbackward_simple_rnn_1_simple_rnn_cell_5_biasadd_readvariableop_resource:@Z
Hbackward_simple_rnn_1_simple_rnn_cell_5_matmul_1_readvariableop_resource:@@
identityЂ>backward_simple_rnn_1/simple_rnn_cell_5/BiasAdd/ReadVariableOpЂ=backward_simple_rnn_1/simple_rnn_cell_5/MatMul/ReadVariableOpЂ?backward_simple_rnn_1/simple_rnn_cell_5/MatMul_1/ReadVariableOpЂbackward_simple_rnn_1/whileЂ=forward_simple_rnn_1/simple_rnn_cell_4/BiasAdd/ReadVariableOpЂ<forward_simple_rnn_1/simple_rnn_cell_4/MatMul/ReadVariableOpЂ>forward_simple_rnn_1/simple_rnn_cell_4/MatMul_1/ReadVariableOpЂforward_simple_rnn_1/whileR
forward_simple_rnn_1/ShapeShapeinputs_0*
T0*
_output_shapes
:r
(forward_simple_rnn_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*forward_simple_rnn_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*forward_simple_rnn_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:К
"forward_simple_rnn_1/strided_sliceStridedSlice#forward_simple_rnn_1/Shape:output:01forward_simple_rnn_1/strided_slice/stack:output:03forward_simple_rnn_1/strided_slice/stack_1:output:03forward_simple_rnn_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maske
#forward_simple_rnn_1/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@В
!forward_simple_rnn_1/zeros/packedPack+forward_simple_rnn_1/strided_slice:output:0,forward_simple_rnn_1/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:e
 forward_simple_rnn_1/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ћ
forward_simple_rnn_1/zerosFill*forward_simple_rnn_1/zeros/packed:output:0)forward_simple_rnn_1/zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@x
#forward_simple_rnn_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ћ
forward_simple_rnn_1/transpose	Transposeinputs_0,forward_simple_rnn_1/transpose/perm:output:0*
T0*=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџn
forward_simple_rnn_1/Shape_1Shape"forward_simple_rnn_1/transpose:y:0*
T0*
_output_shapes
:t
*forward_simple_rnn_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,forward_simple_rnn_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,forward_simple_rnn_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ф
$forward_simple_rnn_1/strided_slice_1StridedSlice%forward_simple_rnn_1/Shape_1:output:03forward_simple_rnn_1/strided_slice_1/stack:output:05forward_simple_rnn_1/strided_slice_1/stack_1:output:05forward_simple_rnn_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask{
0forward_simple_rnn_1/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџѓ
"forward_simple_rnn_1/TensorArrayV2TensorListReserve9forward_simple_rnn_1/TensorArrayV2/element_shape:output:0-forward_simple_rnn_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
Jforward_simple_rnn_1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџџџџџ
<forward_simple_rnn_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor"forward_simple_rnn_1/transpose:y:0Sforward_simple_rnn_1/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвt
*forward_simple_rnn_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,forward_simple_rnn_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,forward_simple_rnn_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
$forward_simple_rnn_1/strided_slice_2StridedSlice"forward_simple_rnn_1/transpose:y:03forward_simple_rnn_1/strided_slice_2/stack:output:05forward_simple_rnn_1/strided_slice_2/stack_1:output:05forward_simple_rnn_1/strided_slice_2/stack_2:output:0*
Index0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
shrink_axis_maskТ
<forward_simple_rnn_1/simple_rnn_cell_4/MatMul/ReadVariableOpReadVariableOpEforward_simple_rnn_1_simple_rnn_cell_4_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype0о
-forward_simple_rnn_1/simple_rnn_cell_4/MatMulMatMul-forward_simple_rnn_1/strided_slice_2:output:0Dforward_simple_rnn_1/simple_rnn_cell_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@Р
=forward_simple_rnn_1/simple_rnn_cell_4/BiasAdd/ReadVariableOpReadVariableOpFforward_simple_rnn_1_simple_rnn_cell_4_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0ы
.forward_simple_rnn_1/simple_rnn_cell_4/BiasAddBiasAdd7forward_simple_rnn_1/simple_rnn_cell_4/MatMul:product:0Eforward_simple_rnn_1/simple_rnn_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@Ц
>forward_simple_rnn_1/simple_rnn_cell_4/MatMul_1/ReadVariableOpReadVariableOpGforward_simple_rnn_1_simple_rnn_cell_4_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0и
/forward_simple_rnn_1/simple_rnn_cell_4/MatMul_1MatMul#forward_simple_rnn_1/zeros:output:0Fforward_simple_rnn_1/simple_rnn_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@й
*forward_simple_rnn_1/simple_rnn_cell_4/addAddV27forward_simple_rnn_1/simple_rnn_cell_4/BiasAdd:output:09forward_simple_rnn_1/simple_rnn_cell_4/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@
+forward_simple_rnn_1/simple_rnn_cell_4/TanhTanh.forward_simple_rnn_1/simple_rnn_cell_4/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@
2forward_simple_rnn_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   ї
$forward_simple_rnn_1/TensorArrayV2_1TensorListReserve;forward_simple_rnn_1/TensorArrayV2_1/element_shape:output:0-forward_simple_rnn_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв[
forward_simple_rnn_1/timeConst*
_output_shapes
: *
dtype0*
value	B : x
-forward_simple_rnn_1/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџi
'forward_simple_rnn_1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ч
forward_simple_rnn_1/whileWhile0forward_simple_rnn_1/while/loop_counter:output:06forward_simple_rnn_1/while/maximum_iterations:output:0"forward_simple_rnn_1/time:output:0-forward_simple_rnn_1/TensorArrayV2_1:handle:0#forward_simple_rnn_1/zeros:output:0-forward_simple_rnn_1/strided_slice_1:output:0Lforward_simple_rnn_1/TensorArrayUnstack/TensorListFromTensor:output_handle:0Eforward_simple_rnn_1_simple_rnn_cell_4_matmul_readvariableop_resourceFforward_simple_rnn_1_simple_rnn_cell_4_biasadd_readvariableop_resourceGforward_simple_rnn_1_simple_rnn_cell_4_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџ@: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *1
body)R'
%forward_simple_rnn_1_while_body_69702*1
cond)R'
%forward_simple_rnn_1_while_cond_69701*8
output_shapes'
%: : : : :џџџџџџџџџ@: : : : : *
parallel_iterations 
Eforward_simple_rnn_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   
7forward_simple_rnn_1/TensorArrayV2Stack/TensorListStackTensorListStack#forward_simple_rnn_1/while:output:3Nforward_simple_rnn_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@*
element_dtype0}
*forward_simple_rnn_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџv
,forward_simple_rnn_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: v
,forward_simple_rnn_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:№
$forward_simple_rnn_1/strided_slice_3StridedSlice@forward_simple_rnn_1/TensorArrayV2Stack/TensorListStack:tensor:03forward_simple_rnn_1/strided_slice_3/stack:output:05forward_simple_rnn_1/strided_slice_3/stack_1:output:05forward_simple_rnn_1/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@*
shrink_axis_maskz
%forward_simple_rnn_1/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          о
 forward_simple_rnn_1/transpose_1	Transpose@forward_simple_rnn_1/TensorArrayV2Stack/TensorListStack:tensor:0.forward_simple_rnn_1/transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@S
backward_simple_rnn_1/ShapeShapeinputs_0*
T0*
_output_shapes
:s
)backward_simple_rnn_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+backward_simple_rnn_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+backward_simple_rnn_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:П
#backward_simple_rnn_1/strided_sliceStridedSlice$backward_simple_rnn_1/Shape:output:02backward_simple_rnn_1/strided_slice/stack:output:04backward_simple_rnn_1/strided_slice/stack_1:output:04backward_simple_rnn_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
$backward_simple_rnn_1/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@Е
"backward_simple_rnn_1/zeros/packedPack,backward_simple_rnn_1/strided_slice:output:0-backward_simple_rnn_1/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:f
!backward_simple_rnn_1/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ў
backward_simple_rnn_1/zerosFill+backward_simple_rnn_1/zeros/packed:output:0*backward_simple_rnn_1/zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@y
$backward_simple_rnn_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ­
backward_simple_rnn_1/transpose	Transposeinputs_0-backward_simple_rnn_1/transpose/perm:output:0*
T0*=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџp
backward_simple_rnn_1/Shape_1Shape#backward_simple_rnn_1/transpose:y:0*
T0*
_output_shapes
:u
+backward_simple_rnn_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-backward_simple_rnn_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-backward_simple_rnn_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Щ
%backward_simple_rnn_1/strided_slice_1StridedSlice&backward_simple_rnn_1/Shape_1:output:04backward_simple_rnn_1/strided_slice_1/stack:output:06backward_simple_rnn_1/strided_slice_1/stack_1:output:06backward_simple_rnn_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask|
1backward_simple_rnn_1/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџі
#backward_simple_rnn_1/TensorArrayV2TensorListReserve:backward_simple_rnn_1/TensorArrayV2/element_shape:output:0.backward_simple_rnn_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвn
$backward_simple_rnn_1/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: Ш
backward_simple_rnn_1/ReverseV2	ReverseV2#backward_simple_rnn_1/transpose:y:0-backward_simple_rnn_1/ReverseV2/axis:output:0*
T0*=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
Kbackward_simple_rnn_1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџџџџџЇ
=backward_simple_rnn_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor(backward_simple_rnn_1/ReverseV2:output:0Tbackward_simple_rnn_1/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвu
+backward_simple_rnn_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-backward_simple_rnn_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-backward_simple_rnn_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:р
%backward_simple_rnn_1/strided_slice_2StridedSlice#backward_simple_rnn_1/transpose:y:04backward_simple_rnn_1/strided_slice_2/stack:output:06backward_simple_rnn_1/strided_slice_2/stack_1:output:06backward_simple_rnn_1/strided_slice_2/stack_2:output:0*
Index0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
shrink_axis_maskФ
=backward_simple_rnn_1/simple_rnn_cell_5/MatMul/ReadVariableOpReadVariableOpFbackward_simple_rnn_1_simple_rnn_cell_5_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype0с
.backward_simple_rnn_1/simple_rnn_cell_5/MatMulMatMul.backward_simple_rnn_1/strided_slice_2:output:0Ebackward_simple_rnn_1/simple_rnn_cell_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@Т
>backward_simple_rnn_1/simple_rnn_cell_5/BiasAdd/ReadVariableOpReadVariableOpGbackward_simple_rnn_1_simple_rnn_cell_5_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0ю
/backward_simple_rnn_1/simple_rnn_cell_5/BiasAddBiasAdd8backward_simple_rnn_1/simple_rnn_cell_5/MatMul:product:0Fbackward_simple_rnn_1/simple_rnn_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@Ш
?backward_simple_rnn_1/simple_rnn_cell_5/MatMul_1/ReadVariableOpReadVariableOpHbackward_simple_rnn_1_simple_rnn_cell_5_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0л
0backward_simple_rnn_1/simple_rnn_cell_5/MatMul_1MatMul$backward_simple_rnn_1/zeros:output:0Gbackward_simple_rnn_1/simple_rnn_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@м
+backward_simple_rnn_1/simple_rnn_cell_5/addAddV28backward_simple_rnn_1/simple_rnn_cell_5/BiasAdd:output:0:backward_simple_rnn_1/simple_rnn_cell_5/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@
,backward_simple_rnn_1/simple_rnn_cell_5/TanhTanh/backward_simple_rnn_1/simple_rnn_cell_5/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@
3backward_simple_rnn_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   њ
%backward_simple_rnn_1/TensorArrayV2_1TensorListReserve<backward_simple_rnn_1/TensorArrayV2_1/element_shape:output:0.backward_simple_rnn_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв\
backward_simple_rnn_1/timeConst*
_output_shapes
: *
dtype0*
value	B : y
.backward_simple_rnn_1/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџj
(backward_simple_rnn_1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : є
backward_simple_rnn_1/whileWhile1backward_simple_rnn_1/while/loop_counter:output:07backward_simple_rnn_1/while/maximum_iterations:output:0#backward_simple_rnn_1/time:output:0.backward_simple_rnn_1/TensorArrayV2_1:handle:0$backward_simple_rnn_1/zeros:output:0.backward_simple_rnn_1/strided_slice_1:output:0Mbackward_simple_rnn_1/TensorArrayUnstack/TensorListFromTensor:output_handle:0Fbackward_simple_rnn_1_simple_rnn_cell_5_matmul_readvariableop_resourceGbackward_simple_rnn_1_simple_rnn_cell_5_biasadd_readvariableop_resourceHbackward_simple_rnn_1_simple_rnn_cell_5_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџ@: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *2
body*R(
&backward_simple_rnn_1_while_body_69808*2
cond*R(
&backward_simple_rnn_1_while_cond_69807*8
output_shapes'
%: : : : :џџџџџџџџџ@: : : : : *
parallel_iterations 
Fbackward_simple_rnn_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   
8backward_simple_rnn_1/TensorArrayV2Stack/TensorListStackTensorListStack$backward_simple_rnn_1/while:output:3Obackward_simple_rnn_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@*
element_dtype0~
+backward_simple_rnn_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџw
-backward_simple_rnn_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: w
-backward_simple_rnn_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ѕ
%backward_simple_rnn_1/strided_slice_3StridedSliceAbackward_simple_rnn_1/TensorArrayV2Stack/TensorListStack:tensor:04backward_simple_rnn_1/strided_slice_3/stack:output:06backward_simple_rnn_1/strided_slice_3/stack_1:output:06backward_simple_rnn_1/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@*
shrink_axis_mask{
&backward_simple_rnn_1/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          с
!backward_simple_rnn_1/transpose_1	TransposeAbackward_simple_rnn_1/TensorArrayV2Stack/TensorListStack:tensor:0/backward_simple_rnn_1/transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :У
concatConcatV2-forward_simple_rnn_1/strided_slice_3:output:0.backward_simple_rnn_1/strided_slice_3:output:0concat/axis:output:0*
N*
T0*(
_output_shapes
:џџџџџџџџџ_
IdentityIdentityconcat:output:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџ
NoOpNoOp?^backward_simple_rnn_1/simple_rnn_cell_5/BiasAdd/ReadVariableOp>^backward_simple_rnn_1/simple_rnn_cell_5/MatMul/ReadVariableOp@^backward_simple_rnn_1/simple_rnn_cell_5/MatMul_1/ReadVariableOp^backward_simple_rnn_1/while>^forward_simple_rnn_1/simple_rnn_cell_4/BiasAdd/ReadVariableOp=^forward_simple_rnn_1/simple_rnn_cell_4/MatMul/ReadVariableOp?^forward_simple_rnn_1/simple_rnn_cell_4/MatMul_1/ReadVariableOp^forward_simple_rnn_1/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:'џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : : : 2
>backward_simple_rnn_1/simple_rnn_cell_5/BiasAdd/ReadVariableOp>backward_simple_rnn_1/simple_rnn_cell_5/BiasAdd/ReadVariableOp2~
=backward_simple_rnn_1/simple_rnn_cell_5/MatMul/ReadVariableOp=backward_simple_rnn_1/simple_rnn_cell_5/MatMul/ReadVariableOp2
?backward_simple_rnn_1/simple_rnn_cell_5/MatMul_1/ReadVariableOp?backward_simple_rnn_1/simple_rnn_cell_5/MatMul_1/ReadVariableOp2:
backward_simple_rnn_1/whilebackward_simple_rnn_1/while2~
=forward_simple_rnn_1/simple_rnn_cell_4/BiasAdd/ReadVariableOp=forward_simple_rnn_1/simple_rnn_cell_4/BiasAdd/ReadVariableOp2|
<forward_simple_rnn_1/simple_rnn_cell_4/MatMul/ReadVariableOp<forward_simple_rnn_1/simple_rnn_cell_4/MatMul/ReadVariableOp2
>forward_simple_rnn_1/simple_rnn_cell_4/MatMul_1/ReadVariableOp>forward_simple_rnn_1/simple_rnn_cell_4/MatMul_1/ReadVariableOp28
forward_simple_rnn_1/whileforward_simple_rnn_1/while:g c
=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
"
_user_specified_name
inputs/0
Љ,
Ч
while_body_70859
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0J
8while_simple_rnn_cell_4_matmul_readvariableop_resource_0:@@G
9while_simple_rnn_cell_4_biasadd_readvariableop_resource_0:@L
:while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0:@@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorH
6while_simple_rnn_cell_4_matmul_readvariableop_resource:@@E
7while_simple_rnn_cell_4_biasadd_readvariableop_resource:@J
8while_simple_rnn_cell_4_matmul_1_readvariableop_resource:@@Ђ.while/simple_rnn_cell_4/BiasAdd/ReadVariableOpЂ-while/simple_rnn_cell_4/MatMul/ReadVariableOpЂ/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ@*
element_dtype0І
-while/simple_rnn_cell_4/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_4_matmul_readvariableop_resource_0*
_output_shapes

:@@*
dtype0У
while/simple_rnn_cell_4/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@Є
.while/simple_rnn_cell_4/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_4_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0О
while/simple_rnn_cell_4/BiasAddBiasAdd(while/simple_rnn_cell_4/MatMul:product:06while/simple_rnn_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@Њ
/while/simple_rnn_cell_4/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype0Њ
 while/simple_rnn_cell_4/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@Ќ
while/simple_rnn_cell_4/addAddV2(while/simple_rnn_cell_4/BiasAdd:output:0*while/simple_rnn_cell_4/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@w
while/simple_rnn_cell_4/TanhTanhwhile/simple_rnn_cell_4/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@Щ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder while/simple_rnn_cell_4/Tanh:y:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: }
while/Identity_4Identity while/simple_rnn_cell_4/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@п

while/NoOpNoOp/^while/simple_rnn_cell_4/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_4/MatMul/ReadVariableOp0^while/simple_rnn_cell_4/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_4_biasadd_readvariableop_resource9while_simple_rnn_cell_4_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_4_matmul_1_readvariableop_resource:while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_4_matmul_readvariableop_resource8while_simple_rnn_cell_4_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :џџџџџџџџџ@: : : : : 2`
.while/simple_rnn_cell_4/BiasAdd/ReadVariableOp.while/simple_rnn_cell_4/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_4/MatMul/ReadVariableOp-while/simple_rnn_cell_4/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
: 
U
І
%forward_simple_rnn_1_while_body_70411F
Bforward_simple_rnn_1_while_forward_simple_rnn_1_while_loop_counterL
Hforward_simple_rnn_1_while_forward_simple_rnn_1_while_maximum_iterations*
&forward_simple_rnn_1_while_placeholder,
(forward_simple_rnn_1_while_placeholder_1,
(forward_simple_rnn_1_while_placeholder_2,
(forward_simple_rnn_1_while_placeholder_3E
Aforward_simple_rnn_1_while_forward_simple_rnn_1_strided_slice_1_0
}forward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_forward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0
forward_simple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_forward_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensor_0_
Mforward_simple_rnn_1_while_simple_rnn_cell_4_matmul_readvariableop_resource_0:@@\
Nforward_simple_rnn_1_while_simple_rnn_cell_4_biasadd_readvariableop_resource_0:@a
Oforward_simple_rnn_1_while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0:@@'
#forward_simple_rnn_1_while_identity)
%forward_simple_rnn_1_while_identity_1)
%forward_simple_rnn_1_while_identity_2)
%forward_simple_rnn_1_while_identity_3)
%forward_simple_rnn_1_while_identity_4)
%forward_simple_rnn_1_while_identity_5C
?forward_simple_rnn_1_while_forward_simple_rnn_1_strided_slice_1
{forward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_forward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor
forward_simple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_forward_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensor]
Kforward_simple_rnn_1_while_simple_rnn_cell_4_matmul_readvariableop_resource:@@Z
Lforward_simple_rnn_1_while_simple_rnn_cell_4_biasadd_readvariableop_resource:@_
Mforward_simple_rnn_1_while_simple_rnn_cell_4_matmul_1_readvariableop_resource:@@ЂCforward_simple_rnn_1/while/simple_rnn_cell_4/BiasAdd/ReadVariableOpЂBforward_simple_rnn_1/while/simple_rnn_cell_4/MatMul/ReadVariableOpЂDforward_simple_rnn_1/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp
Lforward_simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   
>forward_simple_rnn_1/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem}forward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_forward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0&forward_simple_rnn_1_while_placeholderUforward_simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ@*
element_dtype0
Nforward_simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   
@forward_simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItemTensorListGetItemforward_simple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_forward_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensor_0&forward_simple_rnn_1_while_placeholderWforward_simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0
а
Bforward_simple_rnn_1/while/simple_rnn_cell_4/MatMul/ReadVariableOpReadVariableOpMforward_simple_rnn_1_while_simple_rnn_cell_4_matmul_readvariableop_resource_0*
_output_shapes

:@@*
dtype0
3forward_simple_rnn_1/while/simple_rnn_cell_4/MatMulMatMulEforward_simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem:item:0Jforward_simple_rnn_1/while/simple_rnn_cell_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@Ю
Cforward_simple_rnn_1/while/simple_rnn_cell_4/BiasAdd/ReadVariableOpReadVariableOpNforward_simple_rnn_1_while_simple_rnn_cell_4_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0§
4forward_simple_rnn_1/while/simple_rnn_cell_4/BiasAddBiasAdd=forward_simple_rnn_1/while/simple_rnn_cell_4/MatMul:product:0Kforward_simple_rnn_1/while/simple_rnn_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@д
Dforward_simple_rnn_1/while/simple_rnn_cell_4/MatMul_1/ReadVariableOpReadVariableOpOforward_simple_rnn_1_while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype0щ
5forward_simple_rnn_1/while/simple_rnn_cell_4/MatMul_1MatMul(forward_simple_rnn_1_while_placeholder_3Lforward_simple_rnn_1/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@ы
0forward_simple_rnn_1/while/simple_rnn_cell_4/addAddV2=forward_simple_rnn_1/while/simple_rnn_cell_4/BiasAdd:output:0?forward_simple_rnn_1/while/simple_rnn_cell_4/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@Ё
1forward_simple_rnn_1/while/simple_rnn_cell_4/TanhTanh4forward_simple_rnn_1/while/simple_rnn_cell_4/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@z
)forward_simple_rnn_1/while/Tile/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      ж
forward_simple_rnn_1/while/TileTileGforward_simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItem:item:02forward_simple_rnn_1/while/Tile/multiples:output:0*
T0
*'
_output_shapes
:џџџџџџџџџь
#forward_simple_rnn_1/while/SelectV2SelectV2(forward_simple_rnn_1/while/Tile:output:05forward_simple_rnn_1/while/simple_rnn_cell_4/Tanh:y:0(forward_simple_rnn_1_while_placeholder_2*
T0*'
_output_shapes
:џџџџџџџџџ@|
+forward_simple_rnn_1/while/Tile_1/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      к
!forward_simple_rnn_1/while/Tile_1TileGforward_simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItem:item:04forward_simple_rnn_1/while/Tile_1/multiples:output:0*
T0
*'
_output_shapes
:џџџџџџџџџ№
%forward_simple_rnn_1/while/SelectV2_1SelectV2*forward_simple_rnn_1/while/Tile_1:output:05forward_simple_rnn_1/while/simple_rnn_cell_4/Tanh:y:0(forward_simple_rnn_1_while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ@
?forward_simple_rnn_1/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem(forward_simple_rnn_1_while_placeholder_1&forward_simple_rnn_1_while_placeholder,forward_simple_rnn_1/while/SelectV2:output:0*
_output_shapes
: *
element_dtype0:щшвb
 forward_simple_rnn_1/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
forward_simple_rnn_1/while/addAddV2&forward_simple_rnn_1_while_placeholder)forward_simple_rnn_1/while/add/y:output:0*
T0*
_output_shapes
: d
"forward_simple_rnn_1/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Л
 forward_simple_rnn_1/while/add_1AddV2Bforward_simple_rnn_1_while_forward_simple_rnn_1_while_loop_counter+forward_simple_rnn_1/while/add_1/y:output:0*
T0*
_output_shapes
: 
#forward_simple_rnn_1/while/IdentityIdentity$forward_simple_rnn_1/while/add_1:z:0 ^forward_simple_rnn_1/while/NoOp*
T0*
_output_shapes
: О
%forward_simple_rnn_1/while/Identity_1IdentityHforward_simple_rnn_1_while_forward_simple_rnn_1_while_maximum_iterations ^forward_simple_rnn_1/while/NoOp*
T0*
_output_shapes
: 
%forward_simple_rnn_1/while/Identity_2Identity"forward_simple_rnn_1/while/add:z:0 ^forward_simple_rnn_1/while/NoOp*
T0*
_output_shapes
: Х
%forward_simple_rnn_1/while/Identity_3IdentityOforward_simple_rnn_1/while/TensorArrayV2Write/TensorListSetItem:output_handle:0 ^forward_simple_rnn_1/while/NoOp*
T0*
_output_shapes
: Г
%forward_simple_rnn_1/while/Identity_4Identity,forward_simple_rnn_1/while/SelectV2:output:0 ^forward_simple_rnn_1/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@Е
%forward_simple_rnn_1/while/Identity_5Identity.forward_simple_rnn_1/while/SelectV2_1:output:0 ^forward_simple_rnn_1/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@Г
forward_simple_rnn_1/while/NoOpNoOpD^forward_simple_rnn_1/while/simple_rnn_cell_4/BiasAdd/ReadVariableOpC^forward_simple_rnn_1/while/simple_rnn_cell_4/MatMul/ReadVariableOpE^forward_simple_rnn_1/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
?forward_simple_rnn_1_while_forward_simple_rnn_1_strided_slice_1Aforward_simple_rnn_1_while_forward_simple_rnn_1_strided_slice_1_0"S
#forward_simple_rnn_1_while_identity,forward_simple_rnn_1/while/Identity:output:0"W
%forward_simple_rnn_1_while_identity_1.forward_simple_rnn_1/while/Identity_1:output:0"W
%forward_simple_rnn_1_while_identity_2.forward_simple_rnn_1/while/Identity_2:output:0"W
%forward_simple_rnn_1_while_identity_3.forward_simple_rnn_1/while/Identity_3:output:0"W
%forward_simple_rnn_1_while_identity_4.forward_simple_rnn_1/while/Identity_4:output:0"W
%forward_simple_rnn_1_while_identity_5.forward_simple_rnn_1/while/Identity_5:output:0"
Lforward_simple_rnn_1_while_simple_rnn_cell_4_biasadd_readvariableop_resourceNforward_simple_rnn_1_while_simple_rnn_cell_4_biasadd_readvariableop_resource_0" 
Mforward_simple_rnn_1_while_simple_rnn_cell_4_matmul_1_readvariableop_resourceOforward_simple_rnn_1_while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0"
Kforward_simple_rnn_1_while_simple_rnn_cell_4_matmul_readvariableop_resourceMforward_simple_rnn_1_while_simple_rnn_cell_4_matmul_readvariableop_resource_0"
forward_simple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_forward_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensorforward_simple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_forward_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensor_0"ќ
{forward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_forward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor}forward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_forward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :џџџџџџџџџ@:џџџџџџџџџ@: : : : : : 2
Cforward_simple_rnn_1/while/simple_rnn_cell_4/BiasAdd/ReadVariableOpCforward_simple_rnn_1/while/simple_rnn_cell_4/BiasAdd/ReadVariableOp2
Bforward_simple_rnn_1/while/simple_rnn_cell_4/MatMul/ReadVariableOpBforward_simple_rnn_1/while/simple_rnn_cell_4/MatMul/ReadVariableOp2
Dforward_simple_rnn_1/while/simple_rnn_cell_4/MatMul_1/ReadVariableOpDforward_simple_rnn_1/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
КV
Ь
&backward_simple_rnn_1_while_body_68627H
Dbackward_simple_rnn_1_while_backward_simple_rnn_1_while_loop_counterN
Jbackward_simple_rnn_1_while_backward_simple_rnn_1_while_maximum_iterations+
'backward_simple_rnn_1_while_placeholder-
)backward_simple_rnn_1_while_placeholder_1-
)backward_simple_rnn_1_while_placeholder_2-
)backward_simple_rnn_1_while_placeholder_3G
Cbackward_simple_rnn_1_while_backward_simple_rnn_1_strided_slice_1_0
backward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_backward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0
backward_simple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_backward_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensor_0`
Nbackward_simple_rnn_1_while_simple_rnn_cell_5_matmul_readvariableop_resource_0:@@]
Obackward_simple_rnn_1_while_simple_rnn_cell_5_biasadd_readvariableop_resource_0:@b
Pbackward_simple_rnn_1_while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0:@@(
$backward_simple_rnn_1_while_identity*
&backward_simple_rnn_1_while_identity_1*
&backward_simple_rnn_1_while_identity_2*
&backward_simple_rnn_1_while_identity_3*
&backward_simple_rnn_1_while_identity_4*
&backward_simple_rnn_1_while_identity_5E
Abackward_simple_rnn_1_while_backward_simple_rnn_1_strided_slice_1
}backward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_backward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor
backward_simple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_backward_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensor^
Lbackward_simple_rnn_1_while_simple_rnn_cell_5_matmul_readvariableop_resource:@@[
Mbackward_simple_rnn_1_while_simple_rnn_cell_5_biasadd_readvariableop_resource:@`
Nbackward_simple_rnn_1_while_simple_rnn_cell_5_matmul_1_readvariableop_resource:@@ЂDbackward_simple_rnn_1/while/simple_rnn_cell_5/BiasAdd/ReadVariableOpЂCbackward_simple_rnn_1/while/simple_rnn_cell_5/MatMul/ReadVariableOpЂEbackward_simple_rnn_1/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp
Mbackward_simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   
?backward_simple_rnn_1/while/TensorArrayV2Read/TensorListGetItemTensorListGetItembackward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_backward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0'backward_simple_rnn_1_while_placeholderVbackward_simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ@*
element_dtype0 
Obackward_simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   
Abackward_simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItemTensorListGetItembackward_simple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_backward_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensor_0'backward_simple_rnn_1_while_placeholderXbackward_simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0
в
Cbackward_simple_rnn_1/while/simple_rnn_cell_5/MatMul/ReadVariableOpReadVariableOpNbackward_simple_rnn_1_while_simple_rnn_cell_5_matmul_readvariableop_resource_0*
_output_shapes

:@@*
dtype0
4backward_simple_rnn_1/while/simple_rnn_cell_5/MatMulMatMulFbackward_simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem:item:0Kbackward_simple_rnn_1/while/simple_rnn_cell_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@а
Dbackward_simple_rnn_1/while/simple_rnn_cell_5/BiasAdd/ReadVariableOpReadVariableOpObackward_simple_rnn_1_while_simple_rnn_cell_5_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0
5backward_simple_rnn_1/while/simple_rnn_cell_5/BiasAddBiasAdd>backward_simple_rnn_1/while/simple_rnn_cell_5/MatMul:product:0Lbackward_simple_rnn_1/while/simple_rnn_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@ж
Ebackward_simple_rnn_1/while/simple_rnn_cell_5/MatMul_1/ReadVariableOpReadVariableOpPbackward_simple_rnn_1_while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype0ь
6backward_simple_rnn_1/while/simple_rnn_cell_5/MatMul_1MatMul)backward_simple_rnn_1_while_placeholder_3Mbackward_simple_rnn_1/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@ю
1backward_simple_rnn_1/while/simple_rnn_cell_5/addAddV2>backward_simple_rnn_1/while/simple_rnn_cell_5/BiasAdd:output:0@backward_simple_rnn_1/while/simple_rnn_cell_5/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@Ѓ
2backward_simple_rnn_1/while/simple_rnn_cell_5/TanhTanh5backward_simple_rnn_1/while/simple_rnn_cell_5/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@{
*backward_simple_rnn_1/while/Tile/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      й
 backward_simple_rnn_1/while/TileTileHbackward_simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItem:item:03backward_simple_rnn_1/while/Tile/multiples:output:0*
T0
*'
_output_shapes
:џџџџџџџџџ№
$backward_simple_rnn_1/while/SelectV2SelectV2)backward_simple_rnn_1/while/Tile:output:06backward_simple_rnn_1/while/simple_rnn_cell_5/Tanh:y:0)backward_simple_rnn_1_while_placeholder_2*
T0*'
_output_shapes
:џџџџџџџџџ@}
,backward_simple_rnn_1/while/Tile_1/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      н
"backward_simple_rnn_1/while/Tile_1TileHbackward_simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItem:item:05backward_simple_rnn_1/while/Tile_1/multiples:output:0*
T0
*'
_output_shapes
:џџџџџџџџџє
&backward_simple_rnn_1/while/SelectV2_1SelectV2+backward_simple_rnn_1/while/Tile_1:output:06backward_simple_rnn_1/while/simple_rnn_cell_5/Tanh:y:0)backward_simple_rnn_1_while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ@
@backward_simple_rnn_1/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem)backward_simple_rnn_1_while_placeholder_1'backward_simple_rnn_1_while_placeholder-backward_simple_rnn_1/while/SelectV2:output:0*
_output_shapes
: *
element_dtype0:щшвc
!backward_simple_rnn_1/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
backward_simple_rnn_1/while/addAddV2'backward_simple_rnn_1_while_placeholder*backward_simple_rnn_1/while/add/y:output:0*
T0*
_output_shapes
: e
#backward_simple_rnn_1/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :П
!backward_simple_rnn_1/while/add_1AddV2Dbackward_simple_rnn_1_while_backward_simple_rnn_1_while_loop_counter,backward_simple_rnn_1/while/add_1/y:output:0*
T0*
_output_shapes
: 
$backward_simple_rnn_1/while/IdentityIdentity%backward_simple_rnn_1/while/add_1:z:0!^backward_simple_rnn_1/while/NoOp*
T0*
_output_shapes
: Т
&backward_simple_rnn_1/while/Identity_1IdentityJbackward_simple_rnn_1_while_backward_simple_rnn_1_while_maximum_iterations!^backward_simple_rnn_1/while/NoOp*
T0*
_output_shapes
: 
&backward_simple_rnn_1/while/Identity_2Identity#backward_simple_rnn_1/while/add:z:0!^backward_simple_rnn_1/while/NoOp*
T0*
_output_shapes
: Ш
&backward_simple_rnn_1/while/Identity_3IdentityPbackward_simple_rnn_1/while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^backward_simple_rnn_1/while/NoOp*
T0*
_output_shapes
: Ж
&backward_simple_rnn_1/while/Identity_4Identity-backward_simple_rnn_1/while/SelectV2:output:0!^backward_simple_rnn_1/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@И
&backward_simple_rnn_1/while/Identity_5Identity/backward_simple_rnn_1/while/SelectV2_1:output:0!^backward_simple_rnn_1/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@З
 backward_simple_rnn_1/while/NoOpNoOpE^backward_simple_rnn_1/while/simple_rnn_cell_5/BiasAdd/ReadVariableOpD^backward_simple_rnn_1/while/simple_rnn_cell_5/MatMul/ReadVariableOpF^backward_simple_rnn_1/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
Abackward_simple_rnn_1_while_backward_simple_rnn_1_strided_slice_1Cbackward_simple_rnn_1_while_backward_simple_rnn_1_strided_slice_1_0"U
$backward_simple_rnn_1_while_identity-backward_simple_rnn_1/while/Identity:output:0"Y
&backward_simple_rnn_1_while_identity_1/backward_simple_rnn_1/while/Identity_1:output:0"Y
&backward_simple_rnn_1_while_identity_2/backward_simple_rnn_1/while/Identity_2:output:0"Y
&backward_simple_rnn_1_while_identity_3/backward_simple_rnn_1/while/Identity_3:output:0"Y
&backward_simple_rnn_1_while_identity_4/backward_simple_rnn_1/while/Identity_4:output:0"Y
&backward_simple_rnn_1_while_identity_5/backward_simple_rnn_1/while/Identity_5:output:0" 
Mbackward_simple_rnn_1_while_simple_rnn_cell_5_biasadd_readvariableop_resourceObackward_simple_rnn_1_while_simple_rnn_cell_5_biasadd_readvariableop_resource_0"Ђ
Nbackward_simple_rnn_1_while_simple_rnn_cell_5_matmul_1_readvariableop_resourcePbackward_simple_rnn_1_while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0"
Lbackward_simple_rnn_1_while_simple_rnn_cell_5_matmul_readvariableop_resourceNbackward_simple_rnn_1_while_simple_rnn_cell_5_matmul_readvariableop_resource_0"
backward_simple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_backward_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensorbackward_simple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_backward_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensor_0"
}backward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_backward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensorbackward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_backward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :џџџџџџџџџ@:џџџџџџџџџ@: : : : : : 2
Dbackward_simple_rnn_1/while/simple_rnn_cell_5/BiasAdd/ReadVariableOpDbackward_simple_rnn_1/while/simple_rnn_cell_5/BiasAdd/ReadVariableOp2
Cbackward_simple_rnn_1/while/simple_rnn_cell_5/MatMul/ReadVariableOpCbackward_simple_rnn_1/while/simple_rnn_cell_5/MatMul/ReadVariableOp2
Ebackward_simple_rnn_1/while/simple_rnn_cell_5/MatMul_1/ReadVariableOpEbackward_simple_rnn_1/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
j

6bidirectional_1_backward_simple_rnn_1_while_body_69190h
dbidirectional_1_backward_simple_rnn_1_while_bidirectional_1_backward_simple_rnn_1_while_loop_countern
jbidirectional_1_backward_simple_rnn_1_while_bidirectional_1_backward_simple_rnn_1_while_maximum_iterations;
7bidirectional_1_backward_simple_rnn_1_while_placeholder=
9bidirectional_1_backward_simple_rnn_1_while_placeholder_1=
9bidirectional_1_backward_simple_rnn_1_while_placeholder_2=
9bidirectional_1_backward_simple_rnn_1_while_placeholder_3g
cbidirectional_1_backward_simple_rnn_1_while_bidirectional_1_backward_simple_rnn_1_strided_slice_1_0Є
bidirectional_1_backward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_bidirectional_1_backward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0Ј
Ѓbidirectional_1_backward_simple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_bidirectional_1_backward_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensor_0p
^bidirectional_1_backward_simple_rnn_1_while_simple_rnn_cell_5_matmul_readvariableop_resource_0:@@m
_bidirectional_1_backward_simple_rnn_1_while_simple_rnn_cell_5_biasadd_readvariableop_resource_0:@r
`bidirectional_1_backward_simple_rnn_1_while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0:@@8
4bidirectional_1_backward_simple_rnn_1_while_identity:
6bidirectional_1_backward_simple_rnn_1_while_identity_1:
6bidirectional_1_backward_simple_rnn_1_while_identity_2:
6bidirectional_1_backward_simple_rnn_1_while_identity_3:
6bidirectional_1_backward_simple_rnn_1_while_identity_4:
6bidirectional_1_backward_simple_rnn_1_while_identity_5e
abidirectional_1_backward_simple_rnn_1_while_bidirectional_1_backward_simple_rnn_1_strided_slice_1Ђ
bidirectional_1_backward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_bidirectional_1_backward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensorІ
Ёbidirectional_1_backward_simple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_bidirectional_1_backward_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensorn
\bidirectional_1_backward_simple_rnn_1_while_simple_rnn_cell_5_matmul_readvariableop_resource:@@k
]bidirectional_1_backward_simple_rnn_1_while_simple_rnn_cell_5_biasadd_readvariableop_resource:@p
^bidirectional_1_backward_simple_rnn_1_while_simple_rnn_cell_5_matmul_1_readvariableop_resource:@@ЂTbidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/BiasAdd/ReadVariableOpЂSbidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/MatMul/ReadVariableOpЂUbidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/MatMul_1/ReadVariableOpЎ
]bidirectional_1/backward_simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   х
Obidirectional_1/backward_simple_rnn_1/while/TensorArrayV2Read/TensorListGetItemTensorListGetItembidirectional_1_backward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_bidirectional_1_backward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_07bidirectional_1_backward_simple_rnn_1_while_placeholderfbidirectional_1/backward_simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ@*
element_dtype0А
_bidirectional_1/backward_simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   э
Qbidirectional_1/backward_simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItemTensorListGetItemЃbidirectional_1_backward_simple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_bidirectional_1_backward_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensor_07bidirectional_1_backward_simple_rnn_1_while_placeholderhbidirectional_1/backward_simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0
ђ
Sbidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/MatMul/ReadVariableOpReadVariableOp^bidirectional_1_backward_simple_rnn_1_while_simple_rnn_cell_5_matmul_readvariableop_resource_0*
_output_shapes

:@@*
dtype0Е
Dbidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/MatMulMatMulVbidirectional_1/backward_simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem:item:0[bidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@№
Tbidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/BiasAdd/ReadVariableOpReadVariableOp_bidirectional_1_backward_simple_rnn_1_while_simple_rnn_cell_5_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0А
Ebidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/BiasAddBiasAddNbidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/MatMul:product:0\bidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@і
Ubidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/MatMul_1/ReadVariableOpReadVariableOp`bidirectional_1_backward_simple_rnn_1_while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype0
Fbidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/MatMul_1MatMul9bidirectional_1_backward_simple_rnn_1_while_placeholder_3]bidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@
Abidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/addAddV2Nbidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/BiasAdd:output:0Pbidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@У
Bbidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/TanhTanhEbidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@
:bidirectional_1/backward_simple_rnn_1/while/Tile/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      
0bidirectional_1/backward_simple_rnn_1/while/TileTileXbidirectional_1/backward_simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItem:item:0Cbidirectional_1/backward_simple_rnn_1/while/Tile/multiples:output:0*
T0
*'
_output_shapes
:џџџџџџџџџА
4bidirectional_1/backward_simple_rnn_1/while/SelectV2SelectV29bidirectional_1/backward_simple_rnn_1/while/Tile:output:0Fbidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/Tanh:y:09bidirectional_1_backward_simple_rnn_1_while_placeholder_2*
T0*'
_output_shapes
:џџџџџџџџџ@
<bidirectional_1/backward_simple_rnn_1/while/Tile_1/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      
2bidirectional_1/backward_simple_rnn_1/while/Tile_1TileXbidirectional_1/backward_simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItem:item:0Ebidirectional_1/backward_simple_rnn_1/while/Tile_1/multiples:output:0*
T0
*'
_output_shapes
:џџџџџџџџџД
6bidirectional_1/backward_simple_rnn_1/while/SelectV2_1SelectV2;bidirectional_1/backward_simple_rnn_1/while/Tile_1:output:0Fbidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/Tanh:y:09bidirectional_1_backward_simple_rnn_1_while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ@и
Pbidirectional_1/backward_simple_rnn_1/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem9bidirectional_1_backward_simple_rnn_1_while_placeholder_17bidirectional_1_backward_simple_rnn_1_while_placeholder=bidirectional_1/backward_simple_rnn_1/while/SelectV2:output:0*
_output_shapes
: *
element_dtype0:щшвs
1bidirectional_1/backward_simple_rnn_1/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :Ю
/bidirectional_1/backward_simple_rnn_1/while/addAddV27bidirectional_1_backward_simple_rnn_1_while_placeholder:bidirectional_1/backward_simple_rnn_1/while/add/y:output:0*
T0*
_output_shapes
: u
3bidirectional_1/backward_simple_rnn_1/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :џ
1bidirectional_1/backward_simple_rnn_1/while/add_1AddV2dbidirectional_1_backward_simple_rnn_1_while_bidirectional_1_backward_simple_rnn_1_while_loop_counter<bidirectional_1/backward_simple_rnn_1/while/add_1/y:output:0*
T0*
_output_shapes
: Ы
4bidirectional_1/backward_simple_rnn_1/while/IdentityIdentity5bidirectional_1/backward_simple_rnn_1/while/add_1:z:01^bidirectional_1/backward_simple_rnn_1/while/NoOp*
T0*
_output_shapes
: 
6bidirectional_1/backward_simple_rnn_1/while/Identity_1Identityjbidirectional_1_backward_simple_rnn_1_while_bidirectional_1_backward_simple_rnn_1_while_maximum_iterations1^bidirectional_1/backward_simple_rnn_1/while/NoOp*
T0*
_output_shapes
: Ы
6bidirectional_1/backward_simple_rnn_1/while/Identity_2Identity3bidirectional_1/backward_simple_rnn_1/while/add:z:01^bidirectional_1/backward_simple_rnn_1/while/NoOp*
T0*
_output_shapes
: ј
6bidirectional_1/backward_simple_rnn_1/while/Identity_3Identity`bidirectional_1/backward_simple_rnn_1/while/TensorArrayV2Write/TensorListSetItem:output_handle:01^bidirectional_1/backward_simple_rnn_1/while/NoOp*
T0*
_output_shapes
: ц
6bidirectional_1/backward_simple_rnn_1/while/Identity_4Identity=bidirectional_1/backward_simple_rnn_1/while/SelectV2:output:01^bidirectional_1/backward_simple_rnn_1/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@ш
6bidirectional_1/backward_simple_rnn_1/while/Identity_5Identity?bidirectional_1/backward_simple_rnn_1/while/SelectV2_1:output:01^bidirectional_1/backward_simple_rnn_1/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@ї
0bidirectional_1/backward_simple_rnn_1/while/NoOpNoOpU^bidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/BiasAdd/ReadVariableOpT^bidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/MatMul/ReadVariableOpV^bidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Ш
abidirectional_1_backward_simple_rnn_1_while_bidirectional_1_backward_simple_rnn_1_strided_slice_1cbidirectional_1_backward_simple_rnn_1_while_bidirectional_1_backward_simple_rnn_1_strided_slice_1_0"u
4bidirectional_1_backward_simple_rnn_1_while_identity=bidirectional_1/backward_simple_rnn_1/while/Identity:output:0"y
6bidirectional_1_backward_simple_rnn_1_while_identity_1?bidirectional_1/backward_simple_rnn_1/while/Identity_1:output:0"y
6bidirectional_1_backward_simple_rnn_1_while_identity_2?bidirectional_1/backward_simple_rnn_1/while/Identity_2:output:0"y
6bidirectional_1_backward_simple_rnn_1_while_identity_3?bidirectional_1/backward_simple_rnn_1/while/Identity_3:output:0"y
6bidirectional_1_backward_simple_rnn_1_while_identity_4?bidirectional_1/backward_simple_rnn_1/while/Identity_4:output:0"y
6bidirectional_1_backward_simple_rnn_1_while_identity_5?bidirectional_1/backward_simple_rnn_1/while/Identity_5:output:0"Р
]bidirectional_1_backward_simple_rnn_1_while_simple_rnn_cell_5_biasadd_readvariableop_resource_bidirectional_1_backward_simple_rnn_1_while_simple_rnn_cell_5_biasadd_readvariableop_resource_0"Т
^bidirectional_1_backward_simple_rnn_1_while_simple_rnn_cell_5_matmul_1_readvariableop_resource`bidirectional_1_backward_simple_rnn_1_while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0"О
\bidirectional_1_backward_simple_rnn_1_while_simple_rnn_cell_5_matmul_readvariableop_resource^bidirectional_1_backward_simple_rnn_1_while_simple_rnn_cell_5_matmul_readvariableop_resource_0"Ъ
Ёbidirectional_1_backward_simple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_bidirectional_1_backward_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensorЃbidirectional_1_backward_simple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_bidirectional_1_backward_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensor_0"Т
bidirectional_1_backward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_bidirectional_1_backward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensorbidirectional_1_backward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_bidirectional_1_backward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :џџџџџџџџџ@:џџџџџџџџџ@: : : : : : 2Ќ
Tbidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/BiasAdd/ReadVariableOpTbidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/BiasAdd/ReadVariableOp2Њ
Sbidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/MatMul/ReadVariableOpSbidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/MatMul/ReadVariableOp2Ў
Ubidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/MatMul_1/ReadVariableOpUbidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 

з
&backward_simple_rnn_1_while_cond_70275H
Dbackward_simple_rnn_1_while_backward_simple_rnn_1_while_loop_counterN
Jbackward_simple_rnn_1_while_backward_simple_rnn_1_while_maximum_iterations+
'backward_simple_rnn_1_while_placeholder-
)backward_simple_rnn_1_while_placeholder_1-
)backward_simple_rnn_1_while_placeholder_2-
)backward_simple_rnn_1_while_placeholder_3J
Fbackward_simple_rnn_1_while_less_backward_simple_rnn_1_strided_slice_1_
[backward_simple_rnn_1_while_backward_simple_rnn_1_while_cond_70275___redundant_placeholder0_
[backward_simple_rnn_1_while_backward_simple_rnn_1_while_cond_70275___redundant_placeholder1_
[backward_simple_rnn_1_while_backward_simple_rnn_1_while_cond_70275___redundant_placeholder2_
[backward_simple_rnn_1_while_backward_simple_rnn_1_while_cond_70275___redundant_placeholder3_
[backward_simple_rnn_1_while_backward_simple_rnn_1_while_cond_70275___redundant_placeholder4(
$backward_simple_rnn_1_while_identity
К
 backward_simple_rnn_1/while/LessLess'backward_simple_rnn_1_while_placeholderFbackward_simple_rnn_1_while_less_backward_simple_rnn_1_strided_slice_1*
T0*
_output_shapes
: w
$backward_simple_rnn_1/while/IdentityIdentity$backward_simple_rnn_1/while/Less:z:0*
T0
*
_output_shapes
: "U
$backward_simple_rnn_1_while_identity-backward_simple_rnn_1/while/Identity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D: : : : :џџџџџџџџџ@:џџџџџџџџџ@: :::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
::

_output_shapes
:
О

'__inference_dense_3_layer_call_fn_70655

inputs
unknown:@
	unknown_0:
identityЂStatefulPartitionedCallз
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_68370o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs
Є
Р
4__inference_forward_simple_rnn_1_layer_call_fn_70676
inputs_0
unknown:@@
	unknown_0:@
	unknown_1:@@
identityЂStatefulPartitionedCallѓ
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *X
fSRQ
O__inference_forward_simple_rnn_1_layer_call_and_return_conditional_losses_67020o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ@: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@
"
_user_specified_name
inputs/0
§


,__inference_sequential_1_layer_call_fn_68846
embedding_1_input
unknown:	Љ @
	unknown_0:@@
	unknown_1:@
	unknown_2:@@
	unknown_3:@@
	unknown_4:@
	unknown_5:@@
	unknown_6:	@
	unknown_7:@
	unknown_8:@
	unknown_9:
identityЂStatefulPartitionedCallм
StatefulPartitionedCallStatefulPartitionedCallembedding_1_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_68794o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:џџџџџџџџџџџџџџџџџџ: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:c _
0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
+
_user_specified_nameembedding_1_input
а

G__inference_sequential_1_layer_call_and_return_conditional_losses_68878
embedding_1_input$
embedding_1_68849:	Љ @'
bidirectional_1_68854:@@#
bidirectional_1_68856:@'
bidirectional_1_68858:@@'
bidirectional_1_68860:@@#
bidirectional_1_68862:@'
bidirectional_1_68864:@@ 
dense_2_68867:	@
dense_2_68869:@
dense_3_68872:@
dense_3_68874:
identityЂ'bidirectional_1/StatefulPartitionedCallЂdense_2/StatefulPartitionedCallЂdense_3/StatefulPartitionedCallЂ#embedding_1/StatefulPartitionedCallќ
#embedding_1/StatefulPartitionedCallStatefulPartitionedCallembedding_1_inputembedding_1_68849*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_embedding_1_layer_call_and_return_conditional_losses_68057[
embedding_1/NotEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
embedding_1/NotEqualNotEqualembedding_1_inputembedding_1/NotEqual/y:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџЏ
'bidirectional_1/StatefulPartitionedCallStatefulPartitionedCall,embedding_1/StatefulPartitionedCall:output:0embedding_1/NotEqual:z:0bidirectional_1_68854bidirectional_1_68856bidirectional_1_68858bidirectional_1_68860bidirectional_1_68862bidirectional_1_68864*
Tin

2
*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_bidirectional_1_layer_call_and_return_conditional_losses_68329
dense_2/StatefulPartitionedCallStatefulPartitionedCall0bidirectional_1/StatefulPartitionedCall:output:0dense_2_68867dense_2_68869*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_68354
dense_3/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0dense_3_68872dense_3_68874*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_68370w
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџк
NoOpNoOp(^bidirectional_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall$^embedding_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:џџџџџџџџџџџџџџџџџџ: : : : : : : : : : : 2R
'bidirectional_1/StatefulPartitionedCall'bidirectional_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2J
#embedding_1/StatefulPartitionedCall#embedding_1/StatefulPartitionedCall:c _
0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
+
_user_specified_nameembedding_1_input

щ
L__inference_simple_rnn_cell_4_layer_call_and_return_conditional_losses_71687

inputs
states_00
matmul_readvariableop_resource:@@-
biasadd_readvariableop_resource:@2
 matmul_1_readvariableop_resource:@@
identity

identity_1ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@d
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@G
TanhTanhadd:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@W
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@Y

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:џџџџџџџџџ@:џџџџџџџџџ@: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџ@
"
_user_specified_name
states/0
4

O__inference_forward_simple_rnn_1_layer_call_and_return_conditional_losses_67179

inputs)
simple_rnn_cell_4_67104:@@%
simple_rnn_cell_4_67106:@)
simple_rnn_cell_4_67108:@@
identityЂ)simple_rnn_cell_4/StatefulPartitionedCallЂwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@*
shrink_axis_maskу
)simple_rnn_cell_4/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_4_67104simple_rnn_cell_4_67106simple_rnn_cell_4_67108*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:џџџџџџџџџ@:џџџџџџџџџ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_simple_rnn_cell_4_layer_call_and_return_conditional_losses_67064n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_4_67104simple_rnn_cell_4_67106simple_rnn_cell_4_67108*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџ@: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_67116*
condR
while_cond_67115*8
output_shapes'
%: : : : :џџџџџџџџџ@: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   Ы
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@z
NoOpNoOp*^simple_rnn_cell_4/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ@: : : 2V
)simple_rnn_cell_4/StatefulPartitionedCall)simple_rnn_cell_4/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs
с=
Ф
O__inference_forward_simple_rnn_1_layer_call_and_return_conditional_losses_70925
inputs_0B
0simple_rnn_cell_4_matmul_readvariableop_resource:@@?
1simple_rnn_cell_4_biasadd_readvariableop_resource:@D
2simple_rnn_cell_4_matmul_1_readvariableop_resource:@@
identityЂ(simple_rnn_cell_4/BiasAdd/ReadVariableOpЂ'simple_rnn_cell_4/MatMul/ReadVariableOpЂ)simple_rnn_cell_4/MatMul_1/ReadVariableOpЂwhile=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@*
shrink_axis_mask
'simple_rnn_cell_4/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_4_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype0
simple_rnn_cell_4/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@
(simple_rnn_cell_4/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_4_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ќ
simple_rnn_cell_4/BiasAddBiasAdd"simple_rnn_cell_4/MatMul:product:00simple_rnn_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@
)simple_rnn_cell_4/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_4_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0
simple_rnn_cell_4/MatMul_1MatMulzeros:output:01simple_rnn_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@
simple_rnn_cell_4/addAddV2"simple_rnn_cell_4/BiasAdd:output:0$simple_rnn_cell_4/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@k
simple_rnn_cell_4/TanhTanhsimple_rnn_cell_4/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ж
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_4_matmul_readvariableop_resource1simple_rnn_cell_4_biasadd_readvariableop_resource2simple_rnn_cell_4_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџ@: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_70859*
condR
while_cond_70858*8
output_shapes'
%: : : : :џџџџџџџџџ@: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   Ы
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@Я
NoOpNoOp)^simple_rnn_cell_4/BiasAdd/ReadVariableOp(^simple_rnn_cell_4/MatMul/ReadVariableOp*^simple_rnn_cell_4/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ@: : : 2T
(simple_rnn_cell_4/BiasAdd/ReadVariableOp(simple_rnn_cell_4/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_4/MatMul/ReadVariableOp'simple_rnn_cell_4/MatMul/ReadVariableOp2V
)simple_rnn_cell_4/MatMul_1/ReadVariableOp)simple_rnn_cell_4/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@
"
_user_specified_name
inputs/0
у5
 
P__inference_backward_simple_rnn_1_layer_call_and_return_conditional_losses_67475

inputs)
simple_rnn_cell_5_67400:@@%
simple_rnn_cell_5_67402:@)
simple_rnn_cell_5_67404:@@
identityЂ)simple_rnn_cell_5/StatefulPartitionedCallЂwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвX
ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: }
	ReverseV2	ReverseV2transpose:y:0ReverseV2/axis:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   х
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensorReverseV2:output:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@*
shrink_axis_maskу
)simple_rnn_cell_5/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_5_67400simple_rnn_cell_5_67402simple_rnn_cell_5_67404*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:џџџџџџџџџ@:џџџџџџџџџ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_simple_rnn_cell_5_layer_call_and_return_conditional_losses_67358n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_5_67400simple_rnn_cell_5_67402simple_rnn_cell_5_67404*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџ@: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_67412*
condR
while_cond_67411*8
output_shapes'
%: : : : :џџџџџџџџџ@: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   Ы
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@z
NoOpNoOp*^simple_rnn_cell_5/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ@: : : 2V
)simple_rnn_cell_5/StatefulPartitionedCall)simple_rnn_cell_5/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs

з
&backward_simple_rnn_1_while_cond_68245H
Dbackward_simple_rnn_1_while_backward_simple_rnn_1_while_loop_counterN
Jbackward_simple_rnn_1_while_backward_simple_rnn_1_while_maximum_iterations+
'backward_simple_rnn_1_while_placeholder-
)backward_simple_rnn_1_while_placeholder_1-
)backward_simple_rnn_1_while_placeholder_2-
)backward_simple_rnn_1_while_placeholder_3J
Fbackward_simple_rnn_1_while_less_backward_simple_rnn_1_strided_slice_1_
[backward_simple_rnn_1_while_backward_simple_rnn_1_while_cond_68245___redundant_placeholder0_
[backward_simple_rnn_1_while_backward_simple_rnn_1_while_cond_68245___redundant_placeholder1_
[backward_simple_rnn_1_while_backward_simple_rnn_1_while_cond_68245___redundant_placeholder2_
[backward_simple_rnn_1_while_backward_simple_rnn_1_while_cond_68245___redundant_placeholder3_
[backward_simple_rnn_1_while_backward_simple_rnn_1_while_cond_68245___redundant_placeholder4(
$backward_simple_rnn_1_while_identity
К
 backward_simple_rnn_1/while/LessLess'backward_simple_rnn_1_while_placeholderFbackward_simple_rnn_1_while_less_backward_simple_rnn_1_strided_slice_1*
T0*
_output_shapes
: w
$backward_simple_rnn_1/while/IdentityIdentity$backward_simple_rnn_1/while/Less:z:0*
T0
*
_output_shapes
: "U
$backward_simple_rnn_1_while_identity-backward_simple_rnn_1/while/Identity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D: : : : :џџџџџџџџџ@:џџџџџџџџџ@: :::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
::

_output_shapes
:
З

й
1__inference_simple_rnn_cell_5_layer_call_fn_71701

inputs
states_0
unknown:@@
	unknown_0:@
	unknown_1:@@
identity

identity_1ЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:џџџџџџџџџ@:џџџџџџџџџ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_simple_rnn_cell_5_layer_call_and_return_conditional_losses_67238o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:џџџџџџџџџ@:џџџџџџџџџ@: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџ@
"
_user_specified_name
states/0
ќ
ч
L__inference_simple_rnn_cell_4_layer_call_and_return_conditional_losses_66944

inputs

states0
matmul_readvariableop_resource:@@-
biasadd_readvariableop_resource:@2
 matmul_1_readvariableop_resource:@@
identity

identity_1ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@d
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@G
TanhTanhadd:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@W
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@Y

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:џџџџџџџџџ@:џџџџџџџџџ@: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_namestates
З

й
1__inference_simple_rnn_cell_4_layer_call_fn_71653

inputs
states_0
unknown:@@
	unknown_0:@
	unknown_1:@@
identity

identity_1ЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:џџџџџџџџџ@:џџџџџџџџџ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_simple_rnn_cell_4_layer_call_and_return_conditional_losses_67064o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:џџџџџџџџџ@:џџџџџџџџџ@: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџ@
"
_user_specified_name
states/0
п	
Ѓ
F__inference_embedding_1_layer_call_and_return_conditional_losses_68057

inputs)
embedding_lookup_68051:	Љ @
identityЂembedding_lookup^
CastCastinputs*

DstT0*

SrcT0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџТ
embedding_lookupResourceGatherembedding_lookup_68051Cast:y:0*
Tindices0*)
_class
loc:@embedding_lookup/68051*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@*
dtype0Њ
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*)
_class
loc:@embedding_lookup/68051*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:џџџџџџџџџџџџџџџџџџ: 2$
embedding_lookupembedding_lookup:X T
0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
е
Ѕ
while_cond_67115
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_67115___redundant_placeholder03
/while_while_cond_67115___redundant_placeholder13
/while_while_cond_67115___redundant_placeholder23
/while_while_cond_67115___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :џџџџџџџџџ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
:
С
з
J__inference_bidirectional_1_layer_call_and_return_conditional_losses_68025

inputs,
forward_simple_rnn_1_68008:@@(
forward_simple_rnn_1_68010:@,
forward_simple_rnn_1_68012:@@-
backward_simple_rnn_1_68015:@@)
backward_simple_rnn_1_68017:@-
backward_simple_rnn_1_68019:@@
identityЂ-backward_simple_rnn_1/StatefulPartitionedCallЂ,forward_simple_rnn_1/StatefulPartitionedCallЛ
,forward_simple_rnn_1/StatefulPartitionedCallStatefulPartitionedCallinputsforward_simple_rnn_1_68008forward_simple_rnn_1_68010forward_simple_rnn_1_68012*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *X
fSRQ
O__inference_forward_simple_rnn_1_layer_call_and_return_conditional_losses_67994Р
-backward_simple_rnn_1/StatefulPartitionedCallStatefulPartitionedCallinputsbackward_simple_rnn_1_68015backward_simple_rnn_1_68017backward_simple_rnn_1_68019*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_backward_simple_rnn_1_layer_call_and_return_conditional_losses_67864M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :г
concatConcatV25forward_simple_rnn_1/StatefulPartitionedCall:output:06backward_simple_rnn_1/StatefulPartitionedCall:output:0concat/axis:output:0*
N*
T0*(
_output_shapes
:џџџџџџџџџ_
IdentityIdentityconcat:output:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџЅ
NoOpNoOp.^backward_simple_rnn_1/StatefulPartitionedCall-^forward_simple_rnn_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:'џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : : : 2^
-backward_simple_rnn_1/StatefulPartitionedCall-backward_simple_rnn_1/StatefulPartitionedCall2\
,forward_simple_rnn_1/StatefulPartitionedCall,forward_simple_rnn_1/StatefulPartitionedCall:e a
=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
U
І
%forward_simple_rnn_1_while_body_68495F
Bforward_simple_rnn_1_while_forward_simple_rnn_1_while_loop_counterL
Hforward_simple_rnn_1_while_forward_simple_rnn_1_while_maximum_iterations*
&forward_simple_rnn_1_while_placeholder,
(forward_simple_rnn_1_while_placeholder_1,
(forward_simple_rnn_1_while_placeholder_2,
(forward_simple_rnn_1_while_placeholder_3E
Aforward_simple_rnn_1_while_forward_simple_rnn_1_strided_slice_1_0
}forward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_forward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0
forward_simple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_forward_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensor_0_
Mforward_simple_rnn_1_while_simple_rnn_cell_4_matmul_readvariableop_resource_0:@@\
Nforward_simple_rnn_1_while_simple_rnn_cell_4_biasadd_readvariableop_resource_0:@a
Oforward_simple_rnn_1_while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0:@@'
#forward_simple_rnn_1_while_identity)
%forward_simple_rnn_1_while_identity_1)
%forward_simple_rnn_1_while_identity_2)
%forward_simple_rnn_1_while_identity_3)
%forward_simple_rnn_1_while_identity_4)
%forward_simple_rnn_1_while_identity_5C
?forward_simple_rnn_1_while_forward_simple_rnn_1_strided_slice_1
{forward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_forward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor
forward_simple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_forward_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensor]
Kforward_simple_rnn_1_while_simple_rnn_cell_4_matmul_readvariableop_resource:@@Z
Lforward_simple_rnn_1_while_simple_rnn_cell_4_biasadd_readvariableop_resource:@_
Mforward_simple_rnn_1_while_simple_rnn_cell_4_matmul_1_readvariableop_resource:@@ЂCforward_simple_rnn_1/while/simple_rnn_cell_4/BiasAdd/ReadVariableOpЂBforward_simple_rnn_1/while/simple_rnn_cell_4/MatMul/ReadVariableOpЂDforward_simple_rnn_1/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp
Lforward_simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   
>forward_simple_rnn_1/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem}forward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_forward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0&forward_simple_rnn_1_while_placeholderUforward_simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ@*
element_dtype0
Nforward_simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   
@forward_simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItemTensorListGetItemforward_simple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_forward_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensor_0&forward_simple_rnn_1_while_placeholderWforward_simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0
а
Bforward_simple_rnn_1/while/simple_rnn_cell_4/MatMul/ReadVariableOpReadVariableOpMforward_simple_rnn_1_while_simple_rnn_cell_4_matmul_readvariableop_resource_0*
_output_shapes

:@@*
dtype0
3forward_simple_rnn_1/while/simple_rnn_cell_4/MatMulMatMulEforward_simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem:item:0Jforward_simple_rnn_1/while/simple_rnn_cell_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@Ю
Cforward_simple_rnn_1/while/simple_rnn_cell_4/BiasAdd/ReadVariableOpReadVariableOpNforward_simple_rnn_1_while_simple_rnn_cell_4_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0§
4forward_simple_rnn_1/while/simple_rnn_cell_4/BiasAddBiasAdd=forward_simple_rnn_1/while/simple_rnn_cell_4/MatMul:product:0Kforward_simple_rnn_1/while/simple_rnn_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@д
Dforward_simple_rnn_1/while/simple_rnn_cell_4/MatMul_1/ReadVariableOpReadVariableOpOforward_simple_rnn_1_while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype0щ
5forward_simple_rnn_1/while/simple_rnn_cell_4/MatMul_1MatMul(forward_simple_rnn_1_while_placeholder_3Lforward_simple_rnn_1/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@ы
0forward_simple_rnn_1/while/simple_rnn_cell_4/addAddV2=forward_simple_rnn_1/while/simple_rnn_cell_4/BiasAdd:output:0?forward_simple_rnn_1/while/simple_rnn_cell_4/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@Ё
1forward_simple_rnn_1/while/simple_rnn_cell_4/TanhTanh4forward_simple_rnn_1/while/simple_rnn_cell_4/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@z
)forward_simple_rnn_1/while/Tile/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      ж
forward_simple_rnn_1/while/TileTileGforward_simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItem:item:02forward_simple_rnn_1/while/Tile/multiples:output:0*
T0
*'
_output_shapes
:џџџџџџџџџь
#forward_simple_rnn_1/while/SelectV2SelectV2(forward_simple_rnn_1/while/Tile:output:05forward_simple_rnn_1/while/simple_rnn_cell_4/Tanh:y:0(forward_simple_rnn_1_while_placeholder_2*
T0*'
_output_shapes
:џџџџџџџџџ@|
+forward_simple_rnn_1/while/Tile_1/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      к
!forward_simple_rnn_1/while/Tile_1TileGforward_simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItem:item:04forward_simple_rnn_1/while/Tile_1/multiples:output:0*
T0
*'
_output_shapes
:џџџџџџџџџ№
%forward_simple_rnn_1/while/SelectV2_1SelectV2*forward_simple_rnn_1/while/Tile_1:output:05forward_simple_rnn_1/while/simple_rnn_cell_4/Tanh:y:0(forward_simple_rnn_1_while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ@
?forward_simple_rnn_1/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem(forward_simple_rnn_1_while_placeholder_1&forward_simple_rnn_1_while_placeholder,forward_simple_rnn_1/while/SelectV2:output:0*
_output_shapes
: *
element_dtype0:щшвb
 forward_simple_rnn_1/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
forward_simple_rnn_1/while/addAddV2&forward_simple_rnn_1_while_placeholder)forward_simple_rnn_1/while/add/y:output:0*
T0*
_output_shapes
: d
"forward_simple_rnn_1/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Л
 forward_simple_rnn_1/while/add_1AddV2Bforward_simple_rnn_1_while_forward_simple_rnn_1_while_loop_counter+forward_simple_rnn_1/while/add_1/y:output:0*
T0*
_output_shapes
: 
#forward_simple_rnn_1/while/IdentityIdentity$forward_simple_rnn_1/while/add_1:z:0 ^forward_simple_rnn_1/while/NoOp*
T0*
_output_shapes
: О
%forward_simple_rnn_1/while/Identity_1IdentityHforward_simple_rnn_1_while_forward_simple_rnn_1_while_maximum_iterations ^forward_simple_rnn_1/while/NoOp*
T0*
_output_shapes
: 
%forward_simple_rnn_1/while/Identity_2Identity"forward_simple_rnn_1/while/add:z:0 ^forward_simple_rnn_1/while/NoOp*
T0*
_output_shapes
: Х
%forward_simple_rnn_1/while/Identity_3IdentityOforward_simple_rnn_1/while/TensorArrayV2Write/TensorListSetItem:output_handle:0 ^forward_simple_rnn_1/while/NoOp*
T0*
_output_shapes
: Г
%forward_simple_rnn_1/while/Identity_4Identity,forward_simple_rnn_1/while/SelectV2:output:0 ^forward_simple_rnn_1/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@Е
%forward_simple_rnn_1/while/Identity_5Identity.forward_simple_rnn_1/while/SelectV2_1:output:0 ^forward_simple_rnn_1/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@Г
forward_simple_rnn_1/while/NoOpNoOpD^forward_simple_rnn_1/while/simple_rnn_cell_4/BiasAdd/ReadVariableOpC^forward_simple_rnn_1/while/simple_rnn_cell_4/MatMul/ReadVariableOpE^forward_simple_rnn_1/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
?forward_simple_rnn_1_while_forward_simple_rnn_1_strided_slice_1Aforward_simple_rnn_1_while_forward_simple_rnn_1_strided_slice_1_0"S
#forward_simple_rnn_1_while_identity,forward_simple_rnn_1/while/Identity:output:0"W
%forward_simple_rnn_1_while_identity_1.forward_simple_rnn_1/while/Identity_1:output:0"W
%forward_simple_rnn_1_while_identity_2.forward_simple_rnn_1/while/Identity_2:output:0"W
%forward_simple_rnn_1_while_identity_3.forward_simple_rnn_1/while/Identity_3:output:0"W
%forward_simple_rnn_1_while_identity_4.forward_simple_rnn_1/while/Identity_4:output:0"W
%forward_simple_rnn_1_while_identity_5.forward_simple_rnn_1/while/Identity_5:output:0"
Lforward_simple_rnn_1_while_simple_rnn_cell_4_biasadd_readvariableop_resourceNforward_simple_rnn_1_while_simple_rnn_cell_4_biasadd_readvariableop_resource_0" 
Mforward_simple_rnn_1_while_simple_rnn_cell_4_matmul_1_readvariableop_resourceOforward_simple_rnn_1_while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0"
Kforward_simple_rnn_1_while_simple_rnn_cell_4_matmul_readvariableop_resourceMforward_simple_rnn_1_while_simple_rnn_cell_4_matmul_readvariableop_resource_0"
forward_simple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_forward_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensorforward_simple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_forward_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensor_0"ќ
{forward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_forward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor}forward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_forward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :џџџџџџџџџ@:џџџџџџџџџ@: : : : : : 2
Cforward_simple_rnn_1/while/simple_rnn_cell_4/BiasAdd/ReadVariableOpCforward_simple_rnn_1/while/simple_rnn_cell_4/BiasAdd/ReadVariableOp2
Bforward_simple_rnn_1/while/simple_rnn_cell_4/MatMul/ReadVariableOpBforward_simple_rnn_1/while/simple_rnn_cell_4/MatMul/ReadVariableOp2
Dforward_simple_rnn_1/while/simple_rnn_cell_4/MatMul_1/ReadVariableOpDforward_simple_rnn_1/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
хh
ъ
5bidirectional_1_forward_simple_rnn_1_while_body_69058f
bbidirectional_1_forward_simple_rnn_1_while_bidirectional_1_forward_simple_rnn_1_while_loop_counterl
hbidirectional_1_forward_simple_rnn_1_while_bidirectional_1_forward_simple_rnn_1_while_maximum_iterations:
6bidirectional_1_forward_simple_rnn_1_while_placeholder<
8bidirectional_1_forward_simple_rnn_1_while_placeholder_1<
8bidirectional_1_forward_simple_rnn_1_while_placeholder_2<
8bidirectional_1_forward_simple_rnn_1_while_placeholder_3e
abidirectional_1_forward_simple_rnn_1_while_bidirectional_1_forward_simple_rnn_1_strided_slice_1_0Ђ
bidirectional_1_forward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_bidirectional_1_forward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0І
Ёbidirectional_1_forward_simple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_bidirectional_1_forward_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensor_0o
]bidirectional_1_forward_simple_rnn_1_while_simple_rnn_cell_4_matmul_readvariableop_resource_0:@@l
^bidirectional_1_forward_simple_rnn_1_while_simple_rnn_cell_4_biasadd_readvariableop_resource_0:@q
_bidirectional_1_forward_simple_rnn_1_while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0:@@7
3bidirectional_1_forward_simple_rnn_1_while_identity9
5bidirectional_1_forward_simple_rnn_1_while_identity_19
5bidirectional_1_forward_simple_rnn_1_while_identity_29
5bidirectional_1_forward_simple_rnn_1_while_identity_39
5bidirectional_1_forward_simple_rnn_1_while_identity_49
5bidirectional_1_forward_simple_rnn_1_while_identity_5c
_bidirectional_1_forward_simple_rnn_1_while_bidirectional_1_forward_simple_rnn_1_strided_slice_1 
bidirectional_1_forward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_bidirectional_1_forward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensorЄ
bidirectional_1_forward_simple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_bidirectional_1_forward_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensorm
[bidirectional_1_forward_simple_rnn_1_while_simple_rnn_cell_4_matmul_readvariableop_resource:@@j
\bidirectional_1_forward_simple_rnn_1_while_simple_rnn_cell_4_biasadd_readvariableop_resource:@o
]bidirectional_1_forward_simple_rnn_1_while_simple_rnn_cell_4_matmul_1_readvariableop_resource:@@ЂSbidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/BiasAdd/ReadVariableOpЂRbidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/MatMul/ReadVariableOpЂTbidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp­
\bidirectional_1/forward_simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   р
Nbidirectional_1/forward_simple_rnn_1/while/TensorArrayV2Read/TensorListGetItemTensorListGetItembidirectional_1_forward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_bidirectional_1_forward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_06bidirectional_1_forward_simple_rnn_1_while_placeholderebidirectional_1/forward_simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ@*
element_dtype0Џ
^bidirectional_1/forward_simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   ш
Pbidirectional_1/forward_simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItemTensorListGetItemЁbidirectional_1_forward_simple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_bidirectional_1_forward_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensor_06bidirectional_1_forward_simple_rnn_1_while_placeholdergbidirectional_1/forward_simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0
№
Rbidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/MatMul/ReadVariableOpReadVariableOp]bidirectional_1_forward_simple_rnn_1_while_simple_rnn_cell_4_matmul_readvariableop_resource_0*
_output_shapes

:@@*
dtype0В
Cbidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/MatMulMatMulUbidirectional_1/forward_simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem:item:0Zbidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@ю
Sbidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/BiasAdd/ReadVariableOpReadVariableOp^bidirectional_1_forward_simple_rnn_1_while_simple_rnn_cell_4_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0­
Dbidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/BiasAddBiasAddMbidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/MatMul:product:0[bidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@є
Tbidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/MatMul_1/ReadVariableOpReadVariableOp_bidirectional_1_forward_simple_rnn_1_while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype0
Ebidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/MatMul_1MatMul8bidirectional_1_forward_simple_rnn_1_while_placeholder_3\bidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@
@bidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/addAddV2Mbidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/BiasAdd:output:0Obidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@С
Abidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/TanhTanhDbidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@
9bidirectional_1/forward_simple_rnn_1/while/Tile/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      
/bidirectional_1/forward_simple_rnn_1/while/TileTileWbidirectional_1/forward_simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItem:item:0Bbidirectional_1/forward_simple_rnn_1/while/Tile/multiples:output:0*
T0
*'
_output_shapes
:џџџџџџџџџЌ
3bidirectional_1/forward_simple_rnn_1/while/SelectV2SelectV28bidirectional_1/forward_simple_rnn_1/while/Tile:output:0Ebidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/Tanh:y:08bidirectional_1_forward_simple_rnn_1_while_placeholder_2*
T0*'
_output_shapes
:џџџџџџџџџ@
;bidirectional_1/forward_simple_rnn_1/while/Tile_1/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      
1bidirectional_1/forward_simple_rnn_1/while/Tile_1TileWbidirectional_1/forward_simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItem:item:0Dbidirectional_1/forward_simple_rnn_1/while/Tile_1/multiples:output:0*
T0
*'
_output_shapes
:џџџџџџџџџА
5bidirectional_1/forward_simple_rnn_1/while/SelectV2_1SelectV2:bidirectional_1/forward_simple_rnn_1/while/Tile_1:output:0Ebidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/Tanh:y:08bidirectional_1_forward_simple_rnn_1_while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ@д
Obidirectional_1/forward_simple_rnn_1/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem8bidirectional_1_forward_simple_rnn_1_while_placeholder_16bidirectional_1_forward_simple_rnn_1_while_placeholder<bidirectional_1/forward_simple_rnn_1/while/SelectV2:output:0*
_output_shapes
: *
element_dtype0:щшвr
0bidirectional_1/forward_simple_rnn_1/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :Ы
.bidirectional_1/forward_simple_rnn_1/while/addAddV26bidirectional_1_forward_simple_rnn_1_while_placeholder9bidirectional_1/forward_simple_rnn_1/while/add/y:output:0*
T0*
_output_shapes
: t
2bidirectional_1/forward_simple_rnn_1/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :ћ
0bidirectional_1/forward_simple_rnn_1/while/add_1AddV2bbidirectional_1_forward_simple_rnn_1_while_bidirectional_1_forward_simple_rnn_1_while_loop_counter;bidirectional_1/forward_simple_rnn_1/while/add_1/y:output:0*
T0*
_output_shapes
: Ш
3bidirectional_1/forward_simple_rnn_1/while/IdentityIdentity4bidirectional_1/forward_simple_rnn_1/while/add_1:z:00^bidirectional_1/forward_simple_rnn_1/while/NoOp*
T0*
_output_shapes
: ў
5bidirectional_1/forward_simple_rnn_1/while/Identity_1Identityhbidirectional_1_forward_simple_rnn_1_while_bidirectional_1_forward_simple_rnn_1_while_maximum_iterations0^bidirectional_1/forward_simple_rnn_1/while/NoOp*
T0*
_output_shapes
: Ш
5bidirectional_1/forward_simple_rnn_1/while/Identity_2Identity2bidirectional_1/forward_simple_rnn_1/while/add:z:00^bidirectional_1/forward_simple_rnn_1/while/NoOp*
T0*
_output_shapes
: ѕ
5bidirectional_1/forward_simple_rnn_1/while/Identity_3Identity_bidirectional_1/forward_simple_rnn_1/while/TensorArrayV2Write/TensorListSetItem:output_handle:00^bidirectional_1/forward_simple_rnn_1/while/NoOp*
T0*
_output_shapes
: у
5bidirectional_1/forward_simple_rnn_1/while/Identity_4Identity<bidirectional_1/forward_simple_rnn_1/while/SelectV2:output:00^bidirectional_1/forward_simple_rnn_1/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@х
5bidirectional_1/forward_simple_rnn_1/while/Identity_5Identity>bidirectional_1/forward_simple_rnn_1/while/SelectV2_1:output:00^bidirectional_1/forward_simple_rnn_1/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@ѓ
/bidirectional_1/forward_simple_rnn_1/while/NoOpNoOpT^bidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/BiasAdd/ReadVariableOpS^bidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/MatMul/ReadVariableOpU^bidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Ф
_bidirectional_1_forward_simple_rnn_1_while_bidirectional_1_forward_simple_rnn_1_strided_slice_1abidirectional_1_forward_simple_rnn_1_while_bidirectional_1_forward_simple_rnn_1_strided_slice_1_0"s
3bidirectional_1_forward_simple_rnn_1_while_identity<bidirectional_1/forward_simple_rnn_1/while/Identity:output:0"w
5bidirectional_1_forward_simple_rnn_1_while_identity_1>bidirectional_1/forward_simple_rnn_1/while/Identity_1:output:0"w
5bidirectional_1_forward_simple_rnn_1_while_identity_2>bidirectional_1/forward_simple_rnn_1/while/Identity_2:output:0"w
5bidirectional_1_forward_simple_rnn_1_while_identity_3>bidirectional_1/forward_simple_rnn_1/while/Identity_3:output:0"w
5bidirectional_1_forward_simple_rnn_1_while_identity_4>bidirectional_1/forward_simple_rnn_1/while/Identity_4:output:0"w
5bidirectional_1_forward_simple_rnn_1_while_identity_5>bidirectional_1/forward_simple_rnn_1/while/Identity_5:output:0"О
\bidirectional_1_forward_simple_rnn_1_while_simple_rnn_cell_4_biasadd_readvariableop_resource^bidirectional_1_forward_simple_rnn_1_while_simple_rnn_cell_4_biasadd_readvariableop_resource_0"Р
]bidirectional_1_forward_simple_rnn_1_while_simple_rnn_cell_4_matmul_1_readvariableop_resource_bidirectional_1_forward_simple_rnn_1_while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0"М
[bidirectional_1_forward_simple_rnn_1_while_simple_rnn_cell_4_matmul_readvariableop_resource]bidirectional_1_forward_simple_rnn_1_while_simple_rnn_cell_4_matmul_readvariableop_resource_0"Ц
bidirectional_1_forward_simple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_bidirectional_1_forward_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensorЁbidirectional_1_forward_simple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_bidirectional_1_forward_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensor_0"О
bidirectional_1_forward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_bidirectional_1_forward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensorbidirectional_1_forward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_bidirectional_1_forward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :џџџџџџџџџ@:џџџџџџџџџ@: : : : : : 2Њ
Sbidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/BiasAdd/ReadVariableOpSbidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/BiasAdd/ReadVariableOp2Ј
Rbidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/MatMul/ReadVariableOpRbidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/MatMul/ReadVariableOp2Ќ
Tbidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/MatMul_1/ReadVariableOpTbidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
ц?
У
P__inference_backward_simple_rnn_1_layer_call_and_return_conditional_losses_71515

inputsB
0simple_rnn_cell_5_matmul_readvariableop_resource:@@?
1simple_rnn_cell_5_biasadd_readvariableop_resource:@D
2simple_rnn_cell_5_matmul_1_readvariableop_resource:@@
identityЂ(simple_rnn_cell_5/BiasAdd/ReadVariableOpЂ'simple_rnn_cell_5/MatMul/ReadVariableOpЂ)simple_rnn_cell_5/MatMul_1/ReadVariableOpЂwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
	transpose	Transposeinputstranspose/perm:output:0*
T0*=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвX
ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: 
	ReverseV2	ReverseV2transpose:y:0ReverseV2/axis:output:0*
T0*=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџџџџџх
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensorReverseV2:output:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ђ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
shrink_axis_mask
'simple_rnn_cell_5/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_5_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype0
simple_rnn_cell_5/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@
(simple_rnn_cell_5/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_5_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ќ
simple_rnn_cell_5/BiasAddBiasAdd"simple_rnn_cell_5/MatMul:product:00simple_rnn_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@
)simple_rnn_cell_5/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_5_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0
simple_rnn_cell_5/MatMul_1MatMulzeros:output:01simple_rnn_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@
simple_rnn_cell_5/addAddV2"simple_rnn_cell_5/BiasAdd:output:0$simple_rnn_cell_5/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@k
simple_rnn_cell_5/TanhTanhsimple_rnn_cell_5/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ж
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_5_matmul_readvariableop_resource1simple_rnn_cell_5_biasadd_readvariableop_resource2simple_rnn_cell_5_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџ@: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_71449*
condR
while_cond_71448*8
output_shapes'
%: : : : :џџџџџџџџџ@: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   Ы
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@Я
NoOpNoOp)^simple_rnn_cell_5/BiasAdd/ReadVariableOp(^simple_rnn_cell_5/MatMul/ReadVariableOp*^simple_rnn_cell_5/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:'џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : 2T
(simple_rnn_cell_5/BiasAdd/ReadVariableOp(simple_rnn_cell_5/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_5/MatMul/ReadVariableOp'simple_rnn_cell_5/MatMul/ReadVariableOp2V
)simple_rnn_cell_5/MatMul_1/ReadVariableOp)simple_rnn_cell_5/MatMul_1/ReadVariableOp2
whilewhile:e a
=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
§=
Т
O__inference_forward_simple_rnn_1_layer_call_and_return_conditional_losses_67994

inputsB
0simple_rnn_cell_4_matmul_readvariableop_resource:@@?
1simple_rnn_cell_4_biasadd_readvariableop_resource:@D
2simple_rnn_cell_4_matmul_1_readvariableop_resource:@@
identityЂ(simple_rnn_cell_4/BiasAdd/ReadVariableOpЂ'simple_rnn_cell_4/MatMul/ReadVariableOpЂ)simple_rnn_cell_4/MatMul_1/ReadVariableOpЂwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
	transpose	Transposeinputstranspose/perm:output:0*
T0*=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџџџџџр
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ђ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
shrink_axis_mask
'simple_rnn_cell_4/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_4_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype0
simple_rnn_cell_4/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@
(simple_rnn_cell_4/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_4_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ќ
simple_rnn_cell_4/BiasAddBiasAdd"simple_rnn_cell_4/MatMul:product:00simple_rnn_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@
)simple_rnn_cell_4/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_4_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0
simple_rnn_cell_4/MatMul_1MatMulzeros:output:01simple_rnn_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@
simple_rnn_cell_4/addAddV2"simple_rnn_cell_4/BiasAdd:output:0$simple_rnn_cell_4/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@k
simple_rnn_cell_4/TanhTanhsimple_rnn_cell_4/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ж
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_4_matmul_readvariableop_resource1simple_rnn_cell_4_biasadd_readvariableop_resource2simple_rnn_cell_4_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџ@: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_67928*
condR
while_cond_67927*8
output_shapes'
%: : : : :џџџџџџџџџ@: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   Ы
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@Я
NoOpNoOp)^simple_rnn_cell_4/BiasAdd/ReadVariableOp(^simple_rnn_cell_4/MatMul/ReadVariableOp*^simple_rnn_cell_4/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:'џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : 2T
(simple_rnn_cell_4/BiasAdd/ReadVariableOp(simple_rnn_cell_4/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_4/MatMul/ReadVariableOp'simple_rnn_cell_4/MatMul/ReadVariableOp2V
)simple_rnn_cell_4/MatMul_1/ReadVariableOp)simple_rnn_cell_4/MatMul_1/ReadVariableOp2
whilewhile:e a
=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
е
Ѕ
while_cond_71228
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_71228___redundant_placeholder03
/while_while_cond_71228___redundant_placeholder13
/while_while_cond_71228___redundant_placeholder23
/while_while_cond_71228___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :џџџџџџџџџ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
:
і
Э
Bsequential_1_bidirectional_1_forward_simple_rnn_1_while_cond_66667
|sequential_1_bidirectional_1_forward_simple_rnn_1_while_sequential_1_bidirectional_1_forward_simple_rnn_1_while_loop_counter
sequential_1_bidirectional_1_forward_simple_rnn_1_while_sequential_1_bidirectional_1_forward_simple_rnn_1_while_maximum_iterationsG
Csequential_1_bidirectional_1_forward_simple_rnn_1_while_placeholderI
Esequential_1_bidirectional_1_forward_simple_rnn_1_while_placeholder_1I
Esequential_1_bidirectional_1_forward_simple_rnn_1_while_placeholder_2I
Esequential_1_bidirectional_1_forward_simple_rnn_1_while_placeholder_3
~sequential_1_bidirectional_1_forward_simple_rnn_1_while_less_sequential_1_bidirectional_1_forward_simple_rnn_1_strided_slice_1
sequential_1_bidirectional_1_forward_simple_rnn_1_while_sequential_1_bidirectional_1_forward_simple_rnn_1_while_cond_66667___redundant_placeholder0
sequential_1_bidirectional_1_forward_simple_rnn_1_while_sequential_1_bidirectional_1_forward_simple_rnn_1_while_cond_66667___redundant_placeholder1
sequential_1_bidirectional_1_forward_simple_rnn_1_while_sequential_1_bidirectional_1_forward_simple_rnn_1_while_cond_66667___redundant_placeholder2
sequential_1_bidirectional_1_forward_simple_rnn_1_while_sequential_1_bidirectional_1_forward_simple_rnn_1_while_cond_66667___redundant_placeholder3
sequential_1_bidirectional_1_forward_simple_rnn_1_while_sequential_1_bidirectional_1_forward_simple_rnn_1_while_cond_66667___redundant_placeholder4D
@sequential_1_bidirectional_1_forward_simple_rnn_1_while_identity
Њ
<sequential_1/bidirectional_1/forward_simple_rnn_1/while/LessLessCsequential_1_bidirectional_1_forward_simple_rnn_1_while_placeholder~sequential_1_bidirectional_1_forward_simple_rnn_1_while_less_sequential_1_bidirectional_1_forward_simple_rnn_1_strided_slice_1*
T0*
_output_shapes
: Џ
@sequential_1/bidirectional_1/forward_simple_rnn_1/while/IdentityIdentity@sequential_1/bidirectional_1/forward_simple_rnn_1/while/Less:z:0*
T0
*
_output_shapes
: "
@sequential_1_bidirectional_1_forward_simple_rnn_1_while_identityIsequential_1/bidirectional_1/forward_simple_rnn_1/while/Identity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D: : : : :џџџџџџџџџ@:џџџџџџџџџ@: :::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
::

_output_shapes
:
х 
Ъ
while_body_67116
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_01
while_simple_rnn_cell_4_67138_0:@@-
while_simple_rnn_cell_4_67140_0:@1
while_simple_rnn_cell_4_67142_0:@@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor/
while_simple_rnn_cell_4_67138:@@+
while_simple_rnn_cell_4_67140:@/
while_simple_rnn_cell_4_67142:@@Ђ/while/simple_rnn_cell_4/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ@*
element_dtype0
/while/simple_rnn_cell_4/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_simple_rnn_cell_4_67138_0while_simple_rnn_cell_4_67140_0while_simple_rnn_cell_4_67142_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:џџџџџџџџџ@:џџџџџџџџџ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_simple_rnn_cell_4_layer_call_and_return_conditional_losses_67064с
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder8while/simple_rnn_cell_4/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_4Identity8while/simple_rnn_cell_4/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@~

while/NoOpNoOp0^while/simple_rnn_cell_4/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"@
while_simple_rnn_cell_4_67138while_simple_rnn_cell_4_67138_0"@
while_simple_rnn_cell_4_67140while_simple_rnn_cell_4_67140_0"@
while_simple_rnn_cell_4_67142while_simple_rnn_cell_4_67142_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :џџџџџџџџџ@: : : : : 2b
/while/simple_rnn_cell_4/StatefulPartitionedCall/while/simple_rnn_cell_4/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
: 
§=
Т
O__inference_forward_simple_rnn_1_layer_call_and_return_conditional_losses_71141

inputsB
0simple_rnn_cell_4_matmul_readvariableop_resource:@@?
1simple_rnn_cell_4_biasadd_readvariableop_resource:@D
2simple_rnn_cell_4_matmul_1_readvariableop_resource:@@
identityЂ(simple_rnn_cell_4/BiasAdd/ReadVariableOpЂ'simple_rnn_cell_4/MatMul/ReadVariableOpЂ)simple_rnn_cell_4/MatMul_1/ReadVariableOpЂwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
	transpose	Transposeinputstranspose/perm:output:0*
T0*=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџџџџџр
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ђ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
shrink_axis_mask
'simple_rnn_cell_4/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_4_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype0
simple_rnn_cell_4/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@
(simple_rnn_cell_4/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_4_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ќ
simple_rnn_cell_4/BiasAddBiasAdd"simple_rnn_cell_4/MatMul:product:00simple_rnn_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@
)simple_rnn_cell_4/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_4_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0
simple_rnn_cell_4/MatMul_1MatMulzeros:output:01simple_rnn_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@
simple_rnn_cell_4/addAddV2"simple_rnn_cell_4/BiasAdd:output:0$simple_rnn_cell_4/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@k
simple_rnn_cell_4/TanhTanhsimple_rnn_cell_4/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ж
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_4_matmul_readvariableop_resource1simple_rnn_cell_4_biasadd_readvariableop_resource2simple_rnn_cell_4_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџ@: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_71075*
condR
while_cond_71074*8
output_shapes'
%: : : : :џџџџџџџџџ@: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   Ы
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@Я
NoOpNoOp)^simple_rnn_cell_4/BiasAdd/ReadVariableOp(^simple_rnn_cell_4/MatMul/ReadVariableOp*^simple_rnn_cell_4/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:'џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : 2T
(simple_rnn_cell_4/BiasAdd/ReadVariableOp(simple_rnn_cell_4/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_4/MatMul/ReadVariableOp'simple_rnn_cell_4/MatMul/ReadVariableOp2V
)simple_rnn_cell_4/MatMul_1/ReadVariableOp)simple_rnn_cell_4/MatMul_1/ReadVariableOp2
whilewhile:e a
=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs


є
B__inference_dense_2_layer_call_and_return_conditional_losses_68354

inputs1
matmul_readvariableop_resource:	@-
biasadd_readvariableop_resource:@
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
ц?
У
P__inference_backward_simple_rnn_1_layer_call_and_return_conditional_losses_71625

inputsB
0simple_rnn_cell_5_matmul_readvariableop_resource:@@?
1simple_rnn_cell_5_biasadd_readvariableop_resource:@D
2simple_rnn_cell_5_matmul_1_readvariableop_resource:@@
identityЂ(simple_rnn_cell_5/BiasAdd/ReadVariableOpЂ'simple_rnn_cell_5/MatMul/ReadVariableOpЂ)simple_rnn_cell_5/MatMul_1/ReadVariableOpЂwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
	transpose	Transposeinputstranspose/perm:output:0*
T0*=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвX
ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: 
	ReverseV2	ReverseV2transpose:y:0ReverseV2/axis:output:0*
T0*=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџџџџџх
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensorReverseV2:output:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ђ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
shrink_axis_mask
'simple_rnn_cell_5/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_5_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype0
simple_rnn_cell_5/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@
(simple_rnn_cell_5/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_5_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ќ
simple_rnn_cell_5/BiasAddBiasAdd"simple_rnn_cell_5/MatMul:product:00simple_rnn_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@
)simple_rnn_cell_5/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_5_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0
simple_rnn_cell_5/MatMul_1MatMulzeros:output:01simple_rnn_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@
simple_rnn_cell_5/addAddV2"simple_rnn_cell_5/BiasAdd:output:0$simple_rnn_cell_5/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@k
simple_rnn_cell_5/TanhTanhsimple_rnn_cell_5/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ж
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_5_matmul_readvariableop_resource1simple_rnn_cell_5_biasadd_readvariableop_resource2simple_rnn_cell_5_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџ@: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_71559*
condR
while_cond_71558*8
output_shapes'
%: : : : :џџџџџџџџџ@: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   Ы
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@Я
NoOpNoOp)^simple_rnn_cell_5/BiasAdd/ReadVariableOp(^simple_rnn_cell_5/MatMul/ReadVariableOp*^simple_rnn_cell_5/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:'џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : 2T
(simple_rnn_cell_5/BiasAdd/ReadVariableOp(simple_rnn_cell_5/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_5/MatMul/ReadVariableOp'simple_rnn_cell_5/MatMul/ReadVariableOp2V
)simple_rnn_cell_5/MatMul_1/ReadVariableOp)simple_rnn_cell_5/MatMul_1/ReadVariableOp2
whilewhile:e a
=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
В,
Ч
while_body_67928
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0J
8while_simple_rnn_cell_4_matmul_readvariableop_resource_0:@@G
9while_simple_rnn_cell_4_biasadd_readvariableop_resource_0:@L
:while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0:@@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorH
6while_simple_rnn_cell_4_matmul_readvariableop_resource:@@E
7while_simple_rnn_cell_4_biasadd_readvariableop_resource:@J
8while_simple_rnn_cell_4_matmul_1_readvariableop_resource:@@Ђ.while/simple_rnn_cell_4/BiasAdd/ReadVariableOpЂ-while/simple_rnn_cell_4/MatMul/ReadVariableOpЂ/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџџџџџЏ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
element_dtype0І
-while/simple_rnn_cell_4/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_4_matmul_readvariableop_resource_0*
_output_shapes

:@@*
dtype0У
while/simple_rnn_cell_4/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@Є
.while/simple_rnn_cell_4/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_4_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0О
while/simple_rnn_cell_4/BiasAddBiasAdd(while/simple_rnn_cell_4/MatMul:product:06while/simple_rnn_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@Њ
/while/simple_rnn_cell_4/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype0Њ
 while/simple_rnn_cell_4/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@Ќ
while/simple_rnn_cell_4/addAddV2(while/simple_rnn_cell_4/BiasAdd:output:0*while/simple_rnn_cell_4/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@w
while/simple_rnn_cell_4/TanhTanhwhile/simple_rnn_cell_4/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@Щ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder while/simple_rnn_cell_4/Tanh:y:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: }
while/Identity_4Identity while/simple_rnn_cell_4/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@п

while/NoOpNoOp/^while/simple_rnn_cell_4/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_4/MatMul/ReadVariableOp0^while/simple_rnn_cell_4/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_4_biasadd_readvariableop_resource9while_simple_rnn_cell_4_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_4_matmul_1_readvariableop_resource:while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_4_matmul_readvariableop_resource8while_simple_rnn_cell_4_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :џџџџџџџџџ@: : : : : 2`
.while/simple_rnn_cell_4/BiasAdd/ReadVariableOp.while/simple_rnn_cell_4/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_4/MatMul/ReadVariableOp-while/simple_rnn_cell_4/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
: 
е
Ѕ
while_cond_67648
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_67648___redundant_placeholder03
/while_while_cond_67648___redundant_placeholder13
/while_while_cond_67648___redundant_placeholder23
/while_while_cond_67648___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :џџџџџџџџџ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
:
В,
Ч
while_body_71449
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0J
8while_simple_rnn_cell_5_matmul_readvariableop_resource_0:@@G
9while_simple_rnn_cell_5_biasadd_readvariableop_resource_0:@L
:while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0:@@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorH
6while_simple_rnn_cell_5_matmul_readvariableop_resource:@@E
7while_simple_rnn_cell_5_biasadd_readvariableop_resource:@J
8while_simple_rnn_cell_5_matmul_1_readvariableop_resource:@@Ђ.while/simple_rnn_cell_5/BiasAdd/ReadVariableOpЂ-while/simple_rnn_cell_5/MatMul/ReadVariableOpЂ/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџџџџџЏ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
element_dtype0І
-while/simple_rnn_cell_5/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_5_matmul_readvariableop_resource_0*
_output_shapes

:@@*
dtype0У
while/simple_rnn_cell_5/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@Є
.while/simple_rnn_cell_5/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_5_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0О
while/simple_rnn_cell_5/BiasAddBiasAdd(while/simple_rnn_cell_5/MatMul:product:06while/simple_rnn_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@Њ
/while/simple_rnn_cell_5/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype0Њ
 while/simple_rnn_cell_5/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@Ќ
while/simple_rnn_cell_5/addAddV2(while/simple_rnn_cell_5/BiasAdd:output:0*while/simple_rnn_cell_5/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@w
while/simple_rnn_cell_5/TanhTanhwhile/simple_rnn_cell_5/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@Щ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder while/simple_rnn_cell_5/Tanh:y:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: }
while/Identity_4Identity while/simple_rnn_cell_5/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@п

while/NoOpNoOp/^while/simple_rnn_cell_5/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_5/MatMul/ReadVariableOp0^while/simple_rnn_cell_5/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_5_biasadd_readvariableop_resource9while_simple_rnn_cell_5_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_5_matmul_1_readvariableop_resource:while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_5_matmul_readvariableop_resource8while_simple_rnn_cell_5_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :џџџџџџџџџ@: : : : : 2`
.while/simple_rnn_cell_5/BiasAdd/ReadVariableOp.while/simple_rnn_cell_5/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_5/MatMul/ReadVariableOp-while/simple_rnn_cell_5/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
: 
Є

G__inference_sequential_1_layer_call_and_return_conditional_losses_68377

inputs$
embedding_1_68058:	Љ @'
bidirectional_1_68330:@@#
bidirectional_1_68332:@'
bidirectional_1_68334:@@'
bidirectional_1_68336:@@#
bidirectional_1_68338:@'
bidirectional_1_68340:@@ 
dense_2_68355:	@
dense_2_68357:@
dense_3_68371:@
dense_3_68373:
identityЂ'bidirectional_1/StatefulPartitionedCallЂdense_2/StatefulPartitionedCallЂdense_3/StatefulPartitionedCallЂ#embedding_1/StatefulPartitionedCallё
#embedding_1/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_1_68058*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_embedding_1_layer_call_and_return_conditional_losses_68057[
embedding_1/NotEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
embedding_1/NotEqualNotEqualinputsembedding_1/NotEqual/y:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџЏ
'bidirectional_1/StatefulPartitionedCallStatefulPartitionedCall,embedding_1/StatefulPartitionedCall:output:0embedding_1/NotEqual:z:0bidirectional_1_68330bidirectional_1_68332bidirectional_1_68334bidirectional_1_68336bidirectional_1_68338bidirectional_1_68340*
Tin

2
*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_bidirectional_1_layer_call_and_return_conditional_losses_68329
dense_2/StatefulPartitionedCallStatefulPartitionedCall0bidirectional_1/StatefulPartitionedCall:output:0dense_2_68355dense_2_68357*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_68354
dense_3/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0dense_3_68371dense_3_68373*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_68370w
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџк
NoOpNoOp(^bidirectional_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall$^embedding_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:џџџџџџџџџџџџџџџџџџ: : : : : : : : : : : 2R
'bidirectional_1/StatefulPartitionedCall'bidirectional_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2J
#embedding_1/StatefulPartitionedCall#embedding_1/StatefulPartitionedCall:X T
0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
КV
Ь
&backward_simple_rnn_1_while_body_70276H
Dbackward_simple_rnn_1_while_backward_simple_rnn_1_while_loop_counterN
Jbackward_simple_rnn_1_while_backward_simple_rnn_1_while_maximum_iterations+
'backward_simple_rnn_1_while_placeholder-
)backward_simple_rnn_1_while_placeholder_1-
)backward_simple_rnn_1_while_placeholder_2-
)backward_simple_rnn_1_while_placeholder_3G
Cbackward_simple_rnn_1_while_backward_simple_rnn_1_strided_slice_1_0
backward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_backward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0
backward_simple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_backward_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensor_0`
Nbackward_simple_rnn_1_while_simple_rnn_cell_5_matmul_readvariableop_resource_0:@@]
Obackward_simple_rnn_1_while_simple_rnn_cell_5_biasadd_readvariableop_resource_0:@b
Pbackward_simple_rnn_1_while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0:@@(
$backward_simple_rnn_1_while_identity*
&backward_simple_rnn_1_while_identity_1*
&backward_simple_rnn_1_while_identity_2*
&backward_simple_rnn_1_while_identity_3*
&backward_simple_rnn_1_while_identity_4*
&backward_simple_rnn_1_while_identity_5E
Abackward_simple_rnn_1_while_backward_simple_rnn_1_strided_slice_1
}backward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_backward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor
backward_simple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_backward_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensor^
Lbackward_simple_rnn_1_while_simple_rnn_cell_5_matmul_readvariableop_resource:@@[
Mbackward_simple_rnn_1_while_simple_rnn_cell_5_biasadd_readvariableop_resource:@`
Nbackward_simple_rnn_1_while_simple_rnn_cell_5_matmul_1_readvariableop_resource:@@ЂDbackward_simple_rnn_1/while/simple_rnn_cell_5/BiasAdd/ReadVariableOpЂCbackward_simple_rnn_1/while/simple_rnn_cell_5/MatMul/ReadVariableOpЂEbackward_simple_rnn_1/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp
Mbackward_simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   
?backward_simple_rnn_1/while/TensorArrayV2Read/TensorListGetItemTensorListGetItembackward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_backward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0'backward_simple_rnn_1_while_placeholderVbackward_simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ@*
element_dtype0 
Obackward_simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   
Abackward_simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItemTensorListGetItembackward_simple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_backward_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensor_0'backward_simple_rnn_1_while_placeholderXbackward_simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0
в
Cbackward_simple_rnn_1/while/simple_rnn_cell_5/MatMul/ReadVariableOpReadVariableOpNbackward_simple_rnn_1_while_simple_rnn_cell_5_matmul_readvariableop_resource_0*
_output_shapes

:@@*
dtype0
4backward_simple_rnn_1/while/simple_rnn_cell_5/MatMulMatMulFbackward_simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem:item:0Kbackward_simple_rnn_1/while/simple_rnn_cell_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@а
Dbackward_simple_rnn_1/while/simple_rnn_cell_5/BiasAdd/ReadVariableOpReadVariableOpObackward_simple_rnn_1_while_simple_rnn_cell_5_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0
5backward_simple_rnn_1/while/simple_rnn_cell_5/BiasAddBiasAdd>backward_simple_rnn_1/while/simple_rnn_cell_5/MatMul:product:0Lbackward_simple_rnn_1/while/simple_rnn_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@ж
Ebackward_simple_rnn_1/while/simple_rnn_cell_5/MatMul_1/ReadVariableOpReadVariableOpPbackward_simple_rnn_1_while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype0ь
6backward_simple_rnn_1/while/simple_rnn_cell_5/MatMul_1MatMul)backward_simple_rnn_1_while_placeholder_3Mbackward_simple_rnn_1/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@ю
1backward_simple_rnn_1/while/simple_rnn_cell_5/addAddV2>backward_simple_rnn_1/while/simple_rnn_cell_5/BiasAdd:output:0@backward_simple_rnn_1/while/simple_rnn_cell_5/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@Ѓ
2backward_simple_rnn_1/while/simple_rnn_cell_5/TanhTanh5backward_simple_rnn_1/while/simple_rnn_cell_5/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@{
*backward_simple_rnn_1/while/Tile/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      й
 backward_simple_rnn_1/while/TileTileHbackward_simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItem:item:03backward_simple_rnn_1/while/Tile/multiples:output:0*
T0
*'
_output_shapes
:џџџџџџџџџ№
$backward_simple_rnn_1/while/SelectV2SelectV2)backward_simple_rnn_1/while/Tile:output:06backward_simple_rnn_1/while/simple_rnn_cell_5/Tanh:y:0)backward_simple_rnn_1_while_placeholder_2*
T0*'
_output_shapes
:џџџџџџџџџ@}
,backward_simple_rnn_1/while/Tile_1/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      н
"backward_simple_rnn_1/while/Tile_1TileHbackward_simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItem:item:05backward_simple_rnn_1/while/Tile_1/multiples:output:0*
T0
*'
_output_shapes
:џџџџџџџџџє
&backward_simple_rnn_1/while/SelectV2_1SelectV2+backward_simple_rnn_1/while/Tile_1:output:06backward_simple_rnn_1/while/simple_rnn_cell_5/Tanh:y:0)backward_simple_rnn_1_while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ@
@backward_simple_rnn_1/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem)backward_simple_rnn_1_while_placeholder_1'backward_simple_rnn_1_while_placeholder-backward_simple_rnn_1/while/SelectV2:output:0*
_output_shapes
: *
element_dtype0:щшвc
!backward_simple_rnn_1/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
backward_simple_rnn_1/while/addAddV2'backward_simple_rnn_1_while_placeholder*backward_simple_rnn_1/while/add/y:output:0*
T0*
_output_shapes
: e
#backward_simple_rnn_1/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :П
!backward_simple_rnn_1/while/add_1AddV2Dbackward_simple_rnn_1_while_backward_simple_rnn_1_while_loop_counter,backward_simple_rnn_1/while/add_1/y:output:0*
T0*
_output_shapes
: 
$backward_simple_rnn_1/while/IdentityIdentity%backward_simple_rnn_1/while/add_1:z:0!^backward_simple_rnn_1/while/NoOp*
T0*
_output_shapes
: Т
&backward_simple_rnn_1/while/Identity_1IdentityJbackward_simple_rnn_1_while_backward_simple_rnn_1_while_maximum_iterations!^backward_simple_rnn_1/while/NoOp*
T0*
_output_shapes
: 
&backward_simple_rnn_1/while/Identity_2Identity#backward_simple_rnn_1/while/add:z:0!^backward_simple_rnn_1/while/NoOp*
T0*
_output_shapes
: Ш
&backward_simple_rnn_1/while/Identity_3IdentityPbackward_simple_rnn_1/while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^backward_simple_rnn_1/while/NoOp*
T0*
_output_shapes
: Ж
&backward_simple_rnn_1/while/Identity_4Identity-backward_simple_rnn_1/while/SelectV2:output:0!^backward_simple_rnn_1/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@И
&backward_simple_rnn_1/while/Identity_5Identity/backward_simple_rnn_1/while/SelectV2_1:output:0!^backward_simple_rnn_1/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@З
 backward_simple_rnn_1/while/NoOpNoOpE^backward_simple_rnn_1/while/simple_rnn_cell_5/BiasAdd/ReadVariableOpD^backward_simple_rnn_1/while/simple_rnn_cell_5/MatMul/ReadVariableOpF^backward_simple_rnn_1/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
Abackward_simple_rnn_1_while_backward_simple_rnn_1_strided_slice_1Cbackward_simple_rnn_1_while_backward_simple_rnn_1_strided_slice_1_0"U
$backward_simple_rnn_1_while_identity-backward_simple_rnn_1/while/Identity:output:0"Y
&backward_simple_rnn_1_while_identity_1/backward_simple_rnn_1/while/Identity_1:output:0"Y
&backward_simple_rnn_1_while_identity_2/backward_simple_rnn_1/while/Identity_2:output:0"Y
&backward_simple_rnn_1_while_identity_3/backward_simple_rnn_1/while/Identity_3:output:0"Y
&backward_simple_rnn_1_while_identity_4/backward_simple_rnn_1/while/Identity_4:output:0"Y
&backward_simple_rnn_1_while_identity_5/backward_simple_rnn_1/while/Identity_5:output:0" 
Mbackward_simple_rnn_1_while_simple_rnn_cell_5_biasadd_readvariableop_resourceObackward_simple_rnn_1_while_simple_rnn_cell_5_biasadd_readvariableop_resource_0"Ђ
Nbackward_simple_rnn_1_while_simple_rnn_cell_5_matmul_1_readvariableop_resourcePbackward_simple_rnn_1_while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0"
Lbackward_simple_rnn_1_while_simple_rnn_cell_5_matmul_readvariableop_resourceNbackward_simple_rnn_1_while_simple_rnn_cell_5_matmul_readvariableop_resource_0"
backward_simple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_backward_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensorbackward_simple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_backward_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensor_0"
}backward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_backward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensorbackward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_backward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :џџџџџџџџџ@:џџџџџџџџџ@: : : : : : 2
Dbackward_simple_rnn_1/while/simple_rnn_cell_5/BiasAdd/ReadVariableOpDbackward_simple_rnn_1/while/simple_rnn_cell_5/BiasAdd/ReadVariableOp2
Cbackward_simple_rnn_1/while/simple_rnn_cell_5/MatMul/ReadVariableOpCbackward_simple_rnn_1/while/simple_rnn_cell_5/MatMul/ReadVariableOp2
Ebackward_simple_rnn_1/while/simple_rnn_cell_5/MatMul_1/ReadVariableOpEbackward_simple_rnn_1/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
е
Ѕ
while_cond_67531
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_67531___redundant_placeholder03
/while_while_cond_67531___redundant_placeholder13
/while_while_cond_67531___redundant_placeholder23
/while_while_cond_67531___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :џџџџџџџџџ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
:
І
С
5__inference_backward_simple_rnn_1_layer_call_fn_71152
inputs_0
unknown:@@
	unknown_0:@
	unknown_1:@@
identityЂStatefulPartitionedCallє
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_backward_simple_rnn_1_layer_call_and_return_conditional_losses_67314o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ@: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@
"
_user_specified_name
inputs/0

з
&backward_simple_rnn_1_while_cond_70542H
Dbackward_simple_rnn_1_while_backward_simple_rnn_1_while_loop_counterN
Jbackward_simple_rnn_1_while_backward_simple_rnn_1_while_maximum_iterations+
'backward_simple_rnn_1_while_placeholder-
)backward_simple_rnn_1_while_placeholder_1-
)backward_simple_rnn_1_while_placeholder_2-
)backward_simple_rnn_1_while_placeholder_3J
Fbackward_simple_rnn_1_while_less_backward_simple_rnn_1_strided_slice_1_
[backward_simple_rnn_1_while_backward_simple_rnn_1_while_cond_70542___redundant_placeholder0_
[backward_simple_rnn_1_while_backward_simple_rnn_1_while_cond_70542___redundant_placeholder1_
[backward_simple_rnn_1_while_backward_simple_rnn_1_while_cond_70542___redundant_placeholder2_
[backward_simple_rnn_1_while_backward_simple_rnn_1_while_cond_70542___redundant_placeholder3_
[backward_simple_rnn_1_while_backward_simple_rnn_1_while_cond_70542___redundant_placeholder4(
$backward_simple_rnn_1_while_identity
К
 backward_simple_rnn_1/while/LessLess'backward_simple_rnn_1_while_placeholderFbackward_simple_rnn_1_while_less_backward_simple_rnn_1_strided_slice_1*
T0*
_output_shapes
: w
$backward_simple_rnn_1/while/IdentityIdentity$backward_simple_rnn_1/while/Less:z:0*
T0
*
_output_shapes
: "U
$backward_simple_rnn_1_while_identity-backward_simple_rnn_1/while/Identity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D: : : : :џџџџџџџџџ@:џџџџџџџџџ@: :::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
::

_output_shapes
:
мx
С
Bsequential_1_bidirectional_1_forward_simple_rnn_1_while_body_66668
|sequential_1_bidirectional_1_forward_simple_rnn_1_while_sequential_1_bidirectional_1_forward_simple_rnn_1_while_loop_counter
sequential_1_bidirectional_1_forward_simple_rnn_1_while_sequential_1_bidirectional_1_forward_simple_rnn_1_while_maximum_iterationsG
Csequential_1_bidirectional_1_forward_simple_rnn_1_while_placeholderI
Esequential_1_bidirectional_1_forward_simple_rnn_1_while_placeholder_1I
Esequential_1_bidirectional_1_forward_simple_rnn_1_while_placeholder_2I
Esequential_1_bidirectional_1_forward_simple_rnn_1_while_placeholder_3
{sequential_1_bidirectional_1_forward_simple_rnn_1_while_sequential_1_bidirectional_1_forward_simple_rnn_1_strided_slice_1_0М
Зsequential_1_bidirectional_1_forward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_sequential_1_bidirectional_1_forward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0Р
Лsequential_1_bidirectional_1_forward_simple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_sequential_1_bidirectional_1_forward_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensor_0|
jsequential_1_bidirectional_1_forward_simple_rnn_1_while_simple_rnn_cell_4_matmul_readvariableop_resource_0:@@y
ksequential_1_bidirectional_1_forward_simple_rnn_1_while_simple_rnn_cell_4_biasadd_readvariableop_resource_0:@~
lsequential_1_bidirectional_1_forward_simple_rnn_1_while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0:@@D
@sequential_1_bidirectional_1_forward_simple_rnn_1_while_identityF
Bsequential_1_bidirectional_1_forward_simple_rnn_1_while_identity_1F
Bsequential_1_bidirectional_1_forward_simple_rnn_1_while_identity_2F
Bsequential_1_bidirectional_1_forward_simple_rnn_1_while_identity_3F
Bsequential_1_bidirectional_1_forward_simple_rnn_1_while_identity_4F
Bsequential_1_bidirectional_1_forward_simple_rnn_1_while_identity_5}
ysequential_1_bidirectional_1_forward_simple_rnn_1_while_sequential_1_bidirectional_1_forward_simple_rnn_1_strided_slice_1К
Еsequential_1_bidirectional_1_forward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_sequential_1_bidirectional_1_forward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensorО
Йsequential_1_bidirectional_1_forward_simple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_sequential_1_bidirectional_1_forward_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensorz
hsequential_1_bidirectional_1_forward_simple_rnn_1_while_simple_rnn_cell_4_matmul_readvariableop_resource:@@w
isequential_1_bidirectional_1_forward_simple_rnn_1_while_simple_rnn_cell_4_biasadd_readvariableop_resource:@|
jsequential_1_bidirectional_1_forward_simple_rnn_1_while_simple_rnn_cell_4_matmul_1_readvariableop_resource:@@Ђ`sequential_1/bidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/BiasAdd/ReadVariableOpЂ_sequential_1/bidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/MatMul/ReadVariableOpЂasequential_1/bidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/MatMul_1/ReadVariableOpК
isequential_1/bidirectional_1/forward_simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   Ё
[sequential_1/bidirectional_1/forward_simple_rnn_1/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemЗsequential_1_bidirectional_1_forward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_sequential_1_bidirectional_1_forward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0Csequential_1_bidirectional_1_forward_simple_rnn_1_while_placeholderrsequential_1/bidirectional_1/forward_simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ@*
element_dtype0М
ksequential_1/bidirectional_1/forward_simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   Љ
]sequential_1/bidirectional_1/forward_simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItemTensorListGetItemЛsequential_1_bidirectional_1_forward_simple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_sequential_1_bidirectional_1_forward_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensor_0Csequential_1_bidirectional_1_forward_simple_rnn_1_while_placeholdertsequential_1/bidirectional_1/forward_simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0

_sequential_1/bidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/MatMul/ReadVariableOpReadVariableOpjsequential_1_bidirectional_1_forward_simple_rnn_1_while_simple_rnn_cell_4_matmul_readvariableop_resource_0*
_output_shapes

:@@*
dtype0й
Psequential_1/bidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/MatMulMatMulbsequential_1/bidirectional_1/forward_simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem:item:0gsequential_1/bidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@
`sequential_1/bidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/BiasAdd/ReadVariableOpReadVariableOpksequential_1_bidirectional_1_forward_simple_rnn_1_while_simple_rnn_cell_4_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0д
Qsequential_1/bidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/BiasAddBiasAddZsequential_1/bidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/MatMul:product:0hsequential_1/bidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@
asequential_1/bidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/MatMul_1/ReadVariableOpReadVariableOplsequential_1_bidirectional_1_forward_simple_rnn_1_while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype0Р
Rsequential_1/bidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/MatMul_1MatMulEsequential_1_bidirectional_1_forward_simple_rnn_1_while_placeholder_3isequential_1/bidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@Т
Msequential_1/bidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/addAddV2Zsequential_1/bidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/BiasAdd:output:0\sequential_1/bidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@л
Nsequential_1/bidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/TanhTanhQsequential_1/bidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@
Fsequential_1/bidirectional_1/forward_simple_rnn_1/while/Tile/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      ­
<sequential_1/bidirectional_1/forward_simple_rnn_1/while/TileTiledsequential_1/bidirectional_1/forward_simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItem:item:0Osequential_1/bidirectional_1/forward_simple_rnn_1/while/Tile/multiples:output:0*
T0
*'
_output_shapes
:џџџџџџџџџр
@sequential_1/bidirectional_1/forward_simple_rnn_1/while/SelectV2SelectV2Esequential_1/bidirectional_1/forward_simple_rnn_1/while/Tile:output:0Rsequential_1/bidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/Tanh:y:0Esequential_1_bidirectional_1_forward_simple_rnn_1_while_placeholder_2*
T0*'
_output_shapes
:џџџџџџџџџ@
Hsequential_1/bidirectional_1/forward_simple_rnn_1/while/Tile_1/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      Б
>sequential_1/bidirectional_1/forward_simple_rnn_1/while/Tile_1Tiledsequential_1/bidirectional_1/forward_simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItem:item:0Qsequential_1/bidirectional_1/forward_simple_rnn_1/while/Tile_1/multiples:output:0*
T0
*'
_output_shapes
:џџџџџџџџџф
Bsequential_1/bidirectional_1/forward_simple_rnn_1/while/SelectV2_1SelectV2Gsequential_1/bidirectional_1/forward_simple_rnn_1/while/Tile_1:output:0Rsequential_1/bidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/Tanh:y:0Esequential_1_bidirectional_1_forward_simple_rnn_1_while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ@
\sequential_1/bidirectional_1/forward_simple_rnn_1/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemEsequential_1_bidirectional_1_forward_simple_rnn_1_while_placeholder_1Csequential_1_bidirectional_1_forward_simple_rnn_1_while_placeholderIsequential_1/bidirectional_1/forward_simple_rnn_1/while/SelectV2:output:0*
_output_shapes
: *
element_dtype0:щшв
=sequential_1/bidirectional_1/forward_simple_rnn_1/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :ђ
;sequential_1/bidirectional_1/forward_simple_rnn_1/while/addAddV2Csequential_1_bidirectional_1_forward_simple_rnn_1_while_placeholderFsequential_1/bidirectional_1/forward_simple_rnn_1/while/add/y:output:0*
T0*
_output_shapes
: 
?sequential_1/bidirectional_1/forward_simple_rnn_1/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Џ
=sequential_1/bidirectional_1/forward_simple_rnn_1/while/add_1AddV2|sequential_1_bidirectional_1_forward_simple_rnn_1_while_sequential_1_bidirectional_1_forward_simple_rnn_1_while_loop_counterHsequential_1/bidirectional_1/forward_simple_rnn_1/while/add_1/y:output:0*
T0*
_output_shapes
: я
@sequential_1/bidirectional_1/forward_simple_rnn_1/while/IdentityIdentityAsequential_1/bidirectional_1/forward_simple_rnn_1/while/add_1:z:0=^sequential_1/bidirectional_1/forward_simple_rnn_1/while/NoOp*
T0*
_output_shapes
: Г
Bsequential_1/bidirectional_1/forward_simple_rnn_1/while/Identity_1Identitysequential_1_bidirectional_1_forward_simple_rnn_1_while_sequential_1_bidirectional_1_forward_simple_rnn_1_while_maximum_iterations=^sequential_1/bidirectional_1/forward_simple_rnn_1/while/NoOp*
T0*
_output_shapes
: я
Bsequential_1/bidirectional_1/forward_simple_rnn_1/while/Identity_2Identity?sequential_1/bidirectional_1/forward_simple_rnn_1/while/add:z:0=^sequential_1/bidirectional_1/forward_simple_rnn_1/while/NoOp*
T0*
_output_shapes
: 
Bsequential_1/bidirectional_1/forward_simple_rnn_1/while/Identity_3Identitylsequential_1/bidirectional_1/forward_simple_rnn_1/while/TensorArrayV2Write/TensorListSetItem:output_handle:0=^sequential_1/bidirectional_1/forward_simple_rnn_1/while/NoOp*
T0*
_output_shapes
: 
Bsequential_1/bidirectional_1/forward_simple_rnn_1/while/Identity_4IdentityIsequential_1/bidirectional_1/forward_simple_rnn_1/while/SelectV2:output:0=^sequential_1/bidirectional_1/forward_simple_rnn_1/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@
Bsequential_1/bidirectional_1/forward_simple_rnn_1/while/Identity_5IdentityKsequential_1/bidirectional_1/forward_simple_rnn_1/while/SelectV2_1:output:0=^sequential_1/bidirectional_1/forward_simple_rnn_1/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@Ї
<sequential_1/bidirectional_1/forward_simple_rnn_1/while/NoOpNoOpa^sequential_1/bidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/BiasAdd/ReadVariableOp`^sequential_1/bidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/MatMul/ReadVariableOpb^sequential_1/bidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
@sequential_1_bidirectional_1_forward_simple_rnn_1_while_identityIsequential_1/bidirectional_1/forward_simple_rnn_1/while/Identity:output:0"
Bsequential_1_bidirectional_1_forward_simple_rnn_1_while_identity_1Ksequential_1/bidirectional_1/forward_simple_rnn_1/while/Identity_1:output:0"
Bsequential_1_bidirectional_1_forward_simple_rnn_1_while_identity_2Ksequential_1/bidirectional_1/forward_simple_rnn_1/while/Identity_2:output:0"
Bsequential_1_bidirectional_1_forward_simple_rnn_1_while_identity_3Ksequential_1/bidirectional_1/forward_simple_rnn_1/while/Identity_3:output:0"
Bsequential_1_bidirectional_1_forward_simple_rnn_1_while_identity_4Ksequential_1/bidirectional_1/forward_simple_rnn_1/while/Identity_4:output:0"
Bsequential_1_bidirectional_1_forward_simple_rnn_1_while_identity_5Ksequential_1/bidirectional_1/forward_simple_rnn_1/while/Identity_5:output:0"ј
ysequential_1_bidirectional_1_forward_simple_rnn_1_while_sequential_1_bidirectional_1_forward_simple_rnn_1_strided_slice_1{sequential_1_bidirectional_1_forward_simple_rnn_1_while_sequential_1_bidirectional_1_forward_simple_rnn_1_strided_slice_1_0"и
isequential_1_bidirectional_1_forward_simple_rnn_1_while_simple_rnn_cell_4_biasadd_readvariableop_resourceksequential_1_bidirectional_1_forward_simple_rnn_1_while_simple_rnn_cell_4_biasadd_readvariableop_resource_0"к
jsequential_1_bidirectional_1_forward_simple_rnn_1_while_simple_rnn_cell_4_matmul_1_readvariableop_resourcelsequential_1_bidirectional_1_forward_simple_rnn_1_while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0"ж
hsequential_1_bidirectional_1_forward_simple_rnn_1_while_simple_rnn_cell_4_matmul_readvariableop_resourcejsequential_1_bidirectional_1_forward_simple_rnn_1_while_simple_rnn_cell_4_matmul_readvariableop_resource_0"њ
Йsequential_1_bidirectional_1_forward_simple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_sequential_1_bidirectional_1_forward_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensorЛsequential_1_bidirectional_1_forward_simple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_sequential_1_bidirectional_1_forward_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensor_0"ђ
Еsequential_1_bidirectional_1_forward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_sequential_1_bidirectional_1_forward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensorЗsequential_1_bidirectional_1_forward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_sequential_1_bidirectional_1_forward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :џџџџџџџџџ@:џџџџџџџџџ@: : : : : : 2Ф
`sequential_1/bidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/BiasAdd/ReadVariableOp`sequential_1/bidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/BiasAdd/ReadVariableOp2Т
_sequential_1/bidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/MatMul/ReadVariableOp_sequential_1/bidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/MatMul/ReadVariableOp2Ц
asequential_1/bidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/MatMul_1/ReadVariableOpasequential_1/bidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 

з
&backward_simple_rnn_1_while_cond_68626H
Dbackward_simple_rnn_1_while_backward_simple_rnn_1_while_loop_counterN
Jbackward_simple_rnn_1_while_backward_simple_rnn_1_while_maximum_iterations+
'backward_simple_rnn_1_while_placeholder-
)backward_simple_rnn_1_while_placeholder_1-
)backward_simple_rnn_1_while_placeholder_2-
)backward_simple_rnn_1_while_placeholder_3J
Fbackward_simple_rnn_1_while_less_backward_simple_rnn_1_strided_slice_1_
[backward_simple_rnn_1_while_backward_simple_rnn_1_while_cond_68626___redundant_placeholder0_
[backward_simple_rnn_1_while_backward_simple_rnn_1_while_cond_68626___redundant_placeholder1_
[backward_simple_rnn_1_while_backward_simple_rnn_1_while_cond_68626___redundant_placeholder2_
[backward_simple_rnn_1_while_backward_simple_rnn_1_while_cond_68626___redundant_placeholder3_
[backward_simple_rnn_1_while_backward_simple_rnn_1_while_cond_68626___redundant_placeholder4(
$backward_simple_rnn_1_while_identity
К
 backward_simple_rnn_1/while/LessLess'backward_simple_rnn_1_while_placeholderFbackward_simple_rnn_1_while_less_backward_simple_rnn_1_strided_slice_1*
T0*
_output_shapes
: w
$backward_simple_rnn_1/while/IdentityIdentity$backward_simple_rnn_1/while/Less:z:0*
T0
*
_output_shapes
: "U
$backward_simple_rnn_1_while_identity-backward_simple_rnn_1/while/Identity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D: : : : :џџџџџџџџџ@:џџџџџџџџџ@: :::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
::

_output_shapes
:
џ
З

6bidirectional_1_backward_simple_rnn_1_while_cond_69476h
dbidirectional_1_backward_simple_rnn_1_while_bidirectional_1_backward_simple_rnn_1_while_loop_countern
jbidirectional_1_backward_simple_rnn_1_while_bidirectional_1_backward_simple_rnn_1_while_maximum_iterations;
7bidirectional_1_backward_simple_rnn_1_while_placeholder=
9bidirectional_1_backward_simple_rnn_1_while_placeholder_1=
9bidirectional_1_backward_simple_rnn_1_while_placeholder_2=
9bidirectional_1_backward_simple_rnn_1_while_placeholder_3j
fbidirectional_1_backward_simple_rnn_1_while_less_bidirectional_1_backward_simple_rnn_1_strided_slice_1
{bidirectional_1_backward_simple_rnn_1_while_bidirectional_1_backward_simple_rnn_1_while_cond_69476___redundant_placeholder0
{bidirectional_1_backward_simple_rnn_1_while_bidirectional_1_backward_simple_rnn_1_while_cond_69476___redundant_placeholder1
{bidirectional_1_backward_simple_rnn_1_while_bidirectional_1_backward_simple_rnn_1_while_cond_69476___redundant_placeholder2
{bidirectional_1_backward_simple_rnn_1_while_bidirectional_1_backward_simple_rnn_1_while_cond_69476___redundant_placeholder3
{bidirectional_1_backward_simple_rnn_1_while_bidirectional_1_backward_simple_rnn_1_while_cond_69476___redundant_placeholder48
4bidirectional_1_backward_simple_rnn_1_while_identity
њ
0bidirectional_1/backward_simple_rnn_1/while/LessLess7bidirectional_1_backward_simple_rnn_1_while_placeholderfbidirectional_1_backward_simple_rnn_1_while_less_bidirectional_1_backward_simple_rnn_1_strided_slice_1*
T0*
_output_shapes
: 
4bidirectional_1/backward_simple_rnn_1/while/IdentityIdentity4bidirectional_1/backward_simple_rnn_1/while/Less:z:0*
T0
*
_output_shapes
: "u
4bidirectional_1_backward_simple_rnn_1_while_identity=bidirectional_1/backward_simple_rnn_1/while/Identity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D: : : : :џџџџџџџџџ@:џџџџџџџџџ@: :::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
::

_output_shapes
:

ф
Csequential_1_bidirectional_1_backward_simple_rnn_1_while_cond_66799
~sequential_1_bidirectional_1_backward_simple_rnn_1_while_sequential_1_bidirectional_1_backward_simple_rnn_1_while_loop_counter
sequential_1_bidirectional_1_backward_simple_rnn_1_while_sequential_1_bidirectional_1_backward_simple_rnn_1_while_maximum_iterationsH
Dsequential_1_bidirectional_1_backward_simple_rnn_1_while_placeholderJ
Fsequential_1_bidirectional_1_backward_simple_rnn_1_while_placeholder_1J
Fsequential_1_bidirectional_1_backward_simple_rnn_1_while_placeholder_2J
Fsequential_1_bidirectional_1_backward_simple_rnn_1_while_placeholder_3
sequential_1_bidirectional_1_backward_simple_rnn_1_while_less_sequential_1_bidirectional_1_backward_simple_rnn_1_strided_slice_1
sequential_1_bidirectional_1_backward_simple_rnn_1_while_sequential_1_bidirectional_1_backward_simple_rnn_1_while_cond_66799___redundant_placeholder0
sequential_1_bidirectional_1_backward_simple_rnn_1_while_sequential_1_bidirectional_1_backward_simple_rnn_1_while_cond_66799___redundant_placeholder1
sequential_1_bidirectional_1_backward_simple_rnn_1_while_sequential_1_bidirectional_1_backward_simple_rnn_1_while_cond_66799___redundant_placeholder2
sequential_1_bidirectional_1_backward_simple_rnn_1_while_sequential_1_bidirectional_1_backward_simple_rnn_1_while_cond_66799___redundant_placeholder3
sequential_1_bidirectional_1_backward_simple_rnn_1_while_sequential_1_bidirectional_1_backward_simple_rnn_1_while_cond_66799___redundant_placeholder4E
Asequential_1_bidirectional_1_backward_simple_rnn_1_while_identity
Џ
=sequential_1/bidirectional_1/backward_simple_rnn_1/while/LessLessDsequential_1_bidirectional_1_backward_simple_rnn_1_while_placeholdersequential_1_bidirectional_1_backward_simple_rnn_1_while_less_sequential_1_bidirectional_1_backward_simple_rnn_1_strided_slice_1*
T0*
_output_shapes
: Б
Asequential_1/bidirectional_1/backward_simple_rnn_1/while/IdentityIdentityAsequential_1/bidirectional_1/backward_simple_rnn_1/while/Less:z:0*
T0
*
_output_shapes
: "
Asequential_1_bidirectional_1_backward_simple_rnn_1_while_identityJsequential_1/bidirectional_1/backward_simple_rnn_1/while/Identity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D: : : : :џџџџџџџџџ@:џџџџџџџџџ@: :::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
::

_output_shapes
:
е
Ѕ
while_cond_70966
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_70966___redundant_placeholder03
/while_while_cond_70966___redundant_placeholder13
/while_while_cond_70966___redundant_placeholder23
/while_while_cond_70966___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :џџџџџџџџџ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
:
е
Ѕ
while_cond_67411
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_67411___redundant_placeholder03
/while_while_cond_67411___redundant_placeholder13
/while_while_cond_67411___redundant_placeholder23
/while_while_cond_67411___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :џџџџџџџџџ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
:



/__inference_bidirectional_1_layer_call_fn_69642

inputs
mask

unknown:@@
	unknown_0:@
	unknown_1:@@
	unknown_2:@@
	unknown_3:@
	unknown_4:@@
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsmaskunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin

2
*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_bidirectional_1_layer_call_and_return_conditional_losses_68329p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:џџџџџџџџџџџџџџџџџџ@:џџџџџџџџџџџџџџџџџџ: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs:VR
0
_output_shapes
:џџџџџџџџџџџџџџџџџџ

_user_specified_namemask
В,
Ч
while_body_71075
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0J
8while_simple_rnn_cell_4_matmul_readvariableop_resource_0:@@G
9while_simple_rnn_cell_4_biasadd_readvariableop_resource_0:@L
:while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0:@@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorH
6while_simple_rnn_cell_4_matmul_readvariableop_resource:@@E
7while_simple_rnn_cell_4_biasadd_readvariableop_resource:@J
8while_simple_rnn_cell_4_matmul_1_readvariableop_resource:@@Ђ.while/simple_rnn_cell_4/BiasAdd/ReadVariableOpЂ-while/simple_rnn_cell_4/MatMul/ReadVariableOpЂ/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџџџџџЏ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
element_dtype0І
-while/simple_rnn_cell_4/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_4_matmul_readvariableop_resource_0*
_output_shapes

:@@*
dtype0У
while/simple_rnn_cell_4/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@Є
.while/simple_rnn_cell_4/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_4_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0О
while/simple_rnn_cell_4/BiasAddBiasAdd(while/simple_rnn_cell_4/MatMul:product:06while/simple_rnn_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@Њ
/while/simple_rnn_cell_4/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype0Њ
 while/simple_rnn_cell_4/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@Ќ
while/simple_rnn_cell_4/addAddV2(while/simple_rnn_cell_4/BiasAdd:output:0*while/simple_rnn_cell_4/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@w
while/simple_rnn_cell_4/TanhTanhwhile/simple_rnn_cell_4/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@Щ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder while/simple_rnn_cell_4/Tanh:y:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: }
while/Identity_4Identity while/simple_rnn_cell_4/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@п

while/NoOpNoOp/^while/simple_rnn_cell_4/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_4/MatMul/ReadVariableOp0^while/simple_rnn_cell_4/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_4_biasadd_readvariableop_resource9while_simple_rnn_cell_4_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_4_matmul_1_readvariableop_resource:while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_4_matmul_readvariableop_resource8while_simple_rnn_cell_4_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :џџџџџџџџџ@: : : : : 2`
.while/simple_rnn_cell_4/BiasAdd/ReadVariableOp.while/simple_rnn_cell_4/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_4/MatMul/ReadVariableOp-while/simple_rnn_cell_4/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
: 
џ
З

6bidirectional_1_backward_simple_rnn_1_while_cond_69189h
dbidirectional_1_backward_simple_rnn_1_while_bidirectional_1_backward_simple_rnn_1_while_loop_countern
jbidirectional_1_backward_simple_rnn_1_while_bidirectional_1_backward_simple_rnn_1_while_maximum_iterations;
7bidirectional_1_backward_simple_rnn_1_while_placeholder=
9bidirectional_1_backward_simple_rnn_1_while_placeholder_1=
9bidirectional_1_backward_simple_rnn_1_while_placeholder_2=
9bidirectional_1_backward_simple_rnn_1_while_placeholder_3j
fbidirectional_1_backward_simple_rnn_1_while_less_bidirectional_1_backward_simple_rnn_1_strided_slice_1
{bidirectional_1_backward_simple_rnn_1_while_bidirectional_1_backward_simple_rnn_1_while_cond_69189___redundant_placeholder0
{bidirectional_1_backward_simple_rnn_1_while_bidirectional_1_backward_simple_rnn_1_while_cond_69189___redundant_placeholder1
{bidirectional_1_backward_simple_rnn_1_while_bidirectional_1_backward_simple_rnn_1_while_cond_69189___redundant_placeholder2
{bidirectional_1_backward_simple_rnn_1_while_bidirectional_1_backward_simple_rnn_1_while_cond_69189___redundant_placeholder3
{bidirectional_1_backward_simple_rnn_1_while_bidirectional_1_backward_simple_rnn_1_while_cond_69189___redundant_placeholder48
4bidirectional_1_backward_simple_rnn_1_while_identity
њ
0bidirectional_1/backward_simple_rnn_1/while/LessLess7bidirectional_1_backward_simple_rnn_1_while_placeholderfbidirectional_1_backward_simple_rnn_1_while_less_bidirectional_1_backward_simple_rnn_1_strided_slice_1*
T0*
_output_shapes
: 
4bidirectional_1/backward_simple_rnn_1/while/IdentityIdentity4bidirectional_1/backward_simple_rnn_1/while/Less:z:0*
T0
*
_output_shapes
: "u
4bidirectional_1_backward_simple_rnn_1_while_identity=bidirectional_1/backward_simple_rnn_1/while/Identity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D: : : : :џџџџџџџџџ@:џџџџџџџџџ@: :::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
::

_output_shapes
:

С
%forward_simple_rnn_1_while_cond_68113F
Bforward_simple_rnn_1_while_forward_simple_rnn_1_while_loop_counterL
Hforward_simple_rnn_1_while_forward_simple_rnn_1_while_maximum_iterations*
&forward_simple_rnn_1_while_placeholder,
(forward_simple_rnn_1_while_placeholder_1,
(forward_simple_rnn_1_while_placeholder_2,
(forward_simple_rnn_1_while_placeholder_3H
Dforward_simple_rnn_1_while_less_forward_simple_rnn_1_strided_slice_1]
Yforward_simple_rnn_1_while_forward_simple_rnn_1_while_cond_68113___redundant_placeholder0]
Yforward_simple_rnn_1_while_forward_simple_rnn_1_while_cond_68113___redundant_placeholder1]
Yforward_simple_rnn_1_while_forward_simple_rnn_1_while_cond_68113___redundant_placeholder2]
Yforward_simple_rnn_1_while_forward_simple_rnn_1_while_cond_68113___redundant_placeholder3]
Yforward_simple_rnn_1_while_forward_simple_rnn_1_while_cond_68113___redundant_placeholder4'
#forward_simple_rnn_1_while_identity
Ж
forward_simple_rnn_1/while/LessLess&forward_simple_rnn_1_while_placeholderDforward_simple_rnn_1_while_less_forward_simple_rnn_1_strided_slice_1*
T0*
_output_shapes
: u
#forward_simple_rnn_1/while/IdentityIdentity#forward_simple_rnn_1/while/Less:z:0*
T0
*
_output_shapes
: "S
#forward_simple_rnn_1_while_identity,forward_simple_rnn_1/while/Identity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D: : : : :џџџџџџџџџ@:џџџџџџџџџ@: :::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
::

_output_shapes
:
п	
Ѓ
F__inference_embedding_1_layer_call_and_return_conditional_losses_69590

inputs)
embedding_lookup_69584:	Љ @
identityЂembedding_lookup^
CastCastinputs*

DstT0*

SrcT0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџТ
embedding_lookupResourceGatherembedding_lookup_69584Cast:y:0*
Tindices0*)
_class
loc:@embedding_lookup/69584*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@*
dtype0Њ
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*)
_class
loc:@embedding_lookup/69584*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:џџџџџџџџџџџџџџџџџџ: 2$
embedding_lookupembedding_lookup:X T
0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
њy
ц
Csequential_1_bidirectional_1_backward_simple_rnn_1_while_body_66800
~sequential_1_bidirectional_1_backward_simple_rnn_1_while_sequential_1_bidirectional_1_backward_simple_rnn_1_while_loop_counter
sequential_1_bidirectional_1_backward_simple_rnn_1_while_sequential_1_bidirectional_1_backward_simple_rnn_1_while_maximum_iterationsH
Dsequential_1_bidirectional_1_backward_simple_rnn_1_while_placeholderJ
Fsequential_1_bidirectional_1_backward_simple_rnn_1_while_placeholder_1J
Fsequential_1_bidirectional_1_backward_simple_rnn_1_while_placeholder_2J
Fsequential_1_bidirectional_1_backward_simple_rnn_1_while_placeholder_3
}sequential_1_bidirectional_1_backward_simple_rnn_1_while_sequential_1_bidirectional_1_backward_simple_rnn_1_strided_slice_1_0О
Йsequential_1_bidirectional_1_backward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_sequential_1_bidirectional_1_backward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0Т
Нsequential_1_bidirectional_1_backward_simple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_sequential_1_bidirectional_1_backward_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensor_0}
ksequential_1_bidirectional_1_backward_simple_rnn_1_while_simple_rnn_cell_5_matmul_readvariableop_resource_0:@@z
lsequential_1_bidirectional_1_backward_simple_rnn_1_while_simple_rnn_cell_5_biasadd_readvariableop_resource_0:@
msequential_1_bidirectional_1_backward_simple_rnn_1_while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0:@@E
Asequential_1_bidirectional_1_backward_simple_rnn_1_while_identityG
Csequential_1_bidirectional_1_backward_simple_rnn_1_while_identity_1G
Csequential_1_bidirectional_1_backward_simple_rnn_1_while_identity_2G
Csequential_1_bidirectional_1_backward_simple_rnn_1_while_identity_3G
Csequential_1_bidirectional_1_backward_simple_rnn_1_while_identity_4G
Csequential_1_bidirectional_1_backward_simple_rnn_1_while_identity_5
{sequential_1_bidirectional_1_backward_simple_rnn_1_while_sequential_1_bidirectional_1_backward_simple_rnn_1_strided_slice_1М
Зsequential_1_bidirectional_1_backward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_sequential_1_bidirectional_1_backward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensorР
Лsequential_1_bidirectional_1_backward_simple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_sequential_1_bidirectional_1_backward_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensor{
isequential_1_bidirectional_1_backward_simple_rnn_1_while_simple_rnn_cell_5_matmul_readvariableop_resource:@@x
jsequential_1_bidirectional_1_backward_simple_rnn_1_while_simple_rnn_cell_5_biasadd_readvariableop_resource:@}
ksequential_1_bidirectional_1_backward_simple_rnn_1_while_simple_rnn_cell_5_matmul_1_readvariableop_resource:@@Ђasequential_1/bidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/BiasAdd/ReadVariableOpЂ`sequential_1/bidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/MatMul/ReadVariableOpЂbsequential_1/bidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/MatMul_1/ReadVariableOpЛ
jsequential_1/bidirectional_1/backward_simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   І
\sequential_1/bidirectional_1/backward_simple_rnn_1/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemЙsequential_1_bidirectional_1_backward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_sequential_1_bidirectional_1_backward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0Dsequential_1_bidirectional_1_backward_simple_rnn_1_while_placeholderssequential_1/bidirectional_1/backward_simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ@*
element_dtype0Н
lsequential_1/bidirectional_1/backward_simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   Ў
^sequential_1/bidirectional_1/backward_simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItemTensorListGetItemНsequential_1_bidirectional_1_backward_simple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_sequential_1_bidirectional_1_backward_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensor_0Dsequential_1_bidirectional_1_backward_simple_rnn_1_while_placeholderusequential_1/bidirectional_1/backward_simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0

`sequential_1/bidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/MatMul/ReadVariableOpReadVariableOpksequential_1_bidirectional_1_backward_simple_rnn_1_while_simple_rnn_cell_5_matmul_readvariableop_resource_0*
_output_shapes

:@@*
dtype0м
Qsequential_1/bidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/MatMulMatMulcsequential_1/bidirectional_1/backward_simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem:item:0hsequential_1/bidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@
asequential_1/bidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/BiasAdd/ReadVariableOpReadVariableOplsequential_1_bidirectional_1_backward_simple_rnn_1_while_simple_rnn_cell_5_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0з
Rsequential_1/bidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/BiasAddBiasAdd[sequential_1/bidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/MatMul:product:0isequential_1/bidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@
bsequential_1/bidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/MatMul_1/ReadVariableOpReadVariableOpmsequential_1_bidirectional_1_backward_simple_rnn_1_while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype0У
Ssequential_1/bidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/MatMul_1MatMulFsequential_1_bidirectional_1_backward_simple_rnn_1_while_placeholder_3jsequential_1/bidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@Х
Nsequential_1/bidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/addAddV2[sequential_1/bidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/BiasAdd:output:0]sequential_1/bidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@н
Osequential_1/bidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/TanhTanhRsequential_1/bidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@
Gsequential_1/bidirectional_1/backward_simple_rnn_1/while/Tile/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      А
=sequential_1/bidirectional_1/backward_simple_rnn_1/while/TileTileesequential_1/bidirectional_1/backward_simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItem:item:0Psequential_1/bidirectional_1/backward_simple_rnn_1/while/Tile/multiples:output:0*
T0
*'
_output_shapes
:џџџџџџџџџф
Asequential_1/bidirectional_1/backward_simple_rnn_1/while/SelectV2SelectV2Fsequential_1/bidirectional_1/backward_simple_rnn_1/while/Tile:output:0Ssequential_1/bidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/Tanh:y:0Fsequential_1_bidirectional_1_backward_simple_rnn_1_while_placeholder_2*
T0*'
_output_shapes
:џџџџџџџџџ@
Isequential_1/bidirectional_1/backward_simple_rnn_1/while/Tile_1/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      Д
?sequential_1/bidirectional_1/backward_simple_rnn_1/while/Tile_1Tileesequential_1/bidirectional_1/backward_simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItem:item:0Rsequential_1/bidirectional_1/backward_simple_rnn_1/while/Tile_1/multiples:output:0*
T0
*'
_output_shapes
:џџџџџџџџџш
Csequential_1/bidirectional_1/backward_simple_rnn_1/while/SelectV2_1SelectV2Hsequential_1/bidirectional_1/backward_simple_rnn_1/while/Tile_1:output:0Ssequential_1/bidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/Tanh:y:0Fsequential_1_bidirectional_1_backward_simple_rnn_1_while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ@
]sequential_1/bidirectional_1/backward_simple_rnn_1/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemFsequential_1_bidirectional_1_backward_simple_rnn_1_while_placeholder_1Dsequential_1_bidirectional_1_backward_simple_rnn_1_while_placeholderJsequential_1/bidirectional_1/backward_simple_rnn_1/while/SelectV2:output:0*
_output_shapes
: *
element_dtype0:щшв
>sequential_1/bidirectional_1/backward_simple_rnn_1/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :ѕ
<sequential_1/bidirectional_1/backward_simple_rnn_1/while/addAddV2Dsequential_1_bidirectional_1_backward_simple_rnn_1_while_placeholderGsequential_1/bidirectional_1/backward_simple_rnn_1/while/add/y:output:0*
T0*
_output_shapes
: 
@sequential_1/bidirectional_1/backward_simple_rnn_1/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Г
>sequential_1/bidirectional_1/backward_simple_rnn_1/while/add_1AddV2~sequential_1_bidirectional_1_backward_simple_rnn_1_while_sequential_1_bidirectional_1_backward_simple_rnn_1_while_loop_counterIsequential_1/bidirectional_1/backward_simple_rnn_1/while/add_1/y:output:0*
T0*
_output_shapes
: ђ
Asequential_1/bidirectional_1/backward_simple_rnn_1/while/IdentityIdentityBsequential_1/bidirectional_1/backward_simple_rnn_1/while/add_1:z:0>^sequential_1/bidirectional_1/backward_simple_rnn_1/while/NoOp*
T0*
_output_shapes
: З
Csequential_1/bidirectional_1/backward_simple_rnn_1/while/Identity_1Identitysequential_1_bidirectional_1_backward_simple_rnn_1_while_sequential_1_bidirectional_1_backward_simple_rnn_1_while_maximum_iterations>^sequential_1/bidirectional_1/backward_simple_rnn_1/while/NoOp*
T0*
_output_shapes
: ђ
Csequential_1/bidirectional_1/backward_simple_rnn_1/while/Identity_2Identity@sequential_1/bidirectional_1/backward_simple_rnn_1/while/add:z:0>^sequential_1/bidirectional_1/backward_simple_rnn_1/while/NoOp*
T0*
_output_shapes
: 
Csequential_1/bidirectional_1/backward_simple_rnn_1/while/Identity_3Identitymsequential_1/bidirectional_1/backward_simple_rnn_1/while/TensorArrayV2Write/TensorListSetItem:output_handle:0>^sequential_1/bidirectional_1/backward_simple_rnn_1/while/NoOp*
T0*
_output_shapes
: 
Csequential_1/bidirectional_1/backward_simple_rnn_1/while/Identity_4IdentityJsequential_1/bidirectional_1/backward_simple_rnn_1/while/SelectV2:output:0>^sequential_1/bidirectional_1/backward_simple_rnn_1/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@
Csequential_1/bidirectional_1/backward_simple_rnn_1/while/Identity_5IdentityLsequential_1/bidirectional_1/backward_simple_rnn_1/while/SelectV2_1:output:0>^sequential_1/bidirectional_1/backward_simple_rnn_1/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@Ћ
=sequential_1/bidirectional_1/backward_simple_rnn_1/while/NoOpNoOpb^sequential_1/bidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/BiasAdd/ReadVariableOpa^sequential_1/bidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/MatMul/ReadVariableOpc^sequential_1/bidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
Asequential_1_bidirectional_1_backward_simple_rnn_1_while_identityJsequential_1/bidirectional_1/backward_simple_rnn_1/while/Identity:output:0"
Csequential_1_bidirectional_1_backward_simple_rnn_1_while_identity_1Lsequential_1/bidirectional_1/backward_simple_rnn_1/while/Identity_1:output:0"
Csequential_1_bidirectional_1_backward_simple_rnn_1_while_identity_2Lsequential_1/bidirectional_1/backward_simple_rnn_1/while/Identity_2:output:0"
Csequential_1_bidirectional_1_backward_simple_rnn_1_while_identity_3Lsequential_1/bidirectional_1/backward_simple_rnn_1/while/Identity_3:output:0"
Csequential_1_bidirectional_1_backward_simple_rnn_1_while_identity_4Lsequential_1/bidirectional_1/backward_simple_rnn_1/while/Identity_4:output:0"
Csequential_1_bidirectional_1_backward_simple_rnn_1_while_identity_5Lsequential_1/bidirectional_1/backward_simple_rnn_1/while/Identity_5:output:0"ќ
{sequential_1_bidirectional_1_backward_simple_rnn_1_while_sequential_1_bidirectional_1_backward_simple_rnn_1_strided_slice_1}sequential_1_bidirectional_1_backward_simple_rnn_1_while_sequential_1_bidirectional_1_backward_simple_rnn_1_strided_slice_1_0"к
jsequential_1_bidirectional_1_backward_simple_rnn_1_while_simple_rnn_cell_5_biasadd_readvariableop_resourcelsequential_1_bidirectional_1_backward_simple_rnn_1_while_simple_rnn_cell_5_biasadd_readvariableop_resource_0"м
ksequential_1_bidirectional_1_backward_simple_rnn_1_while_simple_rnn_cell_5_matmul_1_readvariableop_resourcemsequential_1_bidirectional_1_backward_simple_rnn_1_while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0"и
isequential_1_bidirectional_1_backward_simple_rnn_1_while_simple_rnn_cell_5_matmul_readvariableop_resourceksequential_1_bidirectional_1_backward_simple_rnn_1_while_simple_rnn_cell_5_matmul_readvariableop_resource_0"ў
Лsequential_1_bidirectional_1_backward_simple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_sequential_1_bidirectional_1_backward_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensorНsequential_1_bidirectional_1_backward_simple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_sequential_1_bidirectional_1_backward_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensor_0"і
Зsequential_1_bidirectional_1_backward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_sequential_1_bidirectional_1_backward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensorЙsequential_1_bidirectional_1_backward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_sequential_1_bidirectional_1_backward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :џџџџџџџџџ@:џџџџџџџџџ@: : : : : : 2Ц
asequential_1/bidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/BiasAdd/ReadVariableOpasequential_1/bidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/BiasAdd/ReadVariableOp2Ф
`sequential_1/bidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/MatMul/ReadVariableOp`sequential_1/bidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/MatMul/ReadVariableOp2Ш
bsequential_1/bidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/MatMul_1/ReadVariableOpbsequential_1/bidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
КV
Ь
&backward_simple_rnn_1_while_body_68246H
Dbackward_simple_rnn_1_while_backward_simple_rnn_1_while_loop_counterN
Jbackward_simple_rnn_1_while_backward_simple_rnn_1_while_maximum_iterations+
'backward_simple_rnn_1_while_placeholder-
)backward_simple_rnn_1_while_placeholder_1-
)backward_simple_rnn_1_while_placeholder_2-
)backward_simple_rnn_1_while_placeholder_3G
Cbackward_simple_rnn_1_while_backward_simple_rnn_1_strided_slice_1_0
backward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_backward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0
backward_simple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_backward_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensor_0`
Nbackward_simple_rnn_1_while_simple_rnn_cell_5_matmul_readvariableop_resource_0:@@]
Obackward_simple_rnn_1_while_simple_rnn_cell_5_biasadd_readvariableop_resource_0:@b
Pbackward_simple_rnn_1_while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0:@@(
$backward_simple_rnn_1_while_identity*
&backward_simple_rnn_1_while_identity_1*
&backward_simple_rnn_1_while_identity_2*
&backward_simple_rnn_1_while_identity_3*
&backward_simple_rnn_1_while_identity_4*
&backward_simple_rnn_1_while_identity_5E
Abackward_simple_rnn_1_while_backward_simple_rnn_1_strided_slice_1
}backward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_backward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor
backward_simple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_backward_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensor^
Lbackward_simple_rnn_1_while_simple_rnn_cell_5_matmul_readvariableop_resource:@@[
Mbackward_simple_rnn_1_while_simple_rnn_cell_5_biasadd_readvariableop_resource:@`
Nbackward_simple_rnn_1_while_simple_rnn_cell_5_matmul_1_readvariableop_resource:@@ЂDbackward_simple_rnn_1/while/simple_rnn_cell_5/BiasAdd/ReadVariableOpЂCbackward_simple_rnn_1/while/simple_rnn_cell_5/MatMul/ReadVariableOpЂEbackward_simple_rnn_1/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp
Mbackward_simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   
?backward_simple_rnn_1/while/TensorArrayV2Read/TensorListGetItemTensorListGetItembackward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_backward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0'backward_simple_rnn_1_while_placeholderVbackward_simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ@*
element_dtype0 
Obackward_simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   
Abackward_simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItemTensorListGetItembackward_simple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_backward_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensor_0'backward_simple_rnn_1_while_placeholderXbackward_simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0
в
Cbackward_simple_rnn_1/while/simple_rnn_cell_5/MatMul/ReadVariableOpReadVariableOpNbackward_simple_rnn_1_while_simple_rnn_cell_5_matmul_readvariableop_resource_0*
_output_shapes

:@@*
dtype0
4backward_simple_rnn_1/while/simple_rnn_cell_5/MatMulMatMulFbackward_simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem:item:0Kbackward_simple_rnn_1/while/simple_rnn_cell_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@а
Dbackward_simple_rnn_1/while/simple_rnn_cell_5/BiasAdd/ReadVariableOpReadVariableOpObackward_simple_rnn_1_while_simple_rnn_cell_5_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0
5backward_simple_rnn_1/while/simple_rnn_cell_5/BiasAddBiasAdd>backward_simple_rnn_1/while/simple_rnn_cell_5/MatMul:product:0Lbackward_simple_rnn_1/while/simple_rnn_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@ж
Ebackward_simple_rnn_1/while/simple_rnn_cell_5/MatMul_1/ReadVariableOpReadVariableOpPbackward_simple_rnn_1_while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype0ь
6backward_simple_rnn_1/while/simple_rnn_cell_5/MatMul_1MatMul)backward_simple_rnn_1_while_placeholder_3Mbackward_simple_rnn_1/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@ю
1backward_simple_rnn_1/while/simple_rnn_cell_5/addAddV2>backward_simple_rnn_1/while/simple_rnn_cell_5/BiasAdd:output:0@backward_simple_rnn_1/while/simple_rnn_cell_5/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@Ѓ
2backward_simple_rnn_1/while/simple_rnn_cell_5/TanhTanh5backward_simple_rnn_1/while/simple_rnn_cell_5/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@{
*backward_simple_rnn_1/while/Tile/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      й
 backward_simple_rnn_1/while/TileTileHbackward_simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItem:item:03backward_simple_rnn_1/while/Tile/multiples:output:0*
T0
*'
_output_shapes
:џџџџџџџџџ№
$backward_simple_rnn_1/while/SelectV2SelectV2)backward_simple_rnn_1/while/Tile:output:06backward_simple_rnn_1/while/simple_rnn_cell_5/Tanh:y:0)backward_simple_rnn_1_while_placeholder_2*
T0*'
_output_shapes
:џџџџџџџџџ@}
,backward_simple_rnn_1/while/Tile_1/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      н
"backward_simple_rnn_1/while/Tile_1TileHbackward_simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItem:item:05backward_simple_rnn_1/while/Tile_1/multiples:output:0*
T0
*'
_output_shapes
:џџџџџџџџџє
&backward_simple_rnn_1/while/SelectV2_1SelectV2+backward_simple_rnn_1/while/Tile_1:output:06backward_simple_rnn_1/while/simple_rnn_cell_5/Tanh:y:0)backward_simple_rnn_1_while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ@
@backward_simple_rnn_1/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem)backward_simple_rnn_1_while_placeholder_1'backward_simple_rnn_1_while_placeholder-backward_simple_rnn_1/while/SelectV2:output:0*
_output_shapes
: *
element_dtype0:щшвc
!backward_simple_rnn_1/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
backward_simple_rnn_1/while/addAddV2'backward_simple_rnn_1_while_placeholder*backward_simple_rnn_1/while/add/y:output:0*
T0*
_output_shapes
: e
#backward_simple_rnn_1/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :П
!backward_simple_rnn_1/while/add_1AddV2Dbackward_simple_rnn_1_while_backward_simple_rnn_1_while_loop_counter,backward_simple_rnn_1/while/add_1/y:output:0*
T0*
_output_shapes
: 
$backward_simple_rnn_1/while/IdentityIdentity%backward_simple_rnn_1/while/add_1:z:0!^backward_simple_rnn_1/while/NoOp*
T0*
_output_shapes
: Т
&backward_simple_rnn_1/while/Identity_1IdentityJbackward_simple_rnn_1_while_backward_simple_rnn_1_while_maximum_iterations!^backward_simple_rnn_1/while/NoOp*
T0*
_output_shapes
: 
&backward_simple_rnn_1/while/Identity_2Identity#backward_simple_rnn_1/while/add:z:0!^backward_simple_rnn_1/while/NoOp*
T0*
_output_shapes
: Ш
&backward_simple_rnn_1/while/Identity_3IdentityPbackward_simple_rnn_1/while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^backward_simple_rnn_1/while/NoOp*
T0*
_output_shapes
: Ж
&backward_simple_rnn_1/while/Identity_4Identity-backward_simple_rnn_1/while/SelectV2:output:0!^backward_simple_rnn_1/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@И
&backward_simple_rnn_1/while/Identity_5Identity/backward_simple_rnn_1/while/SelectV2_1:output:0!^backward_simple_rnn_1/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@З
 backward_simple_rnn_1/while/NoOpNoOpE^backward_simple_rnn_1/while/simple_rnn_cell_5/BiasAdd/ReadVariableOpD^backward_simple_rnn_1/while/simple_rnn_cell_5/MatMul/ReadVariableOpF^backward_simple_rnn_1/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
Abackward_simple_rnn_1_while_backward_simple_rnn_1_strided_slice_1Cbackward_simple_rnn_1_while_backward_simple_rnn_1_strided_slice_1_0"U
$backward_simple_rnn_1_while_identity-backward_simple_rnn_1/while/Identity:output:0"Y
&backward_simple_rnn_1_while_identity_1/backward_simple_rnn_1/while/Identity_1:output:0"Y
&backward_simple_rnn_1_while_identity_2/backward_simple_rnn_1/while/Identity_2:output:0"Y
&backward_simple_rnn_1_while_identity_3/backward_simple_rnn_1/while/Identity_3:output:0"Y
&backward_simple_rnn_1_while_identity_4/backward_simple_rnn_1/while/Identity_4:output:0"Y
&backward_simple_rnn_1_while_identity_5/backward_simple_rnn_1/while/Identity_5:output:0" 
Mbackward_simple_rnn_1_while_simple_rnn_cell_5_biasadd_readvariableop_resourceObackward_simple_rnn_1_while_simple_rnn_cell_5_biasadd_readvariableop_resource_0"Ђ
Nbackward_simple_rnn_1_while_simple_rnn_cell_5_matmul_1_readvariableop_resourcePbackward_simple_rnn_1_while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0"
Lbackward_simple_rnn_1_while_simple_rnn_cell_5_matmul_readvariableop_resourceNbackward_simple_rnn_1_while_simple_rnn_cell_5_matmul_readvariableop_resource_0"
backward_simple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_backward_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensorbackward_simple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_backward_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensor_0"
}backward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_backward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensorbackward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_backward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :џџџџџџџџџ@:џџџџџџџџџ@: : : : : : 2
Dbackward_simple_rnn_1/while/simple_rnn_cell_5/BiasAdd/ReadVariableOpDbackward_simple_rnn_1/while/simple_rnn_cell_5/BiasAdd/ReadVariableOp2
Cbackward_simple_rnn_1/while/simple_rnn_cell_5/MatMul/ReadVariableOpCbackward_simple_rnn_1/while/simple_rnn_cell_5/MatMul/ReadVariableOp2
Ebackward_simple_rnn_1/while/simple_rnn_cell_5/MatMul_1/ReadVariableOpEbackward_simple_rnn_1/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
Ы

+__inference_embedding_1_layer_call_fn_69580

inputs
unknown:	Љ @
identityЂStatefulPartitionedCallл
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_embedding_1_layer_call_and_return_conditional_losses_68057|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:џџџџџџџџџџџџџџџџџџ: 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs



/__inference_bidirectional_1_layer_call_fn_69660

inputs
mask

unknown:@@
	unknown_0:@
	unknown_1:@@
	unknown_2:@@
	unknown_3:@
	unknown_4:@@
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsmaskunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin

2
*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_bidirectional_1_layer_call_and_return_conditional_losses_68710p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:џџџџџџџџџџџџџџџџџџ@:џџџџџџџџџџџџџџџџџџ: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs:VR
0
_output_shapes
:џџџџџџџџџџџџџџџџџџ

_user_specified_namemask
е
Ѕ
while_cond_70858
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_70858___redundant_placeholder03
/while_while_cond_70858___redundant_placeholder13
/while_while_cond_70858___redundant_placeholder23
/while_while_cond_70858___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :џџџџџџџџџ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
:
КУ
Ш
J__inference_bidirectional_1_layer_call_and_return_conditional_losses_68329

inputs
mask
W
Eforward_simple_rnn_1_simple_rnn_cell_4_matmul_readvariableop_resource:@@T
Fforward_simple_rnn_1_simple_rnn_cell_4_biasadd_readvariableop_resource:@Y
Gforward_simple_rnn_1_simple_rnn_cell_4_matmul_1_readvariableop_resource:@@X
Fbackward_simple_rnn_1_simple_rnn_cell_5_matmul_readvariableop_resource:@@U
Gbackward_simple_rnn_1_simple_rnn_cell_5_biasadd_readvariableop_resource:@Z
Hbackward_simple_rnn_1_simple_rnn_cell_5_matmul_1_readvariableop_resource:@@
identityЂ>backward_simple_rnn_1/simple_rnn_cell_5/BiasAdd/ReadVariableOpЂ=backward_simple_rnn_1/simple_rnn_cell_5/MatMul/ReadVariableOpЂ?backward_simple_rnn_1/simple_rnn_cell_5/MatMul_1/ReadVariableOpЂbackward_simple_rnn_1/whileЂ=forward_simple_rnn_1/simple_rnn_cell_4/BiasAdd/ReadVariableOpЂ<forward_simple_rnn_1/simple_rnn_cell_4/MatMul/ReadVariableOpЂ>forward_simple_rnn_1/simple_rnn_cell_4/MatMul_1/ReadVariableOpЂforward_simple_rnn_1/whileP
forward_simple_rnn_1/ShapeShapeinputs*
T0*
_output_shapes
:r
(forward_simple_rnn_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*forward_simple_rnn_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*forward_simple_rnn_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:К
"forward_simple_rnn_1/strided_sliceStridedSlice#forward_simple_rnn_1/Shape:output:01forward_simple_rnn_1/strided_slice/stack:output:03forward_simple_rnn_1/strided_slice/stack_1:output:03forward_simple_rnn_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maske
#forward_simple_rnn_1/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@В
!forward_simple_rnn_1/zeros/packedPack+forward_simple_rnn_1/strided_slice:output:0,forward_simple_rnn_1/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:e
 forward_simple_rnn_1/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ћ
forward_simple_rnn_1/zerosFill*forward_simple_rnn_1/zeros/packed:output:0)forward_simple_rnn_1/zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@x
#forward_simple_rnn_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"           
forward_simple_rnn_1/transpose	Transposeinputs,forward_simple_rnn_1/transpose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@n
forward_simple_rnn_1/Shape_1Shape"forward_simple_rnn_1/transpose:y:0*
T0*
_output_shapes
:t
*forward_simple_rnn_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,forward_simple_rnn_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,forward_simple_rnn_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ф
$forward_simple_rnn_1/strided_slice_1StridedSlice%forward_simple_rnn_1/Shape_1:output:03forward_simple_rnn_1/strided_slice_1/stack:output:05forward_simple_rnn_1/strided_slice_1/stack_1:output:05forward_simple_rnn_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#forward_simple_rnn_1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ 
forward_simple_rnn_1/ExpandDims
ExpandDimsmask,forward_simple_rnn_1/ExpandDims/dim:output:0*
T0
*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџz
%forward_simple_rnn_1/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
 forward_simple_rnn_1/transpose_1	Transpose(forward_simple_rnn_1/ExpandDims:output:0.forward_simple_rnn_1/transpose_1/perm:output:0*
T0
*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ{
0forward_simple_rnn_1/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџѓ
"forward_simple_rnn_1/TensorArrayV2TensorListReserve9forward_simple_rnn_1/TensorArrayV2/element_shape:output:0-forward_simple_rnn_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
Jforward_simple_rnn_1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   
<forward_simple_rnn_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor"forward_simple_rnn_1/transpose:y:0Sforward_simple_rnn_1/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвt
*forward_simple_rnn_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,forward_simple_rnn_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,forward_simple_rnn_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:в
$forward_simple_rnn_1/strided_slice_2StridedSlice"forward_simple_rnn_1/transpose:y:03forward_simple_rnn_1/strided_slice_2/stack:output:05forward_simple_rnn_1/strided_slice_2/stack_1:output:05forward_simple_rnn_1/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@*
shrink_axis_maskТ
<forward_simple_rnn_1/simple_rnn_cell_4/MatMul/ReadVariableOpReadVariableOpEforward_simple_rnn_1_simple_rnn_cell_4_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype0о
-forward_simple_rnn_1/simple_rnn_cell_4/MatMulMatMul-forward_simple_rnn_1/strided_slice_2:output:0Dforward_simple_rnn_1/simple_rnn_cell_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@Р
=forward_simple_rnn_1/simple_rnn_cell_4/BiasAdd/ReadVariableOpReadVariableOpFforward_simple_rnn_1_simple_rnn_cell_4_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0ы
.forward_simple_rnn_1/simple_rnn_cell_4/BiasAddBiasAdd7forward_simple_rnn_1/simple_rnn_cell_4/MatMul:product:0Eforward_simple_rnn_1/simple_rnn_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@Ц
>forward_simple_rnn_1/simple_rnn_cell_4/MatMul_1/ReadVariableOpReadVariableOpGforward_simple_rnn_1_simple_rnn_cell_4_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0и
/forward_simple_rnn_1/simple_rnn_cell_4/MatMul_1MatMul#forward_simple_rnn_1/zeros:output:0Fforward_simple_rnn_1/simple_rnn_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@й
*forward_simple_rnn_1/simple_rnn_cell_4/addAddV27forward_simple_rnn_1/simple_rnn_cell_4/BiasAdd:output:09forward_simple_rnn_1/simple_rnn_cell_4/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@
+forward_simple_rnn_1/simple_rnn_cell_4/TanhTanh.forward_simple_rnn_1/simple_rnn_cell_4/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@
2forward_simple_rnn_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   ї
$forward_simple_rnn_1/TensorArrayV2_1TensorListReserve;forward_simple_rnn_1/TensorArrayV2_1/element_shape:output:0-forward_simple_rnn_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв[
forward_simple_rnn_1/timeConst*
_output_shapes
: *
dtype0*
value	B : }
2forward_simple_rnn_1/TensorArrayV2_2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџї
$forward_simple_rnn_1/TensorArrayV2_2TensorListReserve;forward_simple_rnn_1/TensorArrayV2_2/element_shape:output:0-forward_simple_rnn_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0
*

shape_type0:щшШ
Lforward_simple_rnn_1/TensorArrayUnstack_1/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   Ѕ
>forward_simple_rnn_1/TensorArrayUnstack_1/TensorListFromTensorTensorListFromTensor$forward_simple_rnn_1/transpose_1:y:0Uforward_simple_rnn_1/TensorArrayUnstack_1/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0
*

shape_type0:щшШ
forward_simple_rnn_1/zeros_like	ZerosLike/forward_simple_rnn_1/simple_rnn_cell_4/Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@x
-forward_simple_rnn_1/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџi
'forward_simple_rnn_1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 	
forward_simple_rnn_1/whileWhile0forward_simple_rnn_1/while/loop_counter:output:06forward_simple_rnn_1/while/maximum_iterations:output:0"forward_simple_rnn_1/time:output:0-forward_simple_rnn_1/TensorArrayV2_1:handle:0#forward_simple_rnn_1/zeros_like:y:0#forward_simple_rnn_1/zeros:output:0-forward_simple_rnn_1/strided_slice_1:output:0Lforward_simple_rnn_1/TensorArrayUnstack/TensorListFromTensor:output_handle:0Nforward_simple_rnn_1/TensorArrayUnstack_1/TensorListFromTensor:output_handle:0Eforward_simple_rnn_1_simple_rnn_cell_4_matmul_readvariableop_resourceFforward_simple_rnn_1_simple_rnn_cell_4_biasadd_readvariableop_resourceGforward_simple_rnn_1_simple_rnn_cell_4_matmul_1_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :џџџџџџџџџ@:џџџџџџџџџ@: : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *1
body)R'
%forward_simple_rnn_1_while_body_68114*1
cond)R'
%forward_simple_rnn_1_while_cond_68113*M
output_shapes<
:: : : : :џџџџџџџџџ@:џџџџџџџџџ@: : : : : : *
parallel_iterations 
Eforward_simple_rnn_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   
7forward_simple_rnn_1/TensorArrayV2Stack/TensorListStackTensorListStack#forward_simple_rnn_1/while:output:3Nforward_simple_rnn_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@*
element_dtype0}
*forward_simple_rnn_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџv
,forward_simple_rnn_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: v
,forward_simple_rnn_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:№
$forward_simple_rnn_1/strided_slice_3StridedSlice@forward_simple_rnn_1/TensorArrayV2Stack/TensorListStack:tensor:03forward_simple_rnn_1/strided_slice_3/stack:output:05forward_simple_rnn_1/strided_slice_3/stack_1:output:05forward_simple_rnn_1/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@*
shrink_axis_maskz
%forward_simple_rnn_1/transpose_2/permConst*
_output_shapes
:*
dtype0*!
valueB"          о
 forward_simple_rnn_1/transpose_2	Transpose@forward_simple_rnn_1/TensorArrayV2Stack/TensorListStack:tensor:0.forward_simple_rnn_1/transpose_2/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@Q
backward_simple_rnn_1/ShapeShapeinputs*
T0*
_output_shapes
:s
)backward_simple_rnn_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+backward_simple_rnn_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+backward_simple_rnn_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:П
#backward_simple_rnn_1/strided_sliceStridedSlice$backward_simple_rnn_1/Shape:output:02backward_simple_rnn_1/strided_slice/stack:output:04backward_simple_rnn_1/strided_slice/stack_1:output:04backward_simple_rnn_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
$backward_simple_rnn_1/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@Е
"backward_simple_rnn_1/zeros/packedPack,backward_simple_rnn_1/strided_slice:output:0-backward_simple_rnn_1/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:f
!backward_simple_rnn_1/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ў
backward_simple_rnn_1/zerosFill+backward_simple_rnn_1/zeros/packed:output:0*backward_simple_rnn_1/zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@y
$backward_simple_rnn_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ђ
backward_simple_rnn_1/transpose	Transposeinputs-backward_simple_rnn_1/transpose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@p
backward_simple_rnn_1/Shape_1Shape#backward_simple_rnn_1/transpose:y:0*
T0*
_output_shapes
:u
+backward_simple_rnn_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-backward_simple_rnn_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-backward_simple_rnn_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Щ
%backward_simple_rnn_1/strided_slice_1StridedSlice&backward_simple_rnn_1/Shape_1:output:04backward_simple_rnn_1/strided_slice_1/stack:output:06backward_simple_rnn_1/strided_slice_1/stack_1:output:06backward_simple_rnn_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$backward_simple_rnn_1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџЂ
 backward_simple_rnn_1/ExpandDims
ExpandDimsmask-backward_simple_rnn_1/ExpandDims/dim:output:0*
T0
*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ{
&backward_simple_rnn_1/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Щ
!backward_simple_rnn_1/transpose_1	Transpose)backward_simple_rnn_1/ExpandDims:output:0/backward_simple_rnn_1/transpose_1/perm:output:0*
T0
*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ|
1backward_simple_rnn_1/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџі
#backward_simple_rnn_1/TensorArrayV2TensorListReserve:backward_simple_rnn_1/TensorArrayV2/element_shape:output:0.backward_simple_rnn_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвn
$backward_simple_rnn_1/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: П
backward_simple_rnn_1/ReverseV2	ReverseV2#backward_simple_rnn_1/transpose:y:0-backward_simple_rnn_1/ReverseV2/axis:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@
Kbackward_simple_rnn_1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   Ї
=backward_simple_rnn_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor(backward_simple_rnn_1/ReverseV2:output:0Tbackward_simple_rnn_1/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвu
+backward_simple_rnn_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-backward_simple_rnn_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-backward_simple_rnn_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:з
%backward_simple_rnn_1/strided_slice_2StridedSlice#backward_simple_rnn_1/transpose:y:04backward_simple_rnn_1/strided_slice_2/stack:output:06backward_simple_rnn_1/strided_slice_2/stack_1:output:06backward_simple_rnn_1/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@*
shrink_axis_maskФ
=backward_simple_rnn_1/simple_rnn_cell_5/MatMul/ReadVariableOpReadVariableOpFbackward_simple_rnn_1_simple_rnn_cell_5_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype0с
.backward_simple_rnn_1/simple_rnn_cell_5/MatMulMatMul.backward_simple_rnn_1/strided_slice_2:output:0Ebackward_simple_rnn_1/simple_rnn_cell_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@Т
>backward_simple_rnn_1/simple_rnn_cell_5/BiasAdd/ReadVariableOpReadVariableOpGbackward_simple_rnn_1_simple_rnn_cell_5_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0ю
/backward_simple_rnn_1/simple_rnn_cell_5/BiasAddBiasAdd8backward_simple_rnn_1/simple_rnn_cell_5/MatMul:product:0Fbackward_simple_rnn_1/simple_rnn_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@Ш
?backward_simple_rnn_1/simple_rnn_cell_5/MatMul_1/ReadVariableOpReadVariableOpHbackward_simple_rnn_1_simple_rnn_cell_5_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0л
0backward_simple_rnn_1/simple_rnn_cell_5/MatMul_1MatMul$backward_simple_rnn_1/zeros:output:0Gbackward_simple_rnn_1/simple_rnn_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@м
+backward_simple_rnn_1/simple_rnn_cell_5/addAddV28backward_simple_rnn_1/simple_rnn_cell_5/BiasAdd:output:0:backward_simple_rnn_1/simple_rnn_cell_5/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@
,backward_simple_rnn_1/simple_rnn_cell_5/TanhTanh/backward_simple_rnn_1/simple_rnn_cell_5/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@
3backward_simple_rnn_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   њ
%backward_simple_rnn_1/TensorArrayV2_1TensorListReserve<backward_simple_rnn_1/TensorArrayV2_1/element_shape:output:0.backward_simple_rnn_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв\
backward_simple_rnn_1/timeConst*
_output_shapes
: *
dtype0*
value	B : p
&backward_simple_rnn_1/ReverseV2_1/axisConst*
_output_shapes
:*
dtype0*
valueB: Х
!backward_simple_rnn_1/ReverseV2_1	ReverseV2%backward_simple_rnn_1/transpose_1:y:0/backward_simple_rnn_1/ReverseV2_1/axis:output:0*
T0
*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ~
3backward_simple_rnn_1/TensorArrayV2_2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџњ
%backward_simple_rnn_1/TensorArrayV2_2TensorListReserve<backward_simple_rnn_1/TensorArrayV2_2/element_shape:output:0.backward_simple_rnn_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0
*

shape_type0:щшШ
Mbackward_simple_rnn_1/TensorArrayUnstack_1/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   ­
?backward_simple_rnn_1/TensorArrayUnstack_1/TensorListFromTensorTensorListFromTensor*backward_simple_rnn_1/ReverseV2_1:output:0Vbackward_simple_rnn_1/TensorArrayUnstack_1/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0
*

shape_type0:щшШ
 backward_simple_rnn_1/zeros_like	ZerosLike0backward_simple_rnn_1/simple_rnn_cell_5/Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@y
.backward_simple_rnn_1/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџj
(backward_simple_rnn_1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 	
backward_simple_rnn_1/whileWhile1backward_simple_rnn_1/while/loop_counter:output:07backward_simple_rnn_1/while/maximum_iterations:output:0#backward_simple_rnn_1/time:output:0.backward_simple_rnn_1/TensorArrayV2_1:handle:0$backward_simple_rnn_1/zeros_like:y:0$backward_simple_rnn_1/zeros:output:0.backward_simple_rnn_1/strided_slice_1:output:0Mbackward_simple_rnn_1/TensorArrayUnstack/TensorListFromTensor:output_handle:0Obackward_simple_rnn_1/TensorArrayUnstack_1/TensorListFromTensor:output_handle:0Fbackward_simple_rnn_1_simple_rnn_cell_5_matmul_readvariableop_resourceGbackward_simple_rnn_1_simple_rnn_cell_5_biasadd_readvariableop_resourceHbackward_simple_rnn_1_simple_rnn_cell_5_matmul_1_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :џџџџџџџџџ@:џџџџџџџџџ@: : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *2
body*R(
&backward_simple_rnn_1_while_body_68246*2
cond*R(
&backward_simple_rnn_1_while_cond_68245*M
output_shapes<
:: : : : :џџџџџџџџџ@:џџџџџџџџџ@: : : : : : *
parallel_iterations 
Fbackward_simple_rnn_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   
8backward_simple_rnn_1/TensorArrayV2Stack/TensorListStackTensorListStack$backward_simple_rnn_1/while:output:3Obackward_simple_rnn_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@*
element_dtype0~
+backward_simple_rnn_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџw
-backward_simple_rnn_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: w
-backward_simple_rnn_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ѕ
%backward_simple_rnn_1/strided_slice_3StridedSliceAbackward_simple_rnn_1/TensorArrayV2Stack/TensorListStack:tensor:04backward_simple_rnn_1/strided_slice_3/stack:output:06backward_simple_rnn_1/strided_slice_3/stack_1:output:06backward_simple_rnn_1/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@*
shrink_axis_mask{
&backward_simple_rnn_1/transpose_2/permConst*
_output_shapes
:*
dtype0*!
valueB"          с
!backward_simple_rnn_1/transpose_2	TransposeAbackward_simple_rnn_1/TensorArrayV2Stack/TensorListStack:tensor:0/backward_simple_rnn_1/transpose_2/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :У
concatConcatV2-forward_simple_rnn_1/strided_slice_3:output:0.backward_simple_rnn_1/strided_slice_3:output:0concat/axis:output:0*
N*
T0*(
_output_shapes
:џџџџџџџџџ_
IdentityIdentityconcat:output:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџ
NoOpNoOp?^backward_simple_rnn_1/simple_rnn_cell_5/BiasAdd/ReadVariableOp>^backward_simple_rnn_1/simple_rnn_cell_5/MatMul/ReadVariableOp@^backward_simple_rnn_1/simple_rnn_cell_5/MatMul_1/ReadVariableOp^backward_simple_rnn_1/while>^forward_simple_rnn_1/simple_rnn_cell_4/BiasAdd/ReadVariableOp=^forward_simple_rnn_1/simple_rnn_cell_4/MatMul/ReadVariableOp?^forward_simple_rnn_1/simple_rnn_cell_4/MatMul_1/ReadVariableOp^forward_simple_rnn_1/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:џџџџџџџџџџџџџџџџџџ@:џџџџџџџџџџџџџџџџџџ: : : : : : 2
>backward_simple_rnn_1/simple_rnn_cell_5/BiasAdd/ReadVariableOp>backward_simple_rnn_1/simple_rnn_cell_5/BiasAdd/ReadVariableOp2~
=backward_simple_rnn_1/simple_rnn_cell_5/MatMul/ReadVariableOp=backward_simple_rnn_1/simple_rnn_cell_5/MatMul/ReadVariableOp2
?backward_simple_rnn_1/simple_rnn_cell_5/MatMul_1/ReadVariableOp?backward_simple_rnn_1/simple_rnn_cell_5/MatMul_1/ReadVariableOp2:
backward_simple_rnn_1/whilebackward_simple_rnn_1/while2~
=forward_simple_rnn_1/simple_rnn_cell_4/BiasAdd/ReadVariableOp=forward_simple_rnn_1/simple_rnn_cell_4/BiasAdd/ReadVariableOp2|
<forward_simple_rnn_1/simple_rnn_cell_4/MatMul/ReadVariableOp<forward_simple_rnn_1/simple_rnn_cell_4/MatMul/ReadVariableOp2
>forward_simple_rnn_1/simple_rnn_cell_4/MatMul_1/ReadVariableOp>forward_simple_rnn_1/simple_rnn_cell_4/MatMul_1/ReadVariableOp28
forward_simple_rnn_1/whileforward_simple_rnn_1/while:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs:VR
0
_output_shapes
:џџџџџџџџџџџџџџџџџџ

_user_specified_namemask
І
ђ
 __inference__wrapped_model_66896
embedding_1_inputB
/sequential_1_embedding_1_embedding_lookup_66613:	Љ @t
bsequential_1_bidirectional_1_forward_simple_rnn_1_simple_rnn_cell_4_matmul_readvariableop_resource:@@q
csequential_1_bidirectional_1_forward_simple_rnn_1_simple_rnn_cell_4_biasadd_readvariableop_resource:@v
dsequential_1_bidirectional_1_forward_simple_rnn_1_simple_rnn_cell_4_matmul_1_readvariableop_resource:@@u
csequential_1_bidirectional_1_backward_simple_rnn_1_simple_rnn_cell_5_matmul_readvariableop_resource:@@r
dsequential_1_bidirectional_1_backward_simple_rnn_1_simple_rnn_cell_5_biasadd_readvariableop_resource:@w
esequential_1_bidirectional_1_backward_simple_rnn_1_simple_rnn_cell_5_matmul_1_readvariableop_resource:@@F
3sequential_1_dense_2_matmul_readvariableop_resource:	@B
4sequential_1_dense_2_biasadd_readvariableop_resource:@E
3sequential_1_dense_3_matmul_readvariableop_resource:@B
4sequential_1_dense_3_biasadd_readvariableop_resource:
identityЂ[sequential_1/bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/BiasAdd/ReadVariableOpЂZsequential_1/bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/MatMul/ReadVariableOpЂ\sequential_1/bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/MatMul_1/ReadVariableOpЂ8sequential_1/bidirectional_1/backward_simple_rnn_1/whileЂZsequential_1/bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/BiasAdd/ReadVariableOpЂYsequential_1/bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/MatMul/ReadVariableOpЂ[sequential_1/bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/MatMul_1/ReadVariableOpЂ7sequential_1/bidirectional_1/forward_simple_rnn_1/whileЂ+sequential_1/dense_2/BiasAdd/ReadVariableOpЂ*sequential_1/dense_2/MatMul/ReadVariableOpЂ+sequential_1/dense_3/BiasAdd/ReadVariableOpЂ*sequential_1/dense_3/MatMul/ReadVariableOpЂ)sequential_1/embedding_1/embedding_lookup
sequential_1/embedding_1/CastCastembedding_1_input*

DstT0*

SrcT0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџІ
)sequential_1/embedding_1/embedding_lookupResourceGather/sequential_1_embedding_1_embedding_lookup_66613!sequential_1/embedding_1/Cast:y:0*
Tindices0*B
_class8
64loc:@sequential_1/embedding_1/embedding_lookup/66613*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@*
dtype0ѕ
2sequential_1/embedding_1/embedding_lookup/IdentityIdentity2sequential_1/embedding_1/embedding_lookup:output:0*
T0*B
_class8
64loc:@sequential_1/embedding_1/embedding_lookup/66613*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@М
4sequential_1/embedding_1/embedding_lookup/Identity_1Identity;sequential_1/embedding_1/embedding_lookup/Identity:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@h
#sequential_1/embedding_1/NotEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *    Љ
!sequential_1/embedding_1/NotEqualNotEqualembedding_1_input,sequential_1/embedding_1/NotEqual/y:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџЄ
7sequential_1/bidirectional_1/forward_simple_rnn_1/ShapeShape=sequential_1/embedding_1/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:
Esequential_1/bidirectional_1/forward_simple_rnn_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Gsequential_1/bidirectional_1/forward_simple_rnn_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Gsequential_1/bidirectional_1/forward_simple_rnn_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ы
?sequential_1/bidirectional_1/forward_simple_rnn_1/strided_sliceStridedSlice@sequential_1/bidirectional_1/forward_simple_rnn_1/Shape:output:0Nsequential_1/bidirectional_1/forward_simple_rnn_1/strided_slice/stack:output:0Psequential_1/bidirectional_1/forward_simple_rnn_1/strided_slice/stack_1:output:0Psequential_1/bidirectional_1/forward_simple_rnn_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
@sequential_1/bidirectional_1/forward_simple_rnn_1/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@
>sequential_1/bidirectional_1/forward_simple_rnn_1/zeros/packedPackHsequential_1/bidirectional_1/forward_simple_rnn_1/strided_slice:output:0Isequential_1/bidirectional_1/forward_simple_rnn_1/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:
=sequential_1/bidirectional_1/forward_simple_rnn_1/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
7sequential_1/bidirectional_1/forward_simple_rnn_1/zerosFillGsequential_1/bidirectional_1/forward_simple_rnn_1/zeros/packed:output:0Fsequential_1/bidirectional_1/forward_simple_rnn_1/zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
@sequential_1/bidirectional_1/forward_simple_rnn_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
;sequential_1/bidirectional_1/forward_simple_rnn_1/transpose	Transpose=sequential_1/embedding_1/embedding_lookup/Identity_1:output:0Isequential_1/bidirectional_1/forward_simple_rnn_1/transpose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@Ј
9sequential_1/bidirectional_1/forward_simple_rnn_1/Shape_1Shape?sequential_1/bidirectional_1/forward_simple_rnn_1/transpose:y:0*
T0*
_output_shapes
:
Gsequential_1/bidirectional_1/forward_simple_rnn_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Isequential_1/bidirectional_1/forward_simple_rnn_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Isequential_1/bidirectional_1/forward_simple_rnn_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:е
Asequential_1/bidirectional_1/forward_simple_rnn_1/strided_slice_1StridedSliceBsequential_1/bidirectional_1/forward_simple_rnn_1/Shape_1:output:0Psequential_1/bidirectional_1/forward_simple_rnn_1/strided_slice_1/stack:output:0Rsequential_1/bidirectional_1/forward_simple_rnn_1/strided_slice_1/stack_1:output:0Rsequential_1/bidirectional_1/forward_simple_rnn_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
@sequential_1/bidirectional_1/forward_simple_rnn_1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџћ
<sequential_1/bidirectional_1/forward_simple_rnn_1/ExpandDims
ExpandDims%sequential_1/embedding_1/NotEqual:z:0Isequential_1/bidirectional_1/forward_simple_rnn_1/ExpandDims/dim:output:0*
T0
*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
Bsequential_1/bidirectional_1/forward_simple_rnn_1/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
=sequential_1/bidirectional_1/forward_simple_rnn_1/transpose_1	TransposeEsequential_1/bidirectional_1/forward_simple_rnn_1/ExpandDims:output:0Ksequential_1/bidirectional_1/forward_simple_rnn_1/transpose_1/perm:output:0*
T0
*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
Msequential_1/bidirectional_1/forward_simple_rnn_1/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџЪ
?sequential_1/bidirectional_1/forward_simple_rnn_1/TensorArrayV2TensorListReserveVsequential_1/bidirectional_1/forward_simple_rnn_1/TensorArrayV2/element_shape:output:0Jsequential_1/bidirectional_1/forward_simple_rnn_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвИ
gsequential_1/bidirectional_1/forward_simple_rnn_1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   і
Ysequential_1/bidirectional_1/forward_simple_rnn_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor?sequential_1/bidirectional_1/forward_simple_rnn_1/transpose:y:0psequential_1/bidirectional_1/forward_simple_rnn_1/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
Gsequential_1/bidirectional_1/forward_simple_rnn_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Isequential_1/bidirectional_1/forward_simple_rnn_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Isequential_1/bidirectional_1/forward_simple_rnn_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:у
Asequential_1/bidirectional_1/forward_simple_rnn_1/strided_slice_2StridedSlice?sequential_1/bidirectional_1/forward_simple_rnn_1/transpose:y:0Psequential_1/bidirectional_1/forward_simple_rnn_1/strided_slice_2/stack:output:0Rsequential_1/bidirectional_1/forward_simple_rnn_1/strided_slice_2/stack_1:output:0Rsequential_1/bidirectional_1/forward_simple_rnn_1/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@*
shrink_axis_maskќ
Ysequential_1/bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/MatMul/ReadVariableOpReadVariableOpbsequential_1_bidirectional_1_forward_simple_rnn_1_simple_rnn_cell_4_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype0Е
Jsequential_1/bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/MatMulMatMulJsequential_1/bidirectional_1/forward_simple_rnn_1/strided_slice_2:output:0asequential_1/bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@њ
Zsequential_1/bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/BiasAdd/ReadVariableOpReadVariableOpcsequential_1_bidirectional_1_forward_simple_rnn_1_simple_rnn_cell_4_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Т
Ksequential_1/bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/BiasAddBiasAddTsequential_1/bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/MatMul:product:0bsequential_1/bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@
[sequential_1/bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/MatMul_1/ReadVariableOpReadVariableOpdsequential_1_bidirectional_1_forward_simple_rnn_1_simple_rnn_cell_4_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0Џ
Lsequential_1/bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/MatMul_1MatMul@sequential_1/bidirectional_1/forward_simple_rnn_1/zeros:output:0csequential_1/bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@А
Gsequential_1/bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/addAddV2Tsequential_1/bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/BiasAdd:output:0Vsequential_1/bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@Я
Hsequential_1/bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/TanhTanhKsequential_1/bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@ 
Osequential_1/bidirectional_1/forward_simple_rnn_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   Ю
Asequential_1/bidirectional_1/forward_simple_rnn_1/TensorArrayV2_1TensorListReserveXsequential_1/bidirectional_1/forward_simple_rnn_1/TensorArrayV2_1/element_shape:output:0Jsequential_1/bidirectional_1/forward_simple_rnn_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвx
6sequential_1/bidirectional_1/forward_simple_rnn_1/timeConst*
_output_shapes
: *
dtype0*
value	B : 
Osequential_1/bidirectional_1/forward_simple_rnn_1/TensorArrayV2_2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџЮ
Asequential_1/bidirectional_1/forward_simple_rnn_1/TensorArrayV2_2TensorListReserveXsequential_1/bidirectional_1/forward_simple_rnn_1/TensorArrayV2_2/element_shape:output:0Jsequential_1/bidirectional_1/forward_simple_rnn_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0
*

shape_type0:щшШК
isequential_1/bidirectional_1/forward_simple_rnn_1/TensorArrayUnstack_1/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   ќ
[sequential_1/bidirectional_1/forward_simple_rnn_1/TensorArrayUnstack_1/TensorListFromTensorTensorListFromTensorAsequential_1/bidirectional_1/forward_simple_rnn_1/transpose_1:y:0rsequential_1/bidirectional_1/forward_simple_rnn_1/TensorArrayUnstack_1/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0
*

shape_type0:щшШЩ
<sequential_1/bidirectional_1/forward_simple_rnn_1/zeros_like	ZerosLikeLsequential_1/bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@
Jsequential_1/bidirectional_1/forward_simple_rnn_1/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ
Dsequential_1/bidirectional_1/forward_simple_rnn_1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Л
7sequential_1/bidirectional_1/forward_simple_rnn_1/whileWhileMsequential_1/bidirectional_1/forward_simple_rnn_1/while/loop_counter:output:0Ssequential_1/bidirectional_1/forward_simple_rnn_1/while/maximum_iterations:output:0?sequential_1/bidirectional_1/forward_simple_rnn_1/time:output:0Jsequential_1/bidirectional_1/forward_simple_rnn_1/TensorArrayV2_1:handle:0@sequential_1/bidirectional_1/forward_simple_rnn_1/zeros_like:y:0@sequential_1/bidirectional_1/forward_simple_rnn_1/zeros:output:0Jsequential_1/bidirectional_1/forward_simple_rnn_1/strided_slice_1:output:0isequential_1/bidirectional_1/forward_simple_rnn_1/TensorArrayUnstack/TensorListFromTensor:output_handle:0ksequential_1/bidirectional_1/forward_simple_rnn_1/TensorArrayUnstack_1/TensorListFromTensor:output_handle:0bsequential_1_bidirectional_1_forward_simple_rnn_1_simple_rnn_cell_4_matmul_readvariableop_resourcecsequential_1_bidirectional_1_forward_simple_rnn_1_simple_rnn_cell_4_biasadd_readvariableop_resourcedsequential_1_bidirectional_1_forward_simple_rnn_1_simple_rnn_cell_4_matmul_1_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :џџџџџџџџџ@:џџџџџџџџџ@: : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *N
bodyFRD
Bsequential_1_bidirectional_1_forward_simple_rnn_1_while_body_66668*N
condFRD
Bsequential_1_bidirectional_1_forward_simple_rnn_1_while_cond_66667*M
output_shapes<
:: : : : :џџџџџџџџџ@:џџџџџџџџџ@: : : : : : *
parallel_iterations Г
bsequential_1/bidirectional_1/forward_simple_rnn_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   с
Tsequential_1/bidirectional_1/forward_simple_rnn_1/TensorArrayV2Stack/TensorListStackTensorListStack@sequential_1/bidirectional_1/forward_simple_rnn_1/while:output:3ksequential_1/bidirectional_1/forward_simple_rnn_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@*
element_dtype0
Gsequential_1/bidirectional_1/forward_simple_rnn_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ
Isequential_1/bidirectional_1/forward_simple_rnn_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
Isequential_1/bidirectional_1/forward_simple_rnn_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Asequential_1/bidirectional_1/forward_simple_rnn_1/strided_slice_3StridedSlice]sequential_1/bidirectional_1/forward_simple_rnn_1/TensorArrayV2Stack/TensorListStack:tensor:0Psequential_1/bidirectional_1/forward_simple_rnn_1/strided_slice_3/stack:output:0Rsequential_1/bidirectional_1/forward_simple_rnn_1/strided_slice_3/stack_1:output:0Rsequential_1/bidirectional_1/forward_simple_rnn_1/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@*
shrink_axis_mask
Bsequential_1/bidirectional_1/forward_simple_rnn_1/transpose_2/permConst*
_output_shapes
:*
dtype0*!
valueB"          Е
=sequential_1/bidirectional_1/forward_simple_rnn_1/transpose_2	Transpose]sequential_1/bidirectional_1/forward_simple_rnn_1/TensorArrayV2Stack/TensorListStack:tensor:0Ksequential_1/bidirectional_1/forward_simple_rnn_1/transpose_2/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@Ѕ
8sequential_1/bidirectional_1/backward_simple_rnn_1/ShapeShape=sequential_1/embedding_1/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:
Fsequential_1/bidirectional_1/backward_simple_rnn_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Hsequential_1/bidirectional_1/backward_simple_rnn_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Hsequential_1/bidirectional_1/backward_simple_rnn_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:а
@sequential_1/bidirectional_1/backward_simple_rnn_1/strided_sliceStridedSliceAsequential_1/bidirectional_1/backward_simple_rnn_1/Shape:output:0Osequential_1/bidirectional_1/backward_simple_rnn_1/strided_slice/stack:output:0Qsequential_1/bidirectional_1/backward_simple_rnn_1/strided_slice/stack_1:output:0Qsequential_1/bidirectional_1/backward_simple_rnn_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
Asequential_1/bidirectional_1/backward_simple_rnn_1/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@
?sequential_1/bidirectional_1/backward_simple_rnn_1/zeros/packedPackIsequential_1/bidirectional_1/backward_simple_rnn_1/strided_slice:output:0Jsequential_1/bidirectional_1/backward_simple_rnn_1/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:
>sequential_1/bidirectional_1/backward_simple_rnn_1/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
8sequential_1/bidirectional_1/backward_simple_rnn_1/zerosFillHsequential_1/bidirectional_1/backward_simple_rnn_1/zeros/packed:output:0Gsequential_1/bidirectional_1/backward_simple_rnn_1/zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
Asequential_1/bidirectional_1/backward_simple_rnn_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
<sequential_1/bidirectional_1/backward_simple_rnn_1/transpose	Transpose=sequential_1/embedding_1/embedding_lookup/Identity_1:output:0Jsequential_1/bidirectional_1/backward_simple_rnn_1/transpose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@Њ
:sequential_1/bidirectional_1/backward_simple_rnn_1/Shape_1Shape@sequential_1/bidirectional_1/backward_simple_rnn_1/transpose:y:0*
T0*
_output_shapes
:
Hsequential_1/bidirectional_1/backward_simple_rnn_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Jsequential_1/bidirectional_1/backward_simple_rnn_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Jsequential_1/bidirectional_1/backward_simple_rnn_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:к
Bsequential_1/bidirectional_1/backward_simple_rnn_1/strided_slice_1StridedSliceCsequential_1/bidirectional_1/backward_simple_rnn_1/Shape_1:output:0Qsequential_1/bidirectional_1/backward_simple_rnn_1/strided_slice_1/stack:output:0Ssequential_1/bidirectional_1/backward_simple_rnn_1/strided_slice_1/stack_1:output:0Ssequential_1/bidirectional_1/backward_simple_rnn_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
Asequential_1/bidirectional_1/backward_simple_rnn_1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ§
=sequential_1/bidirectional_1/backward_simple_rnn_1/ExpandDims
ExpandDims%sequential_1/embedding_1/NotEqual:z:0Jsequential_1/bidirectional_1/backward_simple_rnn_1/ExpandDims/dim:output:0*
T0
*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
Csequential_1/bidirectional_1/backward_simple_rnn_1/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"           
>sequential_1/bidirectional_1/backward_simple_rnn_1/transpose_1	TransposeFsequential_1/bidirectional_1/backward_simple_rnn_1/ExpandDims:output:0Lsequential_1/bidirectional_1/backward_simple_rnn_1/transpose_1/perm:output:0*
T0
*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
Nsequential_1/bidirectional_1/backward_simple_rnn_1/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџЭ
@sequential_1/bidirectional_1/backward_simple_rnn_1/TensorArrayV2TensorListReserveWsequential_1/bidirectional_1/backward_simple_rnn_1/TensorArrayV2/element_shape:output:0Ksequential_1/bidirectional_1/backward_simple_rnn_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
Asequential_1/bidirectional_1/backward_simple_rnn_1/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: 
<sequential_1/bidirectional_1/backward_simple_rnn_1/ReverseV2	ReverseV2@sequential_1/bidirectional_1/backward_simple_rnn_1/transpose:y:0Jsequential_1/bidirectional_1/backward_simple_rnn_1/ReverseV2/axis:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@Й
hsequential_1/bidirectional_1/backward_simple_rnn_1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   ў
Zsequential_1/bidirectional_1/backward_simple_rnn_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorEsequential_1/bidirectional_1/backward_simple_rnn_1/ReverseV2:output:0qsequential_1/bidirectional_1/backward_simple_rnn_1/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
Hsequential_1/bidirectional_1/backward_simple_rnn_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Jsequential_1/bidirectional_1/backward_simple_rnn_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Jsequential_1/bidirectional_1/backward_simple_rnn_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ш
Bsequential_1/bidirectional_1/backward_simple_rnn_1/strided_slice_2StridedSlice@sequential_1/bidirectional_1/backward_simple_rnn_1/transpose:y:0Qsequential_1/bidirectional_1/backward_simple_rnn_1/strided_slice_2/stack:output:0Ssequential_1/bidirectional_1/backward_simple_rnn_1/strided_slice_2/stack_1:output:0Ssequential_1/bidirectional_1/backward_simple_rnn_1/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@*
shrink_axis_maskў
Zsequential_1/bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/MatMul/ReadVariableOpReadVariableOpcsequential_1_bidirectional_1_backward_simple_rnn_1_simple_rnn_cell_5_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype0И
Ksequential_1/bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/MatMulMatMulKsequential_1/bidirectional_1/backward_simple_rnn_1/strided_slice_2:output:0bsequential_1/bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@ќ
[sequential_1/bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/BiasAdd/ReadVariableOpReadVariableOpdsequential_1_bidirectional_1_backward_simple_rnn_1_simple_rnn_cell_5_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Х
Lsequential_1/bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/BiasAddBiasAddUsequential_1/bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/MatMul:product:0csequential_1/bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@
\sequential_1/bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/MatMul_1/ReadVariableOpReadVariableOpesequential_1_bidirectional_1_backward_simple_rnn_1_simple_rnn_cell_5_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0В
Msequential_1/bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/MatMul_1MatMulAsequential_1/bidirectional_1/backward_simple_rnn_1/zeros:output:0dsequential_1/bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@Г
Hsequential_1/bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/addAddV2Usequential_1/bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/BiasAdd:output:0Wsequential_1/bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@б
Isequential_1/bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/TanhTanhLsequential_1/bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@Ё
Psequential_1/bidirectional_1/backward_simple_rnn_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   б
Bsequential_1/bidirectional_1/backward_simple_rnn_1/TensorArrayV2_1TensorListReserveYsequential_1/bidirectional_1/backward_simple_rnn_1/TensorArrayV2_1/element_shape:output:0Ksequential_1/bidirectional_1/backward_simple_rnn_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвy
7sequential_1/bidirectional_1/backward_simple_rnn_1/timeConst*
_output_shapes
: *
dtype0*
value	B : 
Csequential_1/bidirectional_1/backward_simple_rnn_1/ReverseV2_1/axisConst*
_output_shapes
:*
dtype0*
valueB: 
>sequential_1/bidirectional_1/backward_simple_rnn_1/ReverseV2_1	ReverseV2Bsequential_1/bidirectional_1/backward_simple_rnn_1/transpose_1:y:0Lsequential_1/bidirectional_1/backward_simple_rnn_1/ReverseV2_1/axis:output:0*
T0
*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
Psequential_1/bidirectional_1/backward_simple_rnn_1/TensorArrayV2_2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџб
Bsequential_1/bidirectional_1/backward_simple_rnn_1/TensorArrayV2_2TensorListReserveYsequential_1/bidirectional_1/backward_simple_rnn_1/TensorArrayV2_2/element_shape:output:0Ksequential_1/bidirectional_1/backward_simple_rnn_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0
*

shape_type0:щшШЛ
jsequential_1/bidirectional_1/backward_simple_rnn_1/TensorArrayUnstack_1/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   
\sequential_1/bidirectional_1/backward_simple_rnn_1/TensorArrayUnstack_1/TensorListFromTensorTensorListFromTensorGsequential_1/bidirectional_1/backward_simple_rnn_1/ReverseV2_1:output:0ssequential_1/bidirectional_1/backward_simple_rnn_1/TensorArrayUnstack_1/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0
*

shape_type0:щшШЫ
=sequential_1/bidirectional_1/backward_simple_rnn_1/zeros_like	ZerosLikeMsequential_1/bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@
Ksequential_1/bidirectional_1/backward_simple_rnn_1/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ
Esequential_1/bidirectional_1/backward_simple_rnn_1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ъ
8sequential_1/bidirectional_1/backward_simple_rnn_1/whileWhileNsequential_1/bidirectional_1/backward_simple_rnn_1/while/loop_counter:output:0Tsequential_1/bidirectional_1/backward_simple_rnn_1/while/maximum_iterations:output:0@sequential_1/bidirectional_1/backward_simple_rnn_1/time:output:0Ksequential_1/bidirectional_1/backward_simple_rnn_1/TensorArrayV2_1:handle:0Asequential_1/bidirectional_1/backward_simple_rnn_1/zeros_like:y:0Asequential_1/bidirectional_1/backward_simple_rnn_1/zeros:output:0Ksequential_1/bidirectional_1/backward_simple_rnn_1/strided_slice_1:output:0jsequential_1/bidirectional_1/backward_simple_rnn_1/TensorArrayUnstack/TensorListFromTensor:output_handle:0lsequential_1/bidirectional_1/backward_simple_rnn_1/TensorArrayUnstack_1/TensorListFromTensor:output_handle:0csequential_1_bidirectional_1_backward_simple_rnn_1_simple_rnn_cell_5_matmul_readvariableop_resourcedsequential_1_bidirectional_1_backward_simple_rnn_1_simple_rnn_cell_5_biasadd_readvariableop_resourceesequential_1_bidirectional_1_backward_simple_rnn_1_simple_rnn_cell_5_matmul_1_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :џџџџџџџџџ@:џџџџџџџџџ@: : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *O
bodyGRE
Csequential_1_bidirectional_1_backward_simple_rnn_1_while_body_66800*O
condGRE
Csequential_1_bidirectional_1_backward_simple_rnn_1_while_cond_66799*M
output_shapes<
:: : : : :џџџџџџџџџ@:џџџџџџџџџ@: : : : : : *
parallel_iterations Д
csequential_1/bidirectional_1/backward_simple_rnn_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   ф
Usequential_1/bidirectional_1/backward_simple_rnn_1/TensorArrayV2Stack/TensorListStackTensorListStackAsequential_1/bidirectional_1/backward_simple_rnn_1/while:output:3lsequential_1/bidirectional_1/backward_simple_rnn_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@*
element_dtype0
Hsequential_1/bidirectional_1/backward_simple_rnn_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ
Jsequential_1/bidirectional_1/backward_simple_rnn_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
Jsequential_1/bidirectional_1/backward_simple_rnn_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Bsequential_1/bidirectional_1/backward_simple_rnn_1/strided_slice_3StridedSlice^sequential_1/bidirectional_1/backward_simple_rnn_1/TensorArrayV2Stack/TensorListStack:tensor:0Qsequential_1/bidirectional_1/backward_simple_rnn_1/strided_slice_3/stack:output:0Ssequential_1/bidirectional_1/backward_simple_rnn_1/strided_slice_3/stack_1:output:0Ssequential_1/bidirectional_1/backward_simple_rnn_1/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@*
shrink_axis_mask
Csequential_1/bidirectional_1/backward_simple_rnn_1/transpose_2/permConst*
_output_shapes
:*
dtype0*!
valueB"          И
>sequential_1/bidirectional_1/backward_simple_rnn_1/transpose_2	Transpose^sequential_1/bidirectional_1/backward_simple_rnn_1/TensorArrayV2Stack/TensorListStack:tensor:0Lsequential_1/bidirectional_1/backward_simple_rnn_1/transpose_2/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@j
(sequential_1/bidirectional_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :З
#sequential_1/bidirectional_1/concatConcatV2Jsequential_1/bidirectional_1/forward_simple_rnn_1/strided_slice_3:output:0Ksequential_1/bidirectional_1/backward_simple_rnn_1/strided_slice_3:output:01sequential_1/bidirectional_1/concat/axis:output:0*
N*
T0*(
_output_shapes
:џџџџџџџџџ
*sequential_1/dense_2/MatMul/ReadVariableOpReadVariableOp3sequential_1_dense_2_matmul_readvariableop_resource*
_output_shapes
:	@*
dtype0Й
sequential_1/dense_2/MatMulMatMul,sequential_1/bidirectional_1/concat:output:02sequential_1/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@
+sequential_1/dense_2/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_dense_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Е
sequential_1/dense_2/BiasAddBiasAdd%sequential_1/dense_2/MatMul:product:03sequential_1/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@z
sequential_1/dense_2/ReluRelu%sequential_1/dense_2/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
*sequential_1/dense_3/MatMul/ReadVariableOpReadVariableOp3sequential_1_dense_3_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0Д
sequential_1/dense_3/MatMulMatMul'sequential_1/dense_2/Relu:activations:02sequential_1/dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
+sequential_1/dense_3/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Е
sequential_1/dense_3/BiasAddBiasAdd%sequential_1/dense_3/MatMul:product:03sequential_1/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџt
IdentityIdentity%sequential_1/dense_3/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџЮ
NoOpNoOp\^sequential_1/bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/BiasAdd/ReadVariableOp[^sequential_1/bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/MatMul/ReadVariableOp]^sequential_1/bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/MatMul_1/ReadVariableOp9^sequential_1/bidirectional_1/backward_simple_rnn_1/while[^sequential_1/bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/BiasAdd/ReadVariableOpZ^sequential_1/bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/MatMul/ReadVariableOp\^sequential_1/bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/MatMul_1/ReadVariableOp8^sequential_1/bidirectional_1/forward_simple_rnn_1/while,^sequential_1/dense_2/BiasAdd/ReadVariableOp+^sequential_1/dense_2/MatMul/ReadVariableOp,^sequential_1/dense_3/BiasAdd/ReadVariableOp+^sequential_1/dense_3/MatMul/ReadVariableOp*^sequential_1/embedding_1/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:џџџџџџџџџџџџџџџџџџ: : : : : : : : : : : 2К
[sequential_1/bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/BiasAdd/ReadVariableOp[sequential_1/bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/BiasAdd/ReadVariableOp2И
Zsequential_1/bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/MatMul/ReadVariableOpZsequential_1/bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/MatMul/ReadVariableOp2М
\sequential_1/bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/MatMul_1/ReadVariableOp\sequential_1/bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/MatMul_1/ReadVariableOp2t
8sequential_1/bidirectional_1/backward_simple_rnn_1/while8sequential_1/bidirectional_1/backward_simple_rnn_1/while2И
Zsequential_1/bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/BiasAdd/ReadVariableOpZsequential_1/bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/BiasAdd/ReadVariableOp2Ж
Ysequential_1/bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/MatMul/ReadVariableOpYsequential_1/bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/MatMul/ReadVariableOp2К
[sequential_1/bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/MatMul_1/ReadVariableOp[sequential_1/bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/MatMul_1/ReadVariableOp2r
7sequential_1/bidirectional_1/forward_simple_rnn_1/while7sequential_1/bidirectional_1/forward_simple_rnn_1/while2Z
+sequential_1/dense_2/BiasAdd/ReadVariableOp+sequential_1/dense_2/BiasAdd/ReadVariableOp2X
*sequential_1/dense_2/MatMul/ReadVariableOp*sequential_1/dense_2/MatMul/ReadVariableOp2Z
+sequential_1/dense_3/BiasAdd/ReadVariableOp+sequential_1/dense_3/BiasAdd/ReadVariableOp2X
*sequential_1/dense_3/MatMul/ReadVariableOp*sequential_1/dense_3/MatMul/ReadVariableOp2V
)sequential_1/embedding_1/embedding_lookup)sequential_1/embedding_1/embedding_lookup:c _
0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
+
_user_specified_nameembedding_1_input
В,
Ч
while_body_67649
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0J
8while_simple_rnn_cell_5_matmul_readvariableop_resource_0:@@G
9while_simple_rnn_cell_5_biasadd_readvariableop_resource_0:@L
:while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0:@@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorH
6while_simple_rnn_cell_5_matmul_readvariableop_resource:@@E
7while_simple_rnn_cell_5_biasadd_readvariableop_resource:@J
8while_simple_rnn_cell_5_matmul_1_readvariableop_resource:@@Ђ.while/simple_rnn_cell_5/BiasAdd/ReadVariableOpЂ-while/simple_rnn_cell_5/MatMul/ReadVariableOpЂ/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџџџџџЏ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
element_dtype0І
-while/simple_rnn_cell_5/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_5_matmul_readvariableop_resource_0*
_output_shapes

:@@*
dtype0У
while/simple_rnn_cell_5/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@Є
.while/simple_rnn_cell_5/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_5_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0О
while/simple_rnn_cell_5/BiasAddBiasAdd(while/simple_rnn_cell_5/MatMul:product:06while/simple_rnn_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@Њ
/while/simple_rnn_cell_5/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype0Њ
 while/simple_rnn_cell_5/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@Ќ
while/simple_rnn_cell_5/addAddV2(while/simple_rnn_cell_5/BiasAdd:output:0*while/simple_rnn_cell_5/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@w
while/simple_rnn_cell_5/TanhTanhwhile/simple_rnn_cell_5/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@Щ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder while/simple_rnn_cell_5/Tanh:y:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: }
while/Identity_4Identity while/simple_rnn_cell_5/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@п

while/NoOpNoOp/^while/simple_rnn_cell_5/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_5/MatMul/ReadVariableOp0^while/simple_rnn_cell_5/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_5_biasadd_readvariableop_resource9while_simple_rnn_cell_5_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_5_matmul_1_readvariableop_resource:while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_5_matmul_readvariableop_resource8while_simple_rnn_cell_5_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :џџџџџџџџџ@: : : : : 2`
.while/simple_rnn_cell_5/BiasAdd/ReadVariableOp.while/simple_rnn_cell_5/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_5/MatMul/ReadVariableOp-while/simple_rnn_cell_5/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
: 
ќ
ч
L__inference_simple_rnn_cell_5_layer_call_and_return_conditional_losses_67238

inputs

states0
matmul_readvariableop_resource:@@-
biasadd_readvariableop_resource:@2
 matmul_1_readvariableop_resource:@@
identity

identity_1ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@d
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@G
TanhTanhadd:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@W
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@Y

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:џџџџџџџџџ@:џџџџџџџџџ@: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_namestates
а

G__inference_sequential_1_layer_call_and_return_conditional_losses_68910
embedding_1_input$
embedding_1_68881:	Љ @'
bidirectional_1_68886:@@#
bidirectional_1_68888:@'
bidirectional_1_68890:@@'
bidirectional_1_68892:@@#
bidirectional_1_68894:@'
bidirectional_1_68896:@@ 
dense_2_68899:	@
dense_2_68901:@
dense_3_68904:@
dense_3_68906:
identityЂ'bidirectional_1/StatefulPartitionedCallЂdense_2/StatefulPartitionedCallЂdense_3/StatefulPartitionedCallЂ#embedding_1/StatefulPartitionedCallќ
#embedding_1/StatefulPartitionedCallStatefulPartitionedCallembedding_1_inputembedding_1_68881*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_embedding_1_layer_call_and_return_conditional_losses_68057[
embedding_1/NotEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
embedding_1/NotEqualNotEqualembedding_1_inputembedding_1/NotEqual/y:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџЏ
'bidirectional_1/StatefulPartitionedCallStatefulPartitionedCall,embedding_1/StatefulPartitionedCall:output:0embedding_1/NotEqual:z:0bidirectional_1_68886bidirectional_1_68888bidirectional_1_68890bidirectional_1_68892bidirectional_1_68894bidirectional_1_68896*
Tin

2
*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_bidirectional_1_layer_call_and_return_conditional_losses_68710
dense_2/StatefulPartitionedCallStatefulPartitionedCall0bidirectional_1/StatefulPartitionedCall:output:0dense_2_68899dense_2_68901*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_68354
dense_3/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0dense_3_68904dense_3_68906*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_68370w
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџк
NoOpNoOp(^bidirectional_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall$^embedding_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:џџџџџџџџџџџџџџџџџџ: : : : : : : : : : : 2R
'bidirectional_1/StatefulPartitionedCall'bidirectional_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2J
#embedding_1/StatefulPartitionedCall#embedding_1/StatefulPartitionedCall:c _
0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
+
_user_specified_nameembedding_1_input
А
О
4__inference_forward_simple_rnn_1_layer_call_fn_70709

inputs
unknown:@@
	unknown_0:@
	unknown_1:@@
identityЂStatefulPartitionedCallё
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *X
fSRQ
O__inference_forward_simple_rnn_1_layer_call_and_return_conditional_losses_67994o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:'џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:e a
=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
у5
 
P__inference_backward_simple_rnn_1_layer_call_and_return_conditional_losses_67314

inputs)
simple_rnn_cell_5_67239:@@%
simple_rnn_cell_5_67241:@)
simple_rnn_cell_5_67243:@@
identityЂ)simple_rnn_cell_5/StatefulPartitionedCallЂwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвX
ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: }
	ReverseV2	ReverseV2transpose:y:0ReverseV2/axis:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   х
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensorReverseV2:output:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@*
shrink_axis_maskу
)simple_rnn_cell_5/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_5_67239simple_rnn_cell_5_67241simple_rnn_cell_5_67243*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:џџџџџџџџџ@:џџџџџџџџџ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_simple_rnn_cell_5_layer_call_and_return_conditional_losses_67238n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_5_67239simple_rnn_cell_5_67241simple_rnn_cell_5_67243*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџ@: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_67251*
condR
while_cond_67250*8
output_shapes'
%: : : : :џџџџџџџџџ@: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   Ы
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@z
NoOpNoOp*^simple_rnn_cell_5/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ@: : : 2V
)simple_rnn_cell_5/StatefulPartitionedCall)simple_rnn_cell_5/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs
ќ
ч
L__inference_simple_rnn_cell_4_layer_call_and_return_conditional_losses_67064

inputs

states0
matmul_readvariableop_resource:@@-
biasadd_readvariableop_resource:@2
 matmul_1_readvariableop_resource:@@
identity

identity_1ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@d
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@G
TanhTanhadd:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@W
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@Y

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:џџџџџџџџџ@:џџџџџџџџџ@: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_namestates
Є

G__inference_sequential_1_layer_call_and_return_conditional_losses_68794

inputs$
embedding_1_68765:	Љ @'
bidirectional_1_68770:@@#
bidirectional_1_68772:@'
bidirectional_1_68774:@@'
bidirectional_1_68776:@@#
bidirectional_1_68778:@'
bidirectional_1_68780:@@ 
dense_2_68783:	@
dense_2_68785:@
dense_3_68788:@
dense_3_68790:
identityЂ'bidirectional_1/StatefulPartitionedCallЂdense_2/StatefulPartitionedCallЂdense_3/StatefulPartitionedCallЂ#embedding_1/StatefulPartitionedCallё
#embedding_1/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_1_68765*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_embedding_1_layer_call_and_return_conditional_losses_68057[
embedding_1/NotEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
embedding_1/NotEqualNotEqualinputsembedding_1/NotEqual/y:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџЏ
'bidirectional_1/StatefulPartitionedCallStatefulPartitionedCall,embedding_1/StatefulPartitionedCall:output:0embedding_1/NotEqual:z:0bidirectional_1_68770bidirectional_1_68772bidirectional_1_68774bidirectional_1_68776bidirectional_1_68778bidirectional_1_68780*
Tin

2
*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_bidirectional_1_layer_call_and_return_conditional_losses_68710
dense_2/StatefulPartitionedCallStatefulPartitionedCall0bidirectional_1/StatefulPartitionedCall:output:0dense_2_68783dense_2_68785*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_68354
dense_3/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0dense_3_68788dense_3_68790*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_68370w
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџк
NoOpNoOp(^bidirectional_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall$^embedding_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:џџџџџџџџџџџџџџџџџџ: : : : : : : : : : : 2R
'bidirectional_1/StatefulPartitionedCall'bidirectional_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2J
#embedding_1/StatefulPartitionedCall#embedding_1/StatefulPartitionedCall:X T
0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
§=
Т
O__inference_forward_simple_rnn_1_layer_call_and_return_conditional_losses_67598

inputsB
0simple_rnn_cell_4_matmul_readvariableop_resource:@@?
1simple_rnn_cell_4_biasadd_readvariableop_resource:@D
2simple_rnn_cell_4_matmul_1_readvariableop_resource:@@
identityЂ(simple_rnn_cell_4/BiasAdd/ReadVariableOpЂ'simple_rnn_cell_4/MatMul/ReadVariableOpЂ)simple_rnn_cell_4/MatMul_1/ReadVariableOpЂwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
	transpose	Transposeinputstranspose/perm:output:0*
T0*=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџџџџџр
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ђ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
shrink_axis_mask
'simple_rnn_cell_4/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_4_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype0
simple_rnn_cell_4/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@
(simple_rnn_cell_4/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_4_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ќ
simple_rnn_cell_4/BiasAddBiasAdd"simple_rnn_cell_4/MatMul:product:00simple_rnn_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@
)simple_rnn_cell_4/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_4_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0
simple_rnn_cell_4/MatMul_1MatMulzeros:output:01simple_rnn_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@
simple_rnn_cell_4/addAddV2"simple_rnn_cell_4/BiasAdd:output:0$simple_rnn_cell_4/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@k
simple_rnn_cell_4/TanhTanhsimple_rnn_cell_4/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ж
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_4_matmul_readvariableop_resource1simple_rnn_cell_4_biasadd_readvariableop_resource2simple_rnn_cell_4_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџ@: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_67532*
condR
while_cond_67531*8
output_shapes'
%: : : : :џџџџџџџџџ@: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   Ы
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@Я
NoOpNoOp)^simple_rnn_cell_4/BiasAdd/ReadVariableOp(^simple_rnn_cell_4/MatMul/ReadVariableOp*^simple_rnn_cell_4/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:'џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : 2T
(simple_rnn_cell_4/BiasAdd/ReadVariableOp(simple_rnn_cell_4/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_4/MatMul/ReadVariableOp'simple_rnn_cell_4/MatMul/ReadVariableOp2V
)simple_rnn_cell_4/MatMul_1/ReadVariableOp)simple_rnn_cell_4/MatMul_1/ReadVariableOp2
whilewhile:e a
=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
КУ
Ш
J__inference_bidirectional_1_layer_call_and_return_conditional_losses_70359

inputs
mask
W
Eforward_simple_rnn_1_simple_rnn_cell_4_matmul_readvariableop_resource:@@T
Fforward_simple_rnn_1_simple_rnn_cell_4_biasadd_readvariableop_resource:@Y
Gforward_simple_rnn_1_simple_rnn_cell_4_matmul_1_readvariableop_resource:@@X
Fbackward_simple_rnn_1_simple_rnn_cell_5_matmul_readvariableop_resource:@@U
Gbackward_simple_rnn_1_simple_rnn_cell_5_biasadd_readvariableop_resource:@Z
Hbackward_simple_rnn_1_simple_rnn_cell_5_matmul_1_readvariableop_resource:@@
identityЂ>backward_simple_rnn_1/simple_rnn_cell_5/BiasAdd/ReadVariableOpЂ=backward_simple_rnn_1/simple_rnn_cell_5/MatMul/ReadVariableOpЂ?backward_simple_rnn_1/simple_rnn_cell_5/MatMul_1/ReadVariableOpЂbackward_simple_rnn_1/whileЂ=forward_simple_rnn_1/simple_rnn_cell_4/BiasAdd/ReadVariableOpЂ<forward_simple_rnn_1/simple_rnn_cell_4/MatMul/ReadVariableOpЂ>forward_simple_rnn_1/simple_rnn_cell_4/MatMul_1/ReadVariableOpЂforward_simple_rnn_1/whileP
forward_simple_rnn_1/ShapeShapeinputs*
T0*
_output_shapes
:r
(forward_simple_rnn_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*forward_simple_rnn_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*forward_simple_rnn_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:К
"forward_simple_rnn_1/strided_sliceStridedSlice#forward_simple_rnn_1/Shape:output:01forward_simple_rnn_1/strided_slice/stack:output:03forward_simple_rnn_1/strided_slice/stack_1:output:03forward_simple_rnn_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maske
#forward_simple_rnn_1/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@В
!forward_simple_rnn_1/zeros/packedPack+forward_simple_rnn_1/strided_slice:output:0,forward_simple_rnn_1/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:e
 forward_simple_rnn_1/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ћ
forward_simple_rnn_1/zerosFill*forward_simple_rnn_1/zeros/packed:output:0)forward_simple_rnn_1/zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@x
#forward_simple_rnn_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"           
forward_simple_rnn_1/transpose	Transposeinputs,forward_simple_rnn_1/transpose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@n
forward_simple_rnn_1/Shape_1Shape"forward_simple_rnn_1/transpose:y:0*
T0*
_output_shapes
:t
*forward_simple_rnn_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,forward_simple_rnn_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,forward_simple_rnn_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ф
$forward_simple_rnn_1/strided_slice_1StridedSlice%forward_simple_rnn_1/Shape_1:output:03forward_simple_rnn_1/strided_slice_1/stack:output:05forward_simple_rnn_1/strided_slice_1/stack_1:output:05forward_simple_rnn_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#forward_simple_rnn_1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ 
forward_simple_rnn_1/ExpandDims
ExpandDimsmask,forward_simple_rnn_1/ExpandDims/dim:output:0*
T0
*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџz
%forward_simple_rnn_1/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
 forward_simple_rnn_1/transpose_1	Transpose(forward_simple_rnn_1/ExpandDims:output:0.forward_simple_rnn_1/transpose_1/perm:output:0*
T0
*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ{
0forward_simple_rnn_1/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџѓ
"forward_simple_rnn_1/TensorArrayV2TensorListReserve9forward_simple_rnn_1/TensorArrayV2/element_shape:output:0-forward_simple_rnn_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
Jforward_simple_rnn_1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   
<forward_simple_rnn_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor"forward_simple_rnn_1/transpose:y:0Sforward_simple_rnn_1/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвt
*forward_simple_rnn_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,forward_simple_rnn_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,forward_simple_rnn_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:в
$forward_simple_rnn_1/strided_slice_2StridedSlice"forward_simple_rnn_1/transpose:y:03forward_simple_rnn_1/strided_slice_2/stack:output:05forward_simple_rnn_1/strided_slice_2/stack_1:output:05forward_simple_rnn_1/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@*
shrink_axis_maskТ
<forward_simple_rnn_1/simple_rnn_cell_4/MatMul/ReadVariableOpReadVariableOpEforward_simple_rnn_1_simple_rnn_cell_4_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype0о
-forward_simple_rnn_1/simple_rnn_cell_4/MatMulMatMul-forward_simple_rnn_1/strided_slice_2:output:0Dforward_simple_rnn_1/simple_rnn_cell_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@Р
=forward_simple_rnn_1/simple_rnn_cell_4/BiasAdd/ReadVariableOpReadVariableOpFforward_simple_rnn_1_simple_rnn_cell_4_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0ы
.forward_simple_rnn_1/simple_rnn_cell_4/BiasAddBiasAdd7forward_simple_rnn_1/simple_rnn_cell_4/MatMul:product:0Eforward_simple_rnn_1/simple_rnn_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@Ц
>forward_simple_rnn_1/simple_rnn_cell_4/MatMul_1/ReadVariableOpReadVariableOpGforward_simple_rnn_1_simple_rnn_cell_4_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0и
/forward_simple_rnn_1/simple_rnn_cell_4/MatMul_1MatMul#forward_simple_rnn_1/zeros:output:0Fforward_simple_rnn_1/simple_rnn_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@й
*forward_simple_rnn_1/simple_rnn_cell_4/addAddV27forward_simple_rnn_1/simple_rnn_cell_4/BiasAdd:output:09forward_simple_rnn_1/simple_rnn_cell_4/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@
+forward_simple_rnn_1/simple_rnn_cell_4/TanhTanh.forward_simple_rnn_1/simple_rnn_cell_4/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@
2forward_simple_rnn_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   ї
$forward_simple_rnn_1/TensorArrayV2_1TensorListReserve;forward_simple_rnn_1/TensorArrayV2_1/element_shape:output:0-forward_simple_rnn_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв[
forward_simple_rnn_1/timeConst*
_output_shapes
: *
dtype0*
value	B : }
2forward_simple_rnn_1/TensorArrayV2_2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџї
$forward_simple_rnn_1/TensorArrayV2_2TensorListReserve;forward_simple_rnn_1/TensorArrayV2_2/element_shape:output:0-forward_simple_rnn_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0
*

shape_type0:щшШ
Lforward_simple_rnn_1/TensorArrayUnstack_1/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   Ѕ
>forward_simple_rnn_1/TensorArrayUnstack_1/TensorListFromTensorTensorListFromTensor$forward_simple_rnn_1/transpose_1:y:0Uforward_simple_rnn_1/TensorArrayUnstack_1/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0
*

shape_type0:щшШ
forward_simple_rnn_1/zeros_like	ZerosLike/forward_simple_rnn_1/simple_rnn_cell_4/Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@x
-forward_simple_rnn_1/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџi
'forward_simple_rnn_1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 	
forward_simple_rnn_1/whileWhile0forward_simple_rnn_1/while/loop_counter:output:06forward_simple_rnn_1/while/maximum_iterations:output:0"forward_simple_rnn_1/time:output:0-forward_simple_rnn_1/TensorArrayV2_1:handle:0#forward_simple_rnn_1/zeros_like:y:0#forward_simple_rnn_1/zeros:output:0-forward_simple_rnn_1/strided_slice_1:output:0Lforward_simple_rnn_1/TensorArrayUnstack/TensorListFromTensor:output_handle:0Nforward_simple_rnn_1/TensorArrayUnstack_1/TensorListFromTensor:output_handle:0Eforward_simple_rnn_1_simple_rnn_cell_4_matmul_readvariableop_resourceFforward_simple_rnn_1_simple_rnn_cell_4_biasadd_readvariableop_resourceGforward_simple_rnn_1_simple_rnn_cell_4_matmul_1_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :џџџџџџџџџ@:џџџџџџџџџ@: : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *1
body)R'
%forward_simple_rnn_1_while_body_70144*1
cond)R'
%forward_simple_rnn_1_while_cond_70143*M
output_shapes<
:: : : : :џџџџџџџџџ@:џџџџџџџџџ@: : : : : : *
parallel_iterations 
Eforward_simple_rnn_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   
7forward_simple_rnn_1/TensorArrayV2Stack/TensorListStackTensorListStack#forward_simple_rnn_1/while:output:3Nforward_simple_rnn_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@*
element_dtype0}
*forward_simple_rnn_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџv
,forward_simple_rnn_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: v
,forward_simple_rnn_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:№
$forward_simple_rnn_1/strided_slice_3StridedSlice@forward_simple_rnn_1/TensorArrayV2Stack/TensorListStack:tensor:03forward_simple_rnn_1/strided_slice_3/stack:output:05forward_simple_rnn_1/strided_slice_3/stack_1:output:05forward_simple_rnn_1/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@*
shrink_axis_maskz
%forward_simple_rnn_1/transpose_2/permConst*
_output_shapes
:*
dtype0*!
valueB"          о
 forward_simple_rnn_1/transpose_2	Transpose@forward_simple_rnn_1/TensorArrayV2Stack/TensorListStack:tensor:0.forward_simple_rnn_1/transpose_2/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@Q
backward_simple_rnn_1/ShapeShapeinputs*
T0*
_output_shapes
:s
)backward_simple_rnn_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+backward_simple_rnn_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+backward_simple_rnn_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:П
#backward_simple_rnn_1/strided_sliceStridedSlice$backward_simple_rnn_1/Shape:output:02backward_simple_rnn_1/strided_slice/stack:output:04backward_simple_rnn_1/strided_slice/stack_1:output:04backward_simple_rnn_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
$backward_simple_rnn_1/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@Е
"backward_simple_rnn_1/zeros/packedPack,backward_simple_rnn_1/strided_slice:output:0-backward_simple_rnn_1/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:f
!backward_simple_rnn_1/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ў
backward_simple_rnn_1/zerosFill+backward_simple_rnn_1/zeros/packed:output:0*backward_simple_rnn_1/zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@y
$backward_simple_rnn_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ђ
backward_simple_rnn_1/transpose	Transposeinputs-backward_simple_rnn_1/transpose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@p
backward_simple_rnn_1/Shape_1Shape#backward_simple_rnn_1/transpose:y:0*
T0*
_output_shapes
:u
+backward_simple_rnn_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-backward_simple_rnn_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-backward_simple_rnn_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Щ
%backward_simple_rnn_1/strided_slice_1StridedSlice&backward_simple_rnn_1/Shape_1:output:04backward_simple_rnn_1/strided_slice_1/stack:output:06backward_simple_rnn_1/strided_slice_1/stack_1:output:06backward_simple_rnn_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$backward_simple_rnn_1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџЂ
 backward_simple_rnn_1/ExpandDims
ExpandDimsmask-backward_simple_rnn_1/ExpandDims/dim:output:0*
T0
*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ{
&backward_simple_rnn_1/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Щ
!backward_simple_rnn_1/transpose_1	Transpose)backward_simple_rnn_1/ExpandDims:output:0/backward_simple_rnn_1/transpose_1/perm:output:0*
T0
*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ|
1backward_simple_rnn_1/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџі
#backward_simple_rnn_1/TensorArrayV2TensorListReserve:backward_simple_rnn_1/TensorArrayV2/element_shape:output:0.backward_simple_rnn_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвn
$backward_simple_rnn_1/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: П
backward_simple_rnn_1/ReverseV2	ReverseV2#backward_simple_rnn_1/transpose:y:0-backward_simple_rnn_1/ReverseV2/axis:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@
Kbackward_simple_rnn_1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   Ї
=backward_simple_rnn_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor(backward_simple_rnn_1/ReverseV2:output:0Tbackward_simple_rnn_1/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвu
+backward_simple_rnn_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-backward_simple_rnn_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-backward_simple_rnn_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:з
%backward_simple_rnn_1/strided_slice_2StridedSlice#backward_simple_rnn_1/transpose:y:04backward_simple_rnn_1/strided_slice_2/stack:output:06backward_simple_rnn_1/strided_slice_2/stack_1:output:06backward_simple_rnn_1/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@*
shrink_axis_maskФ
=backward_simple_rnn_1/simple_rnn_cell_5/MatMul/ReadVariableOpReadVariableOpFbackward_simple_rnn_1_simple_rnn_cell_5_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype0с
.backward_simple_rnn_1/simple_rnn_cell_5/MatMulMatMul.backward_simple_rnn_1/strided_slice_2:output:0Ebackward_simple_rnn_1/simple_rnn_cell_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@Т
>backward_simple_rnn_1/simple_rnn_cell_5/BiasAdd/ReadVariableOpReadVariableOpGbackward_simple_rnn_1_simple_rnn_cell_5_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0ю
/backward_simple_rnn_1/simple_rnn_cell_5/BiasAddBiasAdd8backward_simple_rnn_1/simple_rnn_cell_5/MatMul:product:0Fbackward_simple_rnn_1/simple_rnn_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@Ш
?backward_simple_rnn_1/simple_rnn_cell_5/MatMul_1/ReadVariableOpReadVariableOpHbackward_simple_rnn_1_simple_rnn_cell_5_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0л
0backward_simple_rnn_1/simple_rnn_cell_5/MatMul_1MatMul$backward_simple_rnn_1/zeros:output:0Gbackward_simple_rnn_1/simple_rnn_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@м
+backward_simple_rnn_1/simple_rnn_cell_5/addAddV28backward_simple_rnn_1/simple_rnn_cell_5/BiasAdd:output:0:backward_simple_rnn_1/simple_rnn_cell_5/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@
,backward_simple_rnn_1/simple_rnn_cell_5/TanhTanh/backward_simple_rnn_1/simple_rnn_cell_5/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@
3backward_simple_rnn_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   њ
%backward_simple_rnn_1/TensorArrayV2_1TensorListReserve<backward_simple_rnn_1/TensorArrayV2_1/element_shape:output:0.backward_simple_rnn_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв\
backward_simple_rnn_1/timeConst*
_output_shapes
: *
dtype0*
value	B : p
&backward_simple_rnn_1/ReverseV2_1/axisConst*
_output_shapes
:*
dtype0*
valueB: Х
!backward_simple_rnn_1/ReverseV2_1	ReverseV2%backward_simple_rnn_1/transpose_1:y:0/backward_simple_rnn_1/ReverseV2_1/axis:output:0*
T0
*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ~
3backward_simple_rnn_1/TensorArrayV2_2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџњ
%backward_simple_rnn_1/TensorArrayV2_2TensorListReserve<backward_simple_rnn_1/TensorArrayV2_2/element_shape:output:0.backward_simple_rnn_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0
*

shape_type0:щшШ
Mbackward_simple_rnn_1/TensorArrayUnstack_1/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   ­
?backward_simple_rnn_1/TensorArrayUnstack_1/TensorListFromTensorTensorListFromTensor*backward_simple_rnn_1/ReverseV2_1:output:0Vbackward_simple_rnn_1/TensorArrayUnstack_1/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0
*

shape_type0:щшШ
 backward_simple_rnn_1/zeros_like	ZerosLike0backward_simple_rnn_1/simple_rnn_cell_5/Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@y
.backward_simple_rnn_1/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџj
(backward_simple_rnn_1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 	
backward_simple_rnn_1/whileWhile1backward_simple_rnn_1/while/loop_counter:output:07backward_simple_rnn_1/while/maximum_iterations:output:0#backward_simple_rnn_1/time:output:0.backward_simple_rnn_1/TensorArrayV2_1:handle:0$backward_simple_rnn_1/zeros_like:y:0$backward_simple_rnn_1/zeros:output:0.backward_simple_rnn_1/strided_slice_1:output:0Mbackward_simple_rnn_1/TensorArrayUnstack/TensorListFromTensor:output_handle:0Obackward_simple_rnn_1/TensorArrayUnstack_1/TensorListFromTensor:output_handle:0Fbackward_simple_rnn_1_simple_rnn_cell_5_matmul_readvariableop_resourceGbackward_simple_rnn_1_simple_rnn_cell_5_biasadd_readvariableop_resourceHbackward_simple_rnn_1_simple_rnn_cell_5_matmul_1_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :џџџџџџџџџ@:џџџџџџџџџ@: : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *2
body*R(
&backward_simple_rnn_1_while_body_70276*2
cond*R(
&backward_simple_rnn_1_while_cond_70275*M
output_shapes<
:: : : : :џџџџџџџџџ@:џџџџџџџџџ@: : : : : : *
parallel_iterations 
Fbackward_simple_rnn_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   
8backward_simple_rnn_1/TensorArrayV2Stack/TensorListStackTensorListStack$backward_simple_rnn_1/while:output:3Obackward_simple_rnn_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@*
element_dtype0~
+backward_simple_rnn_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџw
-backward_simple_rnn_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: w
-backward_simple_rnn_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ѕ
%backward_simple_rnn_1/strided_slice_3StridedSliceAbackward_simple_rnn_1/TensorArrayV2Stack/TensorListStack:tensor:04backward_simple_rnn_1/strided_slice_3/stack:output:06backward_simple_rnn_1/strided_slice_3/stack_1:output:06backward_simple_rnn_1/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@*
shrink_axis_mask{
&backward_simple_rnn_1/transpose_2/permConst*
_output_shapes
:*
dtype0*!
valueB"          с
!backward_simple_rnn_1/transpose_2	TransposeAbackward_simple_rnn_1/TensorArrayV2Stack/TensorListStack:tensor:0/backward_simple_rnn_1/transpose_2/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :У
concatConcatV2-forward_simple_rnn_1/strided_slice_3:output:0.backward_simple_rnn_1/strided_slice_3:output:0concat/axis:output:0*
N*
T0*(
_output_shapes
:џџџџџџџџџ_
IdentityIdentityconcat:output:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџ
NoOpNoOp?^backward_simple_rnn_1/simple_rnn_cell_5/BiasAdd/ReadVariableOp>^backward_simple_rnn_1/simple_rnn_cell_5/MatMul/ReadVariableOp@^backward_simple_rnn_1/simple_rnn_cell_5/MatMul_1/ReadVariableOp^backward_simple_rnn_1/while>^forward_simple_rnn_1/simple_rnn_cell_4/BiasAdd/ReadVariableOp=^forward_simple_rnn_1/simple_rnn_cell_4/MatMul/ReadVariableOp?^forward_simple_rnn_1/simple_rnn_cell_4/MatMul_1/ReadVariableOp^forward_simple_rnn_1/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:џџџџџџџџџџџџџџџџџџ@:џџџџџџџџџџџџџџџџџџ: : : : : : 2
>backward_simple_rnn_1/simple_rnn_cell_5/BiasAdd/ReadVariableOp>backward_simple_rnn_1/simple_rnn_cell_5/BiasAdd/ReadVariableOp2~
=backward_simple_rnn_1/simple_rnn_cell_5/MatMul/ReadVariableOp=backward_simple_rnn_1/simple_rnn_cell_5/MatMul/ReadVariableOp2
?backward_simple_rnn_1/simple_rnn_cell_5/MatMul_1/ReadVariableOp?backward_simple_rnn_1/simple_rnn_cell_5/MatMul_1/ReadVariableOp2:
backward_simple_rnn_1/whilebackward_simple_rnn_1/while2~
=forward_simple_rnn_1/simple_rnn_cell_4/BiasAdd/ReadVariableOp=forward_simple_rnn_1/simple_rnn_cell_4/BiasAdd/ReadVariableOp2|
<forward_simple_rnn_1/simple_rnn_cell_4/MatMul/ReadVariableOp<forward_simple_rnn_1/simple_rnn_cell_4/MatMul/ReadVariableOp2
>forward_simple_rnn_1/simple_rnn_cell_4/MatMul_1/ReadVariableOp>forward_simple_rnn_1/simple_rnn_cell_4/MatMul_1/ReadVariableOp28
forward_simple_rnn_1/whileforward_simple_rnn_1/while:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs:VR
0
_output_shapes
:џџџџџџџџџџџџџџџџџџ

_user_specified_namemask
х 
Ъ
while_body_67412
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_01
while_simple_rnn_cell_5_67434_0:@@-
while_simple_rnn_cell_5_67436_0:@1
while_simple_rnn_cell_5_67438_0:@@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor/
while_simple_rnn_cell_5_67434:@@+
while_simple_rnn_cell_5_67436:@/
while_simple_rnn_cell_5_67438:@@Ђ/while/simple_rnn_cell_5/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ@*
element_dtype0
/while/simple_rnn_cell_5/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_simple_rnn_cell_5_67434_0while_simple_rnn_cell_5_67436_0while_simple_rnn_cell_5_67438_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:џџџџџџџџџ@:џџџџџџџџџ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_simple_rnn_cell_5_layer_call_and_return_conditional_losses_67358с
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder8while/simple_rnn_cell_5/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_4Identity8while/simple_rnn_cell_5/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@~

while/NoOpNoOp0^while/simple_rnn_cell_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"@
while_simple_rnn_cell_5_67434while_simple_rnn_cell_5_67434_0"@
while_simple_rnn_cell_5_67436while_simple_rnn_cell_5_67436_0"@
while_simple_rnn_cell_5_67438while_simple_rnn_cell_5_67438_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :џџџџџџџџџ@: : : : : 2b
/while/simple_rnn_cell_5/StatefulPartitionedCall/while/simple_rnn_cell_5/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
: 
Ў	

/__inference_bidirectional_1_layer_call_fn_69607
inputs_0
unknown:@@
	unknown_0:@
	unknown_1:@@
	unknown_2:@@
	unknown_3:@
	unknown_4:@@
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_bidirectional_1_layer_call_and_return_conditional_losses_67726p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:'џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:g c
=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
"
_user_specified_name
inputs/0
хh
ъ
5bidirectional_1_forward_simple_rnn_1_while_body_69345f
bbidirectional_1_forward_simple_rnn_1_while_bidirectional_1_forward_simple_rnn_1_while_loop_counterl
hbidirectional_1_forward_simple_rnn_1_while_bidirectional_1_forward_simple_rnn_1_while_maximum_iterations:
6bidirectional_1_forward_simple_rnn_1_while_placeholder<
8bidirectional_1_forward_simple_rnn_1_while_placeholder_1<
8bidirectional_1_forward_simple_rnn_1_while_placeholder_2<
8bidirectional_1_forward_simple_rnn_1_while_placeholder_3e
abidirectional_1_forward_simple_rnn_1_while_bidirectional_1_forward_simple_rnn_1_strided_slice_1_0Ђ
bidirectional_1_forward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_bidirectional_1_forward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0І
Ёbidirectional_1_forward_simple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_bidirectional_1_forward_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensor_0o
]bidirectional_1_forward_simple_rnn_1_while_simple_rnn_cell_4_matmul_readvariableop_resource_0:@@l
^bidirectional_1_forward_simple_rnn_1_while_simple_rnn_cell_4_biasadd_readvariableop_resource_0:@q
_bidirectional_1_forward_simple_rnn_1_while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0:@@7
3bidirectional_1_forward_simple_rnn_1_while_identity9
5bidirectional_1_forward_simple_rnn_1_while_identity_19
5bidirectional_1_forward_simple_rnn_1_while_identity_29
5bidirectional_1_forward_simple_rnn_1_while_identity_39
5bidirectional_1_forward_simple_rnn_1_while_identity_49
5bidirectional_1_forward_simple_rnn_1_while_identity_5c
_bidirectional_1_forward_simple_rnn_1_while_bidirectional_1_forward_simple_rnn_1_strided_slice_1 
bidirectional_1_forward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_bidirectional_1_forward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensorЄ
bidirectional_1_forward_simple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_bidirectional_1_forward_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensorm
[bidirectional_1_forward_simple_rnn_1_while_simple_rnn_cell_4_matmul_readvariableop_resource:@@j
\bidirectional_1_forward_simple_rnn_1_while_simple_rnn_cell_4_biasadd_readvariableop_resource:@o
]bidirectional_1_forward_simple_rnn_1_while_simple_rnn_cell_4_matmul_1_readvariableop_resource:@@ЂSbidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/BiasAdd/ReadVariableOpЂRbidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/MatMul/ReadVariableOpЂTbidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp­
\bidirectional_1/forward_simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   р
Nbidirectional_1/forward_simple_rnn_1/while/TensorArrayV2Read/TensorListGetItemTensorListGetItembidirectional_1_forward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_bidirectional_1_forward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_06bidirectional_1_forward_simple_rnn_1_while_placeholderebidirectional_1/forward_simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ@*
element_dtype0Џ
^bidirectional_1/forward_simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   ш
Pbidirectional_1/forward_simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItemTensorListGetItemЁbidirectional_1_forward_simple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_bidirectional_1_forward_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensor_06bidirectional_1_forward_simple_rnn_1_while_placeholdergbidirectional_1/forward_simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0
№
Rbidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/MatMul/ReadVariableOpReadVariableOp]bidirectional_1_forward_simple_rnn_1_while_simple_rnn_cell_4_matmul_readvariableop_resource_0*
_output_shapes

:@@*
dtype0В
Cbidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/MatMulMatMulUbidirectional_1/forward_simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem:item:0Zbidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@ю
Sbidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/BiasAdd/ReadVariableOpReadVariableOp^bidirectional_1_forward_simple_rnn_1_while_simple_rnn_cell_4_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0­
Dbidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/BiasAddBiasAddMbidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/MatMul:product:0[bidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@є
Tbidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/MatMul_1/ReadVariableOpReadVariableOp_bidirectional_1_forward_simple_rnn_1_while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype0
Ebidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/MatMul_1MatMul8bidirectional_1_forward_simple_rnn_1_while_placeholder_3\bidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@
@bidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/addAddV2Mbidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/BiasAdd:output:0Obidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@С
Abidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/TanhTanhDbidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@
9bidirectional_1/forward_simple_rnn_1/while/Tile/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      
/bidirectional_1/forward_simple_rnn_1/while/TileTileWbidirectional_1/forward_simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItem:item:0Bbidirectional_1/forward_simple_rnn_1/while/Tile/multiples:output:0*
T0
*'
_output_shapes
:џџџџџџџџџЌ
3bidirectional_1/forward_simple_rnn_1/while/SelectV2SelectV28bidirectional_1/forward_simple_rnn_1/while/Tile:output:0Ebidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/Tanh:y:08bidirectional_1_forward_simple_rnn_1_while_placeholder_2*
T0*'
_output_shapes
:џџџџџџџџџ@
;bidirectional_1/forward_simple_rnn_1/while/Tile_1/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      
1bidirectional_1/forward_simple_rnn_1/while/Tile_1TileWbidirectional_1/forward_simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItem:item:0Dbidirectional_1/forward_simple_rnn_1/while/Tile_1/multiples:output:0*
T0
*'
_output_shapes
:џџџџџџџџџА
5bidirectional_1/forward_simple_rnn_1/while/SelectV2_1SelectV2:bidirectional_1/forward_simple_rnn_1/while/Tile_1:output:0Ebidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/Tanh:y:08bidirectional_1_forward_simple_rnn_1_while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ@д
Obidirectional_1/forward_simple_rnn_1/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem8bidirectional_1_forward_simple_rnn_1_while_placeholder_16bidirectional_1_forward_simple_rnn_1_while_placeholder<bidirectional_1/forward_simple_rnn_1/while/SelectV2:output:0*
_output_shapes
: *
element_dtype0:щшвr
0bidirectional_1/forward_simple_rnn_1/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :Ы
.bidirectional_1/forward_simple_rnn_1/while/addAddV26bidirectional_1_forward_simple_rnn_1_while_placeholder9bidirectional_1/forward_simple_rnn_1/while/add/y:output:0*
T0*
_output_shapes
: t
2bidirectional_1/forward_simple_rnn_1/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :ћ
0bidirectional_1/forward_simple_rnn_1/while/add_1AddV2bbidirectional_1_forward_simple_rnn_1_while_bidirectional_1_forward_simple_rnn_1_while_loop_counter;bidirectional_1/forward_simple_rnn_1/while/add_1/y:output:0*
T0*
_output_shapes
: Ш
3bidirectional_1/forward_simple_rnn_1/while/IdentityIdentity4bidirectional_1/forward_simple_rnn_1/while/add_1:z:00^bidirectional_1/forward_simple_rnn_1/while/NoOp*
T0*
_output_shapes
: ў
5bidirectional_1/forward_simple_rnn_1/while/Identity_1Identityhbidirectional_1_forward_simple_rnn_1_while_bidirectional_1_forward_simple_rnn_1_while_maximum_iterations0^bidirectional_1/forward_simple_rnn_1/while/NoOp*
T0*
_output_shapes
: Ш
5bidirectional_1/forward_simple_rnn_1/while/Identity_2Identity2bidirectional_1/forward_simple_rnn_1/while/add:z:00^bidirectional_1/forward_simple_rnn_1/while/NoOp*
T0*
_output_shapes
: ѕ
5bidirectional_1/forward_simple_rnn_1/while/Identity_3Identity_bidirectional_1/forward_simple_rnn_1/while/TensorArrayV2Write/TensorListSetItem:output_handle:00^bidirectional_1/forward_simple_rnn_1/while/NoOp*
T0*
_output_shapes
: у
5bidirectional_1/forward_simple_rnn_1/while/Identity_4Identity<bidirectional_1/forward_simple_rnn_1/while/SelectV2:output:00^bidirectional_1/forward_simple_rnn_1/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@х
5bidirectional_1/forward_simple_rnn_1/while/Identity_5Identity>bidirectional_1/forward_simple_rnn_1/while/SelectV2_1:output:00^bidirectional_1/forward_simple_rnn_1/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@ѓ
/bidirectional_1/forward_simple_rnn_1/while/NoOpNoOpT^bidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/BiasAdd/ReadVariableOpS^bidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/MatMul/ReadVariableOpU^bidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Ф
_bidirectional_1_forward_simple_rnn_1_while_bidirectional_1_forward_simple_rnn_1_strided_slice_1abidirectional_1_forward_simple_rnn_1_while_bidirectional_1_forward_simple_rnn_1_strided_slice_1_0"s
3bidirectional_1_forward_simple_rnn_1_while_identity<bidirectional_1/forward_simple_rnn_1/while/Identity:output:0"w
5bidirectional_1_forward_simple_rnn_1_while_identity_1>bidirectional_1/forward_simple_rnn_1/while/Identity_1:output:0"w
5bidirectional_1_forward_simple_rnn_1_while_identity_2>bidirectional_1/forward_simple_rnn_1/while/Identity_2:output:0"w
5bidirectional_1_forward_simple_rnn_1_while_identity_3>bidirectional_1/forward_simple_rnn_1/while/Identity_3:output:0"w
5bidirectional_1_forward_simple_rnn_1_while_identity_4>bidirectional_1/forward_simple_rnn_1/while/Identity_4:output:0"w
5bidirectional_1_forward_simple_rnn_1_while_identity_5>bidirectional_1/forward_simple_rnn_1/while/Identity_5:output:0"О
\bidirectional_1_forward_simple_rnn_1_while_simple_rnn_cell_4_biasadd_readvariableop_resource^bidirectional_1_forward_simple_rnn_1_while_simple_rnn_cell_4_biasadd_readvariableop_resource_0"Р
]bidirectional_1_forward_simple_rnn_1_while_simple_rnn_cell_4_matmul_1_readvariableop_resource_bidirectional_1_forward_simple_rnn_1_while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0"М
[bidirectional_1_forward_simple_rnn_1_while_simple_rnn_cell_4_matmul_readvariableop_resource]bidirectional_1_forward_simple_rnn_1_while_simple_rnn_cell_4_matmul_readvariableop_resource_0"Ц
bidirectional_1_forward_simple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_bidirectional_1_forward_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensorЁbidirectional_1_forward_simple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_bidirectional_1_forward_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensor_0"О
bidirectional_1_forward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_bidirectional_1_forward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensorbidirectional_1_forward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_bidirectional_1_forward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :џџџџџџџџџ@:џџџџџџџџџ@: : : : : : 2Њ
Sbidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/BiasAdd/ReadVariableOpSbidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/BiasAdd/ReadVariableOp2Ј
Rbidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/MatMul/ReadVariableOpRbidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/MatMul/ReadVariableOp2Ќ
Tbidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/MatMul_1/ReadVariableOpTbidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 

С
%forward_simple_rnn_1_while_cond_68494F
Bforward_simple_rnn_1_while_forward_simple_rnn_1_while_loop_counterL
Hforward_simple_rnn_1_while_forward_simple_rnn_1_while_maximum_iterations*
&forward_simple_rnn_1_while_placeholder,
(forward_simple_rnn_1_while_placeholder_1,
(forward_simple_rnn_1_while_placeholder_2,
(forward_simple_rnn_1_while_placeholder_3H
Dforward_simple_rnn_1_while_less_forward_simple_rnn_1_strided_slice_1]
Yforward_simple_rnn_1_while_forward_simple_rnn_1_while_cond_68494___redundant_placeholder0]
Yforward_simple_rnn_1_while_forward_simple_rnn_1_while_cond_68494___redundant_placeholder1]
Yforward_simple_rnn_1_while_forward_simple_rnn_1_while_cond_68494___redundant_placeholder2]
Yforward_simple_rnn_1_while_forward_simple_rnn_1_while_cond_68494___redundant_placeholder3]
Yforward_simple_rnn_1_while_forward_simple_rnn_1_while_cond_68494___redundant_placeholder4'
#forward_simple_rnn_1_while_identity
Ж
forward_simple_rnn_1/while/LessLess&forward_simple_rnn_1_while_placeholderDforward_simple_rnn_1_while_less_forward_simple_rnn_1_strided_slice_1*
T0*
_output_shapes
: u
#forward_simple_rnn_1/while/IdentityIdentity#forward_simple_rnn_1/while/Less:z:0*
T0
*
_output_shapes
: "S
#forward_simple_rnn_1_while_identity,forward_simple_rnn_1/while/Identity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D: : : : :џџџџџџџџџ@:џџџџџџџџџ@: :::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
::

_output_shapes
:
КУ
Ш
J__inference_bidirectional_1_layer_call_and_return_conditional_losses_70626

inputs
mask
W
Eforward_simple_rnn_1_simple_rnn_cell_4_matmul_readvariableop_resource:@@T
Fforward_simple_rnn_1_simple_rnn_cell_4_biasadd_readvariableop_resource:@Y
Gforward_simple_rnn_1_simple_rnn_cell_4_matmul_1_readvariableop_resource:@@X
Fbackward_simple_rnn_1_simple_rnn_cell_5_matmul_readvariableop_resource:@@U
Gbackward_simple_rnn_1_simple_rnn_cell_5_biasadd_readvariableop_resource:@Z
Hbackward_simple_rnn_1_simple_rnn_cell_5_matmul_1_readvariableop_resource:@@
identityЂ>backward_simple_rnn_1/simple_rnn_cell_5/BiasAdd/ReadVariableOpЂ=backward_simple_rnn_1/simple_rnn_cell_5/MatMul/ReadVariableOpЂ?backward_simple_rnn_1/simple_rnn_cell_5/MatMul_1/ReadVariableOpЂbackward_simple_rnn_1/whileЂ=forward_simple_rnn_1/simple_rnn_cell_4/BiasAdd/ReadVariableOpЂ<forward_simple_rnn_1/simple_rnn_cell_4/MatMul/ReadVariableOpЂ>forward_simple_rnn_1/simple_rnn_cell_4/MatMul_1/ReadVariableOpЂforward_simple_rnn_1/whileP
forward_simple_rnn_1/ShapeShapeinputs*
T0*
_output_shapes
:r
(forward_simple_rnn_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*forward_simple_rnn_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*forward_simple_rnn_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:К
"forward_simple_rnn_1/strided_sliceStridedSlice#forward_simple_rnn_1/Shape:output:01forward_simple_rnn_1/strided_slice/stack:output:03forward_simple_rnn_1/strided_slice/stack_1:output:03forward_simple_rnn_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maske
#forward_simple_rnn_1/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@В
!forward_simple_rnn_1/zeros/packedPack+forward_simple_rnn_1/strided_slice:output:0,forward_simple_rnn_1/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:e
 forward_simple_rnn_1/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ћ
forward_simple_rnn_1/zerosFill*forward_simple_rnn_1/zeros/packed:output:0)forward_simple_rnn_1/zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@x
#forward_simple_rnn_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"           
forward_simple_rnn_1/transpose	Transposeinputs,forward_simple_rnn_1/transpose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@n
forward_simple_rnn_1/Shape_1Shape"forward_simple_rnn_1/transpose:y:0*
T0*
_output_shapes
:t
*forward_simple_rnn_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,forward_simple_rnn_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,forward_simple_rnn_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ф
$forward_simple_rnn_1/strided_slice_1StridedSlice%forward_simple_rnn_1/Shape_1:output:03forward_simple_rnn_1/strided_slice_1/stack:output:05forward_simple_rnn_1/strided_slice_1/stack_1:output:05forward_simple_rnn_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#forward_simple_rnn_1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ 
forward_simple_rnn_1/ExpandDims
ExpandDimsmask,forward_simple_rnn_1/ExpandDims/dim:output:0*
T0
*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџz
%forward_simple_rnn_1/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
 forward_simple_rnn_1/transpose_1	Transpose(forward_simple_rnn_1/ExpandDims:output:0.forward_simple_rnn_1/transpose_1/perm:output:0*
T0
*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ{
0forward_simple_rnn_1/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџѓ
"forward_simple_rnn_1/TensorArrayV2TensorListReserve9forward_simple_rnn_1/TensorArrayV2/element_shape:output:0-forward_simple_rnn_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
Jforward_simple_rnn_1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   
<forward_simple_rnn_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor"forward_simple_rnn_1/transpose:y:0Sforward_simple_rnn_1/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвt
*forward_simple_rnn_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,forward_simple_rnn_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,forward_simple_rnn_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:в
$forward_simple_rnn_1/strided_slice_2StridedSlice"forward_simple_rnn_1/transpose:y:03forward_simple_rnn_1/strided_slice_2/stack:output:05forward_simple_rnn_1/strided_slice_2/stack_1:output:05forward_simple_rnn_1/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@*
shrink_axis_maskТ
<forward_simple_rnn_1/simple_rnn_cell_4/MatMul/ReadVariableOpReadVariableOpEforward_simple_rnn_1_simple_rnn_cell_4_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype0о
-forward_simple_rnn_1/simple_rnn_cell_4/MatMulMatMul-forward_simple_rnn_1/strided_slice_2:output:0Dforward_simple_rnn_1/simple_rnn_cell_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@Р
=forward_simple_rnn_1/simple_rnn_cell_4/BiasAdd/ReadVariableOpReadVariableOpFforward_simple_rnn_1_simple_rnn_cell_4_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0ы
.forward_simple_rnn_1/simple_rnn_cell_4/BiasAddBiasAdd7forward_simple_rnn_1/simple_rnn_cell_4/MatMul:product:0Eforward_simple_rnn_1/simple_rnn_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@Ц
>forward_simple_rnn_1/simple_rnn_cell_4/MatMul_1/ReadVariableOpReadVariableOpGforward_simple_rnn_1_simple_rnn_cell_4_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0и
/forward_simple_rnn_1/simple_rnn_cell_4/MatMul_1MatMul#forward_simple_rnn_1/zeros:output:0Fforward_simple_rnn_1/simple_rnn_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@й
*forward_simple_rnn_1/simple_rnn_cell_4/addAddV27forward_simple_rnn_1/simple_rnn_cell_4/BiasAdd:output:09forward_simple_rnn_1/simple_rnn_cell_4/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@
+forward_simple_rnn_1/simple_rnn_cell_4/TanhTanh.forward_simple_rnn_1/simple_rnn_cell_4/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@
2forward_simple_rnn_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   ї
$forward_simple_rnn_1/TensorArrayV2_1TensorListReserve;forward_simple_rnn_1/TensorArrayV2_1/element_shape:output:0-forward_simple_rnn_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв[
forward_simple_rnn_1/timeConst*
_output_shapes
: *
dtype0*
value	B : }
2forward_simple_rnn_1/TensorArrayV2_2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџї
$forward_simple_rnn_1/TensorArrayV2_2TensorListReserve;forward_simple_rnn_1/TensorArrayV2_2/element_shape:output:0-forward_simple_rnn_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0
*

shape_type0:щшШ
Lforward_simple_rnn_1/TensorArrayUnstack_1/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   Ѕ
>forward_simple_rnn_1/TensorArrayUnstack_1/TensorListFromTensorTensorListFromTensor$forward_simple_rnn_1/transpose_1:y:0Uforward_simple_rnn_1/TensorArrayUnstack_1/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0
*

shape_type0:щшШ
forward_simple_rnn_1/zeros_like	ZerosLike/forward_simple_rnn_1/simple_rnn_cell_4/Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@x
-forward_simple_rnn_1/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџi
'forward_simple_rnn_1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 	
forward_simple_rnn_1/whileWhile0forward_simple_rnn_1/while/loop_counter:output:06forward_simple_rnn_1/while/maximum_iterations:output:0"forward_simple_rnn_1/time:output:0-forward_simple_rnn_1/TensorArrayV2_1:handle:0#forward_simple_rnn_1/zeros_like:y:0#forward_simple_rnn_1/zeros:output:0-forward_simple_rnn_1/strided_slice_1:output:0Lforward_simple_rnn_1/TensorArrayUnstack/TensorListFromTensor:output_handle:0Nforward_simple_rnn_1/TensorArrayUnstack_1/TensorListFromTensor:output_handle:0Eforward_simple_rnn_1_simple_rnn_cell_4_matmul_readvariableop_resourceFforward_simple_rnn_1_simple_rnn_cell_4_biasadd_readvariableop_resourceGforward_simple_rnn_1_simple_rnn_cell_4_matmul_1_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :џџџџџџџџџ@:џџџџџџџџџ@: : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *1
body)R'
%forward_simple_rnn_1_while_body_70411*1
cond)R'
%forward_simple_rnn_1_while_cond_70410*M
output_shapes<
:: : : : :џџџџџџџџџ@:џџџџџџџџџ@: : : : : : *
parallel_iterations 
Eforward_simple_rnn_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   
7forward_simple_rnn_1/TensorArrayV2Stack/TensorListStackTensorListStack#forward_simple_rnn_1/while:output:3Nforward_simple_rnn_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@*
element_dtype0}
*forward_simple_rnn_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџv
,forward_simple_rnn_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: v
,forward_simple_rnn_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:№
$forward_simple_rnn_1/strided_slice_3StridedSlice@forward_simple_rnn_1/TensorArrayV2Stack/TensorListStack:tensor:03forward_simple_rnn_1/strided_slice_3/stack:output:05forward_simple_rnn_1/strided_slice_3/stack_1:output:05forward_simple_rnn_1/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@*
shrink_axis_maskz
%forward_simple_rnn_1/transpose_2/permConst*
_output_shapes
:*
dtype0*!
valueB"          о
 forward_simple_rnn_1/transpose_2	Transpose@forward_simple_rnn_1/TensorArrayV2Stack/TensorListStack:tensor:0.forward_simple_rnn_1/transpose_2/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@Q
backward_simple_rnn_1/ShapeShapeinputs*
T0*
_output_shapes
:s
)backward_simple_rnn_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+backward_simple_rnn_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+backward_simple_rnn_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:П
#backward_simple_rnn_1/strided_sliceStridedSlice$backward_simple_rnn_1/Shape:output:02backward_simple_rnn_1/strided_slice/stack:output:04backward_simple_rnn_1/strided_slice/stack_1:output:04backward_simple_rnn_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
$backward_simple_rnn_1/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@Е
"backward_simple_rnn_1/zeros/packedPack,backward_simple_rnn_1/strided_slice:output:0-backward_simple_rnn_1/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:f
!backward_simple_rnn_1/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ў
backward_simple_rnn_1/zerosFill+backward_simple_rnn_1/zeros/packed:output:0*backward_simple_rnn_1/zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@y
$backward_simple_rnn_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ђ
backward_simple_rnn_1/transpose	Transposeinputs-backward_simple_rnn_1/transpose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@p
backward_simple_rnn_1/Shape_1Shape#backward_simple_rnn_1/transpose:y:0*
T0*
_output_shapes
:u
+backward_simple_rnn_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-backward_simple_rnn_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-backward_simple_rnn_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Щ
%backward_simple_rnn_1/strided_slice_1StridedSlice&backward_simple_rnn_1/Shape_1:output:04backward_simple_rnn_1/strided_slice_1/stack:output:06backward_simple_rnn_1/strided_slice_1/stack_1:output:06backward_simple_rnn_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$backward_simple_rnn_1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџЂ
 backward_simple_rnn_1/ExpandDims
ExpandDimsmask-backward_simple_rnn_1/ExpandDims/dim:output:0*
T0
*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ{
&backward_simple_rnn_1/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Щ
!backward_simple_rnn_1/transpose_1	Transpose)backward_simple_rnn_1/ExpandDims:output:0/backward_simple_rnn_1/transpose_1/perm:output:0*
T0
*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ|
1backward_simple_rnn_1/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџі
#backward_simple_rnn_1/TensorArrayV2TensorListReserve:backward_simple_rnn_1/TensorArrayV2/element_shape:output:0.backward_simple_rnn_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвn
$backward_simple_rnn_1/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: П
backward_simple_rnn_1/ReverseV2	ReverseV2#backward_simple_rnn_1/transpose:y:0-backward_simple_rnn_1/ReverseV2/axis:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@
Kbackward_simple_rnn_1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   Ї
=backward_simple_rnn_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor(backward_simple_rnn_1/ReverseV2:output:0Tbackward_simple_rnn_1/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвu
+backward_simple_rnn_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-backward_simple_rnn_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-backward_simple_rnn_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:з
%backward_simple_rnn_1/strided_slice_2StridedSlice#backward_simple_rnn_1/transpose:y:04backward_simple_rnn_1/strided_slice_2/stack:output:06backward_simple_rnn_1/strided_slice_2/stack_1:output:06backward_simple_rnn_1/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@*
shrink_axis_maskФ
=backward_simple_rnn_1/simple_rnn_cell_5/MatMul/ReadVariableOpReadVariableOpFbackward_simple_rnn_1_simple_rnn_cell_5_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype0с
.backward_simple_rnn_1/simple_rnn_cell_5/MatMulMatMul.backward_simple_rnn_1/strided_slice_2:output:0Ebackward_simple_rnn_1/simple_rnn_cell_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@Т
>backward_simple_rnn_1/simple_rnn_cell_5/BiasAdd/ReadVariableOpReadVariableOpGbackward_simple_rnn_1_simple_rnn_cell_5_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0ю
/backward_simple_rnn_1/simple_rnn_cell_5/BiasAddBiasAdd8backward_simple_rnn_1/simple_rnn_cell_5/MatMul:product:0Fbackward_simple_rnn_1/simple_rnn_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@Ш
?backward_simple_rnn_1/simple_rnn_cell_5/MatMul_1/ReadVariableOpReadVariableOpHbackward_simple_rnn_1_simple_rnn_cell_5_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0л
0backward_simple_rnn_1/simple_rnn_cell_5/MatMul_1MatMul$backward_simple_rnn_1/zeros:output:0Gbackward_simple_rnn_1/simple_rnn_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@м
+backward_simple_rnn_1/simple_rnn_cell_5/addAddV28backward_simple_rnn_1/simple_rnn_cell_5/BiasAdd:output:0:backward_simple_rnn_1/simple_rnn_cell_5/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@
,backward_simple_rnn_1/simple_rnn_cell_5/TanhTanh/backward_simple_rnn_1/simple_rnn_cell_5/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@
3backward_simple_rnn_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   њ
%backward_simple_rnn_1/TensorArrayV2_1TensorListReserve<backward_simple_rnn_1/TensorArrayV2_1/element_shape:output:0.backward_simple_rnn_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв\
backward_simple_rnn_1/timeConst*
_output_shapes
: *
dtype0*
value	B : p
&backward_simple_rnn_1/ReverseV2_1/axisConst*
_output_shapes
:*
dtype0*
valueB: Х
!backward_simple_rnn_1/ReverseV2_1	ReverseV2%backward_simple_rnn_1/transpose_1:y:0/backward_simple_rnn_1/ReverseV2_1/axis:output:0*
T0
*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ~
3backward_simple_rnn_1/TensorArrayV2_2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџњ
%backward_simple_rnn_1/TensorArrayV2_2TensorListReserve<backward_simple_rnn_1/TensorArrayV2_2/element_shape:output:0.backward_simple_rnn_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0
*

shape_type0:щшШ
Mbackward_simple_rnn_1/TensorArrayUnstack_1/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   ­
?backward_simple_rnn_1/TensorArrayUnstack_1/TensorListFromTensorTensorListFromTensor*backward_simple_rnn_1/ReverseV2_1:output:0Vbackward_simple_rnn_1/TensorArrayUnstack_1/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0
*

shape_type0:щшШ
 backward_simple_rnn_1/zeros_like	ZerosLike0backward_simple_rnn_1/simple_rnn_cell_5/Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@y
.backward_simple_rnn_1/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџj
(backward_simple_rnn_1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 	
backward_simple_rnn_1/whileWhile1backward_simple_rnn_1/while/loop_counter:output:07backward_simple_rnn_1/while/maximum_iterations:output:0#backward_simple_rnn_1/time:output:0.backward_simple_rnn_1/TensorArrayV2_1:handle:0$backward_simple_rnn_1/zeros_like:y:0$backward_simple_rnn_1/zeros:output:0.backward_simple_rnn_1/strided_slice_1:output:0Mbackward_simple_rnn_1/TensorArrayUnstack/TensorListFromTensor:output_handle:0Obackward_simple_rnn_1/TensorArrayUnstack_1/TensorListFromTensor:output_handle:0Fbackward_simple_rnn_1_simple_rnn_cell_5_matmul_readvariableop_resourceGbackward_simple_rnn_1_simple_rnn_cell_5_biasadd_readvariableop_resourceHbackward_simple_rnn_1_simple_rnn_cell_5_matmul_1_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :џџџџџџџџџ@:џџџџџџџџџ@: : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *2
body*R(
&backward_simple_rnn_1_while_body_70543*2
cond*R(
&backward_simple_rnn_1_while_cond_70542*M
output_shapes<
:: : : : :џџџџџџџџџ@:џџџџџџџџџ@: : : : : : *
parallel_iterations 
Fbackward_simple_rnn_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   
8backward_simple_rnn_1/TensorArrayV2Stack/TensorListStackTensorListStack$backward_simple_rnn_1/while:output:3Obackward_simple_rnn_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@*
element_dtype0~
+backward_simple_rnn_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџw
-backward_simple_rnn_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: w
-backward_simple_rnn_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ѕ
%backward_simple_rnn_1/strided_slice_3StridedSliceAbackward_simple_rnn_1/TensorArrayV2Stack/TensorListStack:tensor:04backward_simple_rnn_1/strided_slice_3/stack:output:06backward_simple_rnn_1/strided_slice_3/stack_1:output:06backward_simple_rnn_1/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@*
shrink_axis_mask{
&backward_simple_rnn_1/transpose_2/permConst*
_output_shapes
:*
dtype0*!
valueB"          с
!backward_simple_rnn_1/transpose_2	TransposeAbackward_simple_rnn_1/TensorArrayV2Stack/TensorListStack:tensor:0/backward_simple_rnn_1/transpose_2/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :У
concatConcatV2-forward_simple_rnn_1/strided_slice_3:output:0.backward_simple_rnn_1/strided_slice_3:output:0concat/axis:output:0*
N*
T0*(
_output_shapes
:џџџџџџџџџ_
IdentityIdentityconcat:output:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџ
NoOpNoOp?^backward_simple_rnn_1/simple_rnn_cell_5/BiasAdd/ReadVariableOp>^backward_simple_rnn_1/simple_rnn_cell_5/MatMul/ReadVariableOp@^backward_simple_rnn_1/simple_rnn_cell_5/MatMul_1/ReadVariableOp^backward_simple_rnn_1/while>^forward_simple_rnn_1/simple_rnn_cell_4/BiasAdd/ReadVariableOp=^forward_simple_rnn_1/simple_rnn_cell_4/MatMul/ReadVariableOp?^forward_simple_rnn_1/simple_rnn_cell_4/MatMul_1/ReadVariableOp^forward_simple_rnn_1/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:џџџџџџџџџџџџџџџџџџ@:џџџџџџџџџџџџџџџџџџ: : : : : : 2
>backward_simple_rnn_1/simple_rnn_cell_5/BiasAdd/ReadVariableOp>backward_simple_rnn_1/simple_rnn_cell_5/BiasAdd/ReadVariableOp2~
=backward_simple_rnn_1/simple_rnn_cell_5/MatMul/ReadVariableOp=backward_simple_rnn_1/simple_rnn_cell_5/MatMul/ReadVariableOp2
?backward_simple_rnn_1/simple_rnn_cell_5/MatMul_1/ReadVariableOp?backward_simple_rnn_1/simple_rnn_cell_5/MatMul_1/ReadVariableOp2:
backward_simple_rnn_1/whilebackward_simple_rnn_1/while2~
=forward_simple_rnn_1/simple_rnn_cell_4/BiasAdd/ReadVariableOp=forward_simple_rnn_1/simple_rnn_cell_4/BiasAdd/ReadVariableOp2|
<forward_simple_rnn_1/simple_rnn_cell_4/MatMul/ReadVariableOp<forward_simple_rnn_1/simple_rnn_cell_4/MatMul/ReadVariableOp2
>forward_simple_rnn_1/simple_rnn_cell_4/MatMul_1/ReadVariableOp>forward_simple_rnn_1/simple_rnn_cell_4/MatMul_1/ReadVariableOp28
forward_simple_rnn_1/whileforward_simple_rnn_1/while:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs:VR
0
_output_shapes
:џџџџџџџџџџџџџџџџџџ

_user_specified_namemask
е
Ѕ
while_cond_66956
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_66956___redundant_placeholder03
/while_while_cond_66956___redundant_placeholder13
/while_while_cond_66956___redundant_placeholder23
/while_while_cond_66956___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :џџџџџџџџџ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
:
U
І
%forward_simple_rnn_1_while_body_70144F
Bforward_simple_rnn_1_while_forward_simple_rnn_1_while_loop_counterL
Hforward_simple_rnn_1_while_forward_simple_rnn_1_while_maximum_iterations*
&forward_simple_rnn_1_while_placeholder,
(forward_simple_rnn_1_while_placeholder_1,
(forward_simple_rnn_1_while_placeholder_2,
(forward_simple_rnn_1_while_placeholder_3E
Aforward_simple_rnn_1_while_forward_simple_rnn_1_strided_slice_1_0
}forward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_forward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0
forward_simple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_forward_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensor_0_
Mforward_simple_rnn_1_while_simple_rnn_cell_4_matmul_readvariableop_resource_0:@@\
Nforward_simple_rnn_1_while_simple_rnn_cell_4_biasadd_readvariableop_resource_0:@a
Oforward_simple_rnn_1_while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0:@@'
#forward_simple_rnn_1_while_identity)
%forward_simple_rnn_1_while_identity_1)
%forward_simple_rnn_1_while_identity_2)
%forward_simple_rnn_1_while_identity_3)
%forward_simple_rnn_1_while_identity_4)
%forward_simple_rnn_1_while_identity_5C
?forward_simple_rnn_1_while_forward_simple_rnn_1_strided_slice_1
{forward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_forward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor
forward_simple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_forward_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensor]
Kforward_simple_rnn_1_while_simple_rnn_cell_4_matmul_readvariableop_resource:@@Z
Lforward_simple_rnn_1_while_simple_rnn_cell_4_biasadd_readvariableop_resource:@_
Mforward_simple_rnn_1_while_simple_rnn_cell_4_matmul_1_readvariableop_resource:@@ЂCforward_simple_rnn_1/while/simple_rnn_cell_4/BiasAdd/ReadVariableOpЂBforward_simple_rnn_1/while/simple_rnn_cell_4/MatMul/ReadVariableOpЂDforward_simple_rnn_1/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp
Lforward_simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   
>forward_simple_rnn_1/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem}forward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_forward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0&forward_simple_rnn_1_while_placeholderUforward_simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ@*
element_dtype0
Nforward_simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   
@forward_simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItemTensorListGetItemforward_simple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_forward_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensor_0&forward_simple_rnn_1_while_placeholderWforward_simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0
а
Bforward_simple_rnn_1/while/simple_rnn_cell_4/MatMul/ReadVariableOpReadVariableOpMforward_simple_rnn_1_while_simple_rnn_cell_4_matmul_readvariableop_resource_0*
_output_shapes

:@@*
dtype0
3forward_simple_rnn_1/while/simple_rnn_cell_4/MatMulMatMulEforward_simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem:item:0Jforward_simple_rnn_1/while/simple_rnn_cell_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@Ю
Cforward_simple_rnn_1/while/simple_rnn_cell_4/BiasAdd/ReadVariableOpReadVariableOpNforward_simple_rnn_1_while_simple_rnn_cell_4_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0§
4forward_simple_rnn_1/while/simple_rnn_cell_4/BiasAddBiasAdd=forward_simple_rnn_1/while/simple_rnn_cell_4/MatMul:product:0Kforward_simple_rnn_1/while/simple_rnn_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@д
Dforward_simple_rnn_1/while/simple_rnn_cell_4/MatMul_1/ReadVariableOpReadVariableOpOforward_simple_rnn_1_while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype0щ
5forward_simple_rnn_1/while/simple_rnn_cell_4/MatMul_1MatMul(forward_simple_rnn_1_while_placeholder_3Lforward_simple_rnn_1/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@ы
0forward_simple_rnn_1/while/simple_rnn_cell_4/addAddV2=forward_simple_rnn_1/while/simple_rnn_cell_4/BiasAdd:output:0?forward_simple_rnn_1/while/simple_rnn_cell_4/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@Ё
1forward_simple_rnn_1/while/simple_rnn_cell_4/TanhTanh4forward_simple_rnn_1/while/simple_rnn_cell_4/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@z
)forward_simple_rnn_1/while/Tile/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      ж
forward_simple_rnn_1/while/TileTileGforward_simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItem:item:02forward_simple_rnn_1/while/Tile/multiples:output:0*
T0
*'
_output_shapes
:џџџџџџџџџь
#forward_simple_rnn_1/while/SelectV2SelectV2(forward_simple_rnn_1/while/Tile:output:05forward_simple_rnn_1/while/simple_rnn_cell_4/Tanh:y:0(forward_simple_rnn_1_while_placeholder_2*
T0*'
_output_shapes
:џџџџџџџџџ@|
+forward_simple_rnn_1/while/Tile_1/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      к
!forward_simple_rnn_1/while/Tile_1TileGforward_simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItem:item:04forward_simple_rnn_1/while/Tile_1/multiples:output:0*
T0
*'
_output_shapes
:џџџџџџџџџ№
%forward_simple_rnn_1/while/SelectV2_1SelectV2*forward_simple_rnn_1/while/Tile_1:output:05forward_simple_rnn_1/while/simple_rnn_cell_4/Tanh:y:0(forward_simple_rnn_1_while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ@
?forward_simple_rnn_1/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem(forward_simple_rnn_1_while_placeholder_1&forward_simple_rnn_1_while_placeholder,forward_simple_rnn_1/while/SelectV2:output:0*
_output_shapes
: *
element_dtype0:щшвb
 forward_simple_rnn_1/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
forward_simple_rnn_1/while/addAddV2&forward_simple_rnn_1_while_placeholder)forward_simple_rnn_1/while/add/y:output:0*
T0*
_output_shapes
: d
"forward_simple_rnn_1/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Л
 forward_simple_rnn_1/while/add_1AddV2Bforward_simple_rnn_1_while_forward_simple_rnn_1_while_loop_counter+forward_simple_rnn_1/while/add_1/y:output:0*
T0*
_output_shapes
: 
#forward_simple_rnn_1/while/IdentityIdentity$forward_simple_rnn_1/while/add_1:z:0 ^forward_simple_rnn_1/while/NoOp*
T0*
_output_shapes
: О
%forward_simple_rnn_1/while/Identity_1IdentityHforward_simple_rnn_1_while_forward_simple_rnn_1_while_maximum_iterations ^forward_simple_rnn_1/while/NoOp*
T0*
_output_shapes
: 
%forward_simple_rnn_1/while/Identity_2Identity"forward_simple_rnn_1/while/add:z:0 ^forward_simple_rnn_1/while/NoOp*
T0*
_output_shapes
: Х
%forward_simple_rnn_1/while/Identity_3IdentityOforward_simple_rnn_1/while/TensorArrayV2Write/TensorListSetItem:output_handle:0 ^forward_simple_rnn_1/while/NoOp*
T0*
_output_shapes
: Г
%forward_simple_rnn_1/while/Identity_4Identity,forward_simple_rnn_1/while/SelectV2:output:0 ^forward_simple_rnn_1/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@Е
%forward_simple_rnn_1/while/Identity_5Identity.forward_simple_rnn_1/while/SelectV2_1:output:0 ^forward_simple_rnn_1/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@Г
forward_simple_rnn_1/while/NoOpNoOpD^forward_simple_rnn_1/while/simple_rnn_cell_4/BiasAdd/ReadVariableOpC^forward_simple_rnn_1/while/simple_rnn_cell_4/MatMul/ReadVariableOpE^forward_simple_rnn_1/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
?forward_simple_rnn_1_while_forward_simple_rnn_1_strided_slice_1Aforward_simple_rnn_1_while_forward_simple_rnn_1_strided_slice_1_0"S
#forward_simple_rnn_1_while_identity,forward_simple_rnn_1/while/Identity:output:0"W
%forward_simple_rnn_1_while_identity_1.forward_simple_rnn_1/while/Identity_1:output:0"W
%forward_simple_rnn_1_while_identity_2.forward_simple_rnn_1/while/Identity_2:output:0"W
%forward_simple_rnn_1_while_identity_3.forward_simple_rnn_1/while/Identity_3:output:0"W
%forward_simple_rnn_1_while_identity_4.forward_simple_rnn_1/while/Identity_4:output:0"W
%forward_simple_rnn_1_while_identity_5.forward_simple_rnn_1/while/Identity_5:output:0"
Lforward_simple_rnn_1_while_simple_rnn_cell_4_biasadd_readvariableop_resourceNforward_simple_rnn_1_while_simple_rnn_cell_4_biasadd_readvariableop_resource_0" 
Mforward_simple_rnn_1_while_simple_rnn_cell_4_matmul_1_readvariableop_resourceOforward_simple_rnn_1_while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0"
Kforward_simple_rnn_1_while_simple_rnn_cell_4_matmul_readvariableop_resourceMforward_simple_rnn_1_while_simple_rnn_cell_4_matmul_readvariableop_resource_0"
forward_simple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_forward_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensorforward_simple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_forward_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensor_0"ќ
{forward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_forward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor}forward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_forward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :џџџџџџџџџ@:џџџџџџџџџ@: : : : : : 2
Cforward_simple_rnn_1/while/simple_rnn_cell_4/BiasAdd/ReadVariableOpCforward_simple_rnn_1/while/simple_rnn_cell_4/BiasAdd/ReadVariableOp2
Bforward_simple_rnn_1/while/simple_rnn_cell_4/MatMul/ReadVariableOpBforward_simple_rnn_1/while/simple_rnn_cell_4/MatMul/ReadVariableOp2
Dforward_simple_rnn_1/while/simple_rnn_cell_4/MatMul_1/ReadVariableOpDforward_simple_rnn_1/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
Є
Р
4__inference_forward_simple_rnn_1_layer_call_fn_70687
inputs_0
unknown:@@
	unknown_0:@
	unknown_1:@@
identityЂStatefulPartitionedCallѓ
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *X
fSRQ
O__inference_forward_simple_rnn_1_layer_call_and_return_conditional_losses_67179o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ@: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@
"
_user_specified_name
inputs/0
В
П
5__inference_backward_simple_rnn_1_layer_call_fn_71174

inputs
unknown:@@
	unknown_0:@
	unknown_1:@@
identityЂStatefulPartitionedCallђ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_backward_simple_rnn_1_layer_call_and_return_conditional_losses_67715o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:'џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:e a
=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
В
П
5__inference_backward_simple_rnn_1_layer_call_fn_71185

inputs
unknown:@@
	unknown_0:@
	unknown_1:@@
identityЂStatefulPartitionedCallђ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_backward_simple_rnn_1_layer_call_and_return_conditional_losses_67864o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:'џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:e a
=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
е
Ѕ
while_cond_71074
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_71074___redundant_placeholder03
/while_while_cond_71074___redundant_placeholder13
/while_while_cond_71074___redundant_placeholder23
/while_while_cond_71074___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :џџџџџџџџџ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
:
ц?
У
P__inference_backward_simple_rnn_1_layer_call_and_return_conditional_losses_67715

inputsB
0simple_rnn_cell_5_matmul_readvariableop_resource:@@?
1simple_rnn_cell_5_biasadd_readvariableop_resource:@D
2simple_rnn_cell_5_matmul_1_readvariableop_resource:@@
identityЂ(simple_rnn_cell_5/BiasAdd/ReadVariableOpЂ'simple_rnn_cell_5/MatMul/ReadVariableOpЂ)simple_rnn_cell_5/MatMul_1/ReadVariableOpЂwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
	transpose	Transposeinputstranspose/perm:output:0*
T0*=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвX
ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: 
	ReverseV2	ReverseV2transpose:y:0ReverseV2/axis:output:0*
T0*=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџџџџџх
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensorReverseV2:output:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ђ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
shrink_axis_mask
'simple_rnn_cell_5/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_5_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype0
simple_rnn_cell_5/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@
(simple_rnn_cell_5/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_5_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ќ
simple_rnn_cell_5/BiasAddBiasAdd"simple_rnn_cell_5/MatMul:product:00simple_rnn_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@
)simple_rnn_cell_5/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_5_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0
simple_rnn_cell_5/MatMul_1MatMulzeros:output:01simple_rnn_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@
simple_rnn_cell_5/addAddV2"simple_rnn_cell_5/BiasAdd:output:0$simple_rnn_cell_5/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@k
simple_rnn_cell_5/TanhTanhsimple_rnn_cell_5/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ж
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_5_matmul_readvariableop_resource1simple_rnn_cell_5_biasadd_readvariableop_resource2simple_rnn_cell_5_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџ@: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_67649*
condR
while_cond_67648*8
output_shapes'
%: : : : :џџџџџџџџџ@: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   Ы
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@Я
NoOpNoOp)^simple_rnn_cell_5/BiasAdd/ReadVariableOp(^simple_rnn_cell_5/MatMul/ReadVariableOp*^simple_rnn_cell_5/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:'џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : 2T
(simple_rnn_cell_5/BiasAdd/ReadVariableOp(simple_rnn_cell_5/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_5/MatMul/ReadVariableOp'simple_rnn_cell_5/MatMul/ReadVariableOp2V
)simple_rnn_cell_5/MatMul_1/ReadVariableOp)simple_rnn_cell_5/MatMul_1/ReadVariableOp2
whilewhile:e a
=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Ј
Ч
&backward_simple_rnn_1_while_cond_70023H
Dbackward_simple_rnn_1_while_backward_simple_rnn_1_while_loop_counterN
Jbackward_simple_rnn_1_while_backward_simple_rnn_1_while_maximum_iterations+
'backward_simple_rnn_1_while_placeholder-
)backward_simple_rnn_1_while_placeholder_1-
)backward_simple_rnn_1_while_placeholder_2J
Fbackward_simple_rnn_1_while_less_backward_simple_rnn_1_strided_slice_1_
[backward_simple_rnn_1_while_backward_simple_rnn_1_while_cond_70023___redundant_placeholder0_
[backward_simple_rnn_1_while_backward_simple_rnn_1_while_cond_70023___redundant_placeholder1_
[backward_simple_rnn_1_while_backward_simple_rnn_1_while_cond_70023___redundant_placeholder2_
[backward_simple_rnn_1_while_backward_simple_rnn_1_while_cond_70023___redundant_placeholder3(
$backward_simple_rnn_1_while_identity
К
 backward_simple_rnn_1/while/LessLess'backward_simple_rnn_1_while_placeholderFbackward_simple_rnn_1_while_less_backward_simple_rnn_1_strided_slice_1*
T0*
_output_shapes
: w
$backward_simple_rnn_1/while/IdentityIdentity$backward_simple_rnn_1/while/Less:z:0*
T0
*
_output_shapes
: "U
$backward_simple_rnn_1_while_identity-backward_simple_rnn_1/while/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :џџџџџџџџџ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
:
С
з
J__inference_bidirectional_1_layer_call_and_return_conditional_losses_67726

inputs,
forward_simple_rnn_1_67599:@@(
forward_simple_rnn_1_67601:@,
forward_simple_rnn_1_67603:@@-
backward_simple_rnn_1_67716:@@)
backward_simple_rnn_1_67718:@-
backward_simple_rnn_1_67720:@@
identityЂ-backward_simple_rnn_1/StatefulPartitionedCallЂ,forward_simple_rnn_1/StatefulPartitionedCallЛ
,forward_simple_rnn_1/StatefulPartitionedCallStatefulPartitionedCallinputsforward_simple_rnn_1_67599forward_simple_rnn_1_67601forward_simple_rnn_1_67603*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *X
fSRQ
O__inference_forward_simple_rnn_1_layer_call_and_return_conditional_losses_67598Р
-backward_simple_rnn_1/StatefulPartitionedCallStatefulPartitionedCallinputsbackward_simple_rnn_1_67716backward_simple_rnn_1_67718backward_simple_rnn_1_67720*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_backward_simple_rnn_1_layer_call_and_return_conditional_losses_67715M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :г
concatConcatV25forward_simple_rnn_1/StatefulPartitionedCall:output:06backward_simple_rnn_1/StatefulPartitionedCall:output:0concat/axis:output:0*
N*
T0*(
_output_shapes
:џџџџџџџџџ_
IdentityIdentityconcat:output:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџЅ
NoOpNoOp.^backward_simple_rnn_1/StatefulPartitionedCall-^forward_simple_rnn_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:'џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : : : 2^
-backward_simple_rnn_1/StatefulPartitionedCall-backward_simple_rnn_1/StatefulPartitionedCall2\
,forward_simple_rnn_1/StatefulPartitionedCall,forward_simple_rnn_1/StatefulPartitionedCall:e a
=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
е
Ѕ
while_cond_71338
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_71338___redundant_placeholder03
/while_while_cond_71338___redundant_placeholder13
/while_while_cond_71338___redundant_placeholder23
/while_while_cond_71338___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :џџџџџџџџџ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
:
ќ
ч
L__inference_simple_rnn_cell_5_layer_call_and_return_conditional_losses_67358

inputs

states0
matmul_readvariableop_resource:@@-
biasadd_readvariableop_resource:@2
 matmul_1_readvariableop_resource:@@
identity

identity_1ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@d
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@G
TanhTanhadd:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@W
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@Y

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:џџџџџџџџџ@:џџџџџџџџџ@: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_namestates

щ
L__inference_simple_rnn_cell_5_layer_call_and_return_conditional_losses_71732

inputs
states_00
matmul_readvariableop_resource:@@-
biasadd_readvariableop_resource:@2
 matmul_1_readvariableop_resource:@@
identity

identity_1ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@d
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@G
TanhTanhadd:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@W
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@Y

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:џџџџџџџџџ@:џџџџџџџџџ@: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџ@
"
_user_specified_name
states/0
Ј
Ч
&backward_simple_rnn_1_while_cond_69807H
Dbackward_simple_rnn_1_while_backward_simple_rnn_1_while_loop_counterN
Jbackward_simple_rnn_1_while_backward_simple_rnn_1_while_maximum_iterations+
'backward_simple_rnn_1_while_placeholder-
)backward_simple_rnn_1_while_placeholder_1-
)backward_simple_rnn_1_while_placeholder_2J
Fbackward_simple_rnn_1_while_less_backward_simple_rnn_1_strided_slice_1_
[backward_simple_rnn_1_while_backward_simple_rnn_1_while_cond_69807___redundant_placeholder0_
[backward_simple_rnn_1_while_backward_simple_rnn_1_while_cond_69807___redundant_placeholder1_
[backward_simple_rnn_1_while_backward_simple_rnn_1_while_cond_69807___redundant_placeholder2_
[backward_simple_rnn_1_while_backward_simple_rnn_1_while_cond_69807___redundant_placeholder3(
$backward_simple_rnn_1_while_identity
К
 backward_simple_rnn_1/while/LessLess'backward_simple_rnn_1_while_placeholderFbackward_simple_rnn_1_while_less_backward_simple_rnn_1_strided_slice_1*
T0*
_output_shapes
: w
$backward_simple_rnn_1/while/IdentityIdentity$backward_simple_rnn_1/while/Less:z:0*
T0
*
_output_shapes
: "U
$backward_simple_rnn_1_while_identity-backward_simple_rnn_1/while/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :џџџџџџџџџ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
:
КV
Ь
&backward_simple_rnn_1_while_body_70543H
Dbackward_simple_rnn_1_while_backward_simple_rnn_1_while_loop_counterN
Jbackward_simple_rnn_1_while_backward_simple_rnn_1_while_maximum_iterations+
'backward_simple_rnn_1_while_placeholder-
)backward_simple_rnn_1_while_placeholder_1-
)backward_simple_rnn_1_while_placeholder_2-
)backward_simple_rnn_1_while_placeholder_3G
Cbackward_simple_rnn_1_while_backward_simple_rnn_1_strided_slice_1_0
backward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_backward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0
backward_simple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_backward_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensor_0`
Nbackward_simple_rnn_1_while_simple_rnn_cell_5_matmul_readvariableop_resource_0:@@]
Obackward_simple_rnn_1_while_simple_rnn_cell_5_biasadd_readvariableop_resource_0:@b
Pbackward_simple_rnn_1_while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0:@@(
$backward_simple_rnn_1_while_identity*
&backward_simple_rnn_1_while_identity_1*
&backward_simple_rnn_1_while_identity_2*
&backward_simple_rnn_1_while_identity_3*
&backward_simple_rnn_1_while_identity_4*
&backward_simple_rnn_1_while_identity_5E
Abackward_simple_rnn_1_while_backward_simple_rnn_1_strided_slice_1
}backward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_backward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor
backward_simple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_backward_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensor^
Lbackward_simple_rnn_1_while_simple_rnn_cell_5_matmul_readvariableop_resource:@@[
Mbackward_simple_rnn_1_while_simple_rnn_cell_5_biasadd_readvariableop_resource:@`
Nbackward_simple_rnn_1_while_simple_rnn_cell_5_matmul_1_readvariableop_resource:@@ЂDbackward_simple_rnn_1/while/simple_rnn_cell_5/BiasAdd/ReadVariableOpЂCbackward_simple_rnn_1/while/simple_rnn_cell_5/MatMul/ReadVariableOpЂEbackward_simple_rnn_1/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp
Mbackward_simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   
?backward_simple_rnn_1/while/TensorArrayV2Read/TensorListGetItemTensorListGetItembackward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_backward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0'backward_simple_rnn_1_while_placeholderVbackward_simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ@*
element_dtype0 
Obackward_simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   
Abackward_simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItemTensorListGetItembackward_simple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_backward_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensor_0'backward_simple_rnn_1_while_placeholderXbackward_simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0
в
Cbackward_simple_rnn_1/while/simple_rnn_cell_5/MatMul/ReadVariableOpReadVariableOpNbackward_simple_rnn_1_while_simple_rnn_cell_5_matmul_readvariableop_resource_0*
_output_shapes

:@@*
dtype0
4backward_simple_rnn_1/while/simple_rnn_cell_5/MatMulMatMulFbackward_simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem:item:0Kbackward_simple_rnn_1/while/simple_rnn_cell_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@а
Dbackward_simple_rnn_1/while/simple_rnn_cell_5/BiasAdd/ReadVariableOpReadVariableOpObackward_simple_rnn_1_while_simple_rnn_cell_5_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0
5backward_simple_rnn_1/while/simple_rnn_cell_5/BiasAddBiasAdd>backward_simple_rnn_1/while/simple_rnn_cell_5/MatMul:product:0Lbackward_simple_rnn_1/while/simple_rnn_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@ж
Ebackward_simple_rnn_1/while/simple_rnn_cell_5/MatMul_1/ReadVariableOpReadVariableOpPbackward_simple_rnn_1_while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype0ь
6backward_simple_rnn_1/while/simple_rnn_cell_5/MatMul_1MatMul)backward_simple_rnn_1_while_placeholder_3Mbackward_simple_rnn_1/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@ю
1backward_simple_rnn_1/while/simple_rnn_cell_5/addAddV2>backward_simple_rnn_1/while/simple_rnn_cell_5/BiasAdd:output:0@backward_simple_rnn_1/while/simple_rnn_cell_5/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@Ѓ
2backward_simple_rnn_1/while/simple_rnn_cell_5/TanhTanh5backward_simple_rnn_1/while/simple_rnn_cell_5/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@{
*backward_simple_rnn_1/while/Tile/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      й
 backward_simple_rnn_1/while/TileTileHbackward_simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItem:item:03backward_simple_rnn_1/while/Tile/multiples:output:0*
T0
*'
_output_shapes
:џџџџџџџџџ№
$backward_simple_rnn_1/while/SelectV2SelectV2)backward_simple_rnn_1/while/Tile:output:06backward_simple_rnn_1/while/simple_rnn_cell_5/Tanh:y:0)backward_simple_rnn_1_while_placeholder_2*
T0*'
_output_shapes
:џџџџџџџџџ@}
,backward_simple_rnn_1/while/Tile_1/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      н
"backward_simple_rnn_1/while/Tile_1TileHbackward_simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItem:item:05backward_simple_rnn_1/while/Tile_1/multiples:output:0*
T0
*'
_output_shapes
:џџџџџџџџџє
&backward_simple_rnn_1/while/SelectV2_1SelectV2+backward_simple_rnn_1/while/Tile_1:output:06backward_simple_rnn_1/while/simple_rnn_cell_5/Tanh:y:0)backward_simple_rnn_1_while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ@
@backward_simple_rnn_1/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem)backward_simple_rnn_1_while_placeholder_1'backward_simple_rnn_1_while_placeholder-backward_simple_rnn_1/while/SelectV2:output:0*
_output_shapes
: *
element_dtype0:щшвc
!backward_simple_rnn_1/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
backward_simple_rnn_1/while/addAddV2'backward_simple_rnn_1_while_placeholder*backward_simple_rnn_1/while/add/y:output:0*
T0*
_output_shapes
: e
#backward_simple_rnn_1/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :П
!backward_simple_rnn_1/while/add_1AddV2Dbackward_simple_rnn_1_while_backward_simple_rnn_1_while_loop_counter,backward_simple_rnn_1/while/add_1/y:output:0*
T0*
_output_shapes
: 
$backward_simple_rnn_1/while/IdentityIdentity%backward_simple_rnn_1/while/add_1:z:0!^backward_simple_rnn_1/while/NoOp*
T0*
_output_shapes
: Т
&backward_simple_rnn_1/while/Identity_1IdentityJbackward_simple_rnn_1_while_backward_simple_rnn_1_while_maximum_iterations!^backward_simple_rnn_1/while/NoOp*
T0*
_output_shapes
: 
&backward_simple_rnn_1/while/Identity_2Identity#backward_simple_rnn_1/while/add:z:0!^backward_simple_rnn_1/while/NoOp*
T0*
_output_shapes
: Ш
&backward_simple_rnn_1/while/Identity_3IdentityPbackward_simple_rnn_1/while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^backward_simple_rnn_1/while/NoOp*
T0*
_output_shapes
: Ж
&backward_simple_rnn_1/while/Identity_4Identity-backward_simple_rnn_1/while/SelectV2:output:0!^backward_simple_rnn_1/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@И
&backward_simple_rnn_1/while/Identity_5Identity/backward_simple_rnn_1/while/SelectV2_1:output:0!^backward_simple_rnn_1/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@З
 backward_simple_rnn_1/while/NoOpNoOpE^backward_simple_rnn_1/while/simple_rnn_cell_5/BiasAdd/ReadVariableOpD^backward_simple_rnn_1/while/simple_rnn_cell_5/MatMul/ReadVariableOpF^backward_simple_rnn_1/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
Abackward_simple_rnn_1_while_backward_simple_rnn_1_strided_slice_1Cbackward_simple_rnn_1_while_backward_simple_rnn_1_strided_slice_1_0"U
$backward_simple_rnn_1_while_identity-backward_simple_rnn_1/while/Identity:output:0"Y
&backward_simple_rnn_1_while_identity_1/backward_simple_rnn_1/while/Identity_1:output:0"Y
&backward_simple_rnn_1_while_identity_2/backward_simple_rnn_1/while/Identity_2:output:0"Y
&backward_simple_rnn_1_while_identity_3/backward_simple_rnn_1/while/Identity_3:output:0"Y
&backward_simple_rnn_1_while_identity_4/backward_simple_rnn_1/while/Identity_4:output:0"Y
&backward_simple_rnn_1_while_identity_5/backward_simple_rnn_1/while/Identity_5:output:0" 
Mbackward_simple_rnn_1_while_simple_rnn_cell_5_biasadd_readvariableop_resourceObackward_simple_rnn_1_while_simple_rnn_cell_5_biasadd_readvariableop_resource_0"Ђ
Nbackward_simple_rnn_1_while_simple_rnn_cell_5_matmul_1_readvariableop_resourcePbackward_simple_rnn_1_while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0"
Lbackward_simple_rnn_1_while_simple_rnn_cell_5_matmul_readvariableop_resourceNbackward_simple_rnn_1_while_simple_rnn_cell_5_matmul_readvariableop_resource_0"
backward_simple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_backward_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensorbackward_simple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_backward_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensor_0"
}backward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_backward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensorbackward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_backward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :џџџџџџџџџ@:џџџџџџџџџ@: : : : : : 2
Dbackward_simple_rnn_1/while/simple_rnn_cell_5/BiasAdd/ReadVariableOpDbackward_simple_rnn_1/while/simple_rnn_cell_5/BiasAdd/ReadVariableOp2
Cbackward_simple_rnn_1/while/simple_rnn_cell_5/MatMul/ReadVariableOpCbackward_simple_rnn_1/while/simple_rnn_cell_5/MatMul/ReadVariableOp2
Ebackward_simple_rnn_1/while/simple_rnn_cell_5/MatMul_1/ReadVariableOpEbackward_simple_rnn_1/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
А
О
4__inference_forward_simple_rnn_1_layer_call_fn_70698

inputs
unknown:@@
	unknown_0:@
	unknown_1:@@
identityЂStatefulPartitionedCallё
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *X
fSRQ
O__inference_forward_simple_rnn_1_layer_call_and_return_conditional_losses_67598o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:'џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:e a
=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs

щ
L__inference_simple_rnn_cell_4_layer_call_and_return_conditional_losses_71670

inputs
states_00
matmul_readvariableop_resource:@@-
biasadd_readvariableop_resource:@2
 matmul_1_readvariableop_resource:@@
identity

identity_1ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@d
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@G
TanhTanhadd:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@W
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@Y

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:џџџџџџџџџ@:џџџџџџџџџ@: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџ@
"
_user_specified_name
states/0
І
С
5__inference_backward_simple_rnn_1_layer_call_fn_71163
inputs_0
unknown:@@
	unknown_0:@
	unknown_1:@@
identityЂStatefulPartitionedCallє
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_backward_simple_rnn_1_layer_call_and_return_conditional_losses_67475o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ@: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@
"
_user_specified_name
inputs/0
е
Ѕ
while_cond_67797
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_67797___redundant_placeholder03
/while_while_cond_67797___redundant_placeholder13
/while_while_cond_67797___redundant_placeholder23
/while_while_cond_67797___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :џџџџџџџџџ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
:
j

6bidirectional_1_backward_simple_rnn_1_while_body_69477h
dbidirectional_1_backward_simple_rnn_1_while_bidirectional_1_backward_simple_rnn_1_while_loop_countern
jbidirectional_1_backward_simple_rnn_1_while_bidirectional_1_backward_simple_rnn_1_while_maximum_iterations;
7bidirectional_1_backward_simple_rnn_1_while_placeholder=
9bidirectional_1_backward_simple_rnn_1_while_placeholder_1=
9bidirectional_1_backward_simple_rnn_1_while_placeholder_2=
9bidirectional_1_backward_simple_rnn_1_while_placeholder_3g
cbidirectional_1_backward_simple_rnn_1_while_bidirectional_1_backward_simple_rnn_1_strided_slice_1_0Є
bidirectional_1_backward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_bidirectional_1_backward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0Ј
Ѓbidirectional_1_backward_simple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_bidirectional_1_backward_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensor_0p
^bidirectional_1_backward_simple_rnn_1_while_simple_rnn_cell_5_matmul_readvariableop_resource_0:@@m
_bidirectional_1_backward_simple_rnn_1_while_simple_rnn_cell_5_biasadd_readvariableop_resource_0:@r
`bidirectional_1_backward_simple_rnn_1_while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0:@@8
4bidirectional_1_backward_simple_rnn_1_while_identity:
6bidirectional_1_backward_simple_rnn_1_while_identity_1:
6bidirectional_1_backward_simple_rnn_1_while_identity_2:
6bidirectional_1_backward_simple_rnn_1_while_identity_3:
6bidirectional_1_backward_simple_rnn_1_while_identity_4:
6bidirectional_1_backward_simple_rnn_1_while_identity_5e
abidirectional_1_backward_simple_rnn_1_while_bidirectional_1_backward_simple_rnn_1_strided_slice_1Ђ
bidirectional_1_backward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_bidirectional_1_backward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensorІ
Ёbidirectional_1_backward_simple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_bidirectional_1_backward_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensorn
\bidirectional_1_backward_simple_rnn_1_while_simple_rnn_cell_5_matmul_readvariableop_resource:@@k
]bidirectional_1_backward_simple_rnn_1_while_simple_rnn_cell_5_biasadd_readvariableop_resource:@p
^bidirectional_1_backward_simple_rnn_1_while_simple_rnn_cell_5_matmul_1_readvariableop_resource:@@ЂTbidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/BiasAdd/ReadVariableOpЂSbidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/MatMul/ReadVariableOpЂUbidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/MatMul_1/ReadVariableOpЎ
]bidirectional_1/backward_simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   х
Obidirectional_1/backward_simple_rnn_1/while/TensorArrayV2Read/TensorListGetItemTensorListGetItembidirectional_1_backward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_bidirectional_1_backward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_07bidirectional_1_backward_simple_rnn_1_while_placeholderfbidirectional_1/backward_simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ@*
element_dtype0А
_bidirectional_1/backward_simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   э
Qbidirectional_1/backward_simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItemTensorListGetItemЃbidirectional_1_backward_simple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_bidirectional_1_backward_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensor_07bidirectional_1_backward_simple_rnn_1_while_placeholderhbidirectional_1/backward_simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0
ђ
Sbidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/MatMul/ReadVariableOpReadVariableOp^bidirectional_1_backward_simple_rnn_1_while_simple_rnn_cell_5_matmul_readvariableop_resource_0*
_output_shapes

:@@*
dtype0Е
Dbidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/MatMulMatMulVbidirectional_1/backward_simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem:item:0[bidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@№
Tbidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/BiasAdd/ReadVariableOpReadVariableOp_bidirectional_1_backward_simple_rnn_1_while_simple_rnn_cell_5_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0А
Ebidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/BiasAddBiasAddNbidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/MatMul:product:0\bidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@і
Ubidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/MatMul_1/ReadVariableOpReadVariableOp`bidirectional_1_backward_simple_rnn_1_while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype0
Fbidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/MatMul_1MatMul9bidirectional_1_backward_simple_rnn_1_while_placeholder_3]bidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@
Abidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/addAddV2Nbidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/BiasAdd:output:0Pbidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@У
Bbidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/TanhTanhEbidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@
:bidirectional_1/backward_simple_rnn_1/while/Tile/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      
0bidirectional_1/backward_simple_rnn_1/while/TileTileXbidirectional_1/backward_simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItem:item:0Cbidirectional_1/backward_simple_rnn_1/while/Tile/multiples:output:0*
T0
*'
_output_shapes
:џџџџџџџџџА
4bidirectional_1/backward_simple_rnn_1/while/SelectV2SelectV29bidirectional_1/backward_simple_rnn_1/while/Tile:output:0Fbidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/Tanh:y:09bidirectional_1_backward_simple_rnn_1_while_placeholder_2*
T0*'
_output_shapes
:џџџџџџџџџ@
<bidirectional_1/backward_simple_rnn_1/while/Tile_1/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      
2bidirectional_1/backward_simple_rnn_1/while/Tile_1TileXbidirectional_1/backward_simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItem:item:0Ebidirectional_1/backward_simple_rnn_1/while/Tile_1/multiples:output:0*
T0
*'
_output_shapes
:џџџџџџџџџД
6bidirectional_1/backward_simple_rnn_1/while/SelectV2_1SelectV2;bidirectional_1/backward_simple_rnn_1/while/Tile_1:output:0Fbidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/Tanh:y:09bidirectional_1_backward_simple_rnn_1_while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ@и
Pbidirectional_1/backward_simple_rnn_1/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem9bidirectional_1_backward_simple_rnn_1_while_placeholder_17bidirectional_1_backward_simple_rnn_1_while_placeholder=bidirectional_1/backward_simple_rnn_1/while/SelectV2:output:0*
_output_shapes
: *
element_dtype0:щшвs
1bidirectional_1/backward_simple_rnn_1/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :Ю
/bidirectional_1/backward_simple_rnn_1/while/addAddV27bidirectional_1_backward_simple_rnn_1_while_placeholder:bidirectional_1/backward_simple_rnn_1/while/add/y:output:0*
T0*
_output_shapes
: u
3bidirectional_1/backward_simple_rnn_1/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :џ
1bidirectional_1/backward_simple_rnn_1/while/add_1AddV2dbidirectional_1_backward_simple_rnn_1_while_bidirectional_1_backward_simple_rnn_1_while_loop_counter<bidirectional_1/backward_simple_rnn_1/while/add_1/y:output:0*
T0*
_output_shapes
: Ы
4bidirectional_1/backward_simple_rnn_1/while/IdentityIdentity5bidirectional_1/backward_simple_rnn_1/while/add_1:z:01^bidirectional_1/backward_simple_rnn_1/while/NoOp*
T0*
_output_shapes
: 
6bidirectional_1/backward_simple_rnn_1/while/Identity_1Identityjbidirectional_1_backward_simple_rnn_1_while_bidirectional_1_backward_simple_rnn_1_while_maximum_iterations1^bidirectional_1/backward_simple_rnn_1/while/NoOp*
T0*
_output_shapes
: Ы
6bidirectional_1/backward_simple_rnn_1/while/Identity_2Identity3bidirectional_1/backward_simple_rnn_1/while/add:z:01^bidirectional_1/backward_simple_rnn_1/while/NoOp*
T0*
_output_shapes
: ј
6bidirectional_1/backward_simple_rnn_1/while/Identity_3Identity`bidirectional_1/backward_simple_rnn_1/while/TensorArrayV2Write/TensorListSetItem:output_handle:01^bidirectional_1/backward_simple_rnn_1/while/NoOp*
T0*
_output_shapes
: ц
6bidirectional_1/backward_simple_rnn_1/while/Identity_4Identity=bidirectional_1/backward_simple_rnn_1/while/SelectV2:output:01^bidirectional_1/backward_simple_rnn_1/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@ш
6bidirectional_1/backward_simple_rnn_1/while/Identity_5Identity?bidirectional_1/backward_simple_rnn_1/while/SelectV2_1:output:01^bidirectional_1/backward_simple_rnn_1/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@ї
0bidirectional_1/backward_simple_rnn_1/while/NoOpNoOpU^bidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/BiasAdd/ReadVariableOpT^bidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/MatMul/ReadVariableOpV^bidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Ш
abidirectional_1_backward_simple_rnn_1_while_bidirectional_1_backward_simple_rnn_1_strided_slice_1cbidirectional_1_backward_simple_rnn_1_while_bidirectional_1_backward_simple_rnn_1_strided_slice_1_0"u
4bidirectional_1_backward_simple_rnn_1_while_identity=bidirectional_1/backward_simple_rnn_1/while/Identity:output:0"y
6bidirectional_1_backward_simple_rnn_1_while_identity_1?bidirectional_1/backward_simple_rnn_1/while/Identity_1:output:0"y
6bidirectional_1_backward_simple_rnn_1_while_identity_2?bidirectional_1/backward_simple_rnn_1/while/Identity_2:output:0"y
6bidirectional_1_backward_simple_rnn_1_while_identity_3?bidirectional_1/backward_simple_rnn_1/while/Identity_3:output:0"y
6bidirectional_1_backward_simple_rnn_1_while_identity_4?bidirectional_1/backward_simple_rnn_1/while/Identity_4:output:0"y
6bidirectional_1_backward_simple_rnn_1_while_identity_5?bidirectional_1/backward_simple_rnn_1/while/Identity_5:output:0"Р
]bidirectional_1_backward_simple_rnn_1_while_simple_rnn_cell_5_biasadd_readvariableop_resource_bidirectional_1_backward_simple_rnn_1_while_simple_rnn_cell_5_biasadd_readvariableop_resource_0"Т
^bidirectional_1_backward_simple_rnn_1_while_simple_rnn_cell_5_matmul_1_readvariableop_resource`bidirectional_1_backward_simple_rnn_1_while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0"О
\bidirectional_1_backward_simple_rnn_1_while_simple_rnn_cell_5_matmul_readvariableop_resource^bidirectional_1_backward_simple_rnn_1_while_simple_rnn_cell_5_matmul_readvariableop_resource_0"Ъ
Ёbidirectional_1_backward_simple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_bidirectional_1_backward_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensorЃbidirectional_1_backward_simple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_bidirectional_1_backward_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensor_0"Т
bidirectional_1_backward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_bidirectional_1_backward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensorbidirectional_1_backward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_bidirectional_1_backward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :џџџџџџџџџ@:џџџџџџџџџ@: : : : : : 2Ќ
Tbidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/BiasAdd/ReadVariableOpTbidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/BiasAdd/ReadVariableOp2Њ
Sbidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/MatMul/ReadVariableOpSbidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/MatMul/ReadVariableOp2Ў
Ubidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/MatMul_1/ReadVariableOpUbidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
В,
Ч
while_body_67798
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0J
8while_simple_rnn_cell_5_matmul_readvariableop_resource_0:@@G
9while_simple_rnn_cell_5_biasadd_readvariableop_resource_0:@L
:while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0:@@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorH
6while_simple_rnn_cell_5_matmul_readvariableop_resource:@@E
7while_simple_rnn_cell_5_biasadd_readvariableop_resource:@J
8while_simple_rnn_cell_5_matmul_1_readvariableop_resource:@@Ђ.while/simple_rnn_cell_5/BiasAdd/ReadVariableOpЂ-while/simple_rnn_cell_5/MatMul/ReadVariableOpЂ/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџџџџџЏ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
element_dtype0І
-while/simple_rnn_cell_5/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_5_matmul_readvariableop_resource_0*
_output_shapes

:@@*
dtype0У
while/simple_rnn_cell_5/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@Є
.while/simple_rnn_cell_5/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_5_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0О
while/simple_rnn_cell_5/BiasAddBiasAdd(while/simple_rnn_cell_5/MatMul:product:06while/simple_rnn_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@Њ
/while/simple_rnn_cell_5/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype0Њ
 while/simple_rnn_cell_5/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@Ќ
while/simple_rnn_cell_5/addAddV2(while/simple_rnn_cell_5/BiasAdd:output:0*while/simple_rnn_cell_5/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@w
while/simple_rnn_cell_5/TanhTanhwhile/simple_rnn_cell_5/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@Щ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder while/simple_rnn_cell_5/Tanh:y:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: }
while/Identity_4Identity while/simple_rnn_cell_5/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@п

while/NoOpNoOp/^while/simple_rnn_cell_5/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_5/MatMul/ReadVariableOp0^while/simple_rnn_cell_5/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_5_biasadd_readvariableop_resource9while_simple_rnn_cell_5_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_5_matmul_1_readvariableop_resource:while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_5_matmul_readvariableop_resource8while_simple_rnn_cell_5_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :џџџџџџџџџ@: : : : : 2`
.while/simple_rnn_cell_5/BiasAdd/ReadVariableOp.while/simple_rnn_cell_5/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_5/MatMul/ReadVariableOp-while/simple_rnn_cell_5/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
: 
С

'__inference_dense_2_layer_call_fn_70635

inputs
unknown:	@
	unknown_0:@
identityЂStatefulPartitionedCallз
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_68354o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
е
Ѕ
while_cond_70750
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_70750___redundant_placeholder03
/while_while_cond_70750___redundant_placeholder13
/while_while_cond_70750___redundant_placeholder23
/while_while_cond_70750___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :џџџџџџџџџ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
:
КУ
Ш
J__inference_bidirectional_1_layer_call_and_return_conditional_losses_68710

inputs
mask
W
Eforward_simple_rnn_1_simple_rnn_cell_4_matmul_readvariableop_resource:@@T
Fforward_simple_rnn_1_simple_rnn_cell_4_biasadd_readvariableop_resource:@Y
Gforward_simple_rnn_1_simple_rnn_cell_4_matmul_1_readvariableop_resource:@@X
Fbackward_simple_rnn_1_simple_rnn_cell_5_matmul_readvariableop_resource:@@U
Gbackward_simple_rnn_1_simple_rnn_cell_5_biasadd_readvariableop_resource:@Z
Hbackward_simple_rnn_1_simple_rnn_cell_5_matmul_1_readvariableop_resource:@@
identityЂ>backward_simple_rnn_1/simple_rnn_cell_5/BiasAdd/ReadVariableOpЂ=backward_simple_rnn_1/simple_rnn_cell_5/MatMul/ReadVariableOpЂ?backward_simple_rnn_1/simple_rnn_cell_5/MatMul_1/ReadVariableOpЂbackward_simple_rnn_1/whileЂ=forward_simple_rnn_1/simple_rnn_cell_4/BiasAdd/ReadVariableOpЂ<forward_simple_rnn_1/simple_rnn_cell_4/MatMul/ReadVariableOpЂ>forward_simple_rnn_1/simple_rnn_cell_4/MatMul_1/ReadVariableOpЂforward_simple_rnn_1/whileP
forward_simple_rnn_1/ShapeShapeinputs*
T0*
_output_shapes
:r
(forward_simple_rnn_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*forward_simple_rnn_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*forward_simple_rnn_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:К
"forward_simple_rnn_1/strided_sliceStridedSlice#forward_simple_rnn_1/Shape:output:01forward_simple_rnn_1/strided_slice/stack:output:03forward_simple_rnn_1/strided_slice/stack_1:output:03forward_simple_rnn_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maske
#forward_simple_rnn_1/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@В
!forward_simple_rnn_1/zeros/packedPack+forward_simple_rnn_1/strided_slice:output:0,forward_simple_rnn_1/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:e
 forward_simple_rnn_1/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ћ
forward_simple_rnn_1/zerosFill*forward_simple_rnn_1/zeros/packed:output:0)forward_simple_rnn_1/zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@x
#forward_simple_rnn_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"           
forward_simple_rnn_1/transpose	Transposeinputs,forward_simple_rnn_1/transpose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@n
forward_simple_rnn_1/Shape_1Shape"forward_simple_rnn_1/transpose:y:0*
T0*
_output_shapes
:t
*forward_simple_rnn_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,forward_simple_rnn_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,forward_simple_rnn_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ф
$forward_simple_rnn_1/strided_slice_1StridedSlice%forward_simple_rnn_1/Shape_1:output:03forward_simple_rnn_1/strided_slice_1/stack:output:05forward_simple_rnn_1/strided_slice_1/stack_1:output:05forward_simple_rnn_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#forward_simple_rnn_1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ 
forward_simple_rnn_1/ExpandDims
ExpandDimsmask,forward_simple_rnn_1/ExpandDims/dim:output:0*
T0
*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџz
%forward_simple_rnn_1/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
 forward_simple_rnn_1/transpose_1	Transpose(forward_simple_rnn_1/ExpandDims:output:0.forward_simple_rnn_1/transpose_1/perm:output:0*
T0
*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ{
0forward_simple_rnn_1/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџѓ
"forward_simple_rnn_1/TensorArrayV2TensorListReserve9forward_simple_rnn_1/TensorArrayV2/element_shape:output:0-forward_simple_rnn_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
Jforward_simple_rnn_1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   
<forward_simple_rnn_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor"forward_simple_rnn_1/transpose:y:0Sforward_simple_rnn_1/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвt
*forward_simple_rnn_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,forward_simple_rnn_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,forward_simple_rnn_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:в
$forward_simple_rnn_1/strided_slice_2StridedSlice"forward_simple_rnn_1/transpose:y:03forward_simple_rnn_1/strided_slice_2/stack:output:05forward_simple_rnn_1/strided_slice_2/stack_1:output:05forward_simple_rnn_1/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@*
shrink_axis_maskТ
<forward_simple_rnn_1/simple_rnn_cell_4/MatMul/ReadVariableOpReadVariableOpEforward_simple_rnn_1_simple_rnn_cell_4_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype0о
-forward_simple_rnn_1/simple_rnn_cell_4/MatMulMatMul-forward_simple_rnn_1/strided_slice_2:output:0Dforward_simple_rnn_1/simple_rnn_cell_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@Р
=forward_simple_rnn_1/simple_rnn_cell_4/BiasAdd/ReadVariableOpReadVariableOpFforward_simple_rnn_1_simple_rnn_cell_4_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0ы
.forward_simple_rnn_1/simple_rnn_cell_4/BiasAddBiasAdd7forward_simple_rnn_1/simple_rnn_cell_4/MatMul:product:0Eforward_simple_rnn_1/simple_rnn_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@Ц
>forward_simple_rnn_1/simple_rnn_cell_4/MatMul_1/ReadVariableOpReadVariableOpGforward_simple_rnn_1_simple_rnn_cell_4_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0и
/forward_simple_rnn_1/simple_rnn_cell_4/MatMul_1MatMul#forward_simple_rnn_1/zeros:output:0Fforward_simple_rnn_1/simple_rnn_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@й
*forward_simple_rnn_1/simple_rnn_cell_4/addAddV27forward_simple_rnn_1/simple_rnn_cell_4/BiasAdd:output:09forward_simple_rnn_1/simple_rnn_cell_4/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@
+forward_simple_rnn_1/simple_rnn_cell_4/TanhTanh.forward_simple_rnn_1/simple_rnn_cell_4/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@
2forward_simple_rnn_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   ї
$forward_simple_rnn_1/TensorArrayV2_1TensorListReserve;forward_simple_rnn_1/TensorArrayV2_1/element_shape:output:0-forward_simple_rnn_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв[
forward_simple_rnn_1/timeConst*
_output_shapes
: *
dtype0*
value	B : }
2forward_simple_rnn_1/TensorArrayV2_2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџї
$forward_simple_rnn_1/TensorArrayV2_2TensorListReserve;forward_simple_rnn_1/TensorArrayV2_2/element_shape:output:0-forward_simple_rnn_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0
*

shape_type0:щшШ
Lforward_simple_rnn_1/TensorArrayUnstack_1/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   Ѕ
>forward_simple_rnn_1/TensorArrayUnstack_1/TensorListFromTensorTensorListFromTensor$forward_simple_rnn_1/transpose_1:y:0Uforward_simple_rnn_1/TensorArrayUnstack_1/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0
*

shape_type0:щшШ
forward_simple_rnn_1/zeros_like	ZerosLike/forward_simple_rnn_1/simple_rnn_cell_4/Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@x
-forward_simple_rnn_1/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџi
'forward_simple_rnn_1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 	
forward_simple_rnn_1/whileWhile0forward_simple_rnn_1/while/loop_counter:output:06forward_simple_rnn_1/while/maximum_iterations:output:0"forward_simple_rnn_1/time:output:0-forward_simple_rnn_1/TensorArrayV2_1:handle:0#forward_simple_rnn_1/zeros_like:y:0#forward_simple_rnn_1/zeros:output:0-forward_simple_rnn_1/strided_slice_1:output:0Lforward_simple_rnn_1/TensorArrayUnstack/TensorListFromTensor:output_handle:0Nforward_simple_rnn_1/TensorArrayUnstack_1/TensorListFromTensor:output_handle:0Eforward_simple_rnn_1_simple_rnn_cell_4_matmul_readvariableop_resourceFforward_simple_rnn_1_simple_rnn_cell_4_biasadd_readvariableop_resourceGforward_simple_rnn_1_simple_rnn_cell_4_matmul_1_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :џџџџџџџџџ@:џџџџџџџџџ@: : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *1
body)R'
%forward_simple_rnn_1_while_body_68495*1
cond)R'
%forward_simple_rnn_1_while_cond_68494*M
output_shapes<
:: : : : :џџџџџџџџџ@:џџџџџџџџџ@: : : : : : *
parallel_iterations 
Eforward_simple_rnn_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   
7forward_simple_rnn_1/TensorArrayV2Stack/TensorListStackTensorListStack#forward_simple_rnn_1/while:output:3Nforward_simple_rnn_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@*
element_dtype0}
*forward_simple_rnn_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџv
,forward_simple_rnn_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: v
,forward_simple_rnn_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:№
$forward_simple_rnn_1/strided_slice_3StridedSlice@forward_simple_rnn_1/TensorArrayV2Stack/TensorListStack:tensor:03forward_simple_rnn_1/strided_slice_3/stack:output:05forward_simple_rnn_1/strided_slice_3/stack_1:output:05forward_simple_rnn_1/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@*
shrink_axis_maskz
%forward_simple_rnn_1/transpose_2/permConst*
_output_shapes
:*
dtype0*!
valueB"          о
 forward_simple_rnn_1/transpose_2	Transpose@forward_simple_rnn_1/TensorArrayV2Stack/TensorListStack:tensor:0.forward_simple_rnn_1/transpose_2/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@Q
backward_simple_rnn_1/ShapeShapeinputs*
T0*
_output_shapes
:s
)backward_simple_rnn_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+backward_simple_rnn_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+backward_simple_rnn_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:П
#backward_simple_rnn_1/strided_sliceStridedSlice$backward_simple_rnn_1/Shape:output:02backward_simple_rnn_1/strided_slice/stack:output:04backward_simple_rnn_1/strided_slice/stack_1:output:04backward_simple_rnn_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
$backward_simple_rnn_1/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@Е
"backward_simple_rnn_1/zeros/packedPack,backward_simple_rnn_1/strided_slice:output:0-backward_simple_rnn_1/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:f
!backward_simple_rnn_1/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ў
backward_simple_rnn_1/zerosFill+backward_simple_rnn_1/zeros/packed:output:0*backward_simple_rnn_1/zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@y
$backward_simple_rnn_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ђ
backward_simple_rnn_1/transpose	Transposeinputs-backward_simple_rnn_1/transpose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@p
backward_simple_rnn_1/Shape_1Shape#backward_simple_rnn_1/transpose:y:0*
T0*
_output_shapes
:u
+backward_simple_rnn_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-backward_simple_rnn_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-backward_simple_rnn_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Щ
%backward_simple_rnn_1/strided_slice_1StridedSlice&backward_simple_rnn_1/Shape_1:output:04backward_simple_rnn_1/strided_slice_1/stack:output:06backward_simple_rnn_1/strided_slice_1/stack_1:output:06backward_simple_rnn_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$backward_simple_rnn_1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџЂ
 backward_simple_rnn_1/ExpandDims
ExpandDimsmask-backward_simple_rnn_1/ExpandDims/dim:output:0*
T0
*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ{
&backward_simple_rnn_1/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Щ
!backward_simple_rnn_1/transpose_1	Transpose)backward_simple_rnn_1/ExpandDims:output:0/backward_simple_rnn_1/transpose_1/perm:output:0*
T0
*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ|
1backward_simple_rnn_1/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџі
#backward_simple_rnn_1/TensorArrayV2TensorListReserve:backward_simple_rnn_1/TensorArrayV2/element_shape:output:0.backward_simple_rnn_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвn
$backward_simple_rnn_1/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: П
backward_simple_rnn_1/ReverseV2	ReverseV2#backward_simple_rnn_1/transpose:y:0-backward_simple_rnn_1/ReverseV2/axis:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@
Kbackward_simple_rnn_1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   Ї
=backward_simple_rnn_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor(backward_simple_rnn_1/ReverseV2:output:0Tbackward_simple_rnn_1/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвu
+backward_simple_rnn_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-backward_simple_rnn_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-backward_simple_rnn_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:з
%backward_simple_rnn_1/strided_slice_2StridedSlice#backward_simple_rnn_1/transpose:y:04backward_simple_rnn_1/strided_slice_2/stack:output:06backward_simple_rnn_1/strided_slice_2/stack_1:output:06backward_simple_rnn_1/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@*
shrink_axis_maskФ
=backward_simple_rnn_1/simple_rnn_cell_5/MatMul/ReadVariableOpReadVariableOpFbackward_simple_rnn_1_simple_rnn_cell_5_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype0с
.backward_simple_rnn_1/simple_rnn_cell_5/MatMulMatMul.backward_simple_rnn_1/strided_slice_2:output:0Ebackward_simple_rnn_1/simple_rnn_cell_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@Т
>backward_simple_rnn_1/simple_rnn_cell_5/BiasAdd/ReadVariableOpReadVariableOpGbackward_simple_rnn_1_simple_rnn_cell_5_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0ю
/backward_simple_rnn_1/simple_rnn_cell_5/BiasAddBiasAdd8backward_simple_rnn_1/simple_rnn_cell_5/MatMul:product:0Fbackward_simple_rnn_1/simple_rnn_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@Ш
?backward_simple_rnn_1/simple_rnn_cell_5/MatMul_1/ReadVariableOpReadVariableOpHbackward_simple_rnn_1_simple_rnn_cell_5_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0л
0backward_simple_rnn_1/simple_rnn_cell_5/MatMul_1MatMul$backward_simple_rnn_1/zeros:output:0Gbackward_simple_rnn_1/simple_rnn_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@м
+backward_simple_rnn_1/simple_rnn_cell_5/addAddV28backward_simple_rnn_1/simple_rnn_cell_5/BiasAdd:output:0:backward_simple_rnn_1/simple_rnn_cell_5/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@
,backward_simple_rnn_1/simple_rnn_cell_5/TanhTanh/backward_simple_rnn_1/simple_rnn_cell_5/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@
3backward_simple_rnn_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   њ
%backward_simple_rnn_1/TensorArrayV2_1TensorListReserve<backward_simple_rnn_1/TensorArrayV2_1/element_shape:output:0.backward_simple_rnn_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв\
backward_simple_rnn_1/timeConst*
_output_shapes
: *
dtype0*
value	B : p
&backward_simple_rnn_1/ReverseV2_1/axisConst*
_output_shapes
:*
dtype0*
valueB: Х
!backward_simple_rnn_1/ReverseV2_1	ReverseV2%backward_simple_rnn_1/transpose_1:y:0/backward_simple_rnn_1/ReverseV2_1/axis:output:0*
T0
*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ~
3backward_simple_rnn_1/TensorArrayV2_2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџњ
%backward_simple_rnn_1/TensorArrayV2_2TensorListReserve<backward_simple_rnn_1/TensorArrayV2_2/element_shape:output:0.backward_simple_rnn_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0
*

shape_type0:щшШ
Mbackward_simple_rnn_1/TensorArrayUnstack_1/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   ­
?backward_simple_rnn_1/TensorArrayUnstack_1/TensorListFromTensorTensorListFromTensor*backward_simple_rnn_1/ReverseV2_1:output:0Vbackward_simple_rnn_1/TensorArrayUnstack_1/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0
*

shape_type0:щшШ
 backward_simple_rnn_1/zeros_like	ZerosLike0backward_simple_rnn_1/simple_rnn_cell_5/Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@y
.backward_simple_rnn_1/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџj
(backward_simple_rnn_1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 	
backward_simple_rnn_1/whileWhile1backward_simple_rnn_1/while/loop_counter:output:07backward_simple_rnn_1/while/maximum_iterations:output:0#backward_simple_rnn_1/time:output:0.backward_simple_rnn_1/TensorArrayV2_1:handle:0$backward_simple_rnn_1/zeros_like:y:0$backward_simple_rnn_1/zeros:output:0.backward_simple_rnn_1/strided_slice_1:output:0Mbackward_simple_rnn_1/TensorArrayUnstack/TensorListFromTensor:output_handle:0Obackward_simple_rnn_1/TensorArrayUnstack_1/TensorListFromTensor:output_handle:0Fbackward_simple_rnn_1_simple_rnn_cell_5_matmul_readvariableop_resourceGbackward_simple_rnn_1_simple_rnn_cell_5_biasadd_readvariableop_resourceHbackward_simple_rnn_1_simple_rnn_cell_5_matmul_1_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :џџџџџџџџџ@:џџџџџџџџџ@: : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *2
body*R(
&backward_simple_rnn_1_while_body_68627*2
cond*R(
&backward_simple_rnn_1_while_cond_68626*M
output_shapes<
:: : : : :џџџџџџџџџ@:џџџџџџџџџ@: : : : : : *
parallel_iterations 
Fbackward_simple_rnn_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   
8backward_simple_rnn_1/TensorArrayV2Stack/TensorListStackTensorListStack$backward_simple_rnn_1/while:output:3Obackward_simple_rnn_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@*
element_dtype0~
+backward_simple_rnn_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџw
-backward_simple_rnn_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: w
-backward_simple_rnn_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ѕ
%backward_simple_rnn_1/strided_slice_3StridedSliceAbackward_simple_rnn_1/TensorArrayV2Stack/TensorListStack:tensor:04backward_simple_rnn_1/strided_slice_3/stack:output:06backward_simple_rnn_1/strided_slice_3/stack_1:output:06backward_simple_rnn_1/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@*
shrink_axis_mask{
&backward_simple_rnn_1/transpose_2/permConst*
_output_shapes
:*
dtype0*!
valueB"          с
!backward_simple_rnn_1/transpose_2	TransposeAbackward_simple_rnn_1/TensorArrayV2Stack/TensorListStack:tensor:0/backward_simple_rnn_1/transpose_2/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :У
concatConcatV2-forward_simple_rnn_1/strided_slice_3:output:0.backward_simple_rnn_1/strided_slice_3:output:0concat/axis:output:0*
N*
T0*(
_output_shapes
:џџџџџџџџџ_
IdentityIdentityconcat:output:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџ
NoOpNoOp?^backward_simple_rnn_1/simple_rnn_cell_5/BiasAdd/ReadVariableOp>^backward_simple_rnn_1/simple_rnn_cell_5/MatMul/ReadVariableOp@^backward_simple_rnn_1/simple_rnn_cell_5/MatMul_1/ReadVariableOp^backward_simple_rnn_1/while>^forward_simple_rnn_1/simple_rnn_cell_4/BiasAdd/ReadVariableOp=^forward_simple_rnn_1/simple_rnn_cell_4/MatMul/ReadVariableOp?^forward_simple_rnn_1/simple_rnn_cell_4/MatMul_1/ReadVariableOp^forward_simple_rnn_1/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:џџџџџџџџџџџџџџџџџџ@:џџџџџџџџџџџџџџџџџџ: : : : : : 2
>backward_simple_rnn_1/simple_rnn_cell_5/BiasAdd/ReadVariableOp>backward_simple_rnn_1/simple_rnn_cell_5/BiasAdd/ReadVariableOp2~
=backward_simple_rnn_1/simple_rnn_cell_5/MatMul/ReadVariableOp=backward_simple_rnn_1/simple_rnn_cell_5/MatMul/ReadVariableOp2
?backward_simple_rnn_1/simple_rnn_cell_5/MatMul_1/ReadVariableOp?backward_simple_rnn_1/simple_rnn_cell_5/MatMul_1/ReadVariableOp2:
backward_simple_rnn_1/whilebackward_simple_rnn_1/while2~
=forward_simple_rnn_1/simple_rnn_cell_4/BiasAdd/ReadVariableOp=forward_simple_rnn_1/simple_rnn_cell_4/BiasAdd/ReadVariableOp2|
<forward_simple_rnn_1/simple_rnn_cell_4/MatMul/ReadVariableOp<forward_simple_rnn_1/simple_rnn_cell_4/MatMul/ReadVariableOp2
>forward_simple_rnn_1/simple_rnn_cell_4/MatMul_1/ReadVariableOp>forward_simple_rnn_1/simple_rnn_cell_4/MatMul_1/ReadVariableOp28
forward_simple_rnn_1/whileforward_simple_rnn_1/while:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs:VR
0
_output_shapes
:џџџџџџџџџџџџџџџџџџ

_user_specified_namemask
В,
Ч
while_body_71559
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0J
8while_simple_rnn_cell_5_matmul_readvariableop_resource_0:@@G
9while_simple_rnn_cell_5_biasadd_readvariableop_resource_0:@L
:while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0:@@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorH
6while_simple_rnn_cell_5_matmul_readvariableop_resource:@@E
7while_simple_rnn_cell_5_biasadd_readvariableop_resource:@J
8while_simple_rnn_cell_5_matmul_1_readvariableop_resource:@@Ђ.while/simple_rnn_cell_5/BiasAdd/ReadVariableOpЂ-while/simple_rnn_cell_5/MatMul/ReadVariableOpЂ/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџџџџџЏ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
element_dtype0І
-while/simple_rnn_cell_5/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_5_matmul_readvariableop_resource_0*
_output_shapes

:@@*
dtype0У
while/simple_rnn_cell_5/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@Є
.while/simple_rnn_cell_5/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_5_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0О
while/simple_rnn_cell_5/BiasAddBiasAdd(while/simple_rnn_cell_5/MatMul:product:06while/simple_rnn_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@Њ
/while/simple_rnn_cell_5/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype0Њ
 while/simple_rnn_cell_5/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@Ќ
while/simple_rnn_cell_5/addAddV2(while/simple_rnn_cell_5/BiasAdd:output:0*while/simple_rnn_cell_5/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@w
while/simple_rnn_cell_5/TanhTanhwhile/simple_rnn_cell_5/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@Щ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder while/simple_rnn_cell_5/Tanh:y:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: }
while/Identity_4Identity while/simple_rnn_cell_5/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@п

while/NoOpNoOp/^while/simple_rnn_cell_5/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_5/MatMul/ReadVariableOp0^while/simple_rnn_cell_5/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_5_biasadd_readvariableop_resource9while_simple_rnn_cell_5_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_5_matmul_1_readvariableop_resource:while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_5_matmul_readvariableop_resource8while_simple_rnn_cell_5_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :џџџџџџџџџ@: : : : : 2`
.while/simple_rnn_cell_5/BiasAdd/ReadVariableOp.while/simple_rnn_cell_5/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_5/MatMul/ReadVariableOp-while/simple_rnn_cell_5/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
: 
@
О
%forward_simple_rnn_1_while_body_69918F
Bforward_simple_rnn_1_while_forward_simple_rnn_1_while_loop_counterL
Hforward_simple_rnn_1_while_forward_simple_rnn_1_while_maximum_iterations*
&forward_simple_rnn_1_while_placeholder,
(forward_simple_rnn_1_while_placeholder_1,
(forward_simple_rnn_1_while_placeholder_2E
Aforward_simple_rnn_1_while_forward_simple_rnn_1_strided_slice_1_0
}forward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_forward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0_
Mforward_simple_rnn_1_while_simple_rnn_cell_4_matmul_readvariableop_resource_0:@@\
Nforward_simple_rnn_1_while_simple_rnn_cell_4_biasadd_readvariableop_resource_0:@a
Oforward_simple_rnn_1_while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0:@@'
#forward_simple_rnn_1_while_identity)
%forward_simple_rnn_1_while_identity_1)
%forward_simple_rnn_1_while_identity_2)
%forward_simple_rnn_1_while_identity_3)
%forward_simple_rnn_1_while_identity_4C
?forward_simple_rnn_1_while_forward_simple_rnn_1_strided_slice_1
{forward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_forward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor]
Kforward_simple_rnn_1_while_simple_rnn_cell_4_matmul_readvariableop_resource:@@Z
Lforward_simple_rnn_1_while_simple_rnn_cell_4_biasadd_readvariableop_resource:@_
Mforward_simple_rnn_1_while_simple_rnn_cell_4_matmul_1_readvariableop_resource:@@ЂCforward_simple_rnn_1/while/simple_rnn_cell_4/BiasAdd/ReadVariableOpЂBforward_simple_rnn_1/while/simple_rnn_cell_4/MatMul/ReadVariableOpЂDforward_simple_rnn_1/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp
Lforward_simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџџџџџ
>forward_simple_rnn_1/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem}forward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_forward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0&forward_simple_rnn_1_while_placeholderUforward_simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
element_dtype0а
Bforward_simple_rnn_1/while/simple_rnn_cell_4/MatMul/ReadVariableOpReadVariableOpMforward_simple_rnn_1_while_simple_rnn_cell_4_matmul_readvariableop_resource_0*
_output_shapes

:@@*
dtype0
3forward_simple_rnn_1/while/simple_rnn_cell_4/MatMulMatMulEforward_simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem:item:0Jforward_simple_rnn_1/while/simple_rnn_cell_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@Ю
Cforward_simple_rnn_1/while/simple_rnn_cell_4/BiasAdd/ReadVariableOpReadVariableOpNforward_simple_rnn_1_while_simple_rnn_cell_4_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0§
4forward_simple_rnn_1/while/simple_rnn_cell_4/BiasAddBiasAdd=forward_simple_rnn_1/while/simple_rnn_cell_4/MatMul:product:0Kforward_simple_rnn_1/while/simple_rnn_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@д
Dforward_simple_rnn_1/while/simple_rnn_cell_4/MatMul_1/ReadVariableOpReadVariableOpOforward_simple_rnn_1_while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype0щ
5forward_simple_rnn_1/while/simple_rnn_cell_4/MatMul_1MatMul(forward_simple_rnn_1_while_placeholder_2Lforward_simple_rnn_1/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@ы
0forward_simple_rnn_1/while/simple_rnn_cell_4/addAddV2=forward_simple_rnn_1/while/simple_rnn_cell_4/BiasAdd:output:0?forward_simple_rnn_1/while/simple_rnn_cell_4/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@Ё
1forward_simple_rnn_1/while/simple_rnn_cell_4/TanhTanh4forward_simple_rnn_1/while/simple_rnn_cell_4/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@
?forward_simple_rnn_1/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem(forward_simple_rnn_1_while_placeholder_1&forward_simple_rnn_1_while_placeholder5forward_simple_rnn_1/while/simple_rnn_cell_4/Tanh:y:0*
_output_shapes
: *
element_dtype0:щшвb
 forward_simple_rnn_1/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
forward_simple_rnn_1/while/addAddV2&forward_simple_rnn_1_while_placeholder)forward_simple_rnn_1/while/add/y:output:0*
T0*
_output_shapes
: d
"forward_simple_rnn_1/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Л
 forward_simple_rnn_1/while/add_1AddV2Bforward_simple_rnn_1_while_forward_simple_rnn_1_while_loop_counter+forward_simple_rnn_1/while/add_1/y:output:0*
T0*
_output_shapes
: 
#forward_simple_rnn_1/while/IdentityIdentity$forward_simple_rnn_1/while/add_1:z:0 ^forward_simple_rnn_1/while/NoOp*
T0*
_output_shapes
: О
%forward_simple_rnn_1/while/Identity_1IdentityHforward_simple_rnn_1_while_forward_simple_rnn_1_while_maximum_iterations ^forward_simple_rnn_1/while/NoOp*
T0*
_output_shapes
: 
%forward_simple_rnn_1/while/Identity_2Identity"forward_simple_rnn_1/while/add:z:0 ^forward_simple_rnn_1/while/NoOp*
T0*
_output_shapes
: Х
%forward_simple_rnn_1/while/Identity_3IdentityOforward_simple_rnn_1/while/TensorArrayV2Write/TensorListSetItem:output_handle:0 ^forward_simple_rnn_1/while/NoOp*
T0*
_output_shapes
: М
%forward_simple_rnn_1/while/Identity_4Identity5forward_simple_rnn_1/while/simple_rnn_cell_4/Tanh:y:0 ^forward_simple_rnn_1/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@Г
forward_simple_rnn_1/while/NoOpNoOpD^forward_simple_rnn_1/while/simple_rnn_cell_4/BiasAdd/ReadVariableOpC^forward_simple_rnn_1/while/simple_rnn_cell_4/MatMul/ReadVariableOpE^forward_simple_rnn_1/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
?forward_simple_rnn_1_while_forward_simple_rnn_1_strided_slice_1Aforward_simple_rnn_1_while_forward_simple_rnn_1_strided_slice_1_0"S
#forward_simple_rnn_1_while_identity,forward_simple_rnn_1/while/Identity:output:0"W
%forward_simple_rnn_1_while_identity_1.forward_simple_rnn_1/while/Identity_1:output:0"W
%forward_simple_rnn_1_while_identity_2.forward_simple_rnn_1/while/Identity_2:output:0"W
%forward_simple_rnn_1_while_identity_3.forward_simple_rnn_1/while/Identity_3:output:0"W
%forward_simple_rnn_1_while_identity_4.forward_simple_rnn_1/while/Identity_4:output:0"
Lforward_simple_rnn_1_while_simple_rnn_cell_4_biasadd_readvariableop_resourceNforward_simple_rnn_1_while_simple_rnn_cell_4_biasadd_readvariableop_resource_0" 
Mforward_simple_rnn_1_while_simple_rnn_cell_4_matmul_1_readvariableop_resourceOforward_simple_rnn_1_while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0"
Kforward_simple_rnn_1_while_simple_rnn_cell_4_matmul_readvariableop_resourceMforward_simple_rnn_1_while_simple_rnn_cell_4_matmul_readvariableop_resource_0"ќ
{forward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_forward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor}forward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_forward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :џџџџџџџџџ@: : : : : 2
Cforward_simple_rnn_1/while/simple_rnn_cell_4/BiasAdd/ReadVariableOpCforward_simple_rnn_1/while/simple_rnn_cell_4/BiasAdd/ReadVariableOp2
Bforward_simple_rnn_1/while/simple_rnn_cell_4/MatMul/ReadVariableOpBforward_simple_rnn_1/while/simple_rnn_cell_4/MatMul/ReadVariableOp2
Dforward_simple_rnn_1/while/simple_rnn_cell_4/MatMul_1/ReadVariableOpDforward_simple_rnn_1/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
: 

щ
L__inference_simple_rnn_cell_5_layer_call_and_return_conditional_losses_71749

inputs
states_00
matmul_readvariableop_resource:@@-
biasadd_readvariableop_resource:@2
 matmul_1_readvariableop_resource:@@
identity

identity_1ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@d
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@G
TanhTanhadd:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@W
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@Y

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:џџџџџџџџџ@:џџџџџџџџџ@: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџ@
"
_user_specified_name
states/0
§=
Т
O__inference_forward_simple_rnn_1_layer_call_and_return_conditional_losses_71033

inputsB
0simple_rnn_cell_4_matmul_readvariableop_resource:@@?
1simple_rnn_cell_4_biasadd_readvariableop_resource:@D
2simple_rnn_cell_4_matmul_1_readvariableop_resource:@@
identityЂ(simple_rnn_cell_4/BiasAdd/ReadVariableOpЂ'simple_rnn_cell_4/MatMul/ReadVariableOpЂ)simple_rnn_cell_4/MatMul_1/ReadVariableOpЂwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
	transpose	Transposeinputstranspose/perm:output:0*
T0*=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџџџџџр
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ђ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
shrink_axis_mask
'simple_rnn_cell_4/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_4_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype0
simple_rnn_cell_4/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@
(simple_rnn_cell_4/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_4_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ќ
simple_rnn_cell_4/BiasAddBiasAdd"simple_rnn_cell_4/MatMul:product:00simple_rnn_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@
)simple_rnn_cell_4/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_4_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0
simple_rnn_cell_4/MatMul_1MatMulzeros:output:01simple_rnn_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@
simple_rnn_cell_4/addAddV2"simple_rnn_cell_4/BiasAdd:output:0$simple_rnn_cell_4/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@k
simple_rnn_cell_4/TanhTanhsimple_rnn_cell_4/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ж
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_4_matmul_readvariableop_resource1simple_rnn_cell_4_biasadd_readvariableop_resource2simple_rnn_cell_4_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџ@: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_70967*
condR
while_cond_70966*8
output_shapes'
%: : : : :џџџџџџџџџ@: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   Ы
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@Я
NoOpNoOp)^simple_rnn_cell_4/BiasAdd/ReadVariableOp(^simple_rnn_cell_4/MatMul/ReadVariableOp*^simple_rnn_cell_4/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:'џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : 2T
(simple_rnn_cell_4/BiasAdd/ReadVariableOp(simple_rnn_cell_4/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_4/MatMul/ReadVariableOp'simple_rnn_cell_4/MatMul/ReadVariableOp2V
)simple_rnn_cell_4/MatMul_1/ReadVariableOp)simple_rnn_cell_4/MatMul_1/ReadVariableOp2
whilewhile:e a
=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Р?
Х
P__inference_backward_simple_rnn_1_layer_call_and_return_conditional_losses_71295
inputs_0B
0simple_rnn_cell_5_matmul_readvariableop_resource:@@?
1simple_rnn_cell_5_biasadd_readvariableop_resource:@D
2simple_rnn_cell_5_matmul_1_readvariableop_resource:@@
identityЂ(simple_rnn_cell_5/BiasAdd/ReadVariableOpЂ'simple_rnn_cell_5/MatMul/ReadVariableOpЂ)simple_rnn_cell_5/MatMul_1/ReadVariableOpЂwhile=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвX
ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: }
	ReverseV2	ReverseV2transpose:y:0ReverseV2/axis:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   х
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensorReverseV2:output:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@*
shrink_axis_mask
'simple_rnn_cell_5/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_5_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype0
simple_rnn_cell_5/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@
(simple_rnn_cell_5/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_5_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ќ
simple_rnn_cell_5/BiasAddBiasAdd"simple_rnn_cell_5/MatMul:product:00simple_rnn_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@
)simple_rnn_cell_5/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_5_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0
simple_rnn_cell_5/MatMul_1MatMulzeros:output:01simple_rnn_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@
simple_rnn_cell_5/addAddV2"simple_rnn_cell_5/BiasAdd:output:0$simple_rnn_cell_5/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@k
simple_rnn_cell_5/TanhTanhsimple_rnn_cell_5/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ж
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_5_matmul_readvariableop_resource1simple_rnn_cell_5_biasadd_readvariableop_resource2simple_rnn_cell_5_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџ@: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_71229*
condR
while_cond_71228*8
output_shapes'
%: : : : :џџџџџџџџџ@: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   Ы
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@Я
NoOpNoOp)^simple_rnn_cell_5/BiasAdd/ReadVariableOp(^simple_rnn_cell_5/MatMul/ReadVariableOp*^simple_rnn_cell_5/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ@: : : 2T
(simple_rnn_cell_5/BiasAdd/ReadVariableOp(simple_rnn_cell_5/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_5/MatMul/ReadVariableOp'simple_rnn_cell_5/MatMul/ReadVariableOp2V
)simple_rnn_cell_5/MatMul_1/ReadVariableOp)simple_rnn_cell_5/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@
"
_user_specified_name
inputs/0
Њ
ж
G__inference_sequential_1_layer_call_and_return_conditional_losses_69286

inputs5
"embedding_1_embedding_lookup_69003:	Љ @g
Ubidirectional_1_forward_simple_rnn_1_simple_rnn_cell_4_matmul_readvariableop_resource:@@d
Vbidirectional_1_forward_simple_rnn_1_simple_rnn_cell_4_biasadd_readvariableop_resource:@i
Wbidirectional_1_forward_simple_rnn_1_simple_rnn_cell_4_matmul_1_readvariableop_resource:@@h
Vbidirectional_1_backward_simple_rnn_1_simple_rnn_cell_5_matmul_readvariableop_resource:@@e
Wbidirectional_1_backward_simple_rnn_1_simple_rnn_cell_5_biasadd_readvariableop_resource:@j
Xbidirectional_1_backward_simple_rnn_1_simple_rnn_cell_5_matmul_1_readvariableop_resource:@@9
&dense_2_matmul_readvariableop_resource:	@5
'dense_2_biasadd_readvariableop_resource:@8
&dense_3_matmul_readvariableop_resource:@5
'dense_3_biasadd_readvariableop_resource:
identityЂNbidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/BiasAdd/ReadVariableOpЂMbidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/MatMul/ReadVariableOpЂObidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/MatMul_1/ReadVariableOpЂ+bidirectional_1/backward_simple_rnn_1/whileЂMbidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/BiasAdd/ReadVariableOpЂLbidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/MatMul/ReadVariableOpЂNbidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/MatMul_1/ReadVariableOpЂ*bidirectional_1/forward_simple_rnn_1/whileЂdense_2/BiasAdd/ReadVariableOpЂdense_2/MatMul/ReadVariableOpЂdense_3/BiasAdd/ReadVariableOpЂdense_3/MatMul/ReadVariableOpЂembedding_1/embedding_lookupj
embedding_1/CastCastinputs*

DstT0*

SrcT0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџђ
embedding_1/embedding_lookupResourceGather"embedding_1_embedding_lookup_69003embedding_1/Cast:y:0*
Tindices0*5
_class+
)'loc:@embedding_1/embedding_lookup/69003*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@*
dtype0Ю
%embedding_1/embedding_lookup/IdentityIdentity%embedding_1/embedding_lookup:output:0*
T0*5
_class+
)'loc:@embedding_1/embedding_lookup/69003*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@Ђ
'embedding_1/embedding_lookup/Identity_1Identity.embedding_1/embedding_lookup/Identity:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@[
embedding_1/NotEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
embedding_1/NotEqualNotEqualinputsembedding_1/NotEqual/y:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
*bidirectional_1/forward_simple_rnn_1/ShapeShape0embedding_1/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:
8bidirectional_1/forward_simple_rnn_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
:bidirectional_1/forward_simple_rnn_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
:bidirectional_1/forward_simple_rnn_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
2bidirectional_1/forward_simple_rnn_1/strided_sliceStridedSlice3bidirectional_1/forward_simple_rnn_1/Shape:output:0Abidirectional_1/forward_simple_rnn_1/strided_slice/stack:output:0Cbidirectional_1/forward_simple_rnn_1/strided_slice/stack_1:output:0Cbidirectional_1/forward_simple_rnn_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masku
3bidirectional_1/forward_simple_rnn_1/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@т
1bidirectional_1/forward_simple_rnn_1/zeros/packedPack;bidirectional_1/forward_simple_rnn_1/strided_slice:output:0<bidirectional_1/forward_simple_rnn_1/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:u
0bidirectional_1/forward_simple_rnn_1/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    л
*bidirectional_1/forward_simple_rnn_1/zerosFill:bidirectional_1/forward_simple_rnn_1/zeros/packed:output:09bidirectional_1/forward_simple_rnn_1/zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
3bidirectional_1/forward_simple_rnn_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ъ
.bidirectional_1/forward_simple_rnn_1/transpose	Transpose0embedding_1/embedding_lookup/Identity_1:output:0<bidirectional_1/forward_simple_rnn_1/transpose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@
,bidirectional_1/forward_simple_rnn_1/Shape_1Shape2bidirectional_1/forward_simple_rnn_1/transpose:y:0*
T0*
_output_shapes
:
:bidirectional_1/forward_simple_rnn_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
<bidirectional_1/forward_simple_rnn_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
<bidirectional_1/forward_simple_rnn_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
4bidirectional_1/forward_simple_rnn_1/strided_slice_1StridedSlice5bidirectional_1/forward_simple_rnn_1/Shape_1:output:0Cbidirectional_1/forward_simple_rnn_1/strided_slice_1/stack:output:0Ebidirectional_1/forward_simple_rnn_1/strided_slice_1/stack_1:output:0Ebidirectional_1/forward_simple_rnn_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3bidirectional_1/forward_simple_rnn_1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџд
/bidirectional_1/forward_simple_rnn_1/ExpandDims
ExpandDimsembedding_1/NotEqual:z:0<bidirectional_1/forward_simple_rnn_1/ExpandDims/dim:output:0*
T0
*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
5bidirectional_1/forward_simple_rnn_1/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          і
0bidirectional_1/forward_simple_rnn_1/transpose_1	Transpose8bidirectional_1/forward_simple_rnn_1/ExpandDims:output:0>bidirectional_1/forward_simple_rnn_1/transpose_1/perm:output:0*
T0
*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
@bidirectional_1/forward_simple_rnn_1/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџЃ
2bidirectional_1/forward_simple_rnn_1/TensorArrayV2TensorListReserveIbidirectional_1/forward_simple_rnn_1/TensorArrayV2/element_shape:output:0=bidirectional_1/forward_simple_rnn_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвЋ
Zbidirectional_1/forward_simple_rnn_1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   Я
Lbidirectional_1/forward_simple_rnn_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor2bidirectional_1/forward_simple_rnn_1/transpose:y:0cbidirectional_1/forward_simple_rnn_1/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
:bidirectional_1/forward_simple_rnn_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 
<bidirectional_1/forward_simple_rnn_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
<bidirectional_1/forward_simple_rnn_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ђ
4bidirectional_1/forward_simple_rnn_1/strided_slice_2StridedSlice2bidirectional_1/forward_simple_rnn_1/transpose:y:0Cbidirectional_1/forward_simple_rnn_1/strided_slice_2/stack:output:0Ebidirectional_1/forward_simple_rnn_1/strided_slice_2/stack_1:output:0Ebidirectional_1/forward_simple_rnn_1/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@*
shrink_axis_maskт
Lbidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/MatMul/ReadVariableOpReadVariableOpUbidirectional_1_forward_simple_rnn_1_simple_rnn_cell_4_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype0
=bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/MatMulMatMul=bidirectional_1/forward_simple_rnn_1/strided_slice_2:output:0Tbidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@р
Mbidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/BiasAdd/ReadVariableOpReadVariableOpVbidirectional_1_forward_simple_rnn_1_simple_rnn_cell_4_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
>bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/BiasAddBiasAddGbidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/MatMul:product:0Ubidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@ц
Nbidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/MatMul_1/ReadVariableOpReadVariableOpWbidirectional_1_forward_simple_rnn_1_simple_rnn_cell_4_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0
?bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/MatMul_1MatMul3bidirectional_1/forward_simple_rnn_1/zeros:output:0Vbidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@
:bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/addAddV2Gbidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/BiasAdd:output:0Ibidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@Е
;bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/TanhTanh>bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@
Bbidirectional_1/forward_simple_rnn_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   Ї
4bidirectional_1/forward_simple_rnn_1/TensorArrayV2_1TensorListReserveKbidirectional_1/forward_simple_rnn_1/TensorArrayV2_1/element_shape:output:0=bidirectional_1/forward_simple_rnn_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвk
)bidirectional_1/forward_simple_rnn_1/timeConst*
_output_shapes
: *
dtype0*
value	B : 
Bbidirectional_1/forward_simple_rnn_1/TensorArrayV2_2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџЇ
4bidirectional_1/forward_simple_rnn_1/TensorArrayV2_2TensorListReserveKbidirectional_1/forward_simple_rnn_1/TensorArrayV2_2/element_shape:output:0=bidirectional_1/forward_simple_rnn_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0
*

shape_type0:щшШ­
\bidirectional_1/forward_simple_rnn_1/TensorArrayUnstack_1/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   е
Nbidirectional_1/forward_simple_rnn_1/TensorArrayUnstack_1/TensorListFromTensorTensorListFromTensor4bidirectional_1/forward_simple_rnn_1/transpose_1:y:0ebidirectional_1/forward_simple_rnn_1/TensorArrayUnstack_1/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0
*

shape_type0:щшШЏ
/bidirectional_1/forward_simple_rnn_1/zeros_like	ZerosLike?bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@
=bidirectional_1/forward_simple_rnn_1/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџy
7bidirectional_1/forward_simple_rnn_1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ј

*bidirectional_1/forward_simple_rnn_1/whileWhile@bidirectional_1/forward_simple_rnn_1/while/loop_counter:output:0Fbidirectional_1/forward_simple_rnn_1/while/maximum_iterations:output:02bidirectional_1/forward_simple_rnn_1/time:output:0=bidirectional_1/forward_simple_rnn_1/TensorArrayV2_1:handle:03bidirectional_1/forward_simple_rnn_1/zeros_like:y:03bidirectional_1/forward_simple_rnn_1/zeros:output:0=bidirectional_1/forward_simple_rnn_1/strided_slice_1:output:0\bidirectional_1/forward_simple_rnn_1/TensorArrayUnstack/TensorListFromTensor:output_handle:0^bidirectional_1/forward_simple_rnn_1/TensorArrayUnstack_1/TensorListFromTensor:output_handle:0Ubidirectional_1_forward_simple_rnn_1_simple_rnn_cell_4_matmul_readvariableop_resourceVbidirectional_1_forward_simple_rnn_1_simple_rnn_cell_4_biasadd_readvariableop_resourceWbidirectional_1_forward_simple_rnn_1_simple_rnn_cell_4_matmul_1_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :џџџџџџџџџ@:џџџџџџџџџ@: : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *A
body9R7
5bidirectional_1_forward_simple_rnn_1_while_body_69058*A
cond9R7
5bidirectional_1_forward_simple_rnn_1_while_cond_69057*M
output_shapes<
:: : : : :џџџџџџџџџ@:џџџџџџџџџ@: : : : : : *
parallel_iterations І
Ubidirectional_1/forward_simple_rnn_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   К
Gbidirectional_1/forward_simple_rnn_1/TensorArrayV2Stack/TensorListStackTensorListStack3bidirectional_1/forward_simple_rnn_1/while:output:3^bidirectional_1/forward_simple_rnn_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@*
element_dtype0
:bidirectional_1/forward_simple_rnn_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ
<bidirectional_1/forward_simple_rnn_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
<bidirectional_1/forward_simple_rnn_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Р
4bidirectional_1/forward_simple_rnn_1/strided_slice_3StridedSlicePbidirectional_1/forward_simple_rnn_1/TensorArrayV2Stack/TensorListStack:tensor:0Cbidirectional_1/forward_simple_rnn_1/strided_slice_3/stack:output:0Ebidirectional_1/forward_simple_rnn_1/strided_slice_3/stack_1:output:0Ebidirectional_1/forward_simple_rnn_1/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@*
shrink_axis_mask
5bidirectional_1/forward_simple_rnn_1/transpose_2/permConst*
_output_shapes
:*
dtype0*!
valueB"          
0bidirectional_1/forward_simple_rnn_1/transpose_2	TransposePbidirectional_1/forward_simple_rnn_1/TensorArrayV2Stack/TensorListStack:tensor:0>bidirectional_1/forward_simple_rnn_1/transpose_2/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@
+bidirectional_1/backward_simple_rnn_1/ShapeShape0embedding_1/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:
9bidirectional_1/backward_simple_rnn_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
;bidirectional_1/backward_simple_rnn_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
;bidirectional_1/backward_simple_rnn_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
3bidirectional_1/backward_simple_rnn_1/strided_sliceStridedSlice4bidirectional_1/backward_simple_rnn_1/Shape:output:0Bbidirectional_1/backward_simple_rnn_1/strided_slice/stack:output:0Dbidirectional_1/backward_simple_rnn_1/strided_slice/stack_1:output:0Dbidirectional_1/backward_simple_rnn_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskv
4bidirectional_1/backward_simple_rnn_1/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@х
2bidirectional_1/backward_simple_rnn_1/zeros/packedPack<bidirectional_1/backward_simple_rnn_1/strided_slice:output:0=bidirectional_1/backward_simple_rnn_1/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:v
1bidirectional_1/backward_simple_rnn_1/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    о
+bidirectional_1/backward_simple_rnn_1/zerosFill;bidirectional_1/backward_simple_rnn_1/zeros/packed:output:0:bidirectional_1/backward_simple_rnn_1/zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
4bidirectional_1/backward_simple_rnn_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ь
/bidirectional_1/backward_simple_rnn_1/transpose	Transpose0embedding_1/embedding_lookup/Identity_1:output:0=bidirectional_1/backward_simple_rnn_1/transpose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@
-bidirectional_1/backward_simple_rnn_1/Shape_1Shape3bidirectional_1/backward_simple_rnn_1/transpose:y:0*
T0*
_output_shapes
:
;bidirectional_1/backward_simple_rnn_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
=bidirectional_1/backward_simple_rnn_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
=bidirectional_1/backward_simple_rnn_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
5bidirectional_1/backward_simple_rnn_1/strided_slice_1StridedSlice6bidirectional_1/backward_simple_rnn_1/Shape_1:output:0Dbidirectional_1/backward_simple_rnn_1/strided_slice_1/stack:output:0Fbidirectional_1/backward_simple_rnn_1/strided_slice_1/stack_1:output:0Fbidirectional_1/backward_simple_rnn_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
4bidirectional_1/backward_simple_rnn_1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџж
0bidirectional_1/backward_simple_rnn_1/ExpandDims
ExpandDimsembedding_1/NotEqual:z:0=bidirectional_1/backward_simple_rnn_1/ExpandDims/dim:output:0*
T0
*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
6bidirectional_1/backward_simple_rnn_1/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          љ
1bidirectional_1/backward_simple_rnn_1/transpose_1	Transpose9bidirectional_1/backward_simple_rnn_1/ExpandDims:output:0?bidirectional_1/backward_simple_rnn_1/transpose_1/perm:output:0*
T0
*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
Abidirectional_1/backward_simple_rnn_1/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџІ
3bidirectional_1/backward_simple_rnn_1/TensorArrayV2TensorListReserveJbidirectional_1/backward_simple_rnn_1/TensorArrayV2/element_shape:output:0>bidirectional_1/backward_simple_rnn_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв~
4bidirectional_1/backward_simple_rnn_1/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: я
/bidirectional_1/backward_simple_rnn_1/ReverseV2	ReverseV23bidirectional_1/backward_simple_rnn_1/transpose:y:0=bidirectional_1/backward_simple_rnn_1/ReverseV2/axis:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@Ќ
[bidirectional_1/backward_simple_rnn_1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   з
Mbidirectional_1/backward_simple_rnn_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor8bidirectional_1/backward_simple_rnn_1/ReverseV2:output:0dbidirectional_1/backward_simple_rnn_1/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
;bidirectional_1/backward_simple_rnn_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 
=bidirectional_1/backward_simple_rnn_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
=bidirectional_1/backward_simple_rnn_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ї
5bidirectional_1/backward_simple_rnn_1/strided_slice_2StridedSlice3bidirectional_1/backward_simple_rnn_1/transpose:y:0Dbidirectional_1/backward_simple_rnn_1/strided_slice_2/stack:output:0Fbidirectional_1/backward_simple_rnn_1/strided_slice_2/stack_1:output:0Fbidirectional_1/backward_simple_rnn_1/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@*
shrink_axis_maskф
Mbidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/MatMul/ReadVariableOpReadVariableOpVbidirectional_1_backward_simple_rnn_1_simple_rnn_cell_5_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype0
>bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/MatMulMatMul>bidirectional_1/backward_simple_rnn_1/strided_slice_2:output:0Ubidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@т
Nbidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/BiasAdd/ReadVariableOpReadVariableOpWbidirectional_1_backward_simple_rnn_1_simple_rnn_cell_5_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
?bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/BiasAddBiasAddHbidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/MatMul:product:0Vbidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@ш
Obidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/MatMul_1/ReadVariableOpReadVariableOpXbidirectional_1_backward_simple_rnn_1_simple_rnn_cell_5_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0
@bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/MatMul_1MatMul4bidirectional_1/backward_simple_rnn_1/zeros:output:0Wbidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@
;bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/addAddV2Hbidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/BiasAdd:output:0Jbidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@З
<bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/TanhTanh?bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@
Cbidirectional_1/backward_simple_rnn_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   Њ
5bidirectional_1/backward_simple_rnn_1/TensorArrayV2_1TensorListReserveLbidirectional_1/backward_simple_rnn_1/TensorArrayV2_1/element_shape:output:0>bidirectional_1/backward_simple_rnn_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвl
*bidirectional_1/backward_simple_rnn_1/timeConst*
_output_shapes
: *
dtype0*
value	B : 
6bidirectional_1/backward_simple_rnn_1/ReverseV2_1/axisConst*
_output_shapes
:*
dtype0*
valueB: ѕ
1bidirectional_1/backward_simple_rnn_1/ReverseV2_1	ReverseV25bidirectional_1/backward_simple_rnn_1/transpose_1:y:0?bidirectional_1/backward_simple_rnn_1/ReverseV2_1/axis:output:0*
T0
*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
Cbidirectional_1/backward_simple_rnn_1/TensorArrayV2_2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџЊ
5bidirectional_1/backward_simple_rnn_1/TensorArrayV2_2TensorListReserveLbidirectional_1/backward_simple_rnn_1/TensorArrayV2_2/element_shape:output:0>bidirectional_1/backward_simple_rnn_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0
*

shape_type0:щшШЎ
]bidirectional_1/backward_simple_rnn_1/TensorArrayUnstack_1/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   н
Obidirectional_1/backward_simple_rnn_1/TensorArrayUnstack_1/TensorListFromTensorTensorListFromTensor:bidirectional_1/backward_simple_rnn_1/ReverseV2_1:output:0fbidirectional_1/backward_simple_rnn_1/TensorArrayUnstack_1/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0
*

shape_type0:щшШБ
0bidirectional_1/backward_simple_rnn_1/zeros_like	ZerosLike@bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@
>bidirectional_1/backward_simple_rnn_1/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџz
8bidirectional_1/backward_simple_rnn_1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
+bidirectional_1/backward_simple_rnn_1/whileWhileAbidirectional_1/backward_simple_rnn_1/while/loop_counter:output:0Gbidirectional_1/backward_simple_rnn_1/while/maximum_iterations:output:03bidirectional_1/backward_simple_rnn_1/time:output:0>bidirectional_1/backward_simple_rnn_1/TensorArrayV2_1:handle:04bidirectional_1/backward_simple_rnn_1/zeros_like:y:04bidirectional_1/backward_simple_rnn_1/zeros:output:0>bidirectional_1/backward_simple_rnn_1/strided_slice_1:output:0]bidirectional_1/backward_simple_rnn_1/TensorArrayUnstack/TensorListFromTensor:output_handle:0_bidirectional_1/backward_simple_rnn_1/TensorArrayUnstack_1/TensorListFromTensor:output_handle:0Vbidirectional_1_backward_simple_rnn_1_simple_rnn_cell_5_matmul_readvariableop_resourceWbidirectional_1_backward_simple_rnn_1_simple_rnn_cell_5_biasadd_readvariableop_resourceXbidirectional_1_backward_simple_rnn_1_simple_rnn_cell_5_matmul_1_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :џџџџџџџџџ@:џџџџџџџџџ@: : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *B
body:R8
6bidirectional_1_backward_simple_rnn_1_while_body_69190*B
cond:R8
6bidirectional_1_backward_simple_rnn_1_while_cond_69189*M
output_shapes<
:: : : : :џџџџџџџџџ@:џџџџџџџџџ@: : : : : : *
parallel_iterations Ї
Vbidirectional_1/backward_simple_rnn_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   Н
Hbidirectional_1/backward_simple_rnn_1/TensorArrayV2Stack/TensorListStackTensorListStack4bidirectional_1/backward_simple_rnn_1/while:output:3_bidirectional_1/backward_simple_rnn_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@*
element_dtype0
;bidirectional_1/backward_simple_rnn_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ
=bidirectional_1/backward_simple_rnn_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
=bidirectional_1/backward_simple_rnn_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Х
5bidirectional_1/backward_simple_rnn_1/strided_slice_3StridedSliceQbidirectional_1/backward_simple_rnn_1/TensorArrayV2Stack/TensorListStack:tensor:0Dbidirectional_1/backward_simple_rnn_1/strided_slice_3/stack:output:0Fbidirectional_1/backward_simple_rnn_1/strided_slice_3/stack_1:output:0Fbidirectional_1/backward_simple_rnn_1/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@*
shrink_axis_mask
6bidirectional_1/backward_simple_rnn_1/transpose_2/permConst*
_output_shapes
:*
dtype0*!
valueB"          
1bidirectional_1/backward_simple_rnn_1/transpose_2	TransposeQbidirectional_1/backward_simple_rnn_1/TensorArrayV2Stack/TensorListStack:tensor:0?bidirectional_1/backward_simple_rnn_1/transpose_2/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@]
bidirectional_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :
bidirectional_1/concatConcatV2=bidirectional_1/forward_simple_rnn_1/strided_slice_3:output:0>bidirectional_1/backward_simple_rnn_1/strided_slice_3:output:0$bidirectional_1/concat/axis:output:0*
N*
T0*(
_output_shapes
:џџџџџџџџџ
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes
:	@*
dtype0
dense_2/MatMulMatMulbidirectional_1/concat:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@`
dense_2/ReluReludense_2/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0
dense_3/MatMulMatMuldense_2/Relu:activations:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџg
IdentityIdentitydense_3/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџЅ
NoOpNoOpO^bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/BiasAdd/ReadVariableOpN^bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/MatMul/ReadVariableOpP^bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/MatMul_1/ReadVariableOp,^bidirectional_1/backward_simple_rnn_1/whileN^bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/BiasAdd/ReadVariableOpM^bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/MatMul/ReadVariableOpO^bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/MatMul_1/ReadVariableOp+^bidirectional_1/forward_simple_rnn_1/while^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp^embedding_1/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:џџџџџџџџџџџџџџџџџџ: : : : : : : : : : : 2 
Nbidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/BiasAdd/ReadVariableOpNbidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/BiasAdd/ReadVariableOp2
Mbidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/MatMul/ReadVariableOpMbidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/MatMul/ReadVariableOp2Ђ
Obidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/MatMul_1/ReadVariableOpObidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/MatMul_1/ReadVariableOp2Z
+bidirectional_1/backward_simple_rnn_1/while+bidirectional_1/backward_simple_rnn_1/while2
Mbidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/BiasAdd/ReadVariableOpMbidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/BiasAdd/ReadVariableOp2
Lbidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/MatMul/ReadVariableOpLbidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/MatMul/ReadVariableOp2 
Nbidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/MatMul_1/ReadVariableOpNbidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/MatMul_1/ReadVariableOp2X
*bidirectional_1/forward_simple_rnn_1/while*bidirectional_1/forward_simple_rnn_1/while2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp2<
embedding_1/embedding_lookupembedding_1/embedding_lookup:X T
0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
с
Ё

5bidirectional_1_forward_simple_rnn_1_while_cond_69057f
bbidirectional_1_forward_simple_rnn_1_while_bidirectional_1_forward_simple_rnn_1_while_loop_counterl
hbidirectional_1_forward_simple_rnn_1_while_bidirectional_1_forward_simple_rnn_1_while_maximum_iterations:
6bidirectional_1_forward_simple_rnn_1_while_placeholder<
8bidirectional_1_forward_simple_rnn_1_while_placeholder_1<
8bidirectional_1_forward_simple_rnn_1_while_placeholder_2<
8bidirectional_1_forward_simple_rnn_1_while_placeholder_3h
dbidirectional_1_forward_simple_rnn_1_while_less_bidirectional_1_forward_simple_rnn_1_strided_slice_1}
ybidirectional_1_forward_simple_rnn_1_while_bidirectional_1_forward_simple_rnn_1_while_cond_69057___redundant_placeholder0}
ybidirectional_1_forward_simple_rnn_1_while_bidirectional_1_forward_simple_rnn_1_while_cond_69057___redundant_placeholder1}
ybidirectional_1_forward_simple_rnn_1_while_bidirectional_1_forward_simple_rnn_1_while_cond_69057___redundant_placeholder2}
ybidirectional_1_forward_simple_rnn_1_while_bidirectional_1_forward_simple_rnn_1_while_cond_69057___redundant_placeholder3}
ybidirectional_1_forward_simple_rnn_1_while_bidirectional_1_forward_simple_rnn_1_while_cond_69057___redundant_placeholder47
3bidirectional_1_forward_simple_rnn_1_while_identity
і
/bidirectional_1/forward_simple_rnn_1/while/LessLess6bidirectional_1_forward_simple_rnn_1_while_placeholderdbidirectional_1_forward_simple_rnn_1_while_less_bidirectional_1_forward_simple_rnn_1_strided_slice_1*
T0*
_output_shapes
: 
3bidirectional_1/forward_simple_rnn_1/while/IdentityIdentity3bidirectional_1/forward_simple_rnn_1/while/Less:z:0*
T0
*
_output_shapes
: "s
3bidirectional_1_forward_simple_rnn_1_while_identity<bidirectional_1/forward_simple_rnn_1/while/Identity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D: : : : :џџџџџџџџџ@:џџџџџџџџџ@: :::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
::

_output_shapes
:
фГ
И 
!__inference__traced_restore_72034
file_prefix:
'assignvariableop_embedding_1_embeddings:	Љ @4
!assignvariableop_1_dense_2_kernel:	@-
assignvariableop_2_dense_2_bias:@3
!assignvariableop_3_dense_3_kernel:@-
assignvariableop_4_dense_3_bias:&
assignvariableop_5_adam_iter:	 (
assignvariableop_6_adam_beta_1: (
assignvariableop_7_adam_beta_2: '
assignvariableop_8_adam_decay: /
%assignvariableop_9_adam_learning_rate: c
Qassignvariableop_10_bidirectional_1_forward_simple_rnn_1_simple_rnn_cell_4_kernel:@@m
[assignvariableop_11_bidirectional_1_forward_simple_rnn_1_simple_rnn_cell_4_recurrent_kernel:@@]
Oassignvariableop_12_bidirectional_1_forward_simple_rnn_1_simple_rnn_cell_4_bias:@d
Rassignvariableop_13_bidirectional_1_backward_simple_rnn_1_simple_rnn_cell_5_kernel:@@n
\assignvariableop_14_bidirectional_1_backward_simple_rnn_1_simple_rnn_cell_5_recurrent_kernel:@@^
Passignvariableop_15_bidirectional_1_backward_simple_rnn_1_simple_rnn_cell_5_bias:@#
assignvariableop_16_total: #
assignvariableop_17_count: %
assignvariableop_18_total_1: %
assignvariableop_19_count_1: D
1assignvariableop_20_adam_embedding_1_embeddings_m:	Љ @<
)assignvariableop_21_adam_dense_2_kernel_m:	@5
'assignvariableop_22_adam_dense_2_bias_m:@;
)assignvariableop_23_adam_dense_3_kernel_m:@5
'assignvariableop_24_adam_dense_3_bias_m:j
Xassignvariableop_25_adam_bidirectional_1_forward_simple_rnn_1_simple_rnn_cell_4_kernel_m:@@t
bassignvariableop_26_adam_bidirectional_1_forward_simple_rnn_1_simple_rnn_cell_4_recurrent_kernel_m:@@d
Vassignvariableop_27_adam_bidirectional_1_forward_simple_rnn_1_simple_rnn_cell_4_bias_m:@k
Yassignvariableop_28_adam_bidirectional_1_backward_simple_rnn_1_simple_rnn_cell_5_kernel_m:@@u
cassignvariableop_29_adam_bidirectional_1_backward_simple_rnn_1_simple_rnn_cell_5_recurrent_kernel_m:@@e
Wassignvariableop_30_adam_bidirectional_1_backward_simple_rnn_1_simple_rnn_cell_5_bias_m:@D
1assignvariableop_31_adam_embedding_1_embeddings_v:	Љ @<
)assignvariableop_32_adam_dense_2_kernel_v:	@5
'assignvariableop_33_adam_dense_2_bias_v:@;
)assignvariableop_34_adam_dense_3_kernel_v:@5
'assignvariableop_35_adam_dense_3_bias_v:j
Xassignvariableop_36_adam_bidirectional_1_forward_simple_rnn_1_simple_rnn_cell_4_kernel_v:@@t
bassignvariableop_37_adam_bidirectional_1_forward_simple_rnn_1_simple_rnn_cell_4_recurrent_kernel_v:@@d
Vassignvariableop_38_adam_bidirectional_1_forward_simple_rnn_1_simple_rnn_cell_4_bias_v:@k
Yassignvariableop_39_adam_bidirectional_1_backward_simple_rnn_1_simple_rnn_cell_5_kernel_v:@@u
cassignvariableop_40_adam_bidirectional_1_backward_simple_rnn_1_simple_rnn_cell_5_recurrent_kernel_v:@@e
Wassignvariableop_41_adam_bidirectional_1_backward_simple_rnn_1_simple_rnn_cell_5_bias_v:@
identity_43ЂAssignVariableOpЂAssignVariableOp_1ЂAssignVariableOp_10ЂAssignVariableOp_11ЂAssignVariableOp_12ЂAssignVariableOp_13ЂAssignVariableOp_14ЂAssignVariableOp_15ЂAssignVariableOp_16ЂAssignVariableOp_17ЂAssignVariableOp_18ЂAssignVariableOp_19ЂAssignVariableOp_2ЂAssignVariableOp_20ЂAssignVariableOp_21ЂAssignVariableOp_22ЂAssignVariableOp_23ЂAssignVariableOp_24ЂAssignVariableOp_25ЂAssignVariableOp_26ЂAssignVariableOp_27ЂAssignVariableOp_28ЂAssignVariableOp_29ЂAssignVariableOp_3ЂAssignVariableOp_30ЂAssignVariableOp_31ЂAssignVariableOp_32ЂAssignVariableOp_33ЂAssignVariableOp_34ЂAssignVariableOp_35ЂAssignVariableOp_36ЂAssignVariableOp_37ЂAssignVariableOp_38ЂAssignVariableOp_39ЂAssignVariableOp_4ЂAssignVariableOp_40ЂAssignVariableOp_41ЂAssignVariableOp_5ЂAssignVariableOp_6ЂAssignVariableOp_7ЂAssignVariableOp_8ЂAssignVariableOp_9Ъ
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:+*
dtype0*№
valueцBу+B:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHЦ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:+*
dtype0*i
value`B^+B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ј
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*Т
_output_shapesЏ
Ќ:::::::::::::::::::::::::::::::::::::::::::*9
dtypes/
-2+	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOpAssignVariableOp'assignvariableop_embedding_1_embeddingsIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_2_kernelIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_2AssignVariableOpassignvariableop_2_dense_2_biasIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_3AssignVariableOp!assignvariableop_3_dense_3_kernelIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_4AssignVariableOpassignvariableop_4_dense_3_biasIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_iterIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_6AssignVariableOpassignvariableop_6_adam_beta_1Identity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_7AssignVariableOpassignvariableop_7_adam_beta_2Identity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_8AssignVariableOpassignvariableop_8_adam_decayIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_9AssignVariableOp%assignvariableop_9_adam_learning_rateIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:Т
AssignVariableOp_10AssignVariableOpQassignvariableop_10_bidirectional_1_forward_simple_rnn_1_simple_rnn_cell_4_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_11AssignVariableOp[assignvariableop_11_bidirectional_1_forward_simple_rnn_1_simple_rnn_cell_4_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_12AssignVariableOpOassignvariableop_12_bidirectional_1_forward_simple_rnn_1_simple_rnn_cell_4_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_13AssignVariableOpRassignvariableop_13_bidirectional_1_backward_simple_rnn_1_simple_rnn_cell_5_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:Э
AssignVariableOp_14AssignVariableOp\assignvariableop_14_bidirectional_1_backward_simple_rnn_1_simple_rnn_cell_5_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:С
AssignVariableOp_15AssignVariableOpPassignvariableop_15_bidirectional_1_backward_simple_rnn_1_simple_rnn_cell_5_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_16AssignVariableOpassignvariableop_16_totalIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_17AssignVariableOpassignvariableop_17_countIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_18AssignVariableOpassignvariableop_18_total_1Identity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_19AssignVariableOpassignvariableop_19_count_1Identity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:Ђ
AssignVariableOp_20AssignVariableOp1assignvariableop_20_adam_embedding_1_embeddings_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_21AssignVariableOp)assignvariableop_21_adam_dense_2_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_22AssignVariableOp'assignvariableop_22_adam_dense_2_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_23AssignVariableOp)assignvariableop_23_adam_dense_3_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_24AssignVariableOp'assignvariableop_24_adam_dense_3_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_25AssignVariableOpXassignvariableop_25_adam_bidirectional_1_forward_simple_rnn_1_simple_rnn_cell_4_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:г
AssignVariableOp_26AssignVariableOpbassignvariableop_26_adam_bidirectional_1_forward_simple_rnn_1_simple_rnn_cell_4_recurrent_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:Ч
AssignVariableOp_27AssignVariableOpVassignvariableop_27_adam_bidirectional_1_forward_simple_rnn_1_simple_rnn_cell_4_bias_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_28AssignVariableOpYassignvariableop_28_adam_bidirectional_1_backward_simple_rnn_1_simple_rnn_cell_5_kernel_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:д
AssignVariableOp_29AssignVariableOpcassignvariableop_29_adam_bidirectional_1_backward_simple_rnn_1_simple_rnn_cell_5_recurrent_kernel_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:Ш
AssignVariableOp_30AssignVariableOpWassignvariableop_30_adam_bidirectional_1_backward_simple_rnn_1_simple_rnn_cell_5_bias_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:Ђ
AssignVariableOp_31AssignVariableOp1assignvariableop_31_adam_embedding_1_embeddings_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_32AssignVariableOp)assignvariableop_32_adam_dense_2_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_33AssignVariableOp'assignvariableop_33_adam_dense_2_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_34AssignVariableOp)assignvariableop_34_adam_dense_3_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_35AssignVariableOp'assignvariableop_35_adam_dense_3_bias_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_36AssignVariableOpXassignvariableop_36_adam_bidirectional_1_forward_simple_rnn_1_simple_rnn_cell_4_kernel_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:г
AssignVariableOp_37AssignVariableOpbassignvariableop_37_adam_bidirectional_1_forward_simple_rnn_1_simple_rnn_cell_4_recurrent_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:Ч
AssignVariableOp_38AssignVariableOpVassignvariableop_38_adam_bidirectional_1_forward_simple_rnn_1_simple_rnn_cell_4_bias_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_39AssignVariableOpYassignvariableop_39_adam_bidirectional_1_backward_simple_rnn_1_simple_rnn_cell_5_kernel_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:д
AssignVariableOp_40AssignVariableOpcassignvariableop_40_adam_bidirectional_1_backward_simple_rnn_1_simple_rnn_cell_5_recurrent_kernel_vIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:Ш
AssignVariableOp_41AssignVariableOpWassignvariableop_41_adam_bidirectional_1_backward_simple_rnn_1_simple_rnn_cell_5_bias_vIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ы
Identity_42Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_43IdentityIdentity_42:output:0^NoOp_1*
T0*
_output_shapes
: и
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_43Identity_43:output:0*i
_input_shapesX
V: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
Э


#__inference_signature_wrapper_68945
embedding_1_input
unknown:	Љ @
	unknown_0:@@
	unknown_1:@
	unknown_2:@@
	unknown_3:@@
	unknown_4:@
	unknown_5:@@
	unknown_6:	@
	unknown_7:@
	unknown_8:@
	unknown_9:
identityЂStatefulPartitionedCallЕ
StatefulPartitionedCallStatefulPartitionedCallembedding_1_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *)
f$R"
 __inference__wrapped_model_66896o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:џџџџџџџџџџџџџџџџџџ: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:c _
0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
+
_user_specified_nameembedding_1_input
м


,__inference_sequential_1_layer_call_fn_68972

inputs
unknown:	Љ @
	unknown_0:@@
	unknown_1:@
	unknown_2:@@
	unknown_3:@@
	unknown_4:@
	unknown_5:@@
	unknown_6:	@
	unknown_7:@
	unknown_8:@
	unknown_9:
identityЂStatefulPartitionedCallб
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_68377o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:џџџџџџџџџџџџџџџџџџ: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
§


,__inference_sequential_1_layer_call_fn_68402
embedding_1_input
unknown:	Љ @
	unknown_0:@@
	unknown_1:@
	unknown_2:@@
	unknown_3:@@
	unknown_4:@
	unknown_5:@@
	unknown_6:	@
	unknown_7:@
	unknown_8:@
	unknown_9:
identityЂStatefulPartitionedCallм
StatefulPartitionedCallStatefulPartitionedCallembedding_1_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_68377o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:џџџџџџџџџџџџџџџџџџ: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:c _
0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
+
_user_specified_nameembedding_1_input


є
B__inference_dense_2_layer_call_and_return_conditional_losses_70646

inputs1
matmul_readvariableop_resource:	@-
biasadd_readvariableop_resource:@
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Х	
ѓ
B__inference_dense_3_layer_call_and_return_conditional_losses_68370

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs
В,
Ч
while_body_67532
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0J
8while_simple_rnn_cell_4_matmul_readvariableop_resource_0:@@G
9while_simple_rnn_cell_4_biasadd_readvariableop_resource_0:@L
:while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0:@@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorH
6while_simple_rnn_cell_4_matmul_readvariableop_resource:@@E
7while_simple_rnn_cell_4_biasadd_readvariableop_resource:@J
8while_simple_rnn_cell_4_matmul_1_readvariableop_resource:@@Ђ.while/simple_rnn_cell_4/BiasAdd/ReadVariableOpЂ-while/simple_rnn_cell_4/MatMul/ReadVariableOpЂ/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџџџџџЏ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
element_dtype0І
-while/simple_rnn_cell_4/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_4_matmul_readvariableop_resource_0*
_output_shapes

:@@*
dtype0У
while/simple_rnn_cell_4/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@Є
.while/simple_rnn_cell_4/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_4_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0О
while/simple_rnn_cell_4/BiasAddBiasAdd(while/simple_rnn_cell_4/MatMul:product:06while/simple_rnn_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@Њ
/while/simple_rnn_cell_4/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype0Њ
 while/simple_rnn_cell_4/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@Ќ
while/simple_rnn_cell_4/addAddV2(while/simple_rnn_cell_4/BiasAdd:output:0*while/simple_rnn_cell_4/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@w
while/simple_rnn_cell_4/TanhTanhwhile/simple_rnn_cell_4/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@Щ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder while/simple_rnn_cell_4/Tanh:y:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: }
while/Identity_4Identity while/simple_rnn_cell_4/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@п

while/NoOpNoOp/^while/simple_rnn_cell_4/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_4/MatMul/ReadVariableOp0^while/simple_rnn_cell_4/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_4_biasadd_readvariableop_resource9while_simple_rnn_cell_4_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_4_matmul_1_readvariableop_resource:while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_4_matmul_readvariableop_resource8while_simple_rnn_cell_4_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :џџџџџџџџџ@: : : : : 2`
.while/simple_rnn_cell_4/BiasAdd/ReadVariableOp.while/simple_rnn_cell_4/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_4/MatMul/ReadVariableOp-while/simple_rnn_cell_4/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
: 
с
Ё

5bidirectional_1_forward_simple_rnn_1_while_cond_69344f
bbidirectional_1_forward_simple_rnn_1_while_bidirectional_1_forward_simple_rnn_1_while_loop_counterl
hbidirectional_1_forward_simple_rnn_1_while_bidirectional_1_forward_simple_rnn_1_while_maximum_iterations:
6bidirectional_1_forward_simple_rnn_1_while_placeholder<
8bidirectional_1_forward_simple_rnn_1_while_placeholder_1<
8bidirectional_1_forward_simple_rnn_1_while_placeholder_2<
8bidirectional_1_forward_simple_rnn_1_while_placeholder_3h
dbidirectional_1_forward_simple_rnn_1_while_less_bidirectional_1_forward_simple_rnn_1_strided_slice_1}
ybidirectional_1_forward_simple_rnn_1_while_bidirectional_1_forward_simple_rnn_1_while_cond_69344___redundant_placeholder0}
ybidirectional_1_forward_simple_rnn_1_while_bidirectional_1_forward_simple_rnn_1_while_cond_69344___redundant_placeholder1}
ybidirectional_1_forward_simple_rnn_1_while_bidirectional_1_forward_simple_rnn_1_while_cond_69344___redundant_placeholder2}
ybidirectional_1_forward_simple_rnn_1_while_bidirectional_1_forward_simple_rnn_1_while_cond_69344___redundant_placeholder3}
ybidirectional_1_forward_simple_rnn_1_while_bidirectional_1_forward_simple_rnn_1_while_cond_69344___redundant_placeholder47
3bidirectional_1_forward_simple_rnn_1_while_identity
і
/bidirectional_1/forward_simple_rnn_1/while/LessLess6bidirectional_1_forward_simple_rnn_1_while_placeholderdbidirectional_1_forward_simple_rnn_1_while_less_bidirectional_1_forward_simple_rnn_1_strided_slice_1*
T0*
_output_shapes
: 
3bidirectional_1/forward_simple_rnn_1/while/IdentityIdentity3bidirectional_1/forward_simple_rnn_1/while/Less:z:0*
T0
*
_output_shapes
: "s
3bidirectional_1_forward_simple_rnn_1_while_identity<bidirectional_1/forward_simple_rnn_1/while/Identity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D: : : : :џџџџџџџџџ@:џџџџџџџџџ@: :::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
::

_output_shapes
:
В,
Ч
while_body_70967
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0J
8while_simple_rnn_cell_4_matmul_readvariableop_resource_0:@@G
9while_simple_rnn_cell_4_biasadd_readvariableop_resource_0:@L
:while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0:@@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorH
6while_simple_rnn_cell_4_matmul_readvariableop_resource:@@E
7while_simple_rnn_cell_4_biasadd_readvariableop_resource:@J
8while_simple_rnn_cell_4_matmul_1_readvariableop_resource:@@Ђ.while/simple_rnn_cell_4/BiasAdd/ReadVariableOpЂ-while/simple_rnn_cell_4/MatMul/ReadVariableOpЂ/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџџџџџЏ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
element_dtype0І
-while/simple_rnn_cell_4/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_4_matmul_readvariableop_resource_0*
_output_shapes

:@@*
dtype0У
while/simple_rnn_cell_4/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@Є
.while/simple_rnn_cell_4/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_4_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0О
while/simple_rnn_cell_4/BiasAddBiasAdd(while/simple_rnn_cell_4/MatMul:product:06while/simple_rnn_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@Њ
/while/simple_rnn_cell_4/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype0Њ
 while/simple_rnn_cell_4/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@Ќ
while/simple_rnn_cell_4/addAddV2(while/simple_rnn_cell_4/BiasAdd:output:0*while/simple_rnn_cell_4/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@w
while/simple_rnn_cell_4/TanhTanhwhile/simple_rnn_cell_4/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@Щ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder while/simple_rnn_cell_4/Tanh:y:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: }
while/Identity_4Identity while/simple_rnn_cell_4/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@п

while/NoOpNoOp/^while/simple_rnn_cell_4/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_4/MatMul/ReadVariableOp0^while/simple_rnn_cell_4/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_4_biasadd_readvariableop_resource9while_simple_rnn_cell_4_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_4_matmul_1_readvariableop_resource:while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_4_matmul_readvariableop_resource8while_simple_rnn_cell_4_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :џџџџџџџџџ@: : : : : 2`
.while/simple_rnn_cell_4/BiasAdd/ReadVariableOp.while/simple_rnn_cell_4/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_4/MatMul/ReadVariableOp-while/simple_rnn_cell_4/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
: 
ќ@
н
&backward_simple_rnn_1_while_body_69808H
Dbackward_simple_rnn_1_while_backward_simple_rnn_1_while_loop_counterN
Jbackward_simple_rnn_1_while_backward_simple_rnn_1_while_maximum_iterations+
'backward_simple_rnn_1_while_placeholder-
)backward_simple_rnn_1_while_placeholder_1-
)backward_simple_rnn_1_while_placeholder_2G
Cbackward_simple_rnn_1_while_backward_simple_rnn_1_strided_slice_1_0
backward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_backward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0`
Nbackward_simple_rnn_1_while_simple_rnn_cell_5_matmul_readvariableop_resource_0:@@]
Obackward_simple_rnn_1_while_simple_rnn_cell_5_biasadd_readvariableop_resource_0:@b
Pbackward_simple_rnn_1_while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0:@@(
$backward_simple_rnn_1_while_identity*
&backward_simple_rnn_1_while_identity_1*
&backward_simple_rnn_1_while_identity_2*
&backward_simple_rnn_1_while_identity_3*
&backward_simple_rnn_1_while_identity_4E
Abackward_simple_rnn_1_while_backward_simple_rnn_1_strided_slice_1
}backward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_backward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor^
Lbackward_simple_rnn_1_while_simple_rnn_cell_5_matmul_readvariableop_resource:@@[
Mbackward_simple_rnn_1_while_simple_rnn_cell_5_biasadd_readvariableop_resource:@`
Nbackward_simple_rnn_1_while_simple_rnn_cell_5_matmul_1_readvariableop_resource:@@ЂDbackward_simple_rnn_1/while/simple_rnn_cell_5/BiasAdd/ReadVariableOpЂCbackward_simple_rnn_1/while/simple_rnn_cell_5/MatMul/ReadVariableOpЂEbackward_simple_rnn_1/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp
Mbackward_simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџџџџџ
?backward_simple_rnn_1/while/TensorArrayV2Read/TensorListGetItemTensorListGetItembackward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_backward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0'backward_simple_rnn_1_while_placeholderVbackward_simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
element_dtype0в
Cbackward_simple_rnn_1/while/simple_rnn_cell_5/MatMul/ReadVariableOpReadVariableOpNbackward_simple_rnn_1_while_simple_rnn_cell_5_matmul_readvariableop_resource_0*
_output_shapes

:@@*
dtype0
4backward_simple_rnn_1/while/simple_rnn_cell_5/MatMulMatMulFbackward_simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem:item:0Kbackward_simple_rnn_1/while/simple_rnn_cell_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@а
Dbackward_simple_rnn_1/while/simple_rnn_cell_5/BiasAdd/ReadVariableOpReadVariableOpObackward_simple_rnn_1_while_simple_rnn_cell_5_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0
5backward_simple_rnn_1/while/simple_rnn_cell_5/BiasAddBiasAdd>backward_simple_rnn_1/while/simple_rnn_cell_5/MatMul:product:0Lbackward_simple_rnn_1/while/simple_rnn_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@ж
Ebackward_simple_rnn_1/while/simple_rnn_cell_5/MatMul_1/ReadVariableOpReadVariableOpPbackward_simple_rnn_1_while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype0ь
6backward_simple_rnn_1/while/simple_rnn_cell_5/MatMul_1MatMul)backward_simple_rnn_1_while_placeholder_2Mbackward_simple_rnn_1/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@ю
1backward_simple_rnn_1/while/simple_rnn_cell_5/addAddV2>backward_simple_rnn_1/while/simple_rnn_cell_5/BiasAdd:output:0@backward_simple_rnn_1/while/simple_rnn_cell_5/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@Ѓ
2backward_simple_rnn_1/while/simple_rnn_cell_5/TanhTanh5backward_simple_rnn_1/while/simple_rnn_cell_5/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@Ё
@backward_simple_rnn_1/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem)backward_simple_rnn_1_while_placeholder_1'backward_simple_rnn_1_while_placeholder6backward_simple_rnn_1/while/simple_rnn_cell_5/Tanh:y:0*
_output_shapes
: *
element_dtype0:щшвc
!backward_simple_rnn_1/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
backward_simple_rnn_1/while/addAddV2'backward_simple_rnn_1_while_placeholder*backward_simple_rnn_1/while/add/y:output:0*
T0*
_output_shapes
: e
#backward_simple_rnn_1/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :П
!backward_simple_rnn_1/while/add_1AddV2Dbackward_simple_rnn_1_while_backward_simple_rnn_1_while_loop_counter,backward_simple_rnn_1/while/add_1/y:output:0*
T0*
_output_shapes
: 
$backward_simple_rnn_1/while/IdentityIdentity%backward_simple_rnn_1/while/add_1:z:0!^backward_simple_rnn_1/while/NoOp*
T0*
_output_shapes
: Т
&backward_simple_rnn_1/while/Identity_1IdentityJbackward_simple_rnn_1_while_backward_simple_rnn_1_while_maximum_iterations!^backward_simple_rnn_1/while/NoOp*
T0*
_output_shapes
: 
&backward_simple_rnn_1/while/Identity_2Identity#backward_simple_rnn_1/while/add:z:0!^backward_simple_rnn_1/while/NoOp*
T0*
_output_shapes
: Ш
&backward_simple_rnn_1/while/Identity_3IdentityPbackward_simple_rnn_1/while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^backward_simple_rnn_1/while/NoOp*
T0*
_output_shapes
: П
&backward_simple_rnn_1/while/Identity_4Identity6backward_simple_rnn_1/while/simple_rnn_cell_5/Tanh:y:0!^backward_simple_rnn_1/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@З
 backward_simple_rnn_1/while/NoOpNoOpE^backward_simple_rnn_1/while/simple_rnn_cell_5/BiasAdd/ReadVariableOpD^backward_simple_rnn_1/while/simple_rnn_cell_5/MatMul/ReadVariableOpF^backward_simple_rnn_1/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
Abackward_simple_rnn_1_while_backward_simple_rnn_1_strided_slice_1Cbackward_simple_rnn_1_while_backward_simple_rnn_1_strided_slice_1_0"U
$backward_simple_rnn_1_while_identity-backward_simple_rnn_1/while/Identity:output:0"Y
&backward_simple_rnn_1_while_identity_1/backward_simple_rnn_1/while/Identity_1:output:0"Y
&backward_simple_rnn_1_while_identity_2/backward_simple_rnn_1/while/Identity_2:output:0"Y
&backward_simple_rnn_1_while_identity_3/backward_simple_rnn_1/while/Identity_3:output:0"Y
&backward_simple_rnn_1_while_identity_4/backward_simple_rnn_1/while/Identity_4:output:0" 
Mbackward_simple_rnn_1_while_simple_rnn_cell_5_biasadd_readvariableop_resourceObackward_simple_rnn_1_while_simple_rnn_cell_5_biasadd_readvariableop_resource_0"Ђ
Nbackward_simple_rnn_1_while_simple_rnn_cell_5_matmul_1_readvariableop_resourcePbackward_simple_rnn_1_while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0"
Lbackward_simple_rnn_1_while_simple_rnn_cell_5_matmul_readvariableop_resourceNbackward_simple_rnn_1_while_simple_rnn_cell_5_matmul_readvariableop_resource_0"
}backward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_backward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensorbackward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_backward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :џџџџџџџџџ@: : : : : 2
Dbackward_simple_rnn_1/while/simple_rnn_cell_5/BiasAdd/ReadVariableOpDbackward_simple_rnn_1/while/simple_rnn_cell_5/BiasAdd/ReadVariableOp2
Cbackward_simple_rnn_1/while/simple_rnn_cell_5/MatMul/ReadVariableOpCbackward_simple_rnn_1/while/simple_rnn_cell_5/MatMul/ReadVariableOp2
Ebackward_simple_rnn_1/while/simple_rnn_cell_5/MatMul_1/ReadVariableOpEbackward_simple_rnn_1/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
: 
с=
Ф
O__inference_forward_simple_rnn_1_layer_call_and_return_conditional_losses_70817
inputs_0B
0simple_rnn_cell_4_matmul_readvariableop_resource:@@?
1simple_rnn_cell_4_biasadd_readvariableop_resource:@D
2simple_rnn_cell_4_matmul_1_readvariableop_resource:@@
identityЂ(simple_rnn_cell_4/BiasAdd/ReadVariableOpЂ'simple_rnn_cell_4/MatMul/ReadVariableOpЂ)simple_rnn_cell_4/MatMul_1/ReadVariableOpЂwhile=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@*
shrink_axis_mask
'simple_rnn_cell_4/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_4_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype0
simple_rnn_cell_4/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@
(simple_rnn_cell_4/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_4_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ќ
simple_rnn_cell_4/BiasAddBiasAdd"simple_rnn_cell_4/MatMul:product:00simple_rnn_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@
)simple_rnn_cell_4/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_4_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0
simple_rnn_cell_4/MatMul_1MatMulzeros:output:01simple_rnn_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@
simple_rnn_cell_4/addAddV2"simple_rnn_cell_4/BiasAdd:output:0$simple_rnn_cell_4/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@k
simple_rnn_cell_4/TanhTanhsimple_rnn_cell_4/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ж
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_4_matmul_readvariableop_resource1simple_rnn_cell_4_biasadd_readvariableop_resource2simple_rnn_cell_4_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџ@: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_70751*
condR
while_cond_70750*8
output_shapes'
%: : : : :џџџџџџџџџ@: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   Ы
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@Я
NoOpNoOp)^simple_rnn_cell_4/BiasAdd/ReadVariableOp(^simple_rnn_cell_4/MatMul/ReadVariableOp*^simple_rnn_cell_4/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ@: : : 2T
(simple_rnn_cell_4/BiasAdd/ReadVariableOp(simple_rnn_cell_4/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_4/MatMul/ReadVariableOp'simple_rnn_cell_4/MatMul/ReadVariableOp2V
)simple_rnn_cell_4/MatMul_1/ReadVariableOp)simple_rnn_cell_4/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@
"
_user_specified_name
inputs/0
е
Ѕ
while_cond_67250
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_67250___redundant_placeholder03
/while_while_cond_67250___redundant_placeholder13
/while_while_cond_67250___redundant_placeholder23
/while_while_cond_67250___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :џџџџџџџџџ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
:

С
%forward_simple_rnn_1_while_cond_70143F
Bforward_simple_rnn_1_while_forward_simple_rnn_1_while_loop_counterL
Hforward_simple_rnn_1_while_forward_simple_rnn_1_while_maximum_iterations*
&forward_simple_rnn_1_while_placeholder,
(forward_simple_rnn_1_while_placeholder_1,
(forward_simple_rnn_1_while_placeholder_2,
(forward_simple_rnn_1_while_placeholder_3H
Dforward_simple_rnn_1_while_less_forward_simple_rnn_1_strided_slice_1]
Yforward_simple_rnn_1_while_forward_simple_rnn_1_while_cond_70143___redundant_placeholder0]
Yforward_simple_rnn_1_while_forward_simple_rnn_1_while_cond_70143___redundant_placeholder1]
Yforward_simple_rnn_1_while_forward_simple_rnn_1_while_cond_70143___redundant_placeholder2]
Yforward_simple_rnn_1_while_forward_simple_rnn_1_while_cond_70143___redundant_placeholder3]
Yforward_simple_rnn_1_while_forward_simple_rnn_1_while_cond_70143___redundant_placeholder4'
#forward_simple_rnn_1_while_identity
Ж
forward_simple_rnn_1/while/LessLess&forward_simple_rnn_1_while_placeholderDforward_simple_rnn_1_while_less_forward_simple_rnn_1_strided_slice_1*
T0*
_output_shapes
: u
#forward_simple_rnn_1/while/IdentityIdentity#forward_simple_rnn_1/while/Less:z:0*
T0
*
_output_shapes
: "S
#forward_simple_rnn_1_while_identity,forward_simple_rnn_1/while/Identity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D: : : : :џџџџџџџџџ@:џџџџџџџџџ@: :::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
::

_output_shapes
:
е
Ѕ
while_cond_71448
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_71448___redundant_placeholder03
/while_while_cond_71448___redundant_placeholder13
/while_while_cond_71448___redundant_placeholder23
/while_while_cond_71448___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :џџџџџџџџџ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
:
е
Ѕ
while_cond_71558
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_71558___redundant_placeholder03
/while_while_cond_71558___redundant_placeholder13
/while_while_cond_71558___redundant_placeholder23
/while_while_cond_71558___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :џџџџџџџџџ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
:

Д
%forward_simple_rnn_1_while_cond_69917F
Bforward_simple_rnn_1_while_forward_simple_rnn_1_while_loop_counterL
Hforward_simple_rnn_1_while_forward_simple_rnn_1_while_maximum_iterations*
&forward_simple_rnn_1_while_placeholder,
(forward_simple_rnn_1_while_placeholder_1,
(forward_simple_rnn_1_while_placeholder_2H
Dforward_simple_rnn_1_while_less_forward_simple_rnn_1_strided_slice_1]
Yforward_simple_rnn_1_while_forward_simple_rnn_1_while_cond_69917___redundant_placeholder0]
Yforward_simple_rnn_1_while_forward_simple_rnn_1_while_cond_69917___redundant_placeholder1]
Yforward_simple_rnn_1_while_forward_simple_rnn_1_while_cond_69917___redundant_placeholder2]
Yforward_simple_rnn_1_while_forward_simple_rnn_1_while_cond_69917___redundant_placeholder3'
#forward_simple_rnn_1_while_identity
Ж
forward_simple_rnn_1/while/LessLess&forward_simple_rnn_1_while_placeholderDforward_simple_rnn_1_while_less_forward_simple_rnn_1_strided_slice_1*
T0*
_output_shapes
: u
#forward_simple_rnn_1/while/IdentityIdentity#forward_simple_rnn_1/while/Less:z:0*
T0
*
_output_shapes
: "S
#forward_simple_rnn_1_while_identity,forward_simple_rnn_1/while/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :џџџџџџџџџ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
:
м


,__inference_sequential_1_layer_call_fn_68999

inputs
unknown:	Љ @
	unknown_0:@@
	unknown_1:@
	unknown_2:@@
	unknown_3:@@
	unknown_4:@
	unknown_5:@@
	unknown_6:	@
	unknown_7:@
	unknown_8:@
	unknown_9:
identityЂStatefulPartitionedCallб
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_68794o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:џџџџџџџџџџџџџџџџџџ: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
З

й
1__inference_simple_rnn_cell_4_layer_call_fn_71639

inputs
states_0
unknown:@@
	unknown_0:@
	unknown_1:@@
identity

identity_1ЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:џџџџџџџџџ@:џџџџџџџџџ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_simple_rnn_cell_4_layer_call_and_return_conditional_losses_66944o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:џџџџџџџџџ@:џџџџџџџџџ@: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџ@
"
_user_specified_name
states/0

С
%forward_simple_rnn_1_while_cond_70410F
Bforward_simple_rnn_1_while_forward_simple_rnn_1_while_loop_counterL
Hforward_simple_rnn_1_while_forward_simple_rnn_1_while_maximum_iterations*
&forward_simple_rnn_1_while_placeholder,
(forward_simple_rnn_1_while_placeholder_1,
(forward_simple_rnn_1_while_placeholder_2,
(forward_simple_rnn_1_while_placeholder_3H
Dforward_simple_rnn_1_while_less_forward_simple_rnn_1_strided_slice_1]
Yforward_simple_rnn_1_while_forward_simple_rnn_1_while_cond_70410___redundant_placeholder0]
Yforward_simple_rnn_1_while_forward_simple_rnn_1_while_cond_70410___redundant_placeholder1]
Yforward_simple_rnn_1_while_forward_simple_rnn_1_while_cond_70410___redundant_placeholder2]
Yforward_simple_rnn_1_while_forward_simple_rnn_1_while_cond_70410___redundant_placeholder3]
Yforward_simple_rnn_1_while_forward_simple_rnn_1_while_cond_70410___redundant_placeholder4'
#forward_simple_rnn_1_while_identity
Ж
forward_simple_rnn_1/while/LessLess&forward_simple_rnn_1_while_placeholderDforward_simple_rnn_1_while_less_forward_simple_rnn_1_strided_slice_1*
T0*
_output_shapes
: u
#forward_simple_rnn_1/while/IdentityIdentity#forward_simple_rnn_1/while/Less:z:0*
T0
*
_output_shapes
: "S
#forward_simple_rnn_1_while_identity,forward_simple_rnn_1/while/Identity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D: : : : :џџџџџџџџџ@:џџџџџџџџџ@: :::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
::

_output_shapes
:
х 
Ъ
while_body_66957
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_01
while_simple_rnn_cell_4_66979_0:@@-
while_simple_rnn_cell_4_66981_0:@1
while_simple_rnn_cell_4_66983_0:@@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor/
while_simple_rnn_cell_4_66979:@@+
while_simple_rnn_cell_4_66981:@/
while_simple_rnn_cell_4_66983:@@Ђ/while/simple_rnn_cell_4/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ@*
element_dtype0
/while/simple_rnn_cell_4/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_simple_rnn_cell_4_66979_0while_simple_rnn_cell_4_66981_0while_simple_rnn_cell_4_66983_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:џџџџџџџџџ@:џџџџџџџџџ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_simple_rnn_cell_4_layer_call_and_return_conditional_losses_66944с
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder8while/simple_rnn_cell_4/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_4Identity8while/simple_rnn_cell_4/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@~

while/NoOpNoOp0^while/simple_rnn_cell_4/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"@
while_simple_rnn_cell_4_66979while_simple_rnn_cell_4_66979_0"@
while_simple_rnn_cell_4_66981while_simple_rnn_cell_4_66981_0"@
while_simple_rnn_cell_4_66983while_simple_rnn_cell_4_66983_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :џџџџџџџџџ@: : : : : 2b
/while/simple_rnn_cell_4/StatefulPartitionedCall/while/simple_rnn_cell_4/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
: 
ќ@
н
&backward_simple_rnn_1_while_body_70024H
Dbackward_simple_rnn_1_while_backward_simple_rnn_1_while_loop_counterN
Jbackward_simple_rnn_1_while_backward_simple_rnn_1_while_maximum_iterations+
'backward_simple_rnn_1_while_placeholder-
)backward_simple_rnn_1_while_placeholder_1-
)backward_simple_rnn_1_while_placeholder_2G
Cbackward_simple_rnn_1_while_backward_simple_rnn_1_strided_slice_1_0
backward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_backward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0`
Nbackward_simple_rnn_1_while_simple_rnn_cell_5_matmul_readvariableop_resource_0:@@]
Obackward_simple_rnn_1_while_simple_rnn_cell_5_biasadd_readvariableop_resource_0:@b
Pbackward_simple_rnn_1_while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0:@@(
$backward_simple_rnn_1_while_identity*
&backward_simple_rnn_1_while_identity_1*
&backward_simple_rnn_1_while_identity_2*
&backward_simple_rnn_1_while_identity_3*
&backward_simple_rnn_1_while_identity_4E
Abackward_simple_rnn_1_while_backward_simple_rnn_1_strided_slice_1
}backward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_backward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor^
Lbackward_simple_rnn_1_while_simple_rnn_cell_5_matmul_readvariableop_resource:@@[
Mbackward_simple_rnn_1_while_simple_rnn_cell_5_biasadd_readvariableop_resource:@`
Nbackward_simple_rnn_1_while_simple_rnn_cell_5_matmul_1_readvariableop_resource:@@ЂDbackward_simple_rnn_1/while/simple_rnn_cell_5/BiasAdd/ReadVariableOpЂCbackward_simple_rnn_1/while/simple_rnn_cell_5/MatMul/ReadVariableOpЂEbackward_simple_rnn_1/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp
Mbackward_simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџџџџџ
?backward_simple_rnn_1/while/TensorArrayV2Read/TensorListGetItemTensorListGetItembackward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_backward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0'backward_simple_rnn_1_while_placeholderVbackward_simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
element_dtype0в
Cbackward_simple_rnn_1/while/simple_rnn_cell_5/MatMul/ReadVariableOpReadVariableOpNbackward_simple_rnn_1_while_simple_rnn_cell_5_matmul_readvariableop_resource_0*
_output_shapes

:@@*
dtype0
4backward_simple_rnn_1/while/simple_rnn_cell_5/MatMulMatMulFbackward_simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem:item:0Kbackward_simple_rnn_1/while/simple_rnn_cell_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@а
Dbackward_simple_rnn_1/while/simple_rnn_cell_5/BiasAdd/ReadVariableOpReadVariableOpObackward_simple_rnn_1_while_simple_rnn_cell_5_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0
5backward_simple_rnn_1/while/simple_rnn_cell_5/BiasAddBiasAdd>backward_simple_rnn_1/while/simple_rnn_cell_5/MatMul:product:0Lbackward_simple_rnn_1/while/simple_rnn_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@ж
Ebackward_simple_rnn_1/while/simple_rnn_cell_5/MatMul_1/ReadVariableOpReadVariableOpPbackward_simple_rnn_1_while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype0ь
6backward_simple_rnn_1/while/simple_rnn_cell_5/MatMul_1MatMul)backward_simple_rnn_1_while_placeholder_2Mbackward_simple_rnn_1/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@ю
1backward_simple_rnn_1/while/simple_rnn_cell_5/addAddV2>backward_simple_rnn_1/while/simple_rnn_cell_5/BiasAdd:output:0@backward_simple_rnn_1/while/simple_rnn_cell_5/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@Ѓ
2backward_simple_rnn_1/while/simple_rnn_cell_5/TanhTanh5backward_simple_rnn_1/while/simple_rnn_cell_5/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@Ё
@backward_simple_rnn_1/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem)backward_simple_rnn_1_while_placeholder_1'backward_simple_rnn_1_while_placeholder6backward_simple_rnn_1/while/simple_rnn_cell_5/Tanh:y:0*
_output_shapes
: *
element_dtype0:щшвc
!backward_simple_rnn_1/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
backward_simple_rnn_1/while/addAddV2'backward_simple_rnn_1_while_placeholder*backward_simple_rnn_1/while/add/y:output:0*
T0*
_output_shapes
: e
#backward_simple_rnn_1/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :П
!backward_simple_rnn_1/while/add_1AddV2Dbackward_simple_rnn_1_while_backward_simple_rnn_1_while_loop_counter,backward_simple_rnn_1/while/add_1/y:output:0*
T0*
_output_shapes
: 
$backward_simple_rnn_1/while/IdentityIdentity%backward_simple_rnn_1/while/add_1:z:0!^backward_simple_rnn_1/while/NoOp*
T0*
_output_shapes
: Т
&backward_simple_rnn_1/while/Identity_1IdentityJbackward_simple_rnn_1_while_backward_simple_rnn_1_while_maximum_iterations!^backward_simple_rnn_1/while/NoOp*
T0*
_output_shapes
: 
&backward_simple_rnn_1/while/Identity_2Identity#backward_simple_rnn_1/while/add:z:0!^backward_simple_rnn_1/while/NoOp*
T0*
_output_shapes
: Ш
&backward_simple_rnn_1/while/Identity_3IdentityPbackward_simple_rnn_1/while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^backward_simple_rnn_1/while/NoOp*
T0*
_output_shapes
: П
&backward_simple_rnn_1/while/Identity_4Identity6backward_simple_rnn_1/while/simple_rnn_cell_5/Tanh:y:0!^backward_simple_rnn_1/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@З
 backward_simple_rnn_1/while/NoOpNoOpE^backward_simple_rnn_1/while/simple_rnn_cell_5/BiasAdd/ReadVariableOpD^backward_simple_rnn_1/while/simple_rnn_cell_5/MatMul/ReadVariableOpF^backward_simple_rnn_1/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
Abackward_simple_rnn_1_while_backward_simple_rnn_1_strided_slice_1Cbackward_simple_rnn_1_while_backward_simple_rnn_1_strided_slice_1_0"U
$backward_simple_rnn_1_while_identity-backward_simple_rnn_1/while/Identity:output:0"Y
&backward_simple_rnn_1_while_identity_1/backward_simple_rnn_1/while/Identity_1:output:0"Y
&backward_simple_rnn_1_while_identity_2/backward_simple_rnn_1/while/Identity_2:output:0"Y
&backward_simple_rnn_1_while_identity_3/backward_simple_rnn_1/while/Identity_3:output:0"Y
&backward_simple_rnn_1_while_identity_4/backward_simple_rnn_1/while/Identity_4:output:0" 
Mbackward_simple_rnn_1_while_simple_rnn_cell_5_biasadd_readvariableop_resourceObackward_simple_rnn_1_while_simple_rnn_cell_5_biasadd_readvariableop_resource_0"Ђ
Nbackward_simple_rnn_1_while_simple_rnn_cell_5_matmul_1_readvariableop_resourcePbackward_simple_rnn_1_while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0"
Lbackward_simple_rnn_1_while_simple_rnn_cell_5_matmul_readvariableop_resourceNbackward_simple_rnn_1_while_simple_rnn_cell_5_matmul_readvariableop_resource_0"
}backward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_backward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensorbackward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_backward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :џџџџџџџџџ@: : : : : 2
Dbackward_simple_rnn_1/while/simple_rnn_cell_5/BiasAdd/ReadVariableOpDbackward_simple_rnn_1/while/simple_rnn_cell_5/BiasAdd/ReadVariableOp2
Cbackward_simple_rnn_1/while/simple_rnn_cell_5/MatMul/ReadVariableOpCbackward_simple_rnn_1/while/simple_rnn_cell_5/MatMul/ReadVariableOp2
Ebackward_simple_rnn_1/while/simple_rnn_cell_5/MatMul_1/ReadVariableOpEbackward_simple_rnn_1/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
: 
b
Ѓ
__inference__traced_save_71898
file_prefix5
1savev2_embedding_1_embeddings_read_readvariableop-
)savev2_dense_2_kernel_read_readvariableop+
'savev2_dense_2_bias_read_readvariableop-
)savev2_dense_3_kernel_read_readvariableop+
'savev2_dense_3_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop\
Xsavev2_bidirectional_1_forward_simple_rnn_1_simple_rnn_cell_4_kernel_read_readvariableopf
bsavev2_bidirectional_1_forward_simple_rnn_1_simple_rnn_cell_4_recurrent_kernel_read_readvariableopZ
Vsavev2_bidirectional_1_forward_simple_rnn_1_simple_rnn_cell_4_bias_read_readvariableop]
Ysavev2_bidirectional_1_backward_simple_rnn_1_simple_rnn_cell_5_kernel_read_readvariableopg
csavev2_bidirectional_1_backward_simple_rnn_1_simple_rnn_cell_5_recurrent_kernel_read_readvariableop[
Wsavev2_bidirectional_1_backward_simple_rnn_1_simple_rnn_cell_5_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop<
8savev2_adam_embedding_1_embeddings_m_read_readvariableop4
0savev2_adam_dense_2_kernel_m_read_readvariableop2
.savev2_adam_dense_2_bias_m_read_readvariableop4
0savev2_adam_dense_3_kernel_m_read_readvariableop2
.savev2_adam_dense_3_bias_m_read_readvariableopc
_savev2_adam_bidirectional_1_forward_simple_rnn_1_simple_rnn_cell_4_kernel_m_read_readvariableopm
isavev2_adam_bidirectional_1_forward_simple_rnn_1_simple_rnn_cell_4_recurrent_kernel_m_read_readvariableopa
]savev2_adam_bidirectional_1_forward_simple_rnn_1_simple_rnn_cell_4_bias_m_read_readvariableopd
`savev2_adam_bidirectional_1_backward_simple_rnn_1_simple_rnn_cell_5_kernel_m_read_readvariableopn
jsavev2_adam_bidirectional_1_backward_simple_rnn_1_simple_rnn_cell_5_recurrent_kernel_m_read_readvariableopb
^savev2_adam_bidirectional_1_backward_simple_rnn_1_simple_rnn_cell_5_bias_m_read_readvariableop<
8savev2_adam_embedding_1_embeddings_v_read_readvariableop4
0savev2_adam_dense_2_kernel_v_read_readvariableop2
.savev2_adam_dense_2_bias_v_read_readvariableop4
0savev2_adam_dense_3_kernel_v_read_readvariableop2
.savev2_adam_dense_3_bias_v_read_readvariableopc
_savev2_adam_bidirectional_1_forward_simple_rnn_1_simple_rnn_cell_4_kernel_v_read_readvariableopm
isavev2_adam_bidirectional_1_forward_simple_rnn_1_simple_rnn_cell_4_recurrent_kernel_v_read_readvariableopa
]savev2_adam_bidirectional_1_forward_simple_rnn_1_simple_rnn_cell_4_bias_v_read_readvariableopd
`savev2_adam_bidirectional_1_backward_simple_rnn_1_simple_rnn_cell_5_kernel_v_read_readvariableopn
jsavev2_adam_bidirectional_1_backward_simple_rnn_1_simple_rnn_cell_5_recurrent_kernel_v_read_readvariableopb
^savev2_adam_bidirectional_1_backward_simple_rnn_1_simple_rnn_cell_5_bias_v_read_readvariableop
savev2_const

identity_1ЂMergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: Ч
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:+*
dtype0*№
valueцBу+B:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHУ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:+*
dtype0*i
value`B^+B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ъ
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:01savev2_embedding_1_embeddings_read_readvariableop)savev2_dense_2_kernel_read_readvariableop'savev2_dense_2_bias_read_readvariableop)savev2_dense_3_kernel_read_readvariableop'savev2_dense_3_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableopXsavev2_bidirectional_1_forward_simple_rnn_1_simple_rnn_cell_4_kernel_read_readvariableopbsavev2_bidirectional_1_forward_simple_rnn_1_simple_rnn_cell_4_recurrent_kernel_read_readvariableopVsavev2_bidirectional_1_forward_simple_rnn_1_simple_rnn_cell_4_bias_read_readvariableopYsavev2_bidirectional_1_backward_simple_rnn_1_simple_rnn_cell_5_kernel_read_readvariableopcsavev2_bidirectional_1_backward_simple_rnn_1_simple_rnn_cell_5_recurrent_kernel_read_readvariableopWsavev2_bidirectional_1_backward_simple_rnn_1_simple_rnn_cell_5_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop8savev2_adam_embedding_1_embeddings_m_read_readvariableop0savev2_adam_dense_2_kernel_m_read_readvariableop.savev2_adam_dense_2_bias_m_read_readvariableop0savev2_adam_dense_3_kernel_m_read_readvariableop.savev2_adam_dense_3_bias_m_read_readvariableop_savev2_adam_bidirectional_1_forward_simple_rnn_1_simple_rnn_cell_4_kernel_m_read_readvariableopisavev2_adam_bidirectional_1_forward_simple_rnn_1_simple_rnn_cell_4_recurrent_kernel_m_read_readvariableop]savev2_adam_bidirectional_1_forward_simple_rnn_1_simple_rnn_cell_4_bias_m_read_readvariableop`savev2_adam_bidirectional_1_backward_simple_rnn_1_simple_rnn_cell_5_kernel_m_read_readvariableopjsavev2_adam_bidirectional_1_backward_simple_rnn_1_simple_rnn_cell_5_recurrent_kernel_m_read_readvariableop^savev2_adam_bidirectional_1_backward_simple_rnn_1_simple_rnn_cell_5_bias_m_read_readvariableop8savev2_adam_embedding_1_embeddings_v_read_readvariableop0savev2_adam_dense_2_kernel_v_read_readvariableop.savev2_adam_dense_2_bias_v_read_readvariableop0savev2_adam_dense_3_kernel_v_read_readvariableop.savev2_adam_dense_3_bias_v_read_readvariableop_savev2_adam_bidirectional_1_forward_simple_rnn_1_simple_rnn_cell_4_kernel_v_read_readvariableopisavev2_adam_bidirectional_1_forward_simple_rnn_1_simple_rnn_cell_4_recurrent_kernel_v_read_readvariableop]savev2_adam_bidirectional_1_forward_simple_rnn_1_simple_rnn_cell_4_bias_v_read_readvariableop`savev2_adam_bidirectional_1_backward_simple_rnn_1_simple_rnn_cell_5_kernel_v_read_readvariableopjsavev2_adam_bidirectional_1_backward_simple_rnn_1_simple_rnn_cell_5_recurrent_kernel_v_read_readvariableop^savev2_adam_bidirectional_1_backward_simple_rnn_1_simple_rnn_cell_5_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *9
dtypes/
-2+	
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*Ы
_input_shapesЙ
Ж: :	Љ @:	@:@:@:: : : : : :@@:@@:@:@@:@@:@: : : : :	Љ @:	@:@:@::@@:@@:@:@@:@@:@:	Љ @:	@:@:@::@@:@@:@:@@:@@:@: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	Љ @:%!

_output_shapes
:	@: 

_output_shapes
:@:$ 

_output_shapes

:@: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: :$ 

_output_shapes

:@@:$ 

_output_shapes

:@@: 

_output_shapes
:@:$ 

_output_shapes

:@@:$ 

_output_shapes

:@@: 

_output_shapes
:@:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	Љ @:%!

_output_shapes
:	@: 

_output_shapes
:@:$ 

_output_shapes

:@: 

_output_shapes
::$ 

_output_shapes

:@@:$ 

_output_shapes

:@@: 

_output_shapes
:@:$ 

_output_shapes

:@@:$ 

_output_shapes

:@@: 

_output_shapes
:@:% !

_output_shapes
:	Љ @:%!!

_output_shapes
:	@: "

_output_shapes
:@:$# 

_output_shapes

:@: $

_output_shapes
::$% 

_output_shapes

:@@:$& 

_output_shapes

:@@: '

_output_shapes
:@:$( 

_output_shapes

:@@:$) 

_output_shapes

:@@: *

_output_shapes
:@:+

_output_shapes
: 

Д
%forward_simple_rnn_1_while_cond_69701F
Bforward_simple_rnn_1_while_forward_simple_rnn_1_while_loop_counterL
Hforward_simple_rnn_1_while_forward_simple_rnn_1_while_maximum_iterations*
&forward_simple_rnn_1_while_placeholder,
(forward_simple_rnn_1_while_placeholder_1,
(forward_simple_rnn_1_while_placeholder_2H
Dforward_simple_rnn_1_while_less_forward_simple_rnn_1_strided_slice_1]
Yforward_simple_rnn_1_while_forward_simple_rnn_1_while_cond_69701___redundant_placeholder0]
Yforward_simple_rnn_1_while_forward_simple_rnn_1_while_cond_69701___redundant_placeholder1]
Yforward_simple_rnn_1_while_forward_simple_rnn_1_while_cond_69701___redundant_placeholder2]
Yforward_simple_rnn_1_while_forward_simple_rnn_1_while_cond_69701___redundant_placeholder3'
#forward_simple_rnn_1_while_identity
Ж
forward_simple_rnn_1/while/LessLess&forward_simple_rnn_1_while_placeholderDforward_simple_rnn_1_while_less_forward_simple_rnn_1_strided_slice_1*
T0*
_output_shapes
: u
#forward_simple_rnn_1/while/IdentityIdentity#forward_simple_rnn_1/while/Less:z:0*
T0
*
_output_shapes
: "S
#forward_simple_rnn_1_while_identity,forward_simple_rnn_1/while/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :џџџџџџџџџ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
:
х 
Ъ
while_body_67251
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_01
while_simple_rnn_cell_5_67273_0:@@-
while_simple_rnn_cell_5_67275_0:@1
while_simple_rnn_cell_5_67277_0:@@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor/
while_simple_rnn_cell_5_67273:@@+
while_simple_rnn_cell_5_67275:@/
while_simple_rnn_cell_5_67277:@@Ђ/while/simple_rnn_cell_5/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ@*
element_dtype0
/while/simple_rnn_cell_5/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_simple_rnn_cell_5_67273_0while_simple_rnn_cell_5_67275_0while_simple_rnn_cell_5_67277_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:џџџџџџџџџ@:џџџџџџџџџ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_simple_rnn_cell_5_layer_call_and_return_conditional_losses_67238с
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder8while/simple_rnn_cell_5/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_4Identity8while/simple_rnn_cell_5/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@~

while/NoOpNoOp0^while/simple_rnn_cell_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"@
while_simple_rnn_cell_5_67273while_simple_rnn_cell_5_67273_0"@
while_simple_rnn_cell_5_67275while_simple_rnn_cell_5_67275_0"@
while_simple_rnn_cell_5_67277while_simple_rnn_cell_5_67277_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :џџџџџџџџџ@: : : : : 2b
/while/simple_rnn_cell_5/StatefulPartitionedCall/while/simple_rnn_cell_5/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
: 
Х	
ѓ
B__inference_dense_3_layer_call_and_return_conditional_losses_70665

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs
Љ,
Ч
while_body_71229
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0J
8while_simple_rnn_cell_5_matmul_readvariableop_resource_0:@@G
9while_simple_rnn_cell_5_biasadd_readvariableop_resource_0:@L
:while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0:@@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorH
6while_simple_rnn_cell_5_matmul_readvariableop_resource:@@E
7while_simple_rnn_cell_5_biasadd_readvariableop_resource:@J
8while_simple_rnn_cell_5_matmul_1_readvariableop_resource:@@Ђ.while/simple_rnn_cell_5/BiasAdd/ReadVariableOpЂ-while/simple_rnn_cell_5/MatMul/ReadVariableOpЂ/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ@*
element_dtype0І
-while/simple_rnn_cell_5/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_5_matmul_readvariableop_resource_0*
_output_shapes

:@@*
dtype0У
while/simple_rnn_cell_5/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@Є
.while/simple_rnn_cell_5/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_5_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0О
while/simple_rnn_cell_5/BiasAddBiasAdd(while/simple_rnn_cell_5/MatMul:product:06while/simple_rnn_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@Њ
/while/simple_rnn_cell_5/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype0Њ
 while/simple_rnn_cell_5/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@Ќ
while/simple_rnn_cell_5/addAddV2(while/simple_rnn_cell_5/BiasAdd:output:0*while/simple_rnn_cell_5/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@w
while/simple_rnn_cell_5/TanhTanhwhile/simple_rnn_cell_5/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@Щ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder while/simple_rnn_cell_5/Tanh:y:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: }
while/Identity_4Identity while/simple_rnn_cell_5/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@п

while/NoOpNoOp/^while/simple_rnn_cell_5/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_5/MatMul/ReadVariableOp0^while/simple_rnn_cell_5/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_5_biasadd_readvariableop_resource9while_simple_rnn_cell_5_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_5_matmul_1_readvariableop_resource:while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_5_matmul_readvariableop_resource8while_simple_rnn_cell_5_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :џџџџџџџџџ@: : : : : 2`
.while/simple_rnn_cell_5/BiasAdd/ReadVariableOp.while/simple_rnn_cell_5/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_5/MatMul/ReadVariableOp-while/simple_rnn_cell_5/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
: 
е
Ѕ
while_cond_67927
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_67927___redundant_placeholder03
/while_while_cond_67927___redundant_placeholder13
/while_while_cond_67927___redundant_placeholder23
/while_while_cond_67927___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :џџџџџџџџџ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
:"L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*Ч
serving_defaultГ
X
embedding_1_inputC
#serving_default_embedding_1_input:0џџџџџџџџџџџџџџџџџџ;
dense_30
StatefulPartitionedCall:0џџџџџџџџџtensorflow/serving/predict:Дж

layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
	optimizer
	variables
trainable_variables
regularization_losses
		keras_api


signatures
__call__
+&call_and_return_all_conditional_losses
_default_save_signature"
_tf_keras_sequential
З

embeddings
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
Ю
forward_layer
backward_layer
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
Н

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
Н

kernel
bias
	variables
trainable_variables
 regularization_losses
!	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
Њ
"iter

#beta_1

$beta_2
	%decay
&learning_ratem{m|m}m~m'm(m)m*m+m,mvvvvv'v(v)v*v+v,v"
	optimizer
n
0
'1
(2
)3
*4
+5
,6
7
8
9
10"
trackable_list_wrapper
n
0
'1
(2
)3
*4
+5
,6
7
8
9
10"
trackable_list_wrapper
 "
trackable_list_wrapper
Ю
-non_trainable_variables

.layers
/metrics
0layer_regularization_losses
1layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
-
serving_default"
signature_map
):'	Љ @2embedding_1/embeddings
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
А
2non_trainable_variables

3layers
4metrics
5layer_regularization_losses
6layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
Х
7cell
8
state_spec
9	variables
:trainable_variables
;regularization_losses
<	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
Х
=cell
>
state_spec
?	variables
@trainable_variables
Aregularization_losses
B	keras_api
__call__
+ &call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
J
'0
(1
)2
*3
+4
,5"
trackable_list_wrapper
J
'0
(1
)2
*3
+4
,5"
trackable_list_wrapper
 "
trackable_list_wrapper
А
Cnon_trainable_variables

Dlayers
Emetrics
Flayer_regularization_losses
Glayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
!:	@2dense_2/kernel
:@2dense_2/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
А
Hnon_trainable_variables

Ilayers
Jmetrics
Klayer_regularization_losses
Llayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 :@2dense_3/kernel
:2dense_3/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
А
Mnon_trainable_variables

Nlayers
Ometrics
Player_regularization_losses
Qlayer_metrics
	variables
trainable_variables
 regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
O:M@@2=bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/kernel
Y:W@@2Gbidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/recurrent_kernel
I:G@2;bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/bias
P:N@@2>bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/kernel
Z:X@@2Hbidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/recurrent_kernel
J:H@2<bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/bias
 "
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
.
R0
S1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
г

'kernel
(recurrent_kernel
)bias
T	variables
Utrainable_variables
Vregularization_losses
W	keras_api
Ё__call__
+Ђ&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
5
'0
(1
)2"
trackable_list_wrapper
5
'0
(1
)2"
trackable_list_wrapper
 "
trackable_list_wrapper
М

Xstates
Ynon_trainable_variables

Zlayers
[metrics
\layer_regularization_losses
]layer_metrics
9	variables
:trainable_variables
;regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
г

*kernel
+recurrent_kernel
,bias
^	variables
_trainable_variables
`regularization_losses
a	keras_api
Ѓ__call__
+Є&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
5
*0
+1
,2"
trackable_list_wrapper
5
*0
+1
,2"
trackable_list_wrapper
 "
trackable_list_wrapper
М

bstates
cnon_trainable_variables

dlayers
emetrics
flayer_regularization_losses
glayer_metrics
?	variables
@trainable_variables
Aregularization_losses
__call__
+ &call_and_return_all_conditional_losses
' "call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
N
	htotal
	icount
j	variables
k	keras_api"
_tf_keras_metric
^
	ltotal
	mcount
n
_fn_kwargs
o	variables
p	keras_api"
_tf_keras_metric
5
'0
(1
)2"
trackable_list_wrapper
5
'0
(1
)2"
trackable_list_wrapper
 "
trackable_list_wrapper
А
qnon_trainable_variables

rlayers
smetrics
tlayer_regularization_losses
ulayer_metrics
T	variables
Utrainable_variables
Vregularization_losses
Ё__call__
+Ђ&call_and_return_all_conditional_losses
'Ђ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
70"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
5
*0
+1
,2"
trackable_list_wrapper
5
*0
+1
,2"
trackable_list_wrapper
 "
trackable_list_wrapper
А
vnon_trainable_variables

wlayers
xmetrics
ylayer_regularization_losses
zlayer_metrics
^	variables
_trainable_variables
`regularization_losses
Ѓ__call__
+Є&call_and_return_all_conditional_losses
'Є"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
=0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
:  (2total
:  (2count
.
h0
i1"
trackable_list_wrapper
-
j	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
l0
m1"
trackable_list_wrapper
-
o	variables"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.:,	Љ @2Adam/embedding_1/embeddings/m
&:$	@2Adam/dense_2/kernel/m
:@2Adam/dense_2/bias/m
%:#@2Adam/dense_3/kernel/m
:2Adam/dense_3/bias/m
T:R@@2DAdam/bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/kernel/m
^:\@@2NAdam/bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/recurrent_kernel/m
N:L@2BAdam/bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/bias/m
U:S@@2EAdam/bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/kernel/m
_:]@@2OAdam/bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/recurrent_kernel/m
O:M@2CAdam/bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/bias/m
.:,	Љ @2Adam/embedding_1/embeddings/v
&:$	@2Adam/dense_2/kernel/v
:@2Adam/dense_2/bias/v
%:#@2Adam/dense_3/kernel/v
:2Adam/dense_3/bias/v
T:R@@2DAdam/bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/kernel/v
^:\@@2NAdam/bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/recurrent_kernel/v
N:L@2BAdam/bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/bias/v
U:S@@2EAdam/bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/kernel/v
_:]@@2OAdam/bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/recurrent_kernel/v
O:M@2CAdam/bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/bias/v
ў2ћ
,__inference_sequential_1_layer_call_fn_68402
,__inference_sequential_1_layer_call_fn_68972
,__inference_sequential_1_layer_call_fn_68999
,__inference_sequential_1_layer_call_fn_68846Р
ЗВГ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
ъ2ч
G__inference_sequential_1_layer_call_and_return_conditional_losses_69286
G__inference_sequential_1_layer_call_and_return_conditional_losses_69573
G__inference_sequential_1_layer_call_and_return_conditional_losses_68878
G__inference_sequential_1_layer_call_and_return_conditional_losses_68910Р
ЗВГ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
еBв
 __inference__wrapped_model_66896embedding_1_input"
В
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
е2в
+__inference_embedding_1_layer_call_fn_69580Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
№2э
F__inference_embedding_1_layer_call_and_return_conditional_losses_69590Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
А2­
/__inference_bidirectional_1_layer_call_fn_69607
/__inference_bidirectional_1_layer_call_fn_69624
/__inference_bidirectional_1_layer_call_fn_69642
/__inference_bidirectional_1_layer_call_fn_69660ц
нВй
FullArgSpecO
argsGD
jself
jinputs

jtraining
jmask
jinitial_state
j	constants
varargs
 
varkw
 
defaults
p 

 

 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
2
J__inference_bidirectional_1_layer_call_and_return_conditional_losses_69876
J__inference_bidirectional_1_layer_call_and_return_conditional_losses_70092
J__inference_bidirectional_1_layer_call_and_return_conditional_losses_70359
J__inference_bidirectional_1_layer_call_and_return_conditional_losses_70626ц
нВй
FullArgSpecO
argsGD
jself
jinputs

jtraining
jmask
jinitial_state
j	constants
varargs
 
varkw
 
defaults
p 

 

 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
б2Ю
'__inference_dense_2_layer_call_fn_70635Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ь2щ
B__inference_dense_2_layer_call_and_return_conditional_losses_70646Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
б2Ю
'__inference_dense_3_layer_call_fn_70655Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ь2щ
B__inference_dense_3_layer_call_and_return_conditional_losses_70665Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
дBб
#__inference_signature_wrapper_68945embedding_1_input"
В
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
Г2А
4__inference_forward_simple_rnn_1_layer_call_fn_70676
4__inference_forward_simple_rnn_1_layer_call_fn_70687
4__inference_forward_simple_rnn_1_layer_call_fn_70698
4__inference_forward_simple_rnn_1_layer_call_fn_70709е
ЬВШ
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
2
O__inference_forward_simple_rnn_1_layer_call_and_return_conditional_losses_70817
O__inference_forward_simple_rnn_1_layer_call_and_return_conditional_losses_70925
O__inference_forward_simple_rnn_1_layer_call_and_return_conditional_losses_71033
O__inference_forward_simple_rnn_1_layer_call_and_return_conditional_losses_71141е
ЬВШ
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
З2Д
5__inference_backward_simple_rnn_1_layer_call_fn_71152
5__inference_backward_simple_rnn_1_layer_call_fn_71163
5__inference_backward_simple_rnn_1_layer_call_fn_71174
5__inference_backward_simple_rnn_1_layer_call_fn_71185е
ЬВШ
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
Ѓ2 
P__inference_backward_simple_rnn_1_layer_call_and_return_conditional_losses_71295
P__inference_backward_simple_rnn_1_layer_call_and_return_conditional_losses_71405
P__inference_backward_simple_rnn_1_layer_call_and_return_conditional_losses_71515
P__inference_backward_simple_rnn_1_layer_call_and_return_conditional_losses_71625е
ЬВШ
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
Њ2Ї
1__inference_simple_rnn_cell_4_layer_call_fn_71639
1__inference_simple_rnn_cell_4_layer_call_fn_71653О
ЕВБ
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
р2н
L__inference_simple_rnn_cell_4_layer_call_and_return_conditional_losses_71670
L__inference_simple_rnn_cell_4_layer_call_and_return_conditional_losses_71687О
ЕВБ
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
Њ2Ї
1__inference_simple_rnn_cell_5_layer_call_fn_71701
1__inference_simple_rnn_cell_5_layer_call_fn_71715О
ЕВБ
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
р2н
L__inference_simple_rnn_cell_5_layer_call_and_return_conditional_losses_71732
L__inference_simple_rnn_cell_5_layer_call_and_return_conditional_losses_71749О
ЕВБ
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 Њ
 __inference__wrapped_model_66896')(*,+CЂ@
9Ђ6
41
embedding_1_inputџџџџџџџџџџџџџџџџџџ
Њ "1Њ.
,
dense_3!
dense_3џџџџџџџџџб
P__inference_backward_simple_rnn_1_layer_call_and_return_conditional_losses_71295}*,+OЂL
EЂB
41
/,
inputs/0џџџџџџџџџџџџџџџџџџ@

 
p 

 
Њ "%Ђ"

0џџџџџџџџџ@
 б
P__inference_backward_simple_rnn_1_layer_call_and_return_conditional_losses_71405}*,+OЂL
EЂB
41
/,
inputs/0џџџџџџџџџџџџџџџџџџ@

 
p

 
Њ "%Ђ"

0џџџџџџџџџ@
 г
P__inference_backward_simple_rnn_1_layer_call_and_return_conditional_losses_71515*,+QЂN
GЂD
63
inputs'џџџџџџџџџџџџџџџџџџџџџџџџџџџ

 
p 

 
Њ "%Ђ"

0џџџџџџџџџ@
 г
P__inference_backward_simple_rnn_1_layer_call_and_return_conditional_losses_71625*,+QЂN
GЂD
63
inputs'џџџџџџџџџџџџџџџџџџџџџџџџџџџ

 
p

 
Њ "%Ђ"

0џџџџџџџџџ@
 Љ
5__inference_backward_simple_rnn_1_layer_call_fn_71152p*,+OЂL
EЂB
41
/,
inputs/0џџџџџџџџџџџџџџџџџџ@

 
p 

 
Њ "џџџџџџџџџ@Љ
5__inference_backward_simple_rnn_1_layer_call_fn_71163p*,+OЂL
EЂB
41
/,
inputs/0џџџџџџџџџџџџџџџџџџ@

 
p

 
Њ "џџџџџџџџџ@Ћ
5__inference_backward_simple_rnn_1_layer_call_fn_71174r*,+QЂN
GЂD
63
inputs'џџџџџџџџџџџџџџџџџџџџџџџџџџџ

 
p 

 
Њ "џџџџџџџџџ@Ћ
5__inference_backward_simple_rnn_1_layer_call_fn_71185r*,+QЂN
GЂD
63
inputs'џџџџџџџџџџџџџџџџџџџџџџџџџџџ

 
p

 
Њ "џџџџџџџџџ@н
J__inference_bidirectional_1_layer_call_and_return_conditional_losses_69876')(*,+\ЂY
RЂO
=:
85
inputs/0'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
p 

 

 

 
Њ "&Ђ#

0џџџџџџџџџ
 н
J__inference_bidirectional_1_layer_call_and_return_conditional_losses_70092')(*,+\ЂY
RЂO
=:
85
inputs/0'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
p

 

 

 
Њ "&Ђ#

0џџџџџџџџџ
 ђ
J__inference_bidirectional_1_layer_call_and_return_conditional_losses_70359Ѓ')(*,+qЂn
gЂd
-*
inputsџџџџџџџџџџџџџџџџџџ@
p 
'$
maskџџџџџџџџџџџџџџџџџџ


 

 
Њ "&Ђ#

0џџџџџџџџџ
 ђ
J__inference_bidirectional_1_layer_call_and_return_conditional_losses_70626Ѓ')(*,+qЂn
gЂd
-*
inputsџџџџџџџџџџџџџџџџџџ@
p
'$
maskџџџџџџџџџџџџџџџџџџ


 

 
Њ "&Ђ#

0џџџџџџџџџ
 Е
/__inference_bidirectional_1_layer_call_fn_69607')(*,+\ЂY
RЂO
=:
85
inputs/0'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
p 

 

 

 
Њ "џџџџџџџџџЕ
/__inference_bidirectional_1_layer_call_fn_69624')(*,+\ЂY
RЂO
=:
85
inputs/0'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
p

 

 

 
Њ "џџџџџџџџџЪ
/__inference_bidirectional_1_layer_call_fn_69642')(*,+qЂn
gЂd
-*
inputsџџџџџџџџџџџџџџџџџџ@
p 
'$
maskџџџџџџџџџџџџџџџџџџ


 

 
Њ "џџџџџџџџџЪ
/__inference_bidirectional_1_layer_call_fn_69660')(*,+qЂn
gЂd
-*
inputsџџџџџџџџџџџџџџџџџџ@
p
'$
maskџџџџџџџџџџџџџџџџџџ


 

 
Њ "џџџџџџџџџЃ
B__inference_dense_2_layer_call_and_return_conditional_losses_70646]0Ђ-
&Ђ#
!
inputsџџџџџџџџџ
Њ "%Ђ"

0џџџџџџџџџ@
 {
'__inference_dense_2_layer_call_fn_70635P0Ђ-
&Ђ#
!
inputsџџџџџџџџџ
Њ "џџџџџџџџџ@Ђ
B__inference_dense_3_layer_call_and_return_conditional_losses_70665\/Ђ,
%Ђ"
 
inputsџџџџџџџџџ@
Њ "%Ђ"

0џџџџџџџџџ
 z
'__inference_dense_3_layer_call_fn_70655O/Ђ,
%Ђ"
 
inputsџџџџџџџџџ@
Њ "џџџџџџџџџЛ
F__inference_embedding_1_layer_call_and_return_conditional_losses_69590q8Ђ5
.Ђ+
)&
inputsџџџџџџџџџџџџџџџџџџ
Њ "2Ђ/
(%
0џџџџџџџџџџџџџџџџџџ@
 
+__inference_embedding_1_layer_call_fn_69580d8Ђ5
.Ђ+
)&
inputsџџџџџџџџџџџџџџџџџџ
Њ "%"џџџџџџџџџџџџџџџџџџ@а
O__inference_forward_simple_rnn_1_layer_call_and_return_conditional_losses_70817}')(OЂL
EЂB
41
/,
inputs/0џџџџџџџџџџџџџџџџџџ@

 
p 

 
Њ "%Ђ"

0џџџџџџџџџ@
 а
O__inference_forward_simple_rnn_1_layer_call_and_return_conditional_losses_70925}')(OЂL
EЂB
41
/,
inputs/0џџџџџџџџџџџџџџџџџџ@

 
p

 
Њ "%Ђ"

0џџџџџџџџџ@
 в
O__inference_forward_simple_rnn_1_layer_call_and_return_conditional_losses_71033')(QЂN
GЂD
63
inputs'џџџџџџџџџџџџџџџџџџџџџџџџџџџ

 
p 

 
Њ "%Ђ"

0џџџџџџџџџ@
 в
O__inference_forward_simple_rnn_1_layer_call_and_return_conditional_losses_71141')(QЂN
GЂD
63
inputs'џџџџџџџџџџџџџџџџџџџџџџџџџџџ

 
p

 
Њ "%Ђ"

0џџџџџџџџџ@
 Ј
4__inference_forward_simple_rnn_1_layer_call_fn_70676p')(OЂL
EЂB
41
/,
inputs/0џџџџџџџџџџџџџџџџџџ@

 
p 

 
Њ "џџџџџџџџџ@Ј
4__inference_forward_simple_rnn_1_layer_call_fn_70687p')(OЂL
EЂB
41
/,
inputs/0џџџџџџџџџџџџџџџџџџ@

 
p

 
Њ "џџџџџџџџџ@Њ
4__inference_forward_simple_rnn_1_layer_call_fn_70698r')(QЂN
GЂD
63
inputs'џџџџџџџџџџџџџџџџџџџџџџџџџџџ

 
p 

 
Њ "џџџџџџџџџ@Њ
4__inference_forward_simple_rnn_1_layer_call_fn_70709r')(QЂN
GЂD
63
inputs'џџџџџџџџџџџџџџџџџџџџџџџџџџџ

 
p

 
Њ "џџџџџџџџџ@Э
G__inference_sequential_1_layer_call_and_return_conditional_losses_68878')(*,+KЂH
AЂ>
41
embedding_1_inputџџџџџџџџџџџџџџџџџџ
p 

 
Њ "%Ђ"

0џџџџџџџџџ
 Э
G__inference_sequential_1_layer_call_and_return_conditional_losses_68910')(*,+KЂH
AЂ>
41
embedding_1_inputџџџџџџџџџџџџџџџџџџ
p

 
Њ "%Ђ"

0џџџџџџџџџ
 С
G__inference_sequential_1_layer_call_and_return_conditional_losses_69286v')(*,+@Ђ=
6Ђ3
)&
inputsџџџџџџџџџџџџџџџџџџ
p 

 
Њ "%Ђ"

0џџџџџџџџџ
 С
G__inference_sequential_1_layer_call_and_return_conditional_losses_69573v')(*,+@Ђ=
6Ђ3
)&
inputsџџџџџџџџџџџџџџџџџџ
p

 
Њ "%Ђ"

0џџџџџџџџџ
 Є
,__inference_sequential_1_layer_call_fn_68402t')(*,+KЂH
AЂ>
41
embedding_1_inputџџџџџџџџџџџџџџџџџџ
p 

 
Њ "џџџџџџџџџЄ
,__inference_sequential_1_layer_call_fn_68846t')(*,+KЂH
AЂ>
41
embedding_1_inputџџџџџџџџџџџџџџџџџџ
p

 
Њ "џџџџџџџџџ
,__inference_sequential_1_layer_call_fn_68972i')(*,+@Ђ=
6Ђ3
)&
inputsџџџџџџџџџџџџџџџџџџ
p 

 
Њ "џџџџџџџџџ
,__inference_sequential_1_layer_call_fn_68999i')(*,+@Ђ=
6Ђ3
)&
inputsџџџџџџџџџџџџџџџџџџ
p

 
Њ "џџџџџџџџџТ
#__inference_signature_wrapper_68945')(*,+XЂU
Ђ 
NЊK
I
embedding_1_input41
embedding_1_inputџџџџџџџџџџџџџџџџџџ"1Њ.
,
dense_3!
dense_3џџџџџџџџџ
L__inference_simple_rnn_cell_4_layer_call_and_return_conditional_losses_71670З')(\ЂY
RЂO
 
inputsџџџџџџџџџ@
'Ђ$
"
states/0џџџџџџџџџ@
p 
Њ "RЂO
HЂE

0/0џџџџџџџџџ@
$!

0/1/0џџџџџџџџџ@
 
L__inference_simple_rnn_cell_4_layer_call_and_return_conditional_losses_71687З')(\ЂY
RЂO
 
inputsџџџџџџџџџ@
'Ђ$
"
states/0џџџџџџџџџ@
p
Њ "RЂO
HЂE

0/0џџџџџџџџџ@
$!

0/1/0џџџџџџџџџ@
 п
1__inference_simple_rnn_cell_4_layer_call_fn_71639Љ')(\ЂY
RЂO
 
inputsџџџџџџџџџ@
'Ђ$
"
states/0џџџџџџџџџ@
p 
Њ "DЂA

0џџџџџџџџџ@
"

1/0џџџџџџџџџ@п
1__inference_simple_rnn_cell_4_layer_call_fn_71653Љ')(\ЂY
RЂO
 
inputsџџџџџџџџџ@
'Ђ$
"
states/0џџџџџџџџџ@
p
Њ "DЂA

0џџџџџџџџџ@
"

1/0џџџџџџџџџ@
L__inference_simple_rnn_cell_5_layer_call_and_return_conditional_losses_71732З*,+\ЂY
RЂO
 
inputsџџџџџџџџџ@
'Ђ$
"
states/0џџџџџџџџџ@
p 
Њ "RЂO
HЂE

0/0џџџџџџџџџ@
$!

0/1/0џџџџџџџџџ@
 
L__inference_simple_rnn_cell_5_layer_call_and_return_conditional_losses_71749З*,+\ЂY
RЂO
 
inputsџџџџџџџџџ@
'Ђ$
"
states/0џџџџџџџџџ@
p
Њ "RЂO
HЂE

0/0џџџџџџџџџ@
$!

0/1/0џџџџџџџџџ@
 п
1__inference_simple_rnn_cell_5_layer_call_fn_71701Љ*,+\ЂY
RЂO
 
inputsџџџџџџџџџ@
'Ђ$
"
states/0џџџџџџџџџ@
p 
Њ "DЂA

0џџџџџџџџџ@
"

1/0џџџџџџџџџ@п
1__inference_simple_rnn_cell_5_layer_call_fn_71715Љ*,+\ЂY
RЂO
 
inputsџџџџџџџџџ@
'Ђ$
"
states/0џџџџџџџџџ@
p
Њ "DЂA

0џџџџџџџџџ@
"

1/0џџџџџџџџџ@