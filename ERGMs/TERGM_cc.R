# Packages installation and read-in
#install.packages('tsna')
#install.packages('ndtv')
#install.packages('htmlwidgets')
#install.packages('latticeExtra')
#install.packages('tergm')
#install.packages('tbergm')
# install.packages("Rglpk", dependencies=TRUE)

library(igraph)
library(multiplex)
library(network)
library(ergm)
library(tergm)
library(tsna)
#library(ndtv)
#library(btergm)
library(intergraph)
library(geosphere)
library(readr)
library(parallel)
library(networkDynamic)
library(Rglpk)
ergm.getCluster

sessionInfo()

set.seed(1)



# graph read-in
g18<-read.graph("t1.gml",format=c("gml"))
g15<-read.graph("t2.gml",format=c("gml"))
network18<-asNetwork(g18)
network15<-asNetwork(g15)
summary(network15)
summary(network18)

netlist<-list(network15,network18)

# edgecov(distance) assignment
distmat15 <- distm(cbind(network18%v%"longitude", network18%v%"latitude"), fun = distGeo)
distvec15 <- as.vector(distmat15[as.edgelist(network15)])
distance <- distmat15
distance

# edgecov(contiguity)
my_coords <- cbind(network18 %v%"longitude", network18 %v%"latitude")
my_distmat <- distm(cbind(network18%v%"longitude", network18%v%"latitude"), fun = distGeo)/1000
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

node_idx <- 3
node_attributes15 <- get.vertex.attribute(network15, "label")[node_idx]
node_attributes18 <- get.vertex.attribute(network18, "label")[node_idx]
node_attributes15
node_attributes18


#model <- btergm(netlist ~ edges+nodecov("GDP")+nodefactor("Income_Group")+nodecov("LPI")+nodecov("CDE")+delrecip() + memory(type = "stability"),R=500)
#summary(model)


test2 <- tergm(netlist ~
                 Cross(~edges+mutual+nodecov("GDP")+nodefactor("Income_Group")+nodecov("LPI")+nodecov("CDE")+edgecov(contiguity)+edgecov(net,"COL")) +
                 Change(~edges+mutual+nodecov("GDP")+nodefactor("Income_Group")+nodecov("LPI")+nodecov("CDE")+edgecov(contiguity)+edgecov(net,"COL")),
               estimate = "CMLE",
               times = c(1:2)
)
summary(test2)
