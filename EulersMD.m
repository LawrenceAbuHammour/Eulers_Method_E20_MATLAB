% Function Definition for EulersMD
function EulersMD(dydx,x0,h,xn,y0)
% Create vector x with values x0 to xn with increment h
x=[x0:h:xn];
% Initialize y vector with initial point y0
y(1)=y0;
% Find the length of x
k=length(x);
% For Loop to continously evaluate the y values of the approximation at
% each x value in the x vector
% This is the for loop in this function that creates the approximation
% itself. It uses the formula to find the values for Euler's approximation
% where it evaluates the differential eqation function passed into this
% function
for i=1:k-1
    
    y(i+1)=y(i) + h*(feval(dydx,x(i),y(i)));
end
% Creates a subplot in the 2,2,3 space
subplot(2,2,3);
% Plot the graph of the approximation
plot(x,y,'-m')
% Label the graph of the approximation
xlabel('X')
ylabel('Y')
title('Euler Approximation 2');
% Create the legend in the best location determined by MATLAB
legend('Second Approximation','Location', 'best');

end
