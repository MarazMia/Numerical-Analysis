#f = @(x,y) x*y;
f=input('enter your function ');
x0=input('enter initial value of x : ');
y0=input('enter initial value of y : ');
h=input('enter interval gap h : ');
xn=input('enter final value of x : ');
i=1;
fprintf('itr       x               f(x)\n');
while x0<=xn
  k1=h*f(x0,y0);
  k2=h*f((x0+h),(y0+k1/2));
  delY=(k1+k2)/2;
  y0=y0+delY;
  x0=x0+h;
  fprintf('%d\t%f\t%f\n',i,x0,y0);
  i=i+1;
endwhile