function [w1,w2,theta ] = mpGates(z)
%Getting weights and threshold value with input as array of expected output
disp('Enter weights:');
w1=input('Weight w1:');
w2=input('weight w2:');
theta= input('theta: ');
y=[0 0 0 0];
x1=[0 0 1 1];
x2=[0 1 0 1];
iter=1;
while iter
  zin=x1*w1+x2*w2;
  for i=1:4
      if zin(i)>= theta 
          y(i)=1;
      else
          y(i)=0;
      end
  end
  disp('Output of Net');
  disp(y);
  if y== z
      display('Learning successful')
      iter=0;
  else
      disp('Net is not learning enter another set of weights and Threshold value');
      	  w1=input('weight w1: ');
      	  w2=input('weight w2: ');
      	  theta=input('theta: ');
  end
end
end


