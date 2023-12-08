%% 2nd Order Weighted Outdegrees Graphs
% Input to code:
% BEA Commodity by Commodity Matrices for years 1972-2019
% Output of code:
% First Order Weighted Outdegree Statistics & Graphs
% Uses: 
% 1) w_out_2ord function
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
[n_sectors_20,f_wo_20,xi_wo_20,wo_20_sorted,b_wo_20,bint_wo_20, rstats_wo_20,avg_slope_nw_wo_20,b_wo_gi_20,se_b_wo_gi_20]=w_out_2ord(X, cut_off);

X=AT19;
for i=1:max(size(X))
    if sum(X(:,i))>0
        XX(:,i)=X(:,i)./sum(X(:,i));
    elseif sum(X(:,i))==0
        XX(:,i)=X(:,i);
    end
end
X=XX;
clear XX;
[n_sectors_19,f_wo_19,xi_wo_19,wo_19_sorted,b_wo_19,bint_wo_19, rstats_wo_19,avg_slope_nw_wo_19,b_wo_gi_19,se_b_wo_gi_19]=w_out_2ord(X, cut_off);

X=AT18;
for i=1:max(size(X))
    if sum(X(:,i))>0
        XX(:,i)=X(:,i)./sum(X(:,i));
    elseif sum(X(:,i))==0
        XX(:,i)=X(:,i);
    end
end
X=XX;
clear XX;
[n_sectors_18,f_wo_18,xi_wo_18,wo_18_sorted,b_wo_18,bint_wo_18, rstats_wo_18,avg_slope_nw_wo_18,b_wo_gi_18,se_b_wo_gi_18]=w_out_2ord(X, cut_off);

X=AT17;
for i=1:max(size(X))
    if sum(X(:,i))>0
        XX(:,i)=X(:,i)./sum(X(:,i));
    elseif sum(X(:,i))==0
        XX(:,i)=X(:,i);
    end
end
X=XX;
clear XX;
[n_sectors_17,f_wo_17,xi_wo_17,wo_17_sorted,b_wo_17,bint_wo_17, rstats_wo_17,avg_slope_nw_wo_17,b_wo_gi_17,se_b_wo_gi_17]=w_out_2ord(X, cut_off);

X=AT16;
for i=1:max(size(X))
    if sum(X(:,i))>0
        XX(:,i)=X(:,i)./sum(X(:,i));
    elseif sum(X(:,i))==0
        XX(:,i)=X(:,i);
    end
end
X=XX;
clear XX;
[n_sectors_16,f_wo_16,xi_wo_16,wo_16_sorted,b_wo_16,bint_wo_16, rstats_wo_16,avg_slope_nw_wo_16,b_wo_gi_16,se_b_wo_gi_16]=w_out_2ord(X, cut_off);

X=AT15;
for i=1:max(size(X))
    if sum(X(:,i))>0
        XX(:,i)=X(:,i)./sum(X(:,i));
    elseif sum(X(:,i))==0
        XX(:,i)=X(:,i);
    end
end
X=XX;
clear XX;
[n_sectors_15,f_wo_15,xi_wo_15,wo_15_sorted,b_wo_15,bint_wo_15, rstats_wo_15,avg_slope_nw_wo_15,b_wo_gi_15,se_b_wo_gi_15]=w_out_2ord(X, cut_off);

X=AT14;
for i=1:max(size(X))
    if sum(X(:,i))>0
        XX(:,i)=X(:,i)./sum(X(:,i));
    elseif sum(X(:,i))==0
        XX(:,i)=X(:,i);
    end
end
X=XX;
clear XX;
[n_sectors_14,f_wo_14,xi_wo_14,wo_14_sorted,b_wo_14,bint_wo_14, rstats_wo_14,avg_slope_nw_wo_14, b_wo_gi_14,se_b_wo_gi_14]=w_out_2ord(X, cut_off);

X=AT13;
for i=1:max(size(X))
    if sum(X(:,i))>0
        XX(:,i)=X(:,i)./sum(X(:,i));
    elseif sum(X(:,i))==0
        XX(:,i)=X(:,i);
    end
