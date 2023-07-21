% This code plots the function whose graph is illustrated in Spivak's
% Derivatives section, asking for the reader to find the equation
% describing it. Since the famous non differentiable anywhere Weirstrass
% function packs a lot of concepts that are too advanced at the given point
% of the book, Spivak hints the reader with just the graph of a function
% that looks like the "straight-line version of xsin(1/x)" which serves as
% an example of a function that is continuous everywhere but not differentiable at infinitely many
% points (which lie in the interval [0,1] and are all powers of 0.5 in fact) and challenges the
% reader to find a formula to describe it.
% I was interested on the problem, so decided to work on it and finally
% found a function whose graph coincides with the one in the book. To plot
% it, it is less complicated, since at the powers of 0.5 and -0.5 the
% values of f are in the "sequence" (-0.5)^n for all integers n

clear
format long

for i=0:30
    x(i+1) = 1/(2^i);
    y(i+1) = f(x(i+1));
end
%since f is even, f(-x) = f(x) so we simply concatenate the vectors in the
%input and output that is, we do xC(-x) and yCy
%also, graphically we use the feature that "plot" draws line segments
%between plotted data to quickly visualize the graph. In order to analyse
%it rigorously, one would take the semi-explicit expression describing the curve, written below.

x = [x,-x];
y = [y,y];
plot(x,y);
grid on

function y = f(x)
n = -1;
while abs(x) <= (0.5)^(n+1)
    n = n +1;
end
%now, we have the smallest integer such that 0.5^n+1 < abs(x) <= 0.5^n

y = ((-1)^n)*(3*abs(x)-(0.5)^(n-1));

end