if(!require("ggplot2")) install.packages("ggplot2")
if(!require("readxl")) install.packages("readxl")

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

# total_production <- yield_data %>%
#   group_by(Tipo.de.Cultura) %>%
#   summarise(total_production = sum(Produção..Toneladas.))

# # Calculate the percentage of total production for each culture type
# total_production <- total_production %>%
#   mutate(percentage = total_production / sum(total_production) * 100)

# head(total_production)

# # Create the pie chart
# ggplot(total_production, aes(x = "", y = percentage, fill = Tipo.de.Cultura)) +
#   geom_bar(stat = "identity", width = 1) +
#   coord_polar("y", start = 0) +
#   labs(title = "Produção por Tipo de Cultura", fill = "Tipo de Cultura") +
#   theme_gray() +
#   theme(legend.position = "right") +
#   geom_text(aes(label = paste(round(percentage, 1), "%")), position = position_stack(vjust = 0.5))