end
X=XX;
clear XX;
[n_sectors_13,f_wo_13,xi_wo_13,wo_13_sorted,b_wo_13,bint_wo_13, rstats_wo_13,avg_slope_nw_wo_13,b_wo_gi_13,se_b_wo_gi_13]=w_out_2ord(X, cut_off);

X=AT12;
for i=1:max(size(X))
    if sum(X(:,i))>0
        XX(:,i)=X(:,i)./sum(X(:,i));
    elseif sum(X(:,i))==0
        XX(:,i)=X(:,i);
    end
end
X=XX;
clear XX;
[n_sectors_12,f_wo_12,xi_wo_12,wo_12_sorted,b_wo_12,bint_wo_12, rstats_wo_12,avg_slope_nw_wo_12,b_wo_gi_12,se_b_wo_gi_12]=w_out_2ord(X, cut_off);

X=AT11;
for i=1:max(size(X))
    if sum(X(:,i))>0
        XX(:,i)=X(:,i)./sum(X(:,i));
    elseif sum(X(:,i))==0
        XX(:,i)=X(:,i);
    end
end
X=XX;
clear XX;
[n_sectors_11,f_wo_11,xi_wo_11,wo_11_sorted,b_wo_11,bint_wo_11, rstats_wo_11,avg_slope_nw_wo_11,b_wo_gi_11,se_b_wo_gi_11]=w_out_2ord(X, cut_off);

X=AT10;
for i=1:max(size(X))
    if sum(X(:,i))>0
        XX(:,i)=X(:,i)./sum(X(:,i));
    elseif sum(X(:,i))==0
        XX(:,i)=X(:,i);
    end
end
X=XX;
clear XX;
[n_sectors_10,f_wo_10,xi_wo_10,wo_10_sorted,b_wo_10,bint_wo_10, rstats_wo_10,avg_slope_nw_wo_10,b_wo_gi_10,se_b_wo_gi_10]=w_out_2ord(X, cut_off);

X=AT09;
for i=1:max(size(X))
    if sum(X(:,i))>0
        XX(:,i)=X(:,i)./sum(X(:,i));
    elseif sum(X(:,i))==0
        XX(:,i)=X(:,i);
    end
end
X=XX;
clear XX;
[n_sectors_09,f_wo_09,xi_wo_09,wo_09_sorted,b_wo_09,bint_wo_09, rstats_wo_09,avg_slope_nw_wo_09,b_wo_gi_09,se_b_wo_gi_09]=w_out_2ord(X, cut_off);

X=AT08;
for i=1:max(size(X))
    if sum(X(:,i))>0
        XX(:,i)=X(:,i)./sum(X(:,i));
    elseif sum(X(:,i))==0
        XX(:,i)=X(:,i);
    end
end
X=XX;
clear XX;
[n_sectors_08,f_wo_08,xi_wo_08,wo_08_sorted,b_wo_08,bint_wo_08, rstats_wo_08,avg_slope_nw_wo_08,b_wo_gi_08,se_b_wo_gi_08]=w_out_2ord(X, cut_off);


X=AT07;
for i=1:max(size(X))
    if sum(X(:,i))>0
        XX(:,i)=X(:,i)./sum(X(:,i));
    elseif sum(X(:,i))==0
        XX(:,i)=X(:,i);
    end
end
X=XX;
clear XX;
[n_sectors_07,f_wo_07,xi_wo_07,wo_07_sorted,b_wo_07,bint_wo_07, rstats_wo_07,avg_slope_nw_wo_07,b_wo_gi_07,se_b_wo_gi_07]=w_out_2ord(X, cut_off);

X=AT06;
for i=1:max(size(X))
    if sum(X(:,i))>0
        XX(:,i)=X(:,i)./sum(X(:,i));
    elseif sum(X(:,i))==0
        XX(:,i)=X(:,i);
    end
