%% Weighted Indegrees: Data Summary & Graphs
% Input to code:
% BACI Country by Country Matrices for years 2007-2019
% Output of code:
% Weighted Indegree Statistics & Graphs
% Uses w_ind function
% March 2022
%%

%% Set tail cutoff criterion
cut_off=0.2;

%% Load Data
load /Users/sunruogu/Desktop/Network/matlab_adjacency_table/AT_allyears.mat

%% Computations for each year
X=AT20;
[mean_share_20,n_sectors_20,f_wi_20,xi_wi_20, u_wi_20,wi_20_sorted,b_wi_20,bint_wi_20, rstats_wi_20]=w_ind(X, cut_off);
X=AT19;
[mean_share_19,n_sectors_19,f_wi_19,xi_wi_19, u_wi_19,wi_19_sorted,b_wi_19,bint_wi_19, rstats_wi_19]=w_ind(X, cut_off);
X=AT18;
[mean_share_18,n_sectors_18,f_wi_18,xi_wi_18, u_wi_18,wi_18_sorted,b_wi_18,bint_wi_18, rstats_wi_18]=w_ind(X, cut_off);
X=AT17;
[mean_share_17,n_sectors_17,f_wi_17,xi_wi_17, u_wi_17,wi_17_sorted,b_wi_17,bint_wi_17, rstats_wi_17]=w_ind(X, cut_off);
X=AT16;
[mean_share_16,n_sectors_16,f_wi_16,xi_wi_16, u_wi_16,wi_16_sorted,b_wi_16,bint_wi_16, rstats_wi_16]=w_ind(X, cut_off);
X=AT15;
[mean_share_15,n_sectors_15,f_wi_15,xi_wi_15, u_wi_15,wi_15_sorted,b_wi_15,bint_wi_15, rstats_wi_15]=w_ind(X, cut_off);
X=AT14;
[mean_share_14,n_sectors_14,f_wi_14,xi_wi_14, u_wi_14,wi_14_sorted,b_wi_14,bint_wi_14, rstats_wi_14]=w_ind(X, cut_off);
X=AT13;
[mean_share_13,n_sectors_13,f_wi_13,xi_wi_13, u_wi_13,wi_13_sorted,b_wi_13,bint_wi_13, rstats_wi_13]=w_ind(X, cut_off);
X=AT12;
[mean_share_12,n_sectors_12,f_wi_12,xi_wi_12, u_wi_12,wi_12_sorted,b_wi_12,bint_wi_12, rstats_wi_12]=w_ind(X, cut_off);
X=AT11;
[mean_share_11,n_sectors_11,f_wi_11,xi_wi_11, u_wi_11,wi_11_sorted,b_wi_11,bint_wi_11, rstats_wi_11]=w_ind(X, cut_off);
X=AT10;
[mean_share_10,n_sectors_10,f_wi_10,xi_wi_10, u_wi_10,wi_10_sorted,b_wi_10,bint_wi_10, rstats_wi_10]=w_ind(X, cut_off);
X=AT09;
[mean_share_09,n_sectors_09,f_wi_09,xi_wi_09, u_wi_09,wi_09_sorted,b_wi_09,bint_wi_09, rstats_wi_09]=w_ind(X, cut_off);
X=AT08;
[mean_share_08,n_sectors_08,f_wi_08,xi_wi_08, u_wi_08,wi_08_sorted,b_wi_08,bint_wi_08, rstats_wi_08]=w_ind(X, cut_off);
X=AT07;
[mean_share_07,n_sectors_07,f_wi_07,xi_wi_07, u_wi_07,wi_07_sorted,b_wi_07,bint_wi_07, rstats_wi_07]=w_ind(X, cut_off);

%% Output Results
Mean_Input_Share=[mean_share_07,mean_share_08,mean_share_09,mean_share_10,mean_share_11,mean_share_12,mean_share_13,mean_share_15,mean_share_16,mean_share_17,mean_share_18,mean_share_19,mean_share_20]
Std_Input_Share= [std(wi_07_sorted),std(wi_08_sorted),std(wi_09_sorted),std(wi_10_sorted),std(wi_11_sorted),std(wi_12_sorted),std(wi_13_sorted),std(wi_14_sorted),std(wi_15_sorted),std(wi_16_sorted),std(wi_17_sorted),std(wi_18_sorted),std(wi_19_sorted),std(wi_20_sorted)]
Bandwith=[u_wi_07,u_wi_08, u_wi_09,u_wi_10, u_wi_11,u_wi_12, u_wi_13, u_wi_14, u_wi_15, u_wi_16, u_wi_17, u_wi_18, u_wi_19, u_wi_20]

