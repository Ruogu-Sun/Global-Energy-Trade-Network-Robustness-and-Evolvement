# Robustness and Evolvement of the Global Energy Trade Networks



## About

This directory provides codes for implementing this research titled *Robustness and Evolvement of the Global Energy Trade Networks*. 

## Requirements

This codes consist of three languages: Matlab, Python, and R. There are a few dependencies in need to run the code. Major libraries are listed as follows:

+ Python3 (>=3.8)
  + graph-tiger 0.2.5
  + igraph 0.10.3
  + networkx 2.8.8
  + pycountry 22.3.5
+ R (Version >=4.2.1 / Platform "aarch64-apple-darwin20 (64-bit)")  
  + ergm 4.4.0
  + tergm 4.1.1
  + networkDynamic 0.11.3

## Data Source

Energy trade data is obtained from database BACI which provides data on bilateral trade flows for 200 countries at the product level:

[BACI Website](http://www.cepii.fr/CEPII/en/bdd_modele/bdd_modele_item.asp?id=37)

Node features data is obtained from various authentic database:
[World Back](https://www.worldbank.org/en/home)
[DESTA](https://www.designoftradeagreements.org/)
[NCSC](https://www.ncsc.org/)

## Code Architecture

```markdown
> .
> ├── README.md                
> ├── network_topology                   # In Python. Studies GETNs topological features each year.
> │   ├── BACI_To_Matlab.py              # Converts BACI dataset into matrix form.
> │   └── Network_Analysis.py            # Studies network topology. 
> ├── network_degree_analysis            # In Matlab. Studies higher-order degree properties.
> ├── network_attack                     # In Python. Simulates network attack to study robustness.
> │   ├── network_attack_sr.py           # Simulates network attack; metric "spectral radius".
> │   ├── network_attack_avb.py          # Simulates network attack; metric "average vertex betweenness".
> │   ├── cascading_2020.ipynb           # Simulates cascading failure effect using 2020's data.
> │   └── cascading_by_years.ipynb       # Simulates cascading failure effect chronologically.
> ├── ERGMs                              # In R. Studies network formation and forecasting
> │   ├── node_attributes                # Stores raw node attributes data
> │   ├── gml_storage                    # Stores all network information with ".gml" format
> │   ├── ERGM_null&struc.R              # Studies null model and structural model
> │   ├── TERGM_fp.R                     # Studies separable model
> │   └── TERGM_cc.R                     # Studies joint model
```

## Research Procedure

1. Obtain bilateral energy product trade data via BACI.
2. Study network topological characteristics in directory ``network_topology``.
3. Study and visualize degree and higher-order degree characteristics in directory ``network_degree_analysis`` with converted matrix data.
4. Simulate and visualize network attacking process with various attack strategy and cascading failure in directory ``network_attack``.
5. Run ERGMs and TERGMs to study network formation mechanism and forecasting in directory ``ERGMs``.

## Submission Detail
This paper, so far, has been rejected by Energy, Energy Policy, and Energy Research & Social Science.
This is currently under review in IEEE Transactions on Network Science and Engineering on 2023.11.15
