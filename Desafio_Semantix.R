# -------------------------------------------------------------------------------------
# In�cio c�digo R
# -------------------------------------------------------------------------------------
# Autor: Bruno Henrique Giovannini
# Data: 21/07/2017
# Objetivo: M�tricas e centralidde - classificar os v�rtices de um determinado gr�fico 
#           pela sua proximidade.
#--------------------------------------------------------------------------------------

# Instala��o do pacote igraph
install.packages("igraph")

# Carregando o pacote igraph()
library(igraph)

# Verificando as fun��es que est�o sendo utilizadas pelo R
search()

# Setando o diret�rio para extrair o arquivo "Edges.dat"
setwd("C:/Users/bhgio/Desktop/Desafio_Semantix")
getwd()

# Importando arquivo Edges.dat
df1 <- read.table("edges.dat")
df1
dim(df1)

# Importando o grafo
grafo = read_graph(file.choose(), format = c("edgelist"))
# Imprimindo grafo (Verificando a quantidade v�rtices e arestas - 100v ,945e)
grafo

# Verificando o grau das v�rtices e guardando o valor na vari�vel "grau" 
degree(grafo,mode="in")
degree(grafo,mode="out")
degree(grafo,mode="all")
grau = degree(grafo,mode="in")

# verificar o diametro da rede (comprimento do menos caminho entre dois n�s)
diameter(grafo, directed =TRUE)
get_diameter(grafo, directed = FALSE)     

# Calcula a densidade do grafo
edge_density(grafo)

# Calcula a vizinhan�a do grafo
neighborhood(grafo, 1, mode=c("out"))

# Plotando o grafo

tkplot(grafo, vertex.size=grau, vertex.color="lightblue", edge.color="red",
       vertex.label.font=2)

# --------------------------------------------------------------------------------------
# Fim c�digo R
# --------------------------------------------------------------------------------------


