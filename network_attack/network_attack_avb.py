from graph_tiger.measures import run_measure,get_measures
from graph_tiger.attacks import run_attack_method, get_attack_methods
from graph_tiger.graphs import graph_loader
from graph_tiger.cascading import Cascading
import matplotlib.pyplot as plt
import networkx as nx
import pandas as pd
import seaborn as sns
import graph_tiger
import numpy as np
import matplotlib.pyplot as plt
import csv

def read_original(file_path):
    df=pd.read_csv(file_path)
    df=df[df["k"].isin(product_code)]
    return df

def q_convert_to_numeric(df):
    global index
    for q in df["q"]:
        try:
            df.iloc[index, -1] = float(q.strip())
        except ValueError:
            df.iloc[index, -1] = 0
        index+=1
    return df

def aggregate(df):
    df11 = df[['i', 'j', 'v']]
    df12 = df[['i', 'j', 'q']]
    df21 = df11.groupby(['i', 'j'], as_index=False).sum()
    df22 = df12.groupby(['i', 'j'], as_index=False).sum()
    df21["q"] = df22["q"]
    df1 = df21
    return df1

def graph_generate(df1):
    G1 = nx.Graph()
    G1 = nx.from_pandas_edgelist(df1, 'i', "j", ["v"])
    G1 = G1.subgraph(max(nx.connected_components(G1), key=len))
    G=nx.Graph(G1)
    # print(f"Year {i}'s network for trade energy has Digraph information as follow:")
    # print(G)
    return G

def run_random_removal(G):
    result=[]
    lst=run_attack_method(G, method="rnd_node", k=len(G) - 1)
    n=len(G)
    result.append(run_measure(G,measure="largest_connected_component")/n)
    for node in lst:
        try:
            try:
                G.remove_node(node)
            except:
                continue
            print(node)
            G_temp=nx.Graph(G)
            G_temp=G_temp.subgraph(max(nx.connected_components(G_temp),key=len))
            result.append(run_measure(G_temp, measure="largest_connected_component")/n)
        except ValueError:
            break
        G=nx.Graph(G_temp)
    indexing=[i for i in range(len(result))]
    type=["Random Removal"]* len(result)
    final=zip(indexing,result,type)
    return final

def run_initial_degree_removal(G):
    result=[]
    lst=run_attack_method(G, method="id_node", k=len(G) - 1)
    n = len(G)
    result.append(run_measure(G,measure="largest_connected_component")/n)
    for node in lst:
        try:
            try:
                G.remove_node(node)
            except:
                continue
            print(node)
            G_temp=nx.Graph(G)
            G_temp=G_temp.subgraph(max(nx.connected_components(G_temp),key=len))
            result.append(run_measure(G_temp, measure="largest_connected_component")/n)
        except ValueError:
            break
        G=nx.Graph(G_temp)
    indexing = [i for i in range(len(result))]
    type = ["Initial Degree"] * len(result)
    final = zip(indexing, result, type)
    return final

def run_initial_betweenness_removal(G):
    result=[]
    lst=run_attack_method(G, method="ib_node", k=len(G) - 1)
    n = len(G)
    result.append(run_measure(G,measure="largest_connected_component")/n)
    for node in lst:
        try:
            try:
                G.remove_node(node)
            except:
                continue
            print(node)
            G_temp=nx.Graph(G)
            G_temp=G_temp.subgraph(max(nx.connected_components(G_temp),key=len))
            result.append(run_measure(G_temp, measure="largest_connected_component")/n)
        except ValueError:
            break
        G=nx.Graph(G_temp)
    indexing = [i for i in range(len(result))]
    type = ["Initial Betweenness"] * len(result)
    final = zip(indexing, result, type)
    return final

def run_recalculated_degree_removal(G):
    result = []
    lst=run_attack_method(G, method="rd_node", k=len(G) - 1)
    n = len(G)
    result.append(run_measure(G, measure="largest_connected_component")/n)
    for node in lst:
        try:
            try:
                G.remove_node(node)
            except:
                continue
            print(node)
            G_temp=nx.Graph(G)
            G_temp=G_temp.subgraph(max(nx.connected_components(G_temp),key=len))
            result.append(run_measure(G_temp, measure="largest_connected_component")/n)
        except ValueError:
            break
        G=nx.Graph(G_temp)
    indexing = [i for i in range(len(result))]
    type = ["Recalculated Degree"] * len(result)
    final = zip(indexing, result, type)
    return final

def run_recalculated_betweenness_removel(G):
    result = []
    lst=run_attack_method(G, method="rb_node", k=len(G) - 1)
    n = len(G)
    result.append(run_measure(G, measure="largest_connected_component")/n)
    for node in lst:
        try:
            try:
                G.remove_node(node)
            except:
                continue
            print(node)
            G_temp=nx.Graph(G)
            G_temp=G_temp.subgraph(max(nx.connected_components(G_temp),key=len))
            result.append(run_measure(G_temp, measure="largest_connected_component")/n)
        except ValueError:
            break
        G=nx.Graph(G_temp)
    indexing = [i for i in range(len(result))]
    type = ["Recalculated Betweenness"] * len(result)
    final = zip(indexing, result, type)
    return final

if __name__ == "__main__":
    # print(get_measures())
    product_code = [i for i in range(270100, 271601)]
    for i in [2008,2012,2016,2020]:
        index = 0
        file_path = f'/Users/sunruogu/Desktop/Network_Attack/BACI_HS92_V202201/BACI_HS92_Y{i}_V202201.csv'
        df=q_convert_to_numeric(read_original(file_path))
        df1=aggregate(df)
        G=graph_generate(df1)
        rnd=run_random_removal(G)
        G=graph_generate(df1)
        id=run_initial_degree_removal(G)
        G = graph_generate(df1)
        rd=run_recalculated_degree_removal(G)
        G = graph_generate(df1)
        ib=run_initial_betweenness_removal(G)
        G = graph_generate(df1)
        rb=run_recalculated_betweenness_removel(G)
        with open(f"attack_by_year_avb/lcc_by_year{i}.csv","w") as csvfile:
            writer = csv.writer(csvfile, delimiter=",")
            writer.writerow(("Nodes Removed","Largest Connected Component","Attack Strategy"))
            for line in rnd:
                writer.writerow(line)
            for line in id:
                writer.writerow(line)
            for line in rd:
                writer.writerow(line)
            for line in ib:
                writer.writerow(line)
            for line in rb:
                writer.writerow(line)
            print(f"finished{i}")