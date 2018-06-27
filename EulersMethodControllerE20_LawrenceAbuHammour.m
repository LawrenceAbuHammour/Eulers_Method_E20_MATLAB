% ODE PLOTTER
% Plots the graphs of the solutions to two ordinary differential equations
% Created by Lawrence Abu-Hammour
% Class of 2019
% Dartmouth College
% Engineering Sciences 20: Introduction to Scientific Computing
% Due: May 30, 2016

% Display the Menu Options to the User
fprintf('****************|WELCOME TO THE ODE PLOTTER|****************\n');
fprintf('Please read the following menu options carefully\n');
fprintf('\n');
fprintf('Option 1: dydx=-4x^3y^2 with initial value y(0)=1.\n');
fprintf('Option 2: dydx= 2xy-4x^2+2x+2 with initial values y(0)=2.\n');
fprintf('Option 3: Use ODE solver to solve Equation 1 as shown in Option 1.\n');
fprintf('Option 4: Use ODE solver to solve Equation 2 as shown in Option 2.\n');
fprintf('Option 5: To quit, enter 5 in the prompt below\n');
fprintf('\n');
fprintf('You may press the enter key to use the default option which is Option 1\n');
% Prompt the user for a Menu Option
choice=input('Enter which option you would like to use Euler''s Method on: ');
% If Statement for Options in Menu
if choice==1
% Prompt the user for the final xn value. This will remain the same.
xn=input('Enter the final value of xn for the differential equation: ');
% Prompt the user for the h value and remind them that it must be a small
% value
fprintf('Your increment must be a small value in comparison to the final value xn to produce more accurate approximations. (Eg. 0.01,0.001,0.1)\n');
h=input('Enter the increment that is being used in the approximation: ');
% Initialize the x0 and y0 values
x0=0;
y0=1;
x=[x0:0.001:xn];
% Create the graph for the actual soltion of the differential equation
y2=1./((x.^4)+1);
subplot(2,2,1)
comet(x,y2)
% Label the graph of the actual solution of the differential equation
title('Actual Solution Plot');
xlabel('X')
ylabel('Y')
legend('Solution Curve')
% Call the EulersM1 function to manually solve the ODE through the function
EulersM1(@f1,x0,h,xn,y0)
% Prompt the user for a different h value
fprintf('Your increment must be a small value in comparison to the final value xn to produce more accurate approximations. (Eg. 0.01,0.001,0.1)\n');
h=input('Enter the increment that is being used in the approximation: ');
% Call the EulersMD function to plot a new Euler Approximation according to the new h in the
% 2,2,3 subplot space
x=[x0:h:xn];
EulersMD(@f1,x0,h,xn,y0)
% Prompt the user for a different h value
fprintf('Your increment must be a small value in comparison to the final value xn to produce more accurate approximations. (Eg. 0.01,0.001,0.1)\n');
h=input('Enter the increment that is being used in the approximation: ');
% Call the EulersME function to plot a new Euler Approximation according to the new h in the
% 2,2,4 subplot space
x=[x0:h:xn];
EulersME(@f1,x0,h,xn,y0)
% Else-If Statment for the Default Case (i.e. if the User presses enter)
elseif isempty(choice)
% Prompt the user for the final xn value. This will remain the same.
xn=input('Enter the final value of xn for the differential equation: ');
% Prompt the user for the h value and remind them that it must be a small
% value
fprintf('Your increment must be a small value in comparison to the final value xn to produce more accurate approximations. (Eg. 0.01,0.001,0.1)\n');
h=input('Enter the increment that is being used in the approximation: ');
% Initialize the x0 and y0 values
x0=0;
y0=1;
x=[x0:0.001:xn];
% Create the graph for the soltion of the differential equation
y2=1./((x.^4)+1);
subplot(2,2,1)
comet(x,y2)
% Label the graph of the actual solution of the differential equation
title('Actual Solution Plot');
xlabel('X')
ylabel('Y')
legend('Solution Curve')
% Call the EulersM1 function to manually solve and plot the ODE through the
% function in the subplot space 2,2,2
EulersM1(@f1,x0,h,xn,y0)
% Prompt the user for a different h value
fprintf('Your increment must be a small value in comparison to the final value xn to produce more accurate approximations. (Eg. 0.01,0.001,0.1)\n');
h=input('Enter the increment that is being used in the approximation: ');
% Call the EulersMD function to plot a new Euler Approximation according to the new h in the
% 2,2,3 subplot space
x=[x0:h:xn];
EulersMD(@f1,x0,h,xn,y0)
% Prompt the user for a different h value
fprintf('Your increment must be a small value in comparison to the final value xn to produce more accurate approximations. (Eg. 0.01,0.001,0.1)\n');
h=input('Enter the increment that is being used in the approximation: ');
% Call the EulersMD function to plot a new Euler Approximation according to the new h in the
% 2,2,4 subplot space
x=[x0:h:xn];
EulersME(@f1,x0,h,xn,y0)
% Else-If Statement for User Entering Option 2
elseif choice==2
% Prompt the user for the final xn value. This will remain the same.
xn=input('Enter the final value of xn for the differential equation: ');
% Prompt the user for the h value and remind them that it must be a small
% value
fprintf('Your increment must be a small value in comparison to the final value xn to produce more accurate approximations. (Eg. 0.01,0.001,0.1)\n');
h=input('Enter the increment that is being used in the approximation: ');
% Initialize the x0 and y0 values
x0=0;
y0=2;
x=[x0:0.001:xn];
% Create the graph for the soltion of the differential equation
y2=3*exp(x.^2)+2*x-1;
subplot(2,2,1)
comet(x,y2)
% Label the graph of the actual solution of the differential equation
title('Actual Solution Plot');
xlabel('X')
ylabel('Y')
legend('Solution Curve')
% Call the EulersM1 function to manually solve and plot the ODE through the
% function in the subplot space 2,2,2
EulersM1(@f2,x0,h,xn,y0)
% Prompt the user for a different h value
fprintf('Your increment must be a small value in comparison to the final value xn to produce more accurate approximations. (Eg. 0.01,0.001,0.1)\n');
h=input('Enter the increment that is being used in the approximation: ');
% Call the EulersMD function to plot a new Euler Approximation according to the new h in the
% 2,2,3 subplot space
x=[x0:h:xn];
EulersMD(@f2,x0,h,xn,y0)
% Prompt the user for a different h value
fprintf('Your increment must be a small value in comparison to the final value xn to produce more accurate approximations. (Eg. 0.01,0.001,0.1)\n');
h=input('Enter the increment that is being used in the approximation: ');
% Call the EulersME function to plot a new Euler Approximation according to the new h in the
% 2,2,4 subplot space
x=[x0:h:xn];
EulersME(@f2,x0,h,xn,y0)
% Else-If Statment for Option 3
elseif choice==3
% Prompt the user for the final xn value. This will remain the same.
xn=input('Enter the final value of xn for the differential equation: ');
% Prompt the user for the h value and remind them that it must be a small
% value
fprintf('Your increment must be a small value in comparison to the final value xn to produce more accurate approximations. (Eg. 0.01,0.001,0.1)\n');
h=input('Enter the increment that is being used in the approximation: ');
% Initialize the x0 and y0 values
x0=0;
y0=1;
x=[x0:0.001:xn];
% Create the graph for the soltion of the differential equation
y2=1./((x.^4)+1);
subplot(2,2,1)
comet(x,y2)
% Label the graph of the actual solution of the differential equation
title('Actual Solution Plot');
xlabel('X')
ylabel('Y')
legend('Solution Curve')
% Use ODE45 function to create a solution vector y where each value
% corresponds to a value in the vector t. This is where Euler's
% Approximation occurs in Option 3. By allowing the user to input a new
% step size and a final xn value at the beginning,the solver will evaluate
% the function f1 at all x values with the increment and the initial
% condition
[t,y]=ode45(@f1,x,y0);
% Create a subplot and plot the graph of the values of t and y in the 2,2,2
% subplot space
subplot(2,2,2)
plot(t,y, '-r')
% Label the graph of the approximation
title('Euler Approximation 1');
xlabel('X');
ylabel('Y');
legend('First Approximation');
% Prompt the user for a different h value
fprintf('Your increment must be a small value in comparison to the final value xn to produce more accurate approximations. (Eg. 0.01,0.001,0.1)\n');
h=input('Enter the increment that is being used in the approximation: ');
% Create a new x array from the initial x0 to xn in steps of h
x=[x0:h:xn];
% Use the ODE45 solver once again to find a second Euler Approximation
[t,y]=ode45(@f1,x,y0);
% Create a subplot for the space 2,2,3 and plot the approximation
subplot(2,2,3)
plot(t,y,'-m')
% Label the graph of the approximation
title('Euler Approximation 2');
xlabel('X');
ylabel('Y');
%Legend will be plotted in the best location determined by MATLAB
legend('Second Approximation','Location', 'best');
% Prompt the user for a different h value
fprintf('Your increment must be a small value in comparison to the final value xn to produce more accurate approximations. (Eg. 0.01,0.001,0.1)\n');
h=input('Enter the increment that is being used in the approximation: ');
% Create an x value array starting at x0 and ending at xn with increment h
x=[x0:h:xn];
% Use the ODE45 solver once again to find a third Euler Approximation
[t,y]=ode45(@f1,x,y0);
% Create a subplot for the space 2,2,4 and plot the approximation
subplot(2,2,4)
plot(x,y,'-c')
% Label the graph of the approximation
title('Euler Approximation 3');
xlabel('X');
ylabel('Y');
legend('Third Approximation');
% Else-If Statement for Option 4
elseif choice==4
% Prompt the user to enter the final xn value. This will remain the same.
xn=input('Enter the final value of xn for the differential equation: ');
% Prompt the user to enter the increment h and remind them that the value
% of h must be small
fprintf('Your increment must be a small value in comparison to the final value xn to produce more accurate approximations. (Eg. 0.01,0.001,0.1)\n');
h=input('Enter the increment that is being used in the approximation: ');
% Initialize the x0 and y0 values
x0=0;
y0=2;
x=[x0:0.001:xn];
% Create the graph of the actual solution of the differential equation
y2=3*exp(x.^2)+2*x-1;
% Plot the graph in the subplot space 2,2,1
subplot(2,2,1)
comet(x,y2)
% Label the graph of the solution of the differential solution
title('Actual Solution Plot');
xlabel('X')
ylabel('Y')
axis auto
legend('Solution Curve');
% Use the ODE45 Solver to solve the ODE equation and create the solution
% vectors t and y
[t,y]=ode45(@f2,x,y0);
% Create the plot of the Euler's Approximation graph from the solution
% vectors
subplot(2,2,2)
plot(x,y, '-r')
% Label the graph of the first approximation
title('Euler Approximation 1');
xlabel('X');
ylabel('Y');
legend('First Approximation');
% Prompt the user for a different value of h
fprintf('Your increment must be a small value in comparison to the final value xn to produce more accurate approximations. (Eg. 0.01,0.001,0.1)\n');
h=input('Enter the increment that is being used in the approximation: ');
% Create an x vector with all the values from x0 to xn in increment h
x=[x0:h:xn];
% Use the ODE45 Solver to get another Euler approximation for the ODE
[t,y]=ode45(@f2,x,y0);
% Plot the graph of the approximation in the 2,2,3 subplot place
subplot(2,2,3)
plot(x,y, '-m')
% Label the graph of the second approximation
title('Euler Approximation 2');
xlabel('X');
ylabel('Y');
% Create legend for graph in the best location determined by MATLAB
legend('Second Approximation','Location', 'best');
% Prompt the user for a different value of h
fprintf('Your increment must be a small value in comparison to the final value xn to produce more accurate approximations. (Eg. 0.01,0.001,0.1)\n');
h=input('Enter the increment that is being used in the approximation: ');
% Create an x vector with values from x0 to xn with increment h
x=[x0:h:xn];
% Use the ODE45 Solver to get another Euler approximation for the ODE
[t,y]=ode45(@f2,x,y0);
% Plot the graph of the approximation in the 2,2,4 subplot place
subplot(2,2,4)
plot(x,y, '-c')
% Label the graph of the approximation
title('Euler Approximation 3');
xlabel('X');
ylabel('Y');
legend('Third Approximation');
% Else-If Statement for if the user decides to quit at the menu
elseif choice==5
fprintf('Thank you for visiting this solver! Come again soon!\n');
return;
% Else Statement for if the user enters an invalid input
else
fprintf('That is not an invalid input. Please try again!\n');
return;
end
fprintf('\n');
% Quit the program after all the actions have been taken.
fprintf('Thank you for visiting this solver! Come again soon!\n');