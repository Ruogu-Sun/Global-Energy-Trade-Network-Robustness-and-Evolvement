import pandas as pd
import numpy as np
import networkx as nx
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
    G = nx.Graph()
    G = nx.from_pandas_edgelist(df1, 'i', "j", ["v", "q"], create_using=nx.DiGraph())
    print(f"Year {i}'s network for trade energy has Digraph information as follow:")
    print(G)
    return G

def get_year():
    return i

def get_nodes(G):
    return len(G.nodes)

def get_edges(G):
    return len(nx.edges(G))

def get_average_degree(G):
    return round(sum(dict(nx.degree(G)).values())/len(dict(nx.degree(G)))/2,2)

def get_average_betweenness(G):
    return round(sum(dict(nx.betweenness_centrality(G,normalized=False)).values()) / len(dict(nx.betweenness_centrality(G, normalized=False))),2)

def get_density(G):
    return round(nx.density(G),3)

def get_CV(G):
    degree_sequence = sorted((d for n, d in G.degree()), reverse=True)
    return round(np.std(degree_sequence)/np.mean(degree_sequence),2)

def get_ACC(G):
    return round(sum(dict(nx.clustering(G)).values()) / len(dict(nx.clustering(G))),3)

def get_APL(G):
    return round(nx.average_shortest_path_length(G),3)

def degree_centrality_csv(G):
    degree_centrality_dict = nx.degree_centrality(G)
    dc = pd.DataFrame.from_dict(degree_centrality_dict, orient='index', columns=['degree_centrality'])
    dc = dc.reset_index(drop=False)
    country = pd.read_csv('/Users/sunruogu/Desktop/Network/BACI_HS92_V202201/country_codes_V202201.csv',
                          encoding='ISO-8859-1')
    df2 = pd.merge(dc, country, how='inner', left_on='index', right_on='country_code')
    df2 = df2.drop('country_code', axis=1)
    df2.to_csv(f'/Users/sunruogu/Desktop/Network/Centrality/DegreeCen{i}.csv',index=False)

def gexf_generate(df,G):
    df111 = df[['i', 'v']]
    df122 = df[['i', 'q']]
    node1 = df111.groupby("i", as_index=False).sum()
    node2 = df122.groupby("i", as_index=False).sum()
    node1["q"] = node2["q"]
    node = node1
    node = node[['i', 'v', 'q']]
    country = pd.read_csv('/Users/sunruogu/Desktop/Network/BACI_HS92_V202201/country_codes_V202201.csv',
                          encoding='ISO-8859-1')
    node = pd.merge(node, country, how='inner', left_on='i', right_on='country_code')
    node = node.drop('country_code', axis=1)
    node = node.set_index('i')
    nodeatt = node.to_dict('index')
    nx.set_node_attributes(G, nodeatt)
    low_degree = [n for n, d in G.degree() if d < 80]
    G.remove_nodes_from(low_degree)
    nx.write_gexf(G, f"/Users/sunruogu/Desktop/Network/gexf/{i}.gexf")
    print(f"Below is the gexf file information for year {i}")
    print(nx.info(G))

def plot(G):
    fig, ax = plt.subplots(figsize=(35, 27))
    pos = nx.spring_layout(G, k=0.7,seed=6185300)
    nx.draw_networkx(
        G,
        pos=pos,
        with_labels=True,
        node_size=300,
        width=0.7,
        edge_color="gainsboro",
        alpha=0.7,
    )
    plt.savefig(f"/Users/sunruogu/Desktop/Network/network_figures/{i}_fig.pdf")

if __name__ == "__main__":
    product_code = [i for i in range(270100, 271601)]
    for i in range(1995,2021):
        index = 0
        file_path = f'/Users/sunruogu/Desktop/Network/BACI_HS92_V202201/BACI_HS92_Y{i}_V202201.csv'
        df=q_convert_to_numeric(read_original(file_path))
        df1=aggregate(df)
        G=graph_generate(df1)
        degree_centrality_csv(G)
        plot(G)
        with open(f'/Users/sunruogu/Desktop/Network/topological_feature_by_year.csv',"a") as f:
            writer = csv.writer(f)
            writer.writerow([get_year(),get_nodes(G),get_edges(G),get_average_degree(G),get_average_betweenness(G),get_density(G),get_CV(G),get_ACC(G),get_APL(G)])
        print(f"Year {i} finished")
        gexf_generate(read_original(file_path), G)