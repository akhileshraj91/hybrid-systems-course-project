clc;
clear all;
close all;
global location;
A = [0, 0.3, 0.4, 0.3;
    0.3, 0, 0.5, 0;
    0.4, 0.5, 0. 0.3;
    0.3, 0, 0.3, 0];
b = [0.3, 0.2, 0.5, 0.4]';
c = [9, 7, 11, 7]';
u = 6;
x0 = [16.5, 16.5, 16.5, 16.5]';
location = [1 0 1 0];
ti = 0;
tf = 60;
dt = 1;
tspan = [ti:dt:tf];
[t,x_dot] = ode45(@(t,x) HVAC_dynamics(t,x,A,b,c,u),tspan,x0);
figure()
plot(t,x_dot)


