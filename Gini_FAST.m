%Code for computation of the Gini coefficient using bsxfun
%Last updated: Feb 12, 2024. Written by Michael Hatcher (m.c.hatcher@soton.ac.uk)

clear, clc

tic

N = 5000; %No. of individuals
Wealth_vec = linspace(realmin,1E6,N);  %Wealth distribution

%Fast approach to calculate Gini
V = Wealth_vec';
Diff_mat = bsxfun(@minus,V(:), V(:).');
Diff_mat = abs(Diff_mat);
sum_tot = sum(Diff_mat,1);
    
Gini = sum(sum_tot)/(2*(length(Wealth_vec))^2*mean(Wealth_vec))
    
toc