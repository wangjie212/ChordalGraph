module ChordalGraph

using Graphs

export CheckChordal, GreedyOrder!, chordal_cliques!, add_clique!, MinimalChordal!, max_cliques, fill!

include("chordal_extension.jl")

end
