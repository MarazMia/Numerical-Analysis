a=[10,-5,-2;4,-10,3;1,6,10];
b=[3;-3;3];
n=length(b);
x=zeros(n,1);
xnew=zeros(n,1);
x(:)=0;
it=0;
while it<100
  convergence=true;
  i=0;
  while i<n
    sum1=0;
    sum2=0;
    j=0;
    while j<i-1
      sum1=sum1+(a(i,j)*x(j));
      j=j+1;
    endwhile
    j=i+1;
    while j<n
      sum2=sum2+(a(i,j)*x(j));
      j=j+1;
    endwhile
    sum=sum1+sum2;
    xnew(i)=(-1/a(i,i))*(sum-b(i));
    if abs((xnew(i)-x(i)))>0.000001
      convergence=false;
    endif
    i=i+1;
  endwhile
  if convergence
    break
  endif
  it=it+1;
endwhile
disp('solution is')
xnew
