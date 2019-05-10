%mpneuron_exp 1 Mcculloch-Pitts neuron ***by AADISH JOSHI*** 
clc;
clear;
close all;
disp('****simple logic network using m-p neuron model****')
disp('Enter your gate choice')
disp('1)AND 2)OR 3)NAND 4)NOR')
ch = input('Choice = ');

switch ch
    case 1
        display('AND GATE')
        z =[0 0 0 1]
        [w1, w2, theta] = mpGates(z);
    case 2
        display('OR GATE')
        z=[0 1 1 1];
        [w1, w2, theta] = mpGates(z);
    case 3
        display('NAND GATE')
        z=[1 1 1 0];
        [w1, w2, theta] = mpGates(z);
    case 4
        display('NOR GATE')
        z=[1 0 0 0];
        [w1, w2, theta] = mpGates(z);
end
display(w1)
display(w2)
display(theta)
