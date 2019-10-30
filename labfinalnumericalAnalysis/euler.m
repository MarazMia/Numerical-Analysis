f=@(x,y) (x^2+y^2)/10;
x0=0;
y0=1;
xn=0.4;
h=0.1;
while x0<=xn
  y0=x0+h*f(x0,y0);
  fprintf('%f\t%f\n',x0,f(x0,y0));
  x0=x0+h;
 endwhile
