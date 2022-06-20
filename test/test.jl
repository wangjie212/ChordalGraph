using Graphs
using ChordalGraph

G = Graph(7)
add_edge!(G, 1, 2)
add_edge!(G, 1, 5)
add_edge!(G, 2, 5)
add_edge!(G, 2, 3)
add_edge!(G, 5, 6)
add_edge!(G, 3, 4)
add_edge!(G, 6, 7)
add_edge!(G, 4, 7)
add_edge!(G, 1, 3)
add_edge!(G, 1, 6)

G,order = GreedyOrder!(G, method="MF")

G = Graph(7)
add_edge!(G, 1, 2)
add_edge!(G, 1, 5)
add_edge!(G, 2, 5)
add_edge!(G, 2, 3)
add_edge!(G, 5, 6)
add_edge!(G, 3, 4)
add_edge!(G, 6, 7)
add_edge!(G, 4, 7)
add_edge!(G, 1, 3)
add_edge!(G, 1, 6)
add_edge!(G, 2, 5)
add_edge!(G, 3, 4)
add_edge!(G, 4, 5)
add_edge!(G, 2, 7)
add_edge!(G, 4, 7)
add_edge!(G, 2, 6)

order = [1,2,3,4,5,6,7]
G,F = ChordalGraph.fill!(G, order)
G,order = MinimalChordal!(G, order, F)