end
X=XX;
clear XX;
[n_sectors_06,f_wo_06,xi_wo_06,wo_06_sorted,b_wo_06,bint_wo_06, rstats_wo_06,avg_slope_nw_wo_06,b_wo_gi_06,se_b_wo_gi_06]=w_out_2ord(X, cut_off);

X=AT05;
for i=1:max(size(X))
    if sum(X(:,i))>0
        XX(:,i)=X(:,i)./sum(X(:,i));
    elseif sum(X(:,i))==0
        XX(:,i)=X(:,i);
    end
end
X=XX;
clear XX;
[n_sectors_05,f_wo_05,xi_wo_05,wo_05_sorted,b_wo_05,bint_wo_05, rstats_wo_05,avg_slope_nw_wo_05,b_wo_gi_05,se_b_wo_gi_05]=w_out_2ord(X, cut_off);

X=AT04;
for i=1:max(size(X))
    if sum(X(:,i))>0
        XX(:,i)=X(:,i)./sum(X(:,i));
    elseif sum(X(:,i))==0
        XX(:,i)=X(:,i);
    end
end
X=XX;
clear XX;
[n_sectors_04,f_wo_04,xi_wo_04,wo_04_sorted,b_wo_04,bint_wo_04, rstats_wo_04,avg_slope_nw_wo_04,b_wo_gi_04,se_b_wo_gi_04]=w_out_2ord(X, cut_off);

X=AT03;
for i=1:max(size(X))
    if sum(X(:,i))>0
        XX(:,i)=X(:,i)./sum(X(:,i));
    elseif sum(X(:,i))==0
        XX(:,i)=X(:,i);
    end
end
X=XX;
clear XX;
[n_sectors_03,f_wo_03,xi_wo_03,wo_03_sorted,b_wo_03,bint_wo_03, rstats_wo_03,avg_slope_nw_wo_03,b_wo_gi_03,se_b_wo_gi_03]=w_out_2ord(X, cut_off);

X=AT02;
for i=1:max(size(X))
    if sum(X(:,i))>0
        XX(:,i)=X(:,i)./sum(X(:,i));
    elseif sum(X(:,i))==0
        XX(:,i)=X(:,i);
    end
end
X=XX;
clear XX;
[n_sectors_02,f_wo_02,xi_wo_02,wo_02_sorted,b_wo_02,bint_wo_02, rstats_wo_02,avg_slope_nw_wo_02,b_wo_gi_02,se_b_wo_gi_02]=w_out_2ord(X, cut_off);

X=AT01;
for i=1:max(size(X))
    if sum(X(:,i))>0
        XX(:,i)=X(:,i)./sum(X(:,i));
    elseif sum(X(:,i))==0
        XX(:,i)=X(:,i);
    end
end
X=XX;
clear XX;
[n_sectors_01,f_wo_01,xi_wo_01,wo_01_sorted,b_wo_01,bint_wo_01, rstats_wo_01,avg_slope_nw_wo_01,b_wo_gi_01,se_b_wo_gi_01]=w_out_2ord(X, cut_off);

X=AT00;
for i=1:max(size(X))
    if sum(X(:,i))>0
        XX(:,i)=X(:,i)./sum(X(:,i));
    elseif sum(X(:,i))==0
        XX(:,i)=X(:,i);
    end
end
X=XX;
clear XX;
[n_sectors_00,f_wo_00,xi_wo_00,wo_00_sorted,b_wo_00,bint_wo_00, rstats_wo_00,avg_slope_nw_wo_00,b_wo_gi_00,se_b_wo_gi_00]=w_out_2ord(X, cut_off);

X=AT99;
for i=1:max(size(X))
    if sum(X(:,i))>0
        XX(:,i)=X(:,i)./sum(X(:,i));
    elseif sum(X(:,i))==0
        XX(:,i)=X(:,i);
    end
end
X=XX;
clear XX;
[n_sectors_99,f_wo_99,xi_wo_99,wo_99_sorted,b_wo_99,bint_wo_99, rstats_wo_99,avg_slope_nw_wo_99,b_wo_gi_99,se_b_wo_gi_99]=w_out_2ord(X, cut_off);

