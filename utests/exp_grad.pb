
8
input_0Placeholder*
dtype0*
shape
:
!
output_0Expinput_0*
T0
:
	grad_ys_0Placeholder*
dtype0*
shape
:
3
gradients/grad_ys_0Identity	grad_ys_0*
T0
M
gradients/output_0_grad/ConjConjoutput_0^gradients/grad_ys_0*
T0
^
gradients/output_0_grad/mulMulgradients/grad_ys_0gradients/output_0_grad/Conj*
T0
R
grad_0_0/tensorPackgradients/output_0_grad/mul*
N*
T0*

axis 
C
grad_0_0/shapeConst*
dtype0*
valueB"      
K
grad_0_0Reshapegrad_0_0/tensorgrad_0_0/shape*
T0*
Tshape0"