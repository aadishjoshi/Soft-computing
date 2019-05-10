
%***** Simple linear regressor Part I ****
% **** by AADISH JOSHI ****
clc;
clear all;
close all;

n=100; %number of sample inputs
error = randn(n, 1); %random integer error
x = rand(n, 1).*10; %enlarging the value of x

y = x + error; %received output

plot(x,y,'.')%plot of x and Y
lsline %lsline is an inbuilt function which gives the best fit line for the data