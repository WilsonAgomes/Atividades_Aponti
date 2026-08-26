# 🚧 Atividade - PRF 2025 — Análise de Acidentes com Pandas e Matplotlib

Projeto de análise exploratória de dados dos **acidentes registrados pela Polícia Rodoviária Federal (PRF) em 2025**, desenvolvido como uma extensão em Python do trabalho acadêmico originalmente realizado em Excel/Google Sheets.

O projeto utiliza **Pandas, NumPy e Matplotlib** para reproduzir e adaptar os mesmos tipos de gráficos presentes no notebook de referência `graficos12.ipynb`, aplicando-os à base consolidada da atividade PRF 2025.

---

## 📌 Visão geral

A análise busca transformar os registros brutos de acidentes em informações que ajudem a compreender:

- a distribuição da fatalidade;
- a relação entre veículos e pessoas envolvidas;
- a evolução mensal dos acidentes fatais;
- os estados com maior volume de acidentes fatais;
- os períodos do dia com maior concentração de ocorrências fatais;
- os horários e dias da semana mais críticos;
- a relação entre variáveis numéricas;
- os tipos de acidentes que mais contribuem para a fatalidade;
- a participação dos diferentes tipos de pista;
- o perfil comparativo das UFs com mais acidentes fatais.

> ⚠️ **Importante:** o enunciado original da atividade acadêmica determina que a entrega oficial seja realizada exclusivamente em **Excel/Google Sheets**, sem Python, R ou Jupyter. Este repositório é uma **extensão complementar para estudo, prática de Pandas e portfólio**, não uma substituição da entrega oficial.

---

## 🎯 Objetivos

O projeto tem como objetivos:

1. praticar leitura e tratamento de arquivos Excel com Pandas;
2. validar os indicadores obtidos anteriormente no Excel;
3. explorar distribuições, relações e padrões temporais;
4. reproduzir os gráficos do notebook de referência usando a base real do projeto;
5. desenvolver interpretação estatística e storytelling de dados;
6. organizar uma estrutura de projeto adequada para uso no VS Code e publicação no GitHub.

---

## 🗂️ Base de dados

A base utilizada é o arquivo consolidado do projeto PRF 2025, armazenado em:

```text
dados/dados_abertos_prf_2025.xlsx
```

A aba principal é:

```text
dados_abertos_prf-datatran2025 
```

Principais variáveis utilizadas:

| Variável | Descrição |
|---|---|
| `id` | Identificador da ocorrência |
| `data_inversa` | Data do acidente |
| `dia_semana` | Dia da semana |
| `horario` | Horário do acidente |
| `uf` | Unidade federativa |
| `br` | Rodovia federal |
| `municipio` | Município |
| `causa_acidente` | Causa registrada |
| `tipo_acidente` | Tipo de acidente |
| `fase_dia` | Fase do dia |
| `condicao_metereologica` | Condição meteorológica |
| `tipo_pista` | Tipo de pista |
| `pessoas` | Pessoas envolvidas |
| `mortos` | Mortos |
| `feridos_leves` | Feridos leves |
| `feridos_graves` | Feridos graves |
| `ilesos` | Pessoas ilesas |
| `ignorados` | Situação ignorada |
| `feridos` | Total de feridos da base |
| `veiculos` | Veículos envolvidos |
| `Total_de_vitimas` | Coluna auxiliar construída no projeto |
| `Acidentes_Fatais` | Coluna auxiliar: 1 quando há pelo menos um morto |

---

## 📊 Indicadores globais validados

A leitura da base com Pandas confirma os indicadores principais do projeto:

| Indicador | Resultado |
|---|---:|
| Total de acidentes | **72.529** |
| Total de mortos | **6.043** |
| Total de feridos leves + graves | **83.550** |
| Total de vítimas | **89.593** |
| Acidentes fatais | **5.210** |
| Percentual de acidentes fatais | **7,18%** |
| Taxa de letalidade operacional | **6,74%** |

### Fórmulas

**Acidente fatal**

```python
df["acidente_fatal"] = (df["mortos"] > 0).astype(int)
```

**Percentual de acidentes fatais**

```text
Acidentes fatais / Total de acidentes × 100
```

**Taxa de letalidade operacional**

```text
Mortos / Total de vítimas × 100
```

---

## 🧰 Tecnologias utilizadas

- 🐍 Python
- 🐼 Pandas
- 🔢 NumPy
- 📊 Matplotlib
- 📈 Seaborn — disponível no ambiente para futuras extensões
- 📁 OpenPyXL
- 📓 Jupyter Notebook / VS Code

---

## 📁 Estrutura do projeto

```text
Projeto_PRF_2025_Pandas/
│
├── dados/
│   └── dados_abertos_prf_2025.xlsx
│
├── graficos/
│   ├── 01_histograma_mortos.png
│   ├── 02_densidade_pessoas.png
│   ├── 03_dispersao_veiculos_pessoas.png
│   ├── ...
│   └── 16_radar_top3_ufs.png
│
├── notebooks/
│   └── analise_graficos_prf_2025.ipynb
│
├── src/
│   └── analise_graficos_prf_2025.py
│
├── referencia/
│   └── graficos12_original.ipynb
│
├── docs/
│   └── atividade_pratica_analytics_prf.pdf
│
├── .gitignore
├── requirements.txt
└── README.md
```

---

## 🚀 Como executar no VS Code

### 1. Abra a pasta do projeto

No VS Code:

```text
Arquivo → Abrir Pasta → Projeto_PRF_2025_Pandas
```

### 2. Crie um ambiente virtual

No terminal do VS Code:

**Windows:**

```bash
python -m venv .venv
.venv\Scripts\activate
```

**Linux/macOS:**

```bash
python3 -m venv .venv
source .venv/bin/activate
```

### 3. Instale as dependências

```bash
pip install -r requirements.txt
```

### 4. Abra o notebook

```text
notebooks/analise_graficos_prf_2025.ipynb
```

Selecione o interpretador Python do ambiente `.venv` e execute as células na ordem.

### 5. Alternativa: executar o script Python

```bash
python src/analise_graficos_prf_2025.py
```

Os arquivos PNG serão gravados automaticamente em:

```text
graficos/
```

---

## 📈 Gráficos adaptados do código de referência

Os tipos de gráficos foram mantidos conforme o notebook fornecido.

| Nº | Visualização | Pergunta respondida |
|---:|---|---|
| 1 | Histograma | Quantas mortes normalmente ocorrem em um acidente fatal? |
| 2 | Densidade | A distribuição de pessoas muda entre fatal e não fatal? |
| 3 | Dispersão | Mais veículos estão associados a mais pessoas envolvidas? |
| 4 | Dispersão + tendência | Qual é a direção média dessa relação? |
| 5 | Dispersão por classe | Fatais e não fatais ocupam regiões diferentes? |
| 6 | Dois gráficos mensais | Volume e percentual de fatalidade variam no ano? |
| 7 | Boxplot | Como a quantidade de pessoas se distribui por fatalidade? |
| 8 | Barras horizontais | Quais UFs concentram mais acidentes fatais? |
| 9 | Pizza | Como os acidentes fatais se distribuem pelas fases do dia? |
| 10 | Heatmap dia × hora | Em quais combinações de dia e horário há mais fatais? |
| 11 | Heatmap de correlação | Quais variáveis apresentam maior associação linear? |
| 12 | Dispersão 3D | Como veículos, pessoas e feridos graves se combinam? |
| 13 | Linha mensal | Qual mês apresentou maior número de fatais? |
| 14 | Pareto | Quais tipos concentram a maior parte dos acidentes fatais? |
| 15 | Área empilhada | Como a fatalidade mensal se distribui por tipo de pista? |
| 16 | Radar | Como se comparam as 3 UFs com mais acidentes fatais? |

---

## 🔎 Principais achados

### 1. Distribuição dos óbitos

Dos **5.210 acidentes fatais**, **4.632** tiveram exatamente uma morte. Isso representa aproximadamente **88,9%** das ocorrências fatais.

O resultado mostra que acidentes com múltiplas mortes existem e são relevantes, mas representam uma parcela bem menor do conjunto fatal.

### 2. Pessoas envolvidas

- média em acidentes não fatais: aproximadamente **2,53 pessoas**;
- média em acidentes fatais: aproximadamente **3,46 pessoas**;
- mediana não fatal: **2 pessoas**;
- mediana fatal: **3 pessoas**.

Os acidentes fatais apresentam, em média, maior quantidade de pessoas envolvidas.

### 3. Veículos x pessoas

A correlação entre quantidade de veículos e pessoas é aproximadamente **0,395**, indicando uma associação positiva moderada.

Esse resultado não significa que aumentar o número de veículos cause automaticamente maior quantidade de pessoas ou maior fatalidade. A relação é apenas descritiva.

### 4. Evolução mensal

**Maio** apresentou:

- **504 acidentes fatais**;
- aproximadamente **8,27% de acidentes fatais** sobre o total de acidentes daquele mês.

Foi o maior resultado mensal nas duas medidas dentro da base de 2025.

### 5. UFs com maior volume de acidentes fatais

As três primeiras são:

1. **MG — 647** acidentes fatais;
2. **PR — 511**;
3. **BA — 476**.

No radar, entretanto, a Bahia apresenta percentual de acidentes fatais superior ao de Minas Gerais e Paraná. Isso reforça a importância de separar **volume absoluto** de **proporção**.

### 6. Fase do dia

Entre os acidentes fatais:

- **Plena Noite:** 2.522 — aproximadamente **48,4%**;
- **Pleno dia:** 2.049 — aproximadamente **39,3%**;
- **Amanhecer:** 386 — aproximadamente **7,4%**;
- **Anoitecer:** 253 — aproximadamente **4,9%**.

A participação no total de fatais não deve ser confundida com a taxa de fatalidade de cada fase do dia.

### 7. Dia e horário

No heatmap dia × hora, a combinação com maior contagem anual é:

```text
Domingo às 19h → 95 acidentes fatais
```

Esse valor identifica uma concentração observada no período, não uma relação causal.

### 8. Tipos de acidente — Pareto

Os **seis primeiros tipos** do ranking acumulam aproximadamente **81,5%** dos acidentes fatais.

A **colisão frontal** ocupa a primeira posição, com **1.396 acidentes fatais**.

O Pareto permite priorizar análises e medidas preventivas nos tipos que concentram a maior parcela da fatalidade.

### 9. Tipo de pista

Quantidade de acidentes fatais acumulada em 2025:

- **Pista simples:** 3.424;
- **Pista dupla:** 1.501;
- **Pista múltipla:** 285.

Pistas simples concentram a maior quantidade absoluta de acidentes fatais na base.

---

## 🧠 Cuidados de interpretação

Este projeto trabalha principalmente com **análise exploratória e estatística descritiva**.

Portanto:

- correlação não significa causalidade;
- maior volume não significa necessariamente maior risco proporcional;
- um gráfico de dispersão mostra associação, não explicação causal;
- o radar usa valores normalizados e não deve ser lido como escala absoluta;
- categorias com poucas ocorrências podem apresentar percentuais elevados;
- a base deve ser interpretada dentro do contexto dos registros disponíveis da PRF em 2025.

---

## 📚 Relação com a atividade acadêmica

O projeto acadêmico original possui três frentes principais:

1. estruturação do problema e Data Analytics Canvas;
2. análise e indicadores em Excel/Google Sheets;
3. storytelling e apresentação dos achados.

Este repositório acrescenta uma quarta frente de aprendizagem:

> **reproduzir a análise em Python para desenvolver competências em Pandas, visualização de dados e organização de projetos de Data Analytics.**

Essa extensão é especialmente útil para portfólio e continuidade dos estudos em análise de dados.

---

## 🔄 Possíveis evoluções

- [ ] criar versão dos gráficos em Plotly;
- [ ] construir dashboard interativo;
- [ ] acrescentar mapas com latitude e longitude;
- [ ] analisar BR × UF × município com Pandas;
- [ ] comparar causa do acidente com taxa de letalidade;
- [ ] criar análise de fase do dia × condição meteorológica;
- [ ] acrescentar testes estatísticos;
- [ ] criar uma versão em Streamlit;
- [ ] automatizar a atualização com novas bases anuais da PRF.

---

## ✅ Conclusão

A análise em Pandas confirma os principais indicadores obtidos no trabalho em planilha e amplia a exploração dos dados com diferentes técnicas de visualização.

O conjunto de gráficos permite observar o problema por diferentes perspectivas: **distribuição, relação entre variáveis, tempo, localização, fatalidade, concentração e perfil comparativo**.

Além dos resultados sobre acidentes rodoviários, o projeto demonstra uma evolução importante no processo de Data Analytics: sair da exploração manual em planilhas e reproduzir a mesma lógica de análise em código de forma documentada, reutilizável e organizada.

---

## 📄 Fonte dos dados

Base acadêmica utilizada no projeto:

```text
dados_abertos_prf-datatran2025
Registros de ocorrências da Polícia Rodoviária Federal — 2025
```

Para uso público ou publicação externa, consulte também os termos e a documentação oficial da fonte de dados da PRF.
