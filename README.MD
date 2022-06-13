# ChordalGraph
ChordalGraph is an extension of the Julia package Graphs to handle chordal graphs.

To use ChordalGraph in Julia, run
```Julia
pkg> add ChordalGraph
 ```

## Dependencies
- Graphs

## Usage

The command CheckChordal checks whether a graph G is chordal. If G is chordal, then flag=true and a perfect elimination ordering *order* is returned; otherwise, flag=false.

```Julia
julia> flag,order = CheckChordal(G)
```

The command chordal_cliques! generates a chordal extension of G and enumerates all maximal cliques of the obtained graph.

```Julia
julia> cliques,num_cliques,size_cliques = chordal_cliques!(G, method="MF", minimize=true)
```
Options:  
method: MF (a chordal extension based on greedy minimal fill-in), MD (a chordal extension based on greedy minimal degree)  
minimize: true (minimizing the obtained chordal extension), false (not minimizing the obtained chordal extension)  

## References
[ChordalGraph: A Julia Package to Handle Chordal Graphs](), Jie Wang, 2020.  

## Citing
@article{Wang20,  
  author       = {Jie Wang},  
  title        = {ChordalGraph: A Julia Package to Handle Chordal Graphs},  
  year         = 2020,  
  url          = {https://github.com/wangjie212/ChordalGraph}  
}

## Contact
[Jie Wang](https://wangjie212.github.io/jiewang/): wangjie212@amss.ac.cn
