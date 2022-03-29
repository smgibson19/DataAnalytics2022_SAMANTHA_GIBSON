library(igraph)

# creates a visual connections graph, like my graph mining class
g <- graph.full(nrow(dist.au))
V(g)$label <- city.names
help(layout.mds)
layout <- layout.mds(g, dist = as.matrix(dist.au))
plot(g, layout = layout, vertex.size = 3)
