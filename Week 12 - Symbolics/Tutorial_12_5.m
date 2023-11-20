% Clear the command window and all variables and close figure windows 
clc; clear; close;

format compact  % eliminates blank spaces between lines of output

% Output of the title and author to the command window.
filename    = "Tutorial_12_5";
author      = "";
assistedBy  = ["No one"];
fprintf('Output for %s written by %s, assisted by %s.\n\n', filename, author, join(assistedBy, ", "))

% Program Description:
fprintf("------------------------ Description ----------------------------------\n")
fprintf("The purpose of this program is to demonstrate how to plot symbolic\n")
fprintf("functions using the ezplot() function and how to substitute numerical\n") 
fprintf("values into symbolic functions with the subs() function. The conversion\n")
fprintf("of an exact symbolic value into a floating point with the double()\n")
fprintf("command is also shown.\n")
fprintf("-----------------------------------------------------------------------\n")

fprintf("\n\n")
fprintf("-----------------------------------------------------------------------\n")
fprintf("Define some symbolic variables.\n\n")
fprintf("syms a g x y t v\n")
fprintf("-----------------------------------------------------------------------\n")
% TODO:
syms

fprintf("\n\n")
fprintf("-----------------------------------------------------------------------\n")
fprintf("When using symbolic expressions, ezplot() plots an expression over the\n")
fprintf("default domain of -2*pi to 2*pi. We will show this in the first subplot.\n")
fprintf("-----------------------------------------------------------------------\n")
expression1 = (3*x + 2)/(4*x - 1)
% Open a figure with a 2x2 subplot, activate the first plot
figure(1)
subplot(2,2,1)
% Use ezplot to plot the symbolic expression
ezplot(expression1)

fprintf("\n\n")
fprintf("-----------------------------------------------------------------------\n")
fprintf("With ezplot(), we can also define a specific domain, here we'll use the\n")
fprintf("domain range -3 to 3. We will show this in the second subplot\n")
fprintf("-----------------------------------------------------------------------\n")
% Activate the second plot and ezplot on the domain -3 to 3
subplot(2,2,2)
ezplot(expression1, [-3, 3])

fprintf("\n\n")
fprintf("-----------------------------------------------------------------------\n")
fprintf("A multivariable expression can also be plotted with ezplot().\n")
fprintf("-----------------------------------------------------------------------\n")
% A function of two variables can be plotted with ezplot
expression2 = 4*x^2 - 18*x + 4*y^2 + 12*y - 11;
subplot(2,2,3)  % lower left graph active
ezplot(expression2)


fprintf("\n\n")
fprintf("-----------------------------------------------------------------------\n")
fprintf("We can even plot two different functions on the same plot when they\n")
fprintf("share an independent variable\n")
fprintf("-----------------------------------------------------------------------\n")
% Two functions with the same independent variable can be plotted with ezplot
x = cos(2*t);
y = sin(4*t);
subplot(2,2,4)  % lower left graph active
ezplot(x,y)


fprintf("\n\n")
fprintf("-----------------------------------------------------------------------\n")
fprintf("The subs() function substitutes numerical values into symbolic\n")
fprintf("variables. We can even provide a vector of values to substitute. When a\n")
fprintf("vector is provided, a vector of each expression result is provided\n\n")
fprintf("Example:\n")
fprintf("subs(Y, t, 3) <-- substitutes t=3 in expression Y\n")
fprintf("subs(Y, t, [0:3]) <-- substitutes t=3 in expression Y\n")
fprintf("-----------------------------------------------------------------------\n")
expression3 = v^2*exp(a*t)/g
fprintf("\n")
expression3Subs_t = subs(expression3,t,3)
fprintf("\n")
expression3Subs_vec_t = subs(expression3, t, 0:3)


fprintf("\n\n")
fprintf("-----------------------------------------------------------------------\n")
fprintf("With the subs() function, multiple variables can also be substituted.\n")
fprintf("To do so, we provide the variables in curly braces, as well as the \n")
fprintf("values in curly braces. You may recall, this is called a cell array.\n\n")
fprintf("Example:\n")
fprintf("subs(expression3,{v,a,t,g},{5,2,1,10})\n")
fprintf("-----------------------------------------------------------------------\n")
subs_all = subs(expression3,{v,a,t,g},{5,2,1,10})

fprintf("\n\n")
fprintf("-----------------------------------------------------------------------\n")
fprintf("Variables can also be assigned before calling subs().\n\n")
fprintf("Example:\n")
fprintf("v=5\n")
fprintf("a=2\n")
fprintf("t=1\n")
fprintf("g=10\n")
fprintf("subs(expression3)\n")
fprintf("-----------------------------------------------------------------------\n")
% Alternately the the variables can be assigned values prior to the subs
% function.
v=5
a=2
t=1
g=10
fprintf("\n")
subs_all2 = subs(expression3)



