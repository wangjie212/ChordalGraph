# ChordalGraph
ChordalGraph is an extension of the Julia package LightGraphs to handle chordal graphs.

To use ChordalGraph in Julia, run
```Julia
pkg> add https://github.com/wangjie212/ChordalGraph
 ```

## Dependencies
- LightGraphs

## Usage

The function CheckChordal checks whether a graph G is chordal. If G is chordal, then flag=true and a perfect elimination ordering *order* is returned; otherwise, flag=false.

```Julia
julia> flag,order=CheckChordal(G)
```

The function chordal_cliques! generates a chordal extension of G and enumerates all maximal cliques of the obtained graph.

```Julia
julia> cliques,num_cliques,size_cliques=chordal_cliques!(G, method="MF", minimize=true)
```
Options:  
method: MF (a chordal extension based on greedy minimal fill-in), MD (a chordal extension based on greedy minimal degree)  
minimize: true (minimizing the obtained chordal extension), false (not minimizing the obtained chordal extension)  

## References
[ChordalGraph: A Julia Package to Handle Chordal Graphs](), Jie Wang, 2020.  

## Contact
[Jie Wang](https://wangjie212.github.io/jiewang/): jwang@laas.fr