%Number/Percentage of Sectors within 1 std from mean input share
Pct_1std_mean_07=length(find(wi_07_sorted <= (1*std(wi_07_sorted)+mean(wi_07_sorted)) & wi_07_sorted >= (mean(wi_07_sorted)-1*std(wi_07_sorted))))./n_sectors_07;
Pct_1std_mean_08=length(find(wi_08_sorted <= (1*std(wi_08_sorted)+mean(wi_08_sorted)) & wi_08_sorted >= (mean(wi_08_sorted)-1*std(wi_08_sorted))))./n_sectors_08;
Pct_1std_mean_09=length(find(wi_09_sorted <= (1*std(wi_09_sorted)+mean(wi_09_sorted)) & wi_09_sorted >= (mean(wi_09_sorted)-1*std(wi_09_sorted))))./n_sectors_09;
Pct_1std_mean_10=length(find(wi_10_sorted <= (1*std(wi_10_sorted)+mean(wi_10_sorted)) & wi_10_sorted >= (mean(wi_10_sorted)-1*std(wi_10_sorted))))./n_sectors_10;
Pct_1std_mean_11=length(find(wi_11_sorted <= (1*std(wi_11_sorted)+mean(wi_11_sorted)) & wi_11_sorted >= (mean(wi_11_sorted)-1*std(wi_11_sorted))))./n_sectors_11;
Pct_1std_mean_12=length(find(wi_12_sorted <= (1*std(wi_12_sorted)+mean(wi_12_sorted)) & wi_12_sorted >= (mean(wi_12_sorted)-1*std(wi_12_sorted))))./n_sectors_12;
Pct_1std_mean_13=length(find(wi_13_sorted <= (1*std(wi_13_sorted)+mean(wi_13_sorted)) & wi_13_sorted >= (mean(wi_13_sorted)-1*std(wi_13_sorted))))./n_sectors_13;
Pct_1std_mean_14=length(find(wi_14_sorted <= (1*std(wi_14_sorted)+mean(wi_14_sorted)) & wi_14_sorted >= (mean(wi_14_sorted)-1*std(wi_14_sorted))))./n_sectors_14;
Pct_1std_mean_15=length(find(wi_15_sorted <= (1*std(wi_15_sorted)+mean(wi_15_sorted)) & wi_15_sorted >= (mean(wi_15_sorted)-1*std(wi_15_sorted))))./n_sectors_15;
Pct_1std_mean_16=length(find(wi_16_sorted <= (1*std(wi_16_sorted)+mean(wi_16_sorted)) & wi_16_sorted >= (mean(wi_16_sorted)-1*std(wi_16_sorted))))./n_sectors_16;
Pct_1std_mean_17=length(find(wi_17_sorted <= (1*std(wi_17_sorted)+mean(wi_17_sorted)) & wi_17_sorted >= (mean(wi_17_sorted)-1*std(wi_17_sorted))))./n_sectors_17;
Pct_1std_mean_18=length(find(wi_18_sorted <= (1*std(wi_18_sorted)+mean(wi_18_sorted)) & wi_18_sorted >= (mean(wi_18_sorted)-1*std(wi_18_sorted))))./n_sectors_18;
Pct_1std_mean_19=length(find(wi_19_sorted <= (1*std(wi_19_sorted)+mean(wi_19_sorted)) & wi_19_sorted >= (mean(wi_19_sorted)-1*std(wi_19_sorted))))./n_sectors_19;
Pct_1std_mean_20=length(find(wi_20_sorted <= (1*std(wi_20_sorted)+mean(wi_20_sorted)) & wi_20_sorted >= (mean(wi_20_sorted)-1*std(wi_20_sorted))))./n_sectors_20;
Pct_1std_mean=[Pct_1std_mean_07,Pct_1std_mean_08,Pct_1std_mean_09,Pct_1std_mean_10,Pct_1std_mean_11,Pct_1std_mean_12,Pct_1std_mean_13,Pct_1std_mean_14,Pct_1std_mean_15,Pct_1std_mean_16,Pct_1std_mean_17,Pct_1std_mean_18,Pct_1std_mean_19,Pct_1std_mean_20]


%% Output Graphs
% 2 panel version
subplot(1,2,1), plot(xi_wi_20,f_wi_20,'b.');
legend('2020','Location','NE');
xlabel('Weighted Indegree');
ylabel('Empirical Density');
axis([0 1 0 3])
axis square;
% subplot(1,2,2,'align'),plot(xi_wi_07,f_wi_07,'bx',xi_wi_08,f_wi_08,'yo',xi_wi_09,f_wi_09,'r+',xi_wi_10,f_wi_10,'cd',xi_wi_11(1:end-1),f_wi_11(1:end-1),'r*',xi_wi_12,f_wi_12,'b.',xi_wi_13(1:end-1),f_wi_13(1:end-1),'go',xi_wi_14,f_wi_14,'cp',xi_wi_15,f_wi_15,'ms',xi_wi_16,f_wi_16,'rd',xi_wi_17,f_wi_17,'b^',xi_wi_18,f_wi_18,'gs',xi_wi_19,f_wi_19,'yh', 'MarkerSize',3);
% legend('2007','2008','2009','2010','2011','2012','2013','2014','2015','2016','2017','2018','2019','Location','NE');
subplot(1,2,2,'align'),plot(xi_wi_07,f_wi_07,'bx',xi_wi_09,f_wi_09,'r+',xi_wi_11(1:end-1),f_wi_11(1:end-1),'r*',xi_wi_13(1:end-1),f_wi_13(1:end-1),'go',xi_wi_15,f_wi_15,'ms',xi_wi_17,f_wi_17,'b^', xi_wi_19,f_wi_19,'ro','MarkerSize',3);
legend('2007','2009','2011','2013','2015','2017','2019','Location','NE');
xlabel('Weighted Indegree');
ylabel('Empirical Density');
axis([0 1 0 3])
axis square;
