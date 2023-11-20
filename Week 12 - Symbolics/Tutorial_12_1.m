% Clear the command window and all variables and close figure windows 
clc; clear; close;

format compact  % eliminates blank spaces between lines of output

% Output of the title and author to the command window.
filename    = "Tutorial_12_1";
author      = "";
assistedBy  = ["No one"];
fprintf('Output for %s written by %s, assisted by %s.\n\n', filename, author, join(assistedBy, ", "))

% Program Description:
fprintf("------------------------ Description ----------------------------------\n")
fprintf("The purpose of this program is to demonstrate how to create symbolic\n")
fprintf("variables and expressions. The difference between numerical and symbolic\n")
fprintf("variables and expressions will also be displayed.\n")
fprintf("-----------------------------------------------------------------------\n")

fprintf("\n\n")
fprintf("-----------------------------------------------------------------------\n")
fprintf("The Symbolic Math Toolbox is required to perform symbolic operations.\n")
fprintf("The `ver` command lists the Matlab Toolboxes that are installed.\n")
fprintf("variables since we're performing mathematical functions.\n")
fprintf("\nExample:\n")
fprintf("ver\n")
fprintf("-----------------------------------------------------------------------\n")
ver

fprintf("\n\n")
fprintf("-----------------------------------------------------------------------\n")
fprintf("A generic variable can be assigned as a variable using the assignment\n")
fprintf("statement as we've used throughout this course. We'll use numerical\n")
fprintf("variables since we're performing mathematical functions.\n\n")
fprintf("a = 3\n")
fprintf("b = 5\n\n")
fprintf("In this example, a and b are numerical variables. Non-symbolic\n")
fprintf("variables' values are indented, as seen below.\n")
fprintf("-----------------------------------------------------------------------\n")
a = 3
b = 5

fprintf("\n\n")
fprintf("-----------------------------------------------------------------------\n")
fprintf("A symbolic variable's value can be assigned with the sym() function\n\n")
fprintf("symA = sym(3)\n")
fprintf("symB = sym(5)\n\n")
fprintf("In this example, symA and symB are symbolic variables with the values\n")
fprintf("3 and 5. Symbolic variables' values are not indented, as seen below\n")
fprintf("-----------------------------------------------------------------------\n")
symA = sym(3)
symB = sym(5)

fprintf("\n-----------------------------------------------------------------------\n")
fprintf("When an expression contains only numerical variables the numerical value\n")
fprintf("of the expression will be evaluated.\n")
fprintf("\nThe result of an expression of numerical variables is numerical.\n")
fprintf("\nExample:\n")
fprintf("numerical = (b/a) + sqrt(2) = %g\n", (b/a) + sqrt(2))
fprintf("-----------------------------------------------------------------------\n")
numerical = (b/a) + sqrt(2)

fprintf("\n-----------------------------------------------------------------------\n")
fprintf("When an expression contains only symbolic variables the symbolic value\n")
fprintf("of the expression will be evaluated (constants do not count as \n")
fprintf("""variables""). Rather than seeing the resulting value, we see the \n")
fprintf("expression with the values filled in for each variable.\n")
fprintf("\nThe result of an expression of symbolic variables is symbolic.\n")
fprintf("\nExample:\n")
fprintf("symbolic = (symB/symA) + sqrt(2) = %s\n", char((symB/symA) + sqrt(2)))
fprintf("-----------------------------------------------------------------------\n")
symbolic = (symB/symA) + sqrt(2)

fprintf("\n-----------------------------------------------------------------------\n")
fprintf("Likewise, if ANY variable in an expression is symbolic, the symbolic\n")
fprintf("value of the expression will be evaluated\n")
fprintf("\nThe result of an expression of symbolic variables is symbolic.\n")
fprintf("\nExample:\n")
fprintf("alsoSymbolic = (b/symA) + sqrt(2) = %s\n", char((b/symA) + sqrt(2)))
fprintf("-----------------------------------------------------------------------\n")
alsoSymbolic = (b/symA) + sqrt(2)


fprintf("\n-----------------------------------------------------------------------\n")
fprintf("Symbolic variables can be created without setting them equal to a value\n")
fprintf("by using the `syms` command.\n\n")
fprintf("syms x y\n\n")

syms x y

fprintf("Then, symbolic expressions can then be made using the symbolic variables.\n")
fprintf("This is similar to anonymous functions, where we don't necessarily know\n")
fprintf("the value of a variable in an expression.\n\n")
fprintf("Example:\n")
fprintf("symXPlusY = x + y = %s\n", char(x + y))
fprintf("symXMinusY = x - y = %s\n", char(x - y))
fprintf("-----------------------------------------------------------------------\n")
symXPlusY = x + y
symXMinusY = x - y

fprintf("\n-----------------------------------------------------------------------\n")
fprintf("We can then create more complex symbolic expressions by joining multiple\n")
fprintf("symbolic expressions.\n\n")
fprintf("Example:\n")
fprintf("complexSymExp = symXPlusY^2/symXMinusY^3 + x^2 = %s\n", ...
    char(symXPlusY^2/symXMinusY^3 + x^2))
fprintf("-----------------------------------------------------------------------\n")
complexSymExp = symXPlusY^2/symXMinusY^3 + x^2


