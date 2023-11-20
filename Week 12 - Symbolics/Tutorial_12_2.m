% Clear the command window and all variables and close figure windows 
clc; clear; close;

format compact  % eliminates blank spaces between lines of output

% Output of the title and author to the command window.
filename    = "Tutorial_12_2";
author      = "";
assistedBy  = ["No one"];
fprintf('Output for %s written by %s, assisted by %s.\n\n', filename, author, join(assistedBy, ", "))

% Program Description:
fprintf("------------------------ Description ----------------------------------\n")
fprintf("The purpose of this program is to demonstrate how the form of a \n")
fprintf("symbolic expression can be changed with the collect(), expand(), \n")
fprintf("factor(), simplify(), and pretty() functions.\n")
fprintf("-----------------------------------------------------------------------\n")

fprintf("\n\n")
fprintf("-----------------------------------------------------------------------\n")
fprintf("Let's define some symbolic variables.\n\n")
fprintf("syms a b c x y\n")
fprintf("-----------------------------------------------------------------------\n")
syms a b c x y

fprintf("\n\n")
fprintf("-----------------------------------------------------------------------\n")
fprintf("Create the symbolic expression for sym1.\n\n")
fprintf("Example:\n")
fprintf("sym1 = (2*x^2 + y^2)*(x + y^2 + 3)\n")
fprintf("-----------------------------------------------------------------------\n")
% TODO:
sym1 = 

fprintf("\n\n")
fprintf("-----------------------------------------------------------------------\n")
fprintf("The collect(sym1, x) call collects, and orders the powers of x.\n\n")
fprintf("Example:\n")
fprintf("collectSym1X = collect(sym1, x)\n")
fprintf("-----------------------------------------------------------------------\n")
% TODO:
collectSym1X =

fprintf("\n\n")
fprintf("-----------------------------------------------------------------------\n")
fprintf("The collect(sym1, y) call collects, and orders the powers of x=y.\n\n")
fprintf("Example:\n")
fprintf("collectSym1Y = collect(sym1, y)\n")
fprintf("-----------------------------------------------------------------------\n")
% TODO:
collectSym1Y =

fprintf("\n\n")
fprintf("-----------------------------------------------------------------------\n")
fprintf("Create the symbolic expression for sym2.\n\n")
fprintf("sym2 = (x + 5)*(x - a)*(x + 4)\n")
fprintf("-----------------------------------------------------------------------\n")
% TODO:
sym2 =

fprintf("\n\n")
fprintf("-----------------------------------------------------------------------\n")
fprintf("The expand(sym2) call multiplies parenthesized terms together.\n\n")
fprintf("Example:\n")
fprintf("expandSym2 = expand(sym2)\n")
fprintf("-----------------------------------------------------------------------\n")
% TODO:
expandSym2 =
 
fprintf("\n\n")
fprintf("-----------------------------------------------------------------------\n")
fprintf("The collect(expandSym2) call collects coefficients.\n\n")
fprintf("Example:\n")
fprintf("collectSym2 = collect(expandSym2)\n")
fprintf("-----------------------------------------------------------------------\n")
% TODO:
collectSym2 =


fprintf("\n\n")
fprintf("-----------------------------------------------------------------------\n")
fprintf("The expand() function can be used to simplify trig functions that\n")
fprintf("shows a simplified expression.\n\n")
fprintf("Example:\n")
fprintf("expandSin2X = expand(sin(2*x))\n")
fprintf("expandSinXMinusY = expand(sin(x-y))\n")
fprintf("-----------------------------------------------------------------------\n")
% TODO:
expandSin2X =
expandSinXMinusY =

fprintf("\n\n")
fprintf("-----------------------------------------------------------------------\n")
fprintf("The factor() function performs the opposite of the expand function\n\n")
fprintf("Example:\n")
fprintf("factoredExpression = factor(factorExpression)\n")
fprintf("-----------------------------------------------------------------------\n")
% Use the factor() function to factor the following expression
factorExpression = x^3 + 4*x^2 - 11*x - 30
% TODO:
factoredExpression =

fprintf("\n\n")
fprintf("-----------------------------------------------------------------------\n")
fprintf("The simplify() function derives the simplest form of the expression\n\n")
fprintf("Example:\n")
fprintf("simplifiedFunction = simplify(simplifyFunction)\n")
fprintf("-----------------------------------------------------------------------\n")
% Use the simplify() function to simplify the following expression
simplifyFunction = (x + y)/((1/x) + (1/y))
% TODO:
simplifiedFunction =

fprintf("\n\n")
fprintf("-----------------------------------------------------------------------\n")
fprintf("The pretty() function displays a ""pretty"" version of an expression.\n")
fprintf("Understand, the function outputs in the command window so it can only\n")
fprintf("do so much. NOTE: The pretty() function has no output arg, use it like\n")
fprintf("you would f")
fprintf("Example:\n")
fprintf("pretty(prettyExpression)\n")
fprintf("-----------------------------------------------------------------------\n")
% Use the pretty() function to "prettify" the expression below
prettyExpression = (a*x^2 + b*y^2)/sqrt(x)
fprintf("\n")
% TODO:
pretty()

