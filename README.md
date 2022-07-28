# Non-linear-control-techniques-on-Richardson-arms-race-model-with-a-carrying-capacity
The purpose of this study is the implementation of one of the best known mathematical models in the war sector: "Richardson Arms Race Model". Richiardson was a physicist who served for the French medical corps during the First World War, shocked by the events of the war, he created a model that could predict the arms race between nations close to conflict, analyzing how the accumulation of arms of one country influences the accumulation of arms of the other. This work will focus on a variation of Richiardson's original model, in fact it will also take into consideration budget constraints to be respected.
\ subsection {Mathematical model}
The model in question considers 2 nations $ X_1 $ and $ X_2 $ that decide to vary their military expenses ($ x_1 $ and $ x_2 $) according to the following equations:
\ begin {equation}
\ begin {cases}
     \ dot {x_1} = (1- \ frac {x_1} {x_ {1max}}) (ax_2-mx_1 + r) \\
     \ dot {x_2} = (1- \ frac {x_2} {x_ {2max}}) (bx_1-nx_2 + s)
\ end {cases}
\ end {equation}
Where is it:
