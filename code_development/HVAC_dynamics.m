function xdot = HVAC_dynamics(t,x,A,b,c,u)
global location count time_stamp control_var;
count = count+1;
Lyap = -diag(sum(A))+A;
% display(location);
location(count,:) = locator(x,location(count-1,:));
time_stamp(count) = t;
h = control(x,location(count,:));
control_var(count,:) = h;
B = diag(b);
C = diag(c);
xdot = (Lyap-B)*x+b*u+C*h';
end