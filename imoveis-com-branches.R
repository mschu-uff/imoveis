#
# Análise estatística de dados sobre imóveis
# (usando branches do git)
#

# Leitura dos dados --------------------------------------------------

df <- read.csv("imoveis.csv", header=TRUE, sep=";")

# Gráficos -----------------------------------------------------------

hist(df$metragem)

# Medidas ------------------------------------------------------------

mean(df$imposto_anual)
median(df$imposto_anual)
sd(df$imposto_anual)
