function [mean_share,n_countries, f_wi,xi_wi, u_wi, wi_sorted,b_wi,bint_wi, rstats_wi] =w_ind(X,pct_cut)

%% Function w_ind
% Used by weighted_indegrees.m program
% Inputs to code:
% Indegree Sequence and cut-off criteria 
% Outputs of code:
% Mean Indegree; non-parametric density of indegree sequence & ols
% tail estimates of its CCDF given the tail cutoff criteria
% Kaiwen LI, March 2022
%%

%% Computations
% Basic Statistics
mean_share=mean(sum(X));
n_countries= max(size(X)); % In case of a non-square matrix

% Weighted indegrees, density
wi=sum(X);
wi=normalize(wi,'range');

for i=1:n_countries
    if wi(i)>1 || wi(i)==1
        wi(i)=0.9999;
    end
end

% Gaussian Kernel for Empirical Density; Bandwidth=0.3 
% [f_wi,xi_wi,u_wi] = ksdensity(nonzeros(wi),'support',[-0.0000001,1],'width',0.8);
[f_wi,xi_wi,u_wi] = ksdensity(nonzeros(wi),'width',0.06);

% Weighted indegrees CCDF
wi_sorted=sort(wi,'descend');

% 20% cutoff OLS regression
cut=round(pct_cut*n_countries);
[b_wi,bint_wi,r,rint,rstats_wi]=regress(log((1:1:cut)'), [ones(cut,1),log(wi_sorted(1:cut))']);
