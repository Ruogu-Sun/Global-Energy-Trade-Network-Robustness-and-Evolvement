# install.packages("igraph")
# install.packages("multiplex")
# install.packages("geosphere")
# install.packages("ergm")
# install.packages("statnet.common")
# install.packages("parallel")
library(igraph)
library(multiplex)
library(ergm)
library(network)
library(intergraph)
library(geosphere)
library(readr)
library(parallel)
library(statnet)

library(igraph)
library(multiplex)
library(ergm)
library(network)
library(intergraph)
library(geosphere)
library(readr)
library(parallel)
library(statnet)

ergm.getCluster

# read graph
g<-read.graph("test20.gml",format=c("gml"))
#g_full_dis<-read.graph("~/Desktop/Network_Attack/Linear_Regression/test_full.gml",format=c("gml"))
#g_full_con<-read_graph("~/Desktop/Network_Attack/Linear_Regression/test_full_con.gml",format=c("gml"))

gg<-asNetwork(g)
#gg_full_dis<-asNetwork(g_full_dis)
#gg_full_con<-asNetwork(g_full_con)
summary(gg)
#summary(gg_full_dis)

# edgecov(distance)
my_distmat <- distm(cbind(gg%v%"longitude", gg%v%"latitude"), fun = distGeo)
# my_distmat
#my_distvec <- as.vector(my_distmat[as.edgelist(gg)])
distance <- my_distmat
distance

# edgecov(contiguity)
my_coords <- cbind(gg %v%"longitude", gg %v%"latitude")
my_distmat <- distm(cbind(gg%v%"longitude", gg%v%"latitude"), fun = distGeo)/1000
my_contigmat <- as.matrix(my_distmat <= 1000)
my_contigmat
my_binary_matrix <- as.numeric(my_contigmat)
dim(my_binary_matrix) <- dim(my_contigmat)
print(my_binary_matrix)
contiguity <- my_binary_matrix
contiguity

# COL
# Import CSV matrix
COL <- read_csv("COL.csv",col_names = FALSE)
COLmat <- as.matrix(COL)
# COLelist <- as.edgelist.matrix(COLmat,n=224)
net <- network(COLmat)
my_edgecov <- rnorm(network.size(net))
set.edge.attribute(net, "COL", my_edgecov)

# null model outcome #
print("start null model fit")
null_model<-ergm(gg~edges+nodecov("GDP")+nodematch("Income_Group")+nodecov("LPI")+nodecov("CDE")+nodecov("PTA_num")+edgecov(distance)+edgecov(contiguity)+edgecov(net,"COL"))
summary(null_model)
#convergenceStats(null_model)
#goftest(null_model)

# Structure dependent model # Cloud
print("start sdv model fit")
struc_model<-ergm(gg~edges+mutual+gwodegree+gwdsp+nodecov("GDP")+nodematch("Income_Group")+nodecov("LPI")+nodecov("CDE")+nodecov("PTA_num")+edgecov(distance)+edgecov(contiguity)+edgecov(net,"COL"))
summary(struc_model)
