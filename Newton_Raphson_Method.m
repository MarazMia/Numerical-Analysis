#f = @(x) 2*x^2 - 5*x + 3;
pkg load symbolic
syms x;
f=input('enter your function ');
#fp = @(x) 4*x - 5;
dif=diff(f);
fp=function_handle(dif);
f=function_handle(f);
x1=input('enter the intial guess : ');
tol=input('enter the tolerence value : ');
if f(x1)==0
  fprintf('lower value is the root\n');
  return
end
i=1;
fprintf('iterator      x0            value\n');
while abs(f(x1))>=tol
  x2=x1-(f(x1)/fp(x1));
  fprintf('  %d\t  %f\t%f\n',i,x2,f(x2));
  i=i+1;
  x1=x2;
endwhile