# TODO List for Agribusiness Data Analysis

This document outlines the tasks required to complete the agribusiness data analysis project.

## 1. Data Collection

- [x] Research and collect public data from the following sources:
  - [x] **CONAB (Companhia Nacional de Abastecimento)**: [https://www.conab.gov.br/](https://www.conab.gov.br/)
  - [x] **IBGE (Instituto Brasileiro de Geografia e Estatística)**: [https://www.ibge.gov.br/](https://www.ibge.gov.br/)
  - [ ] **MAPA (Ministério da Agricultura, Pecuária e Abastecimento)**: [https://www.gov.br/agricultura/pt-br](https://www.gov.br/agricultura/pt-br)
  - [x] **Embrapa (Empresa Brasileira de Pesquisa Agropecuária)**: [https://www.embrapa.br/](https://www.embrapa.br/)
  - [ ] **INPE (Instituto Nacional de Pesquisas Espaciais)**: [https://www.gov.br/inpe/pt-br](https://www.gov.br/inpe/pt-br)
  - [ ] **CNA BRASIL (Confederação da Agricultura e Pecuária do Brasil)**: [https://www.cnabrasil.org.br/](https://www.cnabrasil.org.br/)
  
## 2. Excel Database Creation

- [x] Create a database in **Excel** with at least 30 rows and 4 columns:
  - [x] **Quantitative Discrete Variable**: Integer values (e.g., number of farms, hectares cultivated).
  - [x] **Quantitative Continuous Variable**: Continuous values (e.g., agricultural production in tons, rainfall in millimeters).
  - [x] **Qualitative Nominal Variable**: Non-ordered categories (e.g., type of crop: corn, soy, coffee).
  - [x] **Qualitative Ordinal Variable**: Ordered categories (e.g., soil quality: poor, medium, good).
  
## 3. Exploratory Analysis in R

- [x] Select a quantitative variable and perform an exploratory analysis using **R**:
  - [x] **Measures of Central Tendency**: Mean, median, mode.
  - [x] **Measures of Dispersion**: Standard deviation, variance, range.
  - [x] **Measures of Position**: Quartiles, deciles, percentiles.
  
## 4. Qualitative Variable Graphical Analysis in R

- [x] Choose a qualitative variable and perform a graphical analysis using **R**:
  - [x] Create visualizations such as bar charts, histograms, or boxplots.
  - [ ] Improve chart appearance

## 5. Deliverables

- [x] Fix `data.csv` continuous values
- [x] Add names
  ```
  # YourFullName_RM12345_phaseX_chapterY
  ```
- [ ] Submit the following files:
  - [ ] **Excel file** with the complete dataset.
  - [ ] **R script file** containing all the analysis code
