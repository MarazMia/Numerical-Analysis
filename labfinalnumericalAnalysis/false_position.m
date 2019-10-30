f=@(x) x^3-2*x^2-4
a=2;
b=3;
tol=input('enter the tolerance value ');
if f(a)*f(b)>0
  fprintf('no root exist in this section\n');
  return
endif
if f(a)==0
  fprintf('lower value is the root\n');
  return
endif
if f(b)==0
  fprintf('upper value is the root\n');
  return
endif
it=1;
while it<=100
  c=(a*f(b)-b*f(a))/(f(b)-f(a));
  #fprintf('%d\t%f\t%f\t%f\n',it,f(a),f(b),f(c));
  if f(a)*f(c)>0
    a=c;
  else 
    b=c;
  endif
  it=it+1;
  if abs(f(c))<tol
    break
  endif
 endwhile
 disp('answer is ')
 c

