function xdot = HVAC_dynamics(t,x,A,b,c,u)
global location;
Lyap = -diag(sum(A))+A;
% display(location);
location = locator(x,location);
h = control(x,location);
B = diag(b);
C = diag(c);
xdot = (Lyap-B)*x+b*u+C*h';

end