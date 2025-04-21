%Code for efficient computation of the Gini coefficient when N is large 
%Last updated: Apr 21, 2025. Written by Michael Hatcher (m.c.hatcher@soton.ac.uk)

clear, clc

tic

N = 5000; %No. of individuals
Wealth_vec = linspace(realmin,1E6,N);  %Wealth distribution
Wealth_vec = Wealth_vec';

%Sort wealth data
Wealth_norm = sort(Wealth_vec);

%Fast approach to calculate Gini for large N (sorted data: https://en.wikipedia.org/wiki/Gini_coefficient)
Gini =  (2/N)*(1:N)*Wealth_norm/sum(Wealth_norm) - (1+1/N)

toc