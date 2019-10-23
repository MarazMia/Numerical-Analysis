f = @(x) 2*x^2 - 5*x + 3;
low=input('enter the value of lower range : '); 
high=input('enter the value of higher range : ');
tol=input('enter the tolerence value : ');
if f(low)==0
  fprintf('lower value is the root\n');
  return
elseif f(high)==0
  fprintf('higher value is the root\n');
  return
end

if f(high)*f(low)>0
  fprintf('no root exist in that interval\n');
 return 
end


x1=(low+high)/2;
i=1;
fprintf('iterator   low            high             x0            value\n');
while abs(f(x1))>=tol
  x1=(low+high)/2;
  fprintf('  %d\t  %f\t%f\t%f\t%f\n',i,low,high,x1,f(x1));
  i=i+1;
  if f(low)*f(x1)>0
    low=x1;
  else
    high=x1;
  endif
endwhile

