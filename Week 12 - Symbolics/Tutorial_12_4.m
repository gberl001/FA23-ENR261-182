% Clear the command window and all variables and close figure windows 
clc; clear; close;

format compact  % eliminates blank spaces between lines of output

% Output of the title and author to the command window.
filename    = "Tutorial_12_4";
author      = "";
assistedBy  = ["No one"];
fprintf('Output for %s written by %s, assisted by %s.\n\n', filename, author, join(assistedBy, ", "))

% Program Description:
fprintf("------------------------ Description ----------------------------------\n")
fprintf("The purpose of this program is to demonstrate how differentiation,\n")
fprintf("integration and solutions to ordinary differential equations can be found\n")
fprintf("using Matlab functions diff(), int(), and dsolve().\n")
fprintf("-----------------------------------------------------------------------\n")

fprintf("\n\n")
fprintf("-----------------------------------------------------------------------\n")
fprintf("Define some symbolic variables.\n\n")
fprintf("syms c t x\n")
fprintf("-----------------------------------------------------------------------\n")
% TODO:
syms


fprintf("\n\n")
fprintf("-----------------------------------------------------------------------\n")
fprintf("The diff() allows for differentiation. Here we will take the first,\n")
fprintf("second, and third derivative of the function f, with x as the\n")
fprintf("independent variable\n\n")
fprintf("Example:\n")
fprintf("df_dx = diff(f, x, 1)\n")
fprintf("d2f_dx2 = diff(f, x, 2)\n")
fprintf("d3f_dx3 = diff(f, x, 3)\n")
fprintf("-----------------------------------------------------------------------\n")
f = 3*x^2 + 5*x - 6
fprintf("\n")
% TODO:
df_dx =
fprintf("\n")
d2f_dx2 =
fprintf("\n")
d3f_dx3 =


fprintf("\n\n")
fprintf("-----------------------------------------------------------------------\n")
fprintf("The diff()  also allows for partial differentiation.\n\n")
fprintf("Example:\n")
fprintf("dR_dx = diff(R, x, 1) <--- Partial derivative or R with respect to x\n")
fprintf("dR_dt = diff(R, t, 1) <--- Partial derivative or R with respect to t\n")
fprintf("-----------------------------------------------------------------------\n")
R = 5*x^2*cos(3*x+ 2*t)
fprintf("\n")
% TODO:
dR_dx =
fprintf("\n")
dR_dt =


fprintf("\n\n")
fprintf("-----------------------------------------------------------------------\n")
fprintf("With symbolic tools, we can also compute the indefinite integral \n")
fprintf("(anti-derivative). NOTE: MATLAB does not add the constant of \n")
fprintf("integration, generally referred to as C. To include it, we can add C\n")
fprintf("to the function.\n\n")
fprintf("Example:\n")
fprintf("intF = int(f, x)\n")
fprintf("addCToF = intF + c\n")
fprintf("-----------------------------------------------------------------------\n")
f = 2*cos(x) - 8*x
fprintf("\n")
% TODO:
intF =
fprintf("\n")
addCToF =


fprintf("\n\n")
fprintf("-----------------------------------------------------------------------\n")
fprintf("Here is an example of evaluating a definite integral. This will\n")
fprintf("evaluate the definite integral of f = 2*cos(x) - 6*x from xi to xf\n")
fprintf("where xi to xf is 0 to pi/4.\n\n")
fprintf("Example:\n")
fprintf("defIntF = int(f, x, xi, xf)\n")
fprintf("-----------------------------------------------------------------------\n")
xi = 0
xf = pi/4
fprintf("\n")
% TODO:
defIntF =


fprintf("\n\n")
fprintf("-----------------------------------------------------------------------\n")
fprintf("Just as with differentiation, integration can be performed with respect\n")
fprintf("to a designated variable.\n\n")
fprintf("Example:\n")
fprintf("intFWRTx = int(f, x) <--- Indef integral of f with respect to x\n")
fprintf("intFWRTt = int(f, t) <--- Indef integral of f with respect to t\n")
fprintf("-----------------------------------------------------------------------\n")
f = 5*x^2*cos(4*t)
fprintf("\n")
% Integration can be done with respect to a selected variable
intFWRTx = int(f, x)
fprintf("\n")
intFWRTt = int(f, t)


fprintf("\n\n")
fprintf("-----------------------------------------------------------------------\n")
fprintf("Ordinary differential equations (ODE) can be solved using the function\n")
fprintf("dsolve(). In the following examples, we solve for dy/dt without an \n")
fprintf("initial condition, and dy/dt with an initial condition. The new form\n")
fprintf("of using the MATLAB dsolve() function requires that we create syms for\n")
fprintf("y as a function of t as shown.\n\n")
fprintf("Example:\n")
fprintf("syms y(t)\n")
fprintf("odeDyDt = dsolve(diff(y, t) == 4*t + 2*y) <--- DiffEq of t with respect to t\n")
fprintf("odeDyDt2 = dsolve(diff(y, t) == 4*t + 2*y) <--- """" with initial cond y(0) = 5\n")
fprintf("-----------------------------------------------------------------------\n")
syms y(t)
% TODO: 
odeDyDt =
fprintf("\n")
odeDyDt2 =

