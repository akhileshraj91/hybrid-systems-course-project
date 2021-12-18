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

fontSize = 20;
linewidth = 2;
figure(1);

subplot(3,1,1);
plot(t,x_dot,'LineWidth',linewidth);
xlabel('time (s)','FontSize', fontSize); 
ylabel('Temperature (^\circ)','FontSize', fontSize); 
legend('x_1(t)', 'x_2(t)', 'x_3(t)','x_4(t)','FontSize', fontSize);
title({'Temperature control between 19^{\circ} and 20^{\circ}'},'FontSize', fontSize);

subplot(3,1,2);
% figure(2),
plot(tspan(1:end-1), aux_location, 'LineWidth',linewidth)
xlabel('time (s)','FontSize', fontSize); 
ylabel('Heater Location','FontSize', fontSize); 
legend('loc_1(t)', 'loc_2(t)', 'loc_3(t)','loc_4(t)','FontSize', fontSize);
title({'Heater locations vs time'},'FontSize', fontSize);

subplot(3,1,3)
% figure(3),
plot(tspan(1:end-1), aux_control, 'LineWidth',linewidth)
xlabel('time (s)','FontSize', fontSize); 
ylabel('Heater State','FontSize', fontSize); 
legend('h_1(t)', 'h_2(t)', 'h_3(t)','h_4(t)','FontSize', fontSize);
title({'Heater state vs time'},'FontSize', fontSize);





