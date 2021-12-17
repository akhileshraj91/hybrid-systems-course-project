function xdot = HVAC_dynamics(t,x,A,b,c,u)
global location count;
count = count+1;
Lyap = -diag(sum(A))+A;
% display(location);
location(count,:) = locator(x,location(count-1,:));
h = control(x,location(count,:));
B = diag(b);
C = diag(c);
xdot = (Lyap-B)*x+b*u+C*h';

end