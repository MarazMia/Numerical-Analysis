dy = @(x,y) x+y;

x0=input('enter intial value of x : ');
y0=input('enter intial value of y or f(x)=y : ');
h=input('enter the value of increamentor : ');
xn=input('enter the last value of x for showing f(xn)=yn : ');
i=1;
fprintf('iteration      x        result\n');
while x0<=xn
  y0=y0+h*dy(x0,y0);
  fprintf('   %d\t  %f\t%f\n',i,x0,y0);
  x0=x0+h;
  i=i+1;
endwhile
