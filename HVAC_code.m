clc;
clear all;
close all;

x0 = [16.5 16.5 16.5 16.5];
off = [20 20 20 20]';
on  = [19 19 19 19]';
get = [17 16 16 17]';
dif = [1 1 1 1]';
simOut = sim('HVAC');
