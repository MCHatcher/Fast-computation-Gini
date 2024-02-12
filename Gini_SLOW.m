%Code for explicit computation of the Gini coefficient. This code is slow but the
%results can be compared against the fast approach (Gini_FAST.m) using bsxfun
%Last updated: Feb 12, 2024. Written by Michael Hatcher (m.c.hatcher@soton.ac.uk)

clear, clc

N = 5000; %No. of individuals
Wealth_vec = linspace(realmin,1E6,N);  %Wealth distribution
Diff = zeros(N,1); sum_tot = Diff;


    for i=1:length(Wealth_vec)
        for j=1:length(Wealth_vec)
       
            Diff(j) = abs(Wealth_vec(i)-Wealth_vec(j));
            
        end 
        sum_tot(i) = sum(Diff); 
    end

Gini = sum(sum_tot)/(2*(length(Wealth_vec))^2*mean(Wealth_vec))