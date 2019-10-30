x=zeros(n,1);
xnew=zeros(n,1);
x(:)=0;
for it=1:100
  convergence=true;
  for i=1:n
    sum1=0;
    for j=1:n
      if i~=j
      sum1=sum1+a(i,j)*x(j);
      endif
    endfor
    xnew(i)=(-1/(a(i,i)))*(sum1-b(i));
    if abs((xnew(i)-x(i)))>0.000001
      convergence=false;
    endif
  endfor
  if convergence
    break
  endif
endfor
disp('solution is')
xnew
