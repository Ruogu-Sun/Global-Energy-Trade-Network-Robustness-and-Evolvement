import pandas as pd
import networkx as nx

product_code = [i for i in range(270100, 271601)]
for i in range(1995,2021):
    file_path = f'/Users/sunruogu/Desktop/Network/BACI_HS92_V202201/BACI_HS92_Y{i}_V202201.csv'
    df=pd.read_csv(file_path)
    df=df[df["k"].isin(product_code)]
    data = df[['i', 'j','v']]
    data=data.groupby(['i','j'],as_index=False).sum()
    G = nx.Graph()
    G = nx.from_pandas_edgelist(data, 'i', "j", ["v"],create_using=nx.DiGraph())
    df1 = nx.to_pandas_adjacency(G, weight='v')
    df1.to_csv(f'/Users/sunruogu/Desktop/Network/matlab_adjacency_table/AdjacencyTable{i}.csv',index=False,header=False)
    print(f"year {i} finished")
print("all finished")