X=AT98;
for i=1:max(size(X))
    if sum(X(:,i))>0
        XX(:,i)=X(:,i)./sum(X(:,i));
    elseif sum(X(:,i))==0
        XX(:,i)=X(:,i);
    end
end
X=XX;
clear XX;
[n_sectors_98,f_wo_98,xi_wo_98,wo_98_sorted,b_wo_98,bint_wo_98, rstats_wo_98,avg_slope_nw_wo_98,b_wo_gi_98,se_b_wo_gi_98]=w_out_2ord(X, cut_off);

X=AT97;
for i=1:max(size(X))
    if sum(X(:,i))>0
        XX(:,i)=X(:,i)./sum(X(:,i));
    elseif sum(X(:,i))==0
        XX(:,i)=X(:,i);
    end
end
X=XX;
clear XX;
[n_sectors_97,f_wo_97,xi_wo_97,wo_97_sorted,b_wo_97,bint_wo_97, rstats_wo_97,avg_slope_nw_wo_97,b_wo_gi_97,se_b_wo_gi_97]=w_out_2ord(X, cut_off);

X=AT96;
for i=1:max(size(X))
    if sum(X(:,i))>0
        XX(:,i)=X(:,i)./sum(X(:,i));
    elseif sum(X(:,i))==0
        XX(:,i)=X(:,i);
    end
end
X=XX;
clear XX;
[n_sectors_96,f_wo_96,xi_wo_96,wo_96_sorted,b_wo_96,bint_wo_96, rstats_wo_96,avg_slope_nw_wo_96,b_wo_gi_96,se_b_wo_gi_96]=w_out_2ord(X, cut_off);

X=AT95;
for i=1:max(size(X))
    if sum(X(:,i))>0
        XX(:,i)=X(:,i)./sum(X(:,i));
    elseif sum(X(:,i))==0
        XX(:,i)=X(:,i);
    end
end
X=XX;
clear XX;
[n_sectors_95,f_wo_95,xi_wo_95,wo_95_sorted,b_wo_95,bint_wo_95, rstats_wo_95,avg_slope_nw_wo_95,b_wo_gi_95,se_b_wo_gi_95]=w_out_2ord(X, cut_off);



%% Output Results
% OLS tail estimates of ZETA_HAT and standard error as per Gabaix-Ibragimov
ols_gi_outd2=[b_wo_gi_95(2),b_wo_gi_96(2),b_wo_gi_97(2),b_wo_gi_98(2),b_wo_gi_99(2),b_wo_gi_00(2),b_wo_gi_01(2),b_wo_gi_02(2),b_wo_gi_03(2),b_wo_gi_04(2),b_wo_gi_05(2),b_wo_gi_06(2),b_wo_gi_07(2),b_wo_gi_08(2),b_wo_gi_09(2),b_wo_gi_10(2),b_wo_gi_11(2),b_wo_gi_12(2),b_wo_gi_13(2),b_wo_gi_14(2),b_wo_gi_15(2),b_wo_gi_16(2),b_wo_gi_17(2),b_wo_gi_18(2),b_wo_gi_19(2),b_wo_gi_20(2);
              se_b_wo_gi_95,se_b_wo_gi_96,se_b_wo_gi_97,se_b_wo_gi_98,se_b_wo_gi_99,se_b_wo_gi_00,se_b_wo_gi_01,se_b_wo_gi_02,se_b_wo_gi_03,se_b_wo_gi_04,se_b_wo_gi_05,se_b_wo_gi_06,se_b_wo_gi_07,se_b_wo_gi_08,se_b_wo_gi_09,se_b_wo_gi_10,se_b_wo_gi_11,se_b_wo_gi_12,se_b_wo_gi_13,se_b_wo_gi_14,se_b_wo_gi_15,se_b_wo_gi_16,se_b_wo_gi_17,se_b_wo_gi_18,se_b_wo_gi_19,se_b_wo_gi_20]
% Total number of sectors
n_sectors_outd2=[n_sectors_95,n_sectors_96,n_sectors_97,n_sectors_98,n_sectors_99,n_sectors_00,n_sectors_01,n_sectors_02,n_sectors_03,n_sectors_04,n_sectors_05,n_sectors_06,n_sectors_07,n_sectors_08,n_sectors_09,n_sectors_10,n_sectors_11,n_sectors_12,n_sectors_13,n_sectors_14,n_sectors_15,n_sectors_16,n_sectors_17,n_sectors_18,n_sectors_19,n_sectors_20]

% Nadaraya-Watson nonparametric regression: average slope
nwslope_outd2=[avg_slope_nw_wo_95,avg_slope_nw_wo_96,avg_slope_nw_wo_97,avg_slope_nw_wo_98,avg_slope_nw_wo_99,avg_slope_nw_wo_00,avg_slope_nw_wo_01,avg_slope_nw_wo_02,avg_slope_nw_wo_03,avg_slope_nw_wo_04,avg_slope_nw_wo_05,avg_slope_nw_wo_06,avg_slope_nw_wo_07,avg_slope_nw_wo_08,avg_slope_nw_wo_09,avg_slope_nw_wo_10,avg_slope_nw_wo_11,avg_slope_nw_wo_12,avg_slope_nw_wo_13,avg_slope_nw_wo_14,avg_slope_nw_wo_15,avg_slope_nw_wo_16,avg_slope_nw_wo_17,avg_slope_nw_wo_18,avg_slope_nw_wo_19,avg_slope_nw_wo_20]

%% MLE Robustness check: calls Clauset, Shalizi and Newman (2009) codes
%Please refer to readme file for instructions
%MLE -Hill tail parameter with endogenous cutoff
[alpha_MLE_07, xmin_07]=plfit(nonzeros(wo_07_sorted),'finite');
ntail_07=length(find(wo_07_sorted>xmin_07));
std_alpha_07=(alpha_MLE_07-1)/sqrt(ntail_07);
[alpha_MLE_08, xmin_08]=plfit(nonzeros(wo_08_sorted),'finite');
ntail_08=length(find(wo_08_sorted>xmin_08));
std_alpha_08=(alpha_MLE_08-1)/sqrt(ntail_08);
[alpha_MLE_09, xmin_09]=plfit(nonzeros(wo_09_sorted),'finite');
ntail_09=length(find(wo_09_sorted>xmin_09));
std_alpha_09=(alpha_MLE_09-1)/sqrt(ntail_09);
[alpha_MLE_10, xmin_10]=plfit(nonzeros(wo_10_sorted),'finite');
ntail_10=length(find(wo_10_sorted>xmin_10));
std_alpha_10=(alpha_MLE_10-1)/sqrt(ntail_10);
[alpha_MLE_11, xmin_11]=plfit(nonzeros(wo_11_sorted),'finite');
ntail_11=length(find(wo_11_sorted>xmin_11));
std_alpha_11=(alpha_MLE_11-1)/sqrt(ntail_11);
[alpha_MLE_12, xmin_12]=plfit(nonzeros(wo_12_sorted),'finite');
ntail_12=length(find(wo_12_sorted>xmin_12));
std_alpha_12=(alpha_MLE_12-1)/sqrt(ntail_12);
[alpha_MLE_13, xmin_13]=plfit(nonzeros(wo_13_sorted),'finite');
ntail_13=length(find(wo_13_sorted>xmin_13));
std_alpha_13=(alpha_MLE_13-1)/sqrt(ntail_13);
[alpha_MLE_14, xmin_14]=plfit(nonzeros(wo_14_sorted),'finite');
ntail_14=length(find(wo_14_sorted>xmin_14));
std_alpha_14=(alpha_MLE_14-1)/sqrt(ntail_14);
[alpha_MLE_15, xmin_15]=plfit(nonzeros(wo_15_sorted),'finite');
ntail_15=length(find(wo_15_sorted>xmin_15));
std_alpha_15=(alpha_MLE_15-1)/sqrt(ntail_15);
[alpha_MLE_16, xmin_16]=plfit(nonzeros(wo_16_sorted),'finite');
ntail_16=length(find(wo_16_sorted>xmin_16));
std_alpha_16=(alpha_MLE_16-1)/sqrt(ntail_16);
[alpha_MLE_17, xmin_17]=plfit(nonzeros(wo_17_sorted),'finite');
ntail_17=length(find(wo_17_sorted>xmin_17));
std_alpha_17=(alpha_MLE_17-1)/sqrt(ntail_17);
[alpha_MLE_18, xmin_18]=plfit(nonzeros(wo_18_sorted),'finite');
ntail_18=length(find(wo_18_sorted>xmin_18));
std_alpha_18=(alpha_MLE_18-1)/sqrt(ntail_18);
[alpha_MLE_19, xmin_19]=plfit(nonzeros(wo_19_sorted),'nosmall');
ntail_19=length(find(wo_19_sorted>xmin_19));
std_alpha_19=(alpha_MLE_19-1)/sqrt(ntail_19);
[alpha_MLE_20, xmin_20]=plfit(nonzeros(wo_20_sorted),'nosmall');
ntail_20=length(find(wo_20_sorted>xmin_20));
std_alpha_20=(alpha_MLE_20-1)/sqrt(ntail_20);
%Output MLE results
mle_outd2=[alpha_MLE_07-1,alpha_MLE_08-1,alpha_MLE_09-1,alpha_MLE_10-1,alpha_MLE_11-1,alpha_MLE_12-1,alpha_MLE_13-1,alpha_MLE_14-1,alpha_MLE_15-1,alpha_MLE_16-1,alpha_MLE_17-1,alpha_MLE_18-1,alpha_MLE_19-1,alpha_MLE_20-1;
           std_alpha_07,std_alpha_08,std_alpha_09,std_alpha_10,std_alpha_11,std_alpha_12,std_alpha_13,std_alpha_14,std_alpha_15,std_alpha_16,std_alpha_17,std_alpha_18,std_alpha_19,std_alpha_20;
           ntail_07,ntail_08,ntail_09,ntail_10,ntail_11,ntail_12,ntail_13,ntail_14,ntail_15,ntail_16,ntail_17,ntail_18,ntail_19,ntail_20]


