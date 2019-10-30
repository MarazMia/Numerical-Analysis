#Dear sir,I used while loop instead of
# for loop in exam paper......

a=[10,-5,-2;4,-10,3;1,6,10];
b=[3;-3;3];
n=length(b);
x=zeros(n,1);
xnew=zeros(n,1);
x(:)=0;
itr=1;
for itr=1:100
  convergence=true;
  for i=1:n
    sum1=0;
    sum2=0;
    for j=1:i-1
        sum1=sum1+a(i,j)*x(j);
    end
    for m=i+1:n
        sum2=sum2+a(i,m)*x(m);
    end
    sum=sum1+sum2;
    xnew(i)=-1/a(i,i)*(sum-b(i));
    if abs(xnew(i)-x(i))>tol
      convergence=false;
    end
   end
   if convergence
     break;
   end
   x=xnew;
 end 
 disp('iterations');
 itr
 disp('solutions');
 xnew
