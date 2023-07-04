%%Matlab script that illustrates the usefulness of the exhaustion method
%%used by Archimedes to estimate pi and the area of the circle of any
%%radius.

%%As proven on exercise 11, Chapter 8 from Michael Spivak's famous book : "Calculus" , for any circle of radius R, there is an inscibed regular polygon with an
%%number of sides large enough so that the area of the polygon is as close as desired
%%to the area of the circle

format long 
clear
%%Step 1: Plot the circle
t = linspace(0,2*pi,1000);
R = 1; %%circle radius (any)
for i=1:size(t,2)
    x(i) = R*cos(t(i));
    y(i) = R*sin(t(i));
end
plot(x,y);
hold on
%%Step 2: Plot the n gon with fixed point on (0,R)
N = 15;
n = 3;
k = n;
M = zeros(2,2); %rotation matrix in the plane by phi degrees
pivot = zeros(2,1);
while (n <=N) %animate the sequence of inscribed ngons and store their area difference to 
pivot(1,1) = R; %point fixed, from where the n-1 left are obtained (it can be any as long as its on the circle)
pivot(2,1) = 0;
phi = (2*pi)/(n); %%angle between each pair of adjacent vertices in the n-gon
M(1,1) = cos(phi);
M(1,2) = -1*sin(phi);
M(2,1) = sin(phi);
M(2,2) = cos(phi);
color = rand(1,3);
for j=1:n-1
    next = M*pivot;
    %plot the respective side:
    h = plot([pivot(1,1), next(1,1)],[pivot(2,1), next(2,1)],'Color',color);
    if (j == 1) 
    %store the area of this ngon to later see how the sequence approaches PI in the limit:
    diff(1,1) = next(1,1)-pivot(1,1);
    diff(2,1) = next(2,1) - pivot(2,1);
    length = sqrt(diff(1,1)^2 + diff(2,1)^2);
    area = 0.5*n*length*sqrt(R^2-(length^2)/(4));
    A(1,n-k+1) = area;
    end
    H(j) = h; %store the segment handle to later delete it for n+1-gon afterwards
    pause(0.1);
    hold on;
    %update current
    pivot = next;
end
%last one to close it
h = plot([pivot(1,1), R],[pivot(2,1), 0],'Color',color);
pause(0.1);
H(n) = h;
if n <N
    delete(H);
end
disp(n)
n = n+1;
hold on;
end
%Step 3: plot the sequence of areas for each regular polygon used
figure
stem([3:N],A,'filled')
yline(pi)