%% Output Graphs

%2 panel version with non parametric on LHS
a=log(wo_20_sorted(1:210));
b=log((1:1:210)./210);
r=ksr(a,b);
subplot(1,2,1), loglog(exp(a),exp(b),'o',exp(r.x),exp(r.f),'r-','MarkerSize',3,'linewidth',2);
legend('2020','Location','SouthWest');
axis([0.000001 100 0 1])
xlabel('Second Order Weighted Outdegree');
ylabel('Empirical CCDF');
axis square;
subplot(1,2,2,'align'),loglog(wo_07_sorted,(1:1:n_sectors_07)./n_sectors_07,'bx',wo_09_sorted,(1:1:n_sectors_09)./n_sectors_09,'r+',wo_11_sorted,(1:1:n_sectors_11)./n_sectors_11,'k*',wo_13_sorted,(1:1:n_sectors_13)./n_sectors_13,'go',wo_15_sorted,(1:1:n_sectors_15)./n_sectors_15,'ms',wo_17_sorted,(1:1:n_sectors_17)./n_sectors_17,'b^',wo_19_sorted,(1:1:n_sectors_19)./n_sectors_19,'ro', 'MarkerSize',3);
axis([0.000001 100 0 1])
xlabel('Second Order Weighted Outdegree');
ylabel('Empirical CCDF');
legend('2007','2009','2011','2013','2015','2017','2019','Location','SouthWest');
axis square;

set(gcf,'Units','inches');
screenposition = get(gcf,'Position');
set( gcf,'PaperSize',[29.7 21.0], 'PaperPosition',[0 0 29.7 21.0])
print -dpdf test1.pdf