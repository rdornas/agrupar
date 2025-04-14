# Carregar pacotes necessários
library(dplyr)
library(tidyr)
library(tictoc) # para contabilizar o tempo gasto

tic()

# Configurações para tamanho das tabelas
n_clientes <- 1e6  # 1 milhão de clientes
n_produtos <- 100  # 100 categorias de produtos

# Gerar tabela de produtos
produtos <- data.frame(
  id = 1:n_produtos,  # 100 categorias
  nome = paste("Categoria", 1:n_produtos)
)

# Gerar tabela de clientes ----
set.seed(123)  # Para reprodutibilidade

clientes <- tibble(
  id = 1:1e6,  # 1 milhão de clientes
  nome = sample(c("João", "Maria", "José", "Carlos", "Ana", "Lucas", "Paula", "Fernanda", "Roberta", "Gustavo"), 1e6, replace = TRUE),
  id_interesse = replicate(1e6, sample(1:100, sample(1:5, 1), replace = TRUE), simplify = FALSE) # Simula um array
)

toc()
