a=input('enter your coefficient matrix ');
b=input('enter your constant matrix ');
tol=input('enter your value of tolerance ');
n=length(b);
x=zeros(n,1);
xnew=zeros(n,1);
x(:)=0;
itr=1;
for itr=1:100
  convergence=true;
  for i=1:n
    sum=0;
    for j=1:n
      if j~=i
        sum=sum+a(i,j)*x(j);
      end
    end
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
 
