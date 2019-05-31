This is the Simulink model used in:

Chambers JD, Bornstein JC, Thomas EA (2011) Multiple Neural
Oscillators and Muscle Feedback Are Required for the Intestinal Fed
State Motor Program. PLoS ONE 6(5):e19597.
doi:10.1371/journal.pone.0019597

To run the model, in MATLAB click File->Open, then selected the file
"Chambers et al 2010.mdl". Then press play.

The numerical values are set to produce the "control response"
described in the paper. Changing the appropriate variables will
produce all model figures in the paper.

When the model is run it saves matrixes (Circular_Muscle,
Excitatory_Motor_Neurons, Inhbitory_Motor_Neurons, Sensory_Neurons,
Serotonin_release) in the MATLAB workspace. Each matrix has two
columns, the first column is the simulation time for each data point
and the second column is the numerical value of the activity in the
population of neurons, or muscle etc. These matrices can be plotted
using the MATLAB plot function to reproduce the figures in the
paper. The Circular_Muscle matrix can be passed to the muscleresponse
function (e.g. muscleresponse(Circular_Muscle)) and this function will
calculate the duration of the activity episodes and quiescent periods
as reported in the paper.
