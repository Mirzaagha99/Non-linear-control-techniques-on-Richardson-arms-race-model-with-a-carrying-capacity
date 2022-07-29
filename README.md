# Non-linear-control-techniques-on-Richardson-arms-race-model-with-a-carrying-capacity


This model analyzes how in a war scenario, the accumulation of weapons of one state $𝑋_1$ influences the accumulation of weapons of the other state $𝑋_2$. The equations that describe the model are:


The model in question considers 2 nations $𝑋_1$ and $𝑋_2$ that decide to vary their military expenses ($𝑥_1$ and $𝑥_2$).
- The dimensionless positive constants $a$ and $b$ represent the "fear" that countries 𝑋_1 and 𝑋_2 feel towards the other country.
- The dimensionless positive constants m and n indicate the "reluctance" of countries to invest in the military sector.
- The "resentment / friendliness" or the r and s variables can be positive or negative, they reflect the hostile or peaceful character of one country towards the other country.
- $𝒙_{𝟏𝒎𝒂𝒙}$ and $𝒙_{𝟐𝒎𝒂𝒙}$ are constants that represent the budget constraints imposed on armaments $𝑋_1$ and $𝑋_2$

In order to carry out the analysis and control of the system, the variables representing resentment / friendliness will be considered as inputs to the system. Since this variable is conceptually a "reciprocal" behavior, it may be reasonable to assume that $r = s$ (conceptually it means that the two countries feel the same estimate for each other). So with the assumptions asserted, the model becomes
<p align="center">
 <img src="https://user-images.githubusercontent.com/101321796/181657131-0ac9b3f6-7264-409e-b5f1-b7d777609bba.jpg" width=30% height=30%>
 
 

The values ​​of the parameters chosen are a = 1, b = 2, m = 0.5, n = 0.2, $𝒙_{𝟏𝒎𝒂𝒙}$ = 5 and $𝒙_{𝟐𝒎𝒂𝒙}$ = 10
With the chosen parameters, 2 equilibrium points are obtained in (0,0) and (5,10). It is interesting to understand how as the parameter b changes, both the number of equilibrium points and their nature can change.
Using the Matlab solve command, we obtain that for b≤0.4, it admits a new equilibrium point.
Below is a table that summarizes how as b changes, the nature of the equilibrium point changes
The results obtained are completely consistent with what was obtained with Pplane


<p align="center">
 <img src="https://user-images.githubusercontent.com/101321796/181716911-ca91e8c1-c98d-4c7a-9bd3-c8f258bf45ba.jpg" width=50% height=50%>
 
 
Portrait of the phases for b = 0.05, the equilibrium points are (0,0); (5,10); (5,1.25)
<p align="center">  
 <img src="https://user-images.githubusercontent.com/101321796/181657133-5ded3068-9bf6-47b5-bd30-fd7777360589.jpg" width=50% height=50%> 
 
 
 


Portrait of the phases for b = 0.2, the equilibrium points are (0,0); (5,10); (5,5)
<p align="center">
 <img src="https://user-images.githubusercontent.com/101321796/181657136-148fe4a0-57cf-4f13-8eac-854d12b76632.jpg" width=50% height=50%>
 

Portrait of the phases for b = 2 the equilibrium points are (0,0); (5,10);
<p align="center">
 <img src="https://user-images.githubusercontent.com/101321796/181657137-bc150eb9-1cb1-4ec5-b454-35e64f80c352.jpg" width=50% height=50%> 


For all the values of b, it is easy to deduce that the system does not admit limit cycles, because the Poincarè theorem is not respected, in fact N ≠ S + 1 where N is the number of foci, nodes, repulsors and centers and S the number of saddles;
As the parameter a changes, a new equilibrium point is added for a ≤1 / 4. In the following table the equilibrium points are classified as a varies
for a = 1/20 the first equilibrium point goes from stable knot to saddle, while the third equilibrium point does the opposite
for a = 1/4 the second equilibrium point goes from saddle to stable node, while the third equilibrium point does the opposite.
The inversion of stability of 2 equilibrium points at a given value a * is a typical behavior of transcritical bifurcations. By performing the simulation on Matcont, 2 bifurcations are reported to us in correspondence with the values ​​of a indicated above
 
<p align="center">
 <img src="https://user-images.githubusercontent.com/101321796/181717448-4812ab81-2780-4626-9ff8-6476fd04a123.jpg" width=50% height=50%>
 
 

 
 
<p align="center"> 
 <img src="https://user-images.githubusercontent.com/101321796/181657140-bcf3dbb6-5f81-4bb9-94b0-ced72a9e3a4e.jpg" width=40% height=40%>






The purpose of the control design is to bring state X1's military spending to a sustained and constant value of € 1 billion.
- We linearize around the equilibrium point (0,0).
- LQ control with integrator with Q = [10000,1,10000] and R = 1
- The reference is 1
- We apply parametric variation of 10%
- A disturbance of dimension -0.3 is introduced at instant 10.
- The response is able to reach full speed in about 4s with zero error and without percentage overshoot


<p align="center">
 <img src="https://user-images.githubusercontent.com/101321796/181657143-b73ab500-1341-4aa8-a494-570c62ead0a1.jpg" width=50% height=50%>
 
<p align="center">
 <img src="https://user-images.githubusercontent.com/101321796/181657145-fbc71646-01c3-415e-9751-15adcb9d6175.jpg" width=60% height=60%>
 



Validation of the LQ controller on the non-linear model
<p align="center">
 <img src="https://user-images.githubusercontent.com/101321796/181657146-713458c5-9ee0-4c08-8d04-8c6cc066315d.jpg" width=50% height=50%>
 
<p align="center">
 <img src="https://user-images.githubusercontent.com/101321796/181657147-88a6f694-b1a3-430c-9add-814daeb08644.jpg" width=60% height=60%>
 

- More specific control for non-linear systems
- Presence of an internal dynamic on x2
- The problem with I / O FBL is robustness
<p align="center">
 <img src="https://user-images.githubusercontent.com/101321796/181657149-a2562340-eeb7-4bb6-bd12-5472c0633148.jpg" width=50% height=50%>

 
 
<p align="center">
 <img src="https://user-images.githubusercontent.com/101321796/181657150-8c7b2296-8a35-4949-a8be-2dbb4957485b.jpg" width=60% height=60%>
 
 

- This method solves the problems of parmatric disturbances and variation.
- Earnings 𝑘_𝑝 = 20 𝑒 𝑘_𝑖 = 10
<p align="center">
 <img src="https://user-images.githubusercontent.com/101321796/181657153-4606374f-c32e-4032-81a1-d372de1cbe04.jpg" width=50% height=50%>

<p align="center">
 <img src="https://user-images.githubusercontent.com/101321796/181657154-d642fd21-f4de-4a4b-8df1-369e9802b253.jpg" width=60% height=60%>

This model is one of the most famous in the military field, because it allows, with a small number of parameters, to predict in a realistic way the war expenses due to conflicts between states.
All controls gave similar results, but the FBL I / O proved to be the least robust to noise and parametric variations.

 One of the difficulties present in this model is the presence of budget constraints, because this leads to the presence of new equilibrium points as the parameters vary

Obviously this model is subject to some limits, due to the level of abstraction with which the analysis is being carried out, in fact neither some military aspects are taken into consideration, such as the possibility that other states may intervene during the conflict, nor other aspects. economic such as: inflation, economic sanctions imposed by other states or suspensions of trade agreements.


 The events that involved Russia, Ukraine and NATO in 2022 highlight how the issues dealt with in this paper are still current and through a serious and in-depth study it is possible to increase the understanding of these phenomena and prevent catastrophic events.

All simulink schemes are present in the "simulink_scheme" file, before simulating the schemes it is important to run the "linearized.m" file
The analysis on the equilibrium points and on the open loop system are present in the file: "main.m".
The bifurcation analysis is present in the file: "bifurcation.m"
