% Clear the command window and all variables and close figure windows 
clc; clear; close;

format compact  % eliminates blank spaces between lines of output

% Output of the title and author to the command window.
filename    = "Tutorial_12_3";
author      = "";
assistedBy  = ["No one"];
fprintf('Output for %s written by %s, assisted by %s.\n\n', filename, author, join(assistedBy, ", "))

% Program Description:
fprintf("------------------------ Description ----------------------------------\n")
fprintf("The purpose of this program is to demonstrate how the solve() function\n")
fprintf("can be used to solve for any symbolic variable in a single equation or\n")
fprintf("any combination of n-1 variables when there are n equations in a system\n")
fprintf("of equations.\n")
fprintf("-----------------------------------------------------------------------\n")

fprintf("\n\n")
fprintf("-----------------------------------------------------------------------\n")
fprintf("Define some symbolic variables.\n\n")
fprintf("syms a b t x y z\n")
fprintf("-----------------------------------------------------------------------\n")
% TODO:
syms


fprintf("\n\n")
fprintf("-----------------------------------------------------------------------\n")
fprintf("The solve() function computes the value(s) of the independent.\n")
fprintf("variable(s). If the equation does not contain an equal sign, the\n")
fprintf("roots of the equation are found (= 0)\n\n")
fprintf("Example:\n")
fprintf("simpleSolve = solve(exp(2*z)- 5)\n")
fprintf("-----------------------------------------------------------------------\n")
% TODO:
simpleSolve =

fprintf("\n\n")
fprintf("-----------------------------------------------------------------------\n")
fprintf("When providing an equals sign, the double equal (==) must be used.\n\n")
fprintf("Example:\n")
fprintf("simpleSolveEqual = solve(exp(2*z)==5)\n")
fprintf("-----------------------------------------------------------------------\n")
% TODO:
simpleSolveEqual =


fprintf("\n\n")
fprintf("-----------------------------------------------------------------------\n")
fprintf("Here is an example of solving for multiple roots.\n\n")
fprintf("Example:\n")
fprintf("multipleRoots = solve(x^2 - x - 6)\n")
fprintf("-----------------------------------------------------------------------\n")
% TODO:
multipleRoots =


fprintf("\n\n")
fprintf("-----------------------------------------------------------------------\n")
fprintf("The solve() function takes an optional second parameter defining the \n")
fprintf("variable to solve for. When the variable is not defined, MATLAB will \n")
fprintf("try to determine the variable to solve for. We can specify the \n")
fprintf("variable using the second parameter.\n\n")
fprintf("Example:\n")
fprintf("solveForX = solve(expression, x)\n")
fprintf("solveForA = solve(expression, a)\n")
fprintf("solveForB = solve(expression, b)\n")
fprintf("-----------------------------------------------------------------------\n")
syms expression
expression = a*x^2 + 5*b*x + 20
fprintf("\n")
% TODO:
solveForX =
fprintf("\n")
solveForA =
fprintf("\n")
solveForB =


fprintf("\n\n")
fprintf("-----------------------------------------------------------------------\n")
fprintf("The solve() function can also be used for systems of equations. Again\n")
fprintf("we can specify the variables to solve for.\n\n")
fprintf("Example:\n")
fprintf("[solveForX, solveForY] = solve(system1,system2,x,y)\n")
fprintf("[solveForT, solveForY] = solve(system1,system2,t,y)\n")
fprintf("-----------------------------------------------------------------------\n")
system1 = 10*x + 12*y + 16*t
system2 =  5*x - y - 13*t
fprintf("\n")
% TODO:
[solveForX, solveForY] = 
fprintf("\n")
[solveForT, solveForY] = 





