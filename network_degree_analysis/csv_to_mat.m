%% Convert data from .csv to .mat
% Input to code:
% Adjacency table for years 1995-2020 in .csv format
% Output of code:
% Adjacency table for years 1995-2020 in .mat format
% Kaiwen LI, March 2022
%%

AT95=readmatrix('Users/sunruogu/Desktop/Network/matlab_adjacency_table/AdjacencyTable1995.csv');
AT96=readmatrix('Users/sunruogu/Desktop/Network/matlab_adjacency_table/AdjacencyTable1996.csv');
AT97=readmatrix('Users/sunruogu/Desktop/Network/matlab_adjacency_table/AdjacencyTable1997.csv');
AT98=readmatrix('Users/sunruogu/Desktop/Network/matlab_adjacency_table/AdjacencyTable1998.csv');
AT99=readmatrix('Users/sunruogu/Desktop/Network/matlab_adjacency_table/AdjacencyTable1999.csv');
AT00=readmatrix('Users/sunruogu/Desktop/Network/matlab_adjacency_table/AdjacencyTable2000.csv');
AT01=readmatrix('Users/sunruogu/Desktop/Network/matlab_adjacency_table/AdjacencyTable2001.csv');
AT02=readmatrix('Users/sunruogu/Desktop/Network/matlab_adjacency_table/AdjacencyTable2002.csv');
AT03=readmatrix('Users/sunruogu/Desktop/Network/matlab_adjacency_table/AdjacencyTable2003.csv');
AT04=readmatrix('Users/sunruogu/Desktop/Network/matlab_adjacency_table/AdjacencyTable2004.csv');
AT05=readmatrix('Users/sunruogu/Desktop/Network/matlab_adjacency_table/AdjacencyTable2005.csv');
AT06=readmatrix('Users/sunruogu/Desktop/Network/matlab_adjacency_table/AdjacencyTable2006.csv');
AT07=readmatrix('Users/sunruogu/Desktop/Network/matlab_adjacency_table/AdjacencyTable2007.csv');
AT08=readmatrix('Users/sunruogu/Desktop/Network/matlab_adjacency_table/AdjacencyTable2008.csv');
AT09=readmatrix('Users/sunruogu/Desktop/Network/matlab_adjacency_table/AdjacencyTable2009.csv');
AT10=readmatrix('Users/sunruogu/Desktop/Network/matlab_adjacency_table/AdjacencyTable2010.csv');
AT11=readmatrix('Users/sunruogu/Desktop/Network/matlab_adjacency_table/AdjacencyTable2011.csv');
AT12=readmatrix('Users/sunruogu/Desktop/Network/matlab_adjacency_table/AdjacencyTable2012.csv');
AT13=readmatrix('Users/sunruogu/Desktop/Network/matlab_adjacency_table/AdjacencyTable2013.csv');
AT14=readmatrix('Users/sunruogu/Desktop/Network/matlab_adjacency_table/AdjacencyTable2014.csv');
AT15=readmatrix('Users/sunruogu/Desktop/Network/matlab_adjacency_table/AdjacencyTable2015.csv');
AT16=readmatrix('Users/sunruogu/Desktop/Network/matlab_adjacency_table/AdjacencyTable2016.csv');
AT17=readmatrix('Users/sunruogu/Desktop/Network/matlab_adjacency_table/AdjacencyTable2017.csv');
AT18=readmatrix('Users/sunruogu/Desktop/Network/matlab_adjacency_table/AdjacencyTable2018.csv');
AT19=readmatrix('Users/sunruogu/Desktop/Network/matlab_adjacency_table/AdjacencyTable2019.csv');
AT20=readmatrix('Users/sunruogu/Desktop/Network/matlab_adjacency_table/AdjacencyTable2020.csv');

save AT_allyears