% basic operations
5+6
3-2
5*8
2^6
1==2
1==2 %false
1~=2 % not equal
1 && 0 %AND
1 || 0 %OR
xor(1,0)

% PS1('>> ')
                                                                                              
a = 3
a = 3;
b="hi"
c=(3>1)


a=pi;% semicolon prevent print out
a
disp(a)
disp(sprintf('2 decimals: %0.2f',a))
disp(sprintf('6 decimals: %0.6f',a))
disp(sprintf('10 decimals: %0.10f',a))
a
format long
a
format short
a

% vectors and matrix
A=[1 2; 3 4; 5 6]
A=[1 2;
3 4;
5 6]
V=[1 2 3] %row vector
V=[1;2;3] %column vector
V=1:0.1:2  %start from 1 increment 0.1 until get 2
V=1:6    %1 throught 6
ones(2,1) %all ones matrix
ones(2,3)
C=2*ones(2,3)
w= zeros(1,3) %all zeros matrix
w=rand(1,3) %random number between 0 and 1
w=rand(3,3)
w=randn(1,3) %random number gaussian distribution
w=-6+sqrt(10)*(randn(1,100));
hist(w)
hist(w,50)
eye(4) %4 by 4 identity matrix
I=eye(6)
%help




% Moving Data Around
A
size(A)
sz=size(A)
size(sz)
size(A,1) % the number of rows of A
size(A,2) % the number of columns of A
v=[1 2 3 4]
length(v)
length(A)


pwd % show the current directory
% cd 'C:\Users\houxi\OneDrive\Desktop' change directory
ls % list directories on my desktop (pwd)

'
% assume there are two files named featureX.dat and priceY.dat
load featureX.dat
load priceY.dat
'
%% load('featureX.dat')

'
who % shows what variables i have currently
featureX
size(featureX)
size(priceY)
whos % gives you more details
clear featureX
v=priceY(1:10) % v assigned as the first 10 elements of priceY

save hello.mat v; % save the variable v into the file called hello.mat

clear
whos
load hello.mat

save hello.txt v -ascii  % save it as text (ASCII)
'

A
A(3,2)
A(2,:) % : means every elements along that row/column
A(:,2)
A([1 3],:) % get every elements of row 1 and row 3
A(:,2)=[10;11;12] % assignment
A=[A,[100;101;102]] % add a new column to the right
A(:) % put all elements of A into a single vector


A=[1 2 ;3 4 ;5 6]
B=[11 12; 13 14; 15 16]
C=[A B]  %C=[A,B]
C=[A;B]




# Computing on Data
A=[1 2 ;3 4 ;5 6]
B=[11 12; 13 14; 15 16]
C=[1 1;2 2]
A*C
A.*B %element wise multiplication
A.^2
v = [1;2;3]
1./v %element wise reciprocal of v
1./A %element wise inverse
log(v)
exp(v)
abs(v)
abs([-1;2;-3])
-v
v=[1;2;3]
v+ones(length(v),1) %each element add 1
v+1 % same as last line

A' %A transpose
(A')'

a=[1 15 2 0.5]
val=max(a) 
[val,ind]=max(a) % get maximum and its index
max(A) % get column maximum

a
a<3 % returns 1 0 1 1
find(a<3) % returns index of elements which is larger than 3  

A=magic(3) %retuns magic squares
A
[r,c]=find(A>=7) % returns row and column of elements which is larger than 7  
A(2,3)

a
sum(a)
prod(a) 
floor(a) %rounds down
ceil(a) %rounds up

rand(3)
max(rand(3),rand(3))
A
max(A,[],1) % takes the maximum per column
max(A,[],2) % takes the maximum of per row
max(A) % default to take maximum of per column
max(max(A)) % get global maximum
max(A(:)) %same as last line

A=magic(9)
sum(A,1) % column wise sum
sum(A,2) % row wise sum
A.*eye(9)
sum(sum(A.*eye(9)))
flipud(eye(9)) % diagonal up down
sum(sum(A.*flipud(eye(9))))

A=magic(3)
pinv(A) %pseudpinverse
temp=pinv(A)
temp*A


% Plotting Data
t=[0:0.01:0.98];
y1=sin(2*pi*4*t);
plot(t,y1)
y2=cos(2*pi*4*t);
plot(t,y2)

plot(t,y1)
hold on; %plot new figures on old one
plot(t,y2,'r'); % r means red
xlabel('time')
ylabel('value')
legend('sin','cos')
title('my plot')
print -dpng 'myPlot.png' %save picture
close %close figure

figure(1);plot(t,y1)
figure(2);plot(t,y2) %then you have 2 figures
subplot(1,2,1) %provide plot of a 1x2 grid, access first element
plot(t,y1)
subplot(1,2,1)
plot(t,y1)
subplot(1,2,2)
plot(t,y2)
axis([0.5 1 -1 1])
clf

A=magic(5)
imagesc(A)
imagesc(A),colorbar,colormap gray; % comma chaining fo commands
imagesc(magic(15)),colorbar,colormap gray;




% For While If statements and Functions
 V=zeros(10,1);
 for i=1:10,
    V(i)=2^i;
  end;

 indices=1:10;
 indices
 for i=indices,
    disp(V(i));
  end;

i=1;
 while i<=5,
    V(i) = 100;
    i=i+1;
  end;
V

 i=1;
 while true,
   V(i) = 999;
   i=i+1;
   if i==6,
     break;
   end;
 end;
 V

V(1)
V(1)=2;
if V(1)==1,
  disp('the value is one');
elseif V(1)==2,
   disp('the value is two');
else 
   disp('the value is not one or two');
end;
% exit quit

% functions
squareThisNumber(5) %error
pwd
cd 'C:\Users\houxi\OneDrive\Desktop\Spring2020\Machine Learning'
squareThisNumber(5) %ans =  25
% Octave search path(advanced/optinal)
addpath('C:\Users\houxi\OneDrive\Desktop\Spring2020\Machine Learning')
% even when you change directory, you can find the function file

% define a function and returns multiple values
[a,b]=squareAndCubeThisNumber(5)

% cost function
X=[1 1;1 2; 1 3];
y=[1;2;3];
theta=[0;1];
j=costFunctionJ(X,y, theta);
j
theta=[0;0];
j=costFunctionJ(X,y,theta) %j =  2.3333




% Vectorization
% linear algebre library





