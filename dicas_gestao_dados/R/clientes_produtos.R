# Carregar pacotes necessários
library(dplyr)
library(tidyr)
library(purrr)
library(tictoc) # para contabilizar o tempo gasto

tic()

# Configurações para tamanho das tabelas
n_compras <- 1e6 # 1 milhão de compras
n_produtos <- 100 # 100 categorias de produtos

# Gerar tabela de produtos
produtos <- data.frame(
  id = 1:n_produtos, # 100 categorias
  nome = paste("Categoria", 1:n_produtos)
)

# Gerar tabela de clientes ----
set.seed(123) # Para reprodutibilidade

compras <- tibble(
  id = 1:1e6, # 1 milhão de clientes
  cliente = sample(c("João", "Maria", "José", "Carlos", "Ana", "Lucas", "Paula", "Fernanda", "Roberta", "Gustavo"), n_compras, replace = TRUE),
  id_produto = replicate(n_compras, sample(1:100, sample(1:5, 1), replace = TRUE), simplify = FALSE) # Simula um array
) |>
  mutate(produtos = purrr::map_chr(id_produto, ~ paste(.x, collapse = ",")))

toc()

compras
