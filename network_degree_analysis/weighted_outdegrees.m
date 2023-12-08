%% Weighted Outdegrees Graphs
% Input to code:
% BEA Commodity by Commodity Matrices for years 1972-2002
% Output of code:
% First Order Weighted Outdegree Statistics & Graphs
% Uses: 
% 1) w_out function
% 2) ksr.m function [Copyright (c) 2009, Yi Cao] from Matlab FileExchange
% March 2012
%%

%% Set tail cutoff criterion
cut_off=0.2;

%% Load Data
load /Users/sunruogu/Desktop/Network_Attack/matlab_adjacency_table/AT_allyears.mat

%% Computations for each year
% Note: We normalize intermediate input shares to sum to one for every
% sector; for computations without normalization comment out loops and let
% X=CCYear

X=AT20;
for i=1:max(size(X))
    if sum(X(:,i))>0
        XX(:,i)=X(:,i)./sum(X(:,i));
    elseif sum(X(:,i))==0
        XX(:,i)=X(:,i);
    end
end
X=XX;
clear XX;
[n_sectors_20,f_wo_20,xi_wo_20,wo_20_sorted,b_wo_20,bint_wo_20, rstats_wo_20,avg_slope_nw_wo_20,b_wo_gi_20,se_b_wo_gi_20]=w_out(X, cut_off);


%% Output Graphs

% 2 panel empirical pdf of 1st and second order degrees
X=AT20;
for i=1:max(size(X))
    if sum(X(:,i))>0
        XX(:,i)=X(:,i)./sum(X(:,i));
    elseif sum(X(:,i))==0
        XX(:,i)=X(:,i);
    end
end
X=XX;
clear XX;

[n_sectors_20,f_wo2_20,xi_wo2_20,wo2_20_sorted,b_wo2_20,bint_wo2_20, rstats_wo2_20,avg_slope_nw_wo2_20]=w_out_2ord(X, cut_off);


subplot(1,2,1,'align'),plot(xi_wo_20(2:end),f_wo_20(2:end),'o','MarkerSize',5);
xlabel('First Order Weighted Outdegree');
ylabel('Empirical Density');
legend('2020 1^{st} order');
axis([0 28 0 0.6])
axis square;
subplot(1,2,2,'align'),plot(xi_wo2_20(2:end),f_wo2_20(2:end),'o','MarkerSize',5);
xlabel('Second Order Weighted Outdegree');
ylabel('Empirical Density');
legend('2020 2^{nd} order');
axis([0 28 0 0.6])
axis square;

set(gcf,'Units','inches');
screenposition = get(gcf,'Position');
set( gcf,'PaperSize',[29.7 21.0], 'PaperPosition',[0 0 29.7 21.0])
print -dpdf test1.pdf
