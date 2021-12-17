clc;
clear all;
close all;
global location count time_stamp control_var;
A = [0, 0.3, 0.4, 0.3;
    0.3, 0, 0.5, 0;
    0.4, 0.5, 0. 0.3;
    0.3, 0, 0.3, 0];
b = [0.3, 0.2, 0.5, 0.4]';
c = [9, 7, 11, 7]';
u = 6;
x0 = [16.5, 16.5, 16.5, 16.5]';
location(1,:) = [1 0 1 0];
count = 1;
ti = 0;
tf = 60;
dt = 1;
tspan = [ti:dt:tf];
[t,x_dot] = ode45(@(t,x) HVAC_dynamics(t,x,A,b,c,u),tspan,x0);
figure()
plot(t,x_dot)

old = 1;
aux_location(old,:) = location(1,:);
aux_control(old,:) = control_var(1,:);
for i = 1:length(time_stamp)
%     mod(time_stamp(i),1)
     if floor(time_stamp(i)) >= old
         old = floor(time_stamp(i));
         aux_location(old,:) = location(i,:);
         aux_control(old,:) = control_var(i,:);
     end

end

figure, plot(tspan(1:end-1), aux_location)

figure, plot(tspan(1:end-1), aux_control)





