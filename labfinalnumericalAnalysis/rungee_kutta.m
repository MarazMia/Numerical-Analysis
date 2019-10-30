f=@(x,y) (x^2+y^2)/10;
x0=0;
y0=1;
xn=0.4;
h=0.1;
while x0<=xn
  k1=x0+h*f(x0,y0);
  k2=x0+h*f(x0+h,y0+k1);
  y0=x0+((k1+k2)/2);
  fprintf('%f\t%f\n',x0,f(x0,y0));
  x0=x0+h;
 endwhile

