library(tidyverse)
library(DiagrammeR)

node_df <-
  create_node_df(
    n = 11,
    type = c("b", "b", "b", "b", "b", "c", "c", "c", "a", "a", "a"),
    label = LETTERS[1:11],
    style = "filled",
    color = "aqua",
    shape = rep_len("circle", 11),
    value = rep.int(1,11))

node_df

edge_df <-
  create_edge_df(
    from = c(2, 3, 4, 5, 6, 7, 8, 9, 10, 11),
    to = c(1, 2, 3, 4, 2, 6, 7, 3, 9, 10),
    rel = "related")


graph <- create_graph(nodes_df = node_df,edges_df=edge_df)

render_graph(graph,layout = "nicely") #,output = "visNetwork")

#grViz(graph,engine="visNetwork")


