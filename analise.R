#
# Análise estatística de dados sobre imóveis
#

# Leitura dos dados ---------------------------------------------

df <- read.csv("imoveis.csv", sep=";")

# Análise descritiva --------------------------------------------

analise_quanti <- function(x) {
  round(c(summary(x), "SD"=sd(x)), 2)
}

for (coluna in names(df)) {
  cat(coluna, "\n")
  print(analise_quanti(df[,coluna]))
  cat("\n")
}

hist(df$preco)

plot(df$metragem, df$imposto_anual)
