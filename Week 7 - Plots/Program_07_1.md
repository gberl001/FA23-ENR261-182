# Program\_07\_1
## Requirements
Since we're going to be creating numerous plots throughout this week, it would be a good idea to give our carpal tunnels a break and, of course, avoid copying and pasting a little. Create a function named `labelPlot` with the following requirements.

**The function shall:**
* Accept up to five arguments as shown in the function header below
* Require the first three arguments
* Allow a fourth argument (zLabel) to be optional, if provided, add a zlabel to the active plot
* Allow a fifth argument (gridOn) to be optional, if not provided, it should default to **off**

## Program
Use the following code to help with defining your function.
### Tips
* 

```Matlab
function labelPlot(titleText, xLabel, yLabel, zLabel, gridOn)
% LABELPLOT Adds a title, x and y axis labels, and gridlines to a plot.
%
% This function will only apply the aforementioned properties to the
% currently active plot, so be sure to activate the plot prior to running
% this function.
%
% Inputs:
%     titleText   : a string for the title of the graph.
%     xLabel      : a string for the x axis label of the graph.
%     yLabel      : a string for the y axis label of the graph.
%     zLabel      : an optional string for the z axis label of the graph.
%     gridOn      : an optional boolean to turn the grid on or off,
%                     if omitted, the grid will be off
%
% Outputs:
%     There are no outputs.
%
% See also TITLE, XLABEL, YLABEL, ZLABEL
```
## Example Output
There is no output, the function will be used extensively throughout the homework so enough manual testing will be done to confirm the function performs as expected.