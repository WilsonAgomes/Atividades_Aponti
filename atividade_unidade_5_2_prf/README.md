# 🚧 Frequências e Rankings de Acidentes da PRF

> 📊 **Análise exploratória dos acidentes registrados nas rodovias federais brasileiras em 2025.**

Este projeto transforma os registros da **Polícia Rodoviária Federal (PRF)** em uma leitura clara sobre frequência e fatalidade, com foco em três recortes:

| 🗺️ Unidade federativa | 🚗 Tipo de acidente | 🌅 Fase do dia |
|:---:|:---:|:---:|
| Onde ocorrem? | Como acontecem? | Quando acontecem? |

---

## 🎯 Objetivo

Comparar o volume de ocorrências e a proporção de acidentes fatais em cada recorte, sem confundir frequência com gravidade relativa. Os resultados são descritivos e não demonstram risco individual nem relação causal.

## 🗃️ Base de dados

O projeto utiliza `dados_abertos_prf-datatran2025.csv`, com 72.529 ocorrências registradas entre 1º de janeiro e 31 de dezembro de 2025.

A unidade de análise é uma ocorrência. A variável `acidente_fatal` é definida por:

```python
df["acidente_fatal"] = (df["mortos"] > 0).astype(int)
```

### 📌 Indicadores gerais

| Indicador | Resultado |
|---|---:|
| Total de acidentes | **72.529** |
| Acidentes fatais | **5.210** |
| Total de mortos | **6.043** |
| Percentual global de acidentes fatais | **7,18%** |

> [!NOTE]
> A coluna `classificacao_acidente` é usada apenas como conferência. Existe um registro com morte e classificação ausente, por isso a definição oficial do projeto utiliza `mortos > 0`.

---

## 📁 Estrutura da atividade

```text
atividade_unidade_5_2_prf/
│
├── 📓 EDA — Indicadores e Fatores Associados a Acidentes Fatais.ipynb
├── 📄 frequencia_ranking_uf_acidente_fatal.txt
├── 📄 frequencia_ranking_tipo_acidente.txt
├── 📄 frequencia_ranking_fase_dia_acidente_fatal.txt
├── 🗃️ dados_abertos_prf-datatran2025.csv
└── 📘 README.md
```

| Arquivo | Finalidade |
|---|---|
| 📓 `EDA — Indicadores e Fatores Associados a Acidentes Fatais.ipynb` | Carregamento, preparação, indicadores e análises exploratórias |
| 🗺️ `frequencia_ranking_uf_acidente_fatal.txt` | Interpretação por unidade federativa |
| 🚘 `frequencia_ranking_tipo_acidente.txt` | Interpretação por tipo de acidente |
| 🌙 `frequencia_ranking_fase_dia_acidente_fatal.txt` | Interpretação por fase do dia |
| 🗃️ `dados_abertos_prf-datatran2025.csv` | Base de entrada, preservada sem alterações |

---

## ▶️ Como executar

1. 📂 Abra a pasta `atividade_unidade_5_2_prf` no **VS Code** ou **Jupyter**.
2. 🐍 Selecione um ambiente Python com Pandas, NumPy, Matplotlib e Jupyter instalados.
3. 📓 Abra o notebook `EDA — Indicadores e Fatores Associados a Acidentes Fatais.ipynb`.
4. 🔄 Reinicie o kernel e execute todas as células na ordem.

> [!IMPORTANT]
> O caminho do CSV é relativo à pasta da atividade. Execute o notebook usando essa pasta como diretório de trabalho.

---

## 🔎 Principais resultados

### 🗺️ 1. Unidade federativa

Minas Gerais concentra o maior volume, com 9.570 acidentes. O Maranhão apresenta a maior proporção observada de acidentes fatais, com 236 casos fatais em 1.262 acidentes, ou 18,70%. Os rankings de volume e de proporção respondem a perguntas diferentes.

### 🚗 2. Tipo de acidente

A colisão traseira é o tipo mais frequente, com 14.360 registros e 4,31% de acidentes fatais. O atropelamento de pedestre apresenta a maior proporção fatal, com 29,51%, ligeiramente acima da colisão frontal, com 29,46%. A colisão frontal registra o maior número de mortos entre os tipos analisados: 1.863.

### 🌅 3. Fase do dia

O pleno dia concentra o maior volume, com 40.375 acidentes, mas apresenta a menor proporção fatal, 5,07%. O amanhecer tem a maior proporção, 11,20%. A plena noite combina volume elevado e proporção fatal acima da média global: 24.781 acidentes, 2.522 acidentes fatais e 10,18%.

### 🏆 Destaques em uma visão

| Recorte | Maior volume | Maior proporção fatal |
|---|---|---|
| UF | **MG — 9.570 acidentes** | **MA — 18,70%** |
| Tipo | **Colisão traseira — 14.360** | **Atropelamento de pedestre — 29,51%** |
| Fase do dia | **Pleno dia — 40.375** | **Amanhecer — 11,20%** |

---

## ⚠️ Cuidados de interpretação

- 📊 **Frequência elevada** não significa necessariamente maior proporção de fatalidade.
- 🛣️ Os percentuais são calculados sobre as ocorrências registradas, sem medida de exposição ao tráfego.
- 🗺️ Diferenças entre UFs podem refletir volume, fluxo, infraestrutura, fiscalização e outros fatores não controlados.
- 🔍 Categorias com menos observações podem apresentar percentuais mais instáveis.
- 🧠 A análise descreve associações e distribuições; **não comprova causalidade**.

---

## 🛠️ Tecnologias utilizadas

| Tecnologia | Uso no projeto |
|---|---|
| 🐍 **Python** | Linguagem principal |
| 🐼 **Pandas** | Leitura, transformação e agrupamento dos dados |
| 🔢 **NumPy** | Operações numéricas de apoio |
| 📊 **Matplotlib** | Recursos de visualização |
| 📓 **Jupyter Notebook** | Execução e documentação da análise |

---

## ✅ Conclusão

Os resultados reforçam uma ideia central: **volume e proporção de fatalidade contam histórias diferentes**. Uma categoria pode concentrar muitas ocorrências sem apresentar o maior percentual fatal, enquanto outra pode ter menor volume e maior gravidade relativa.

> 🚦 **Analisar os dois indicadores em conjunto produz uma leitura mais responsável e útil dos acidentes registrados pela PRF.**
