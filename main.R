# LuisFillipeEmidio_RM559976_fase2_cap7
# EdersonLuizBadecadosSantos_RM560204_fase2_cap7
# CaioRodriguesCastro_RM559766_fase2_cap7
# FelipeSoaresNascimento_RM560151_fase2_cap7
# LucasFerreiraHillesheim_RM559319_fase2_cap7


if(!require("ggplot2")) install.packages("ggplot2")
if(!require("readxl")) install.packages("readxl")
if(!require("dplyr")) install.packages("dplyr")
options(encoding = "UTF-8")
library(ggplot2)
library(dplyr)
library(readxl)

cat("# Exploratory Data Analysis (EDA)\n")
cat("\n")

## 1. Read data from a CSV file

df <- readxl::read_xlsx("data.xlsx")
production <- df$`Produção (Toneladas)`

cat("Data loaded successfully from the XLSX file: `./data.xlsx`.\n")
cat("Column selected: Produção (Toneladas)\n")
cat("\n")


## 2. Exploratory Data Analysis

# Measures of Central Tendency
mean_yield <- as.numeric(mean(production))
median_yield <- as.numeric(median(production))
mode_yield <- as.numeric(names(sort(table(production), decreasing = TRUE)[1]))

cat("## Measures of Central Tendency\n\n")
cat("Mean:", mean_yield, "\n")
cat("Median:", median_yield, "\n")
cat("Mode:", mode_yield, "\n")
cat("\n")

# Measures of Dispersion
sd_yield <- sd(production)  # Standard deviation
variance_yield <- var(production)  # Variance
range_yield <- range(production)  # Range (minimum and maximum)
amplitude_yield <- diff(range_yield)  # Absolute range

cat("## Measures of Dispersion\n\n")
cat("Standard Deviation:", sd_yield, "\n")
cat("Variance:", variance_yield, "\n")
cat("Range:", amplitude_yield, "\n")
cat("\n")

# Separating Measures
quartiles_yield <- quantile(production, probs = c(0.25, 0.5, 0.75))  # Quartiles
percentiles_yield <- quantile(production, probs = seq(0.1, 1, by = 0.1))  # Deciles or Percentiles

cat("## Separating Measures\n\n")
cat("Quartiles:", quartiles_yield, "\n")
cat("Percentiles (Deciles):", percentiles_yield, "\n")
cat("\n")

## 3. Data Visualization

## Pie chart for the production (in percentage) of each culture type

total_production <- df %>%
  group_by(`Tipo de Cultura`) %>%
  summarise(total_production = sum(`Produção (Toneladas)`))

# Calcular o percentual de produção total para cada tipo de cultura
total_production <- total_production %>%
  mutate(percentage = total_production / sum(total_production) * 100)

# Create a barchart
ggplot(total_production, aes(x = reorder(`Tipo de Cultura`, percentage), y = percentage, fill = `Tipo de Cultura`)) +
  geom_bar(stat = "identity") +
  coord_flip() +
  labs(title = "Distribuicao da Producao por Tipo de Cultura",
       subtitle = "Analise da producao agricola em toneladas",
       caption = "Fonte: Dados extraidos de 'data.xlsx'",
       x = "Tipo de Cultura",
       y = "Percentual de Producao (%)") +
  theme_minimal() +
  theme(legend.position = "none",
        plot.title = element_text(hjust = 0.5),
        plot.subtitle = element_text(hjust = 0.5)) +
  geom_text(aes(label = paste(round(percentage, 1), "%")),
            hjust = -0.1,
            color = "black")


cat("Insights:\n")
cat("- O tipo de cultura com maior produção representa", max(total_production$percentage), "% da producao total.\n")