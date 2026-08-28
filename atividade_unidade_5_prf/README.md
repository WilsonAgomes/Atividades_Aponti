# 🚧 Atividade - PRF 2025 — Análise de Acidentes com Pandas e Matplotlib

Projeto de análise exploratória de dados dos **acidentes registrados pela Polícia Rodoviária Federal (PRF) em 2025**, desenvolvido como uma extensão em Python do trabalho acadêmico originalmente realizado em Excel/Google Sheets.

O projeto utiliza **Pandas, NumPy e Matplotlib** para reproduzir e adaptar os **cinco primeiros gráficos** do notebook de referência `graficos12.ipynb`, aplicando-os à base consolidada da atividade PRF 2025.

---

## 📌 Visão geral

A análise busca transformar os registros brutos de acidentes em informações que ajudem a compreender:

- a distribuição da fatalidade;
- a distribuição de pessoas em acidentes fatais e não fatais;
- a relação entre veículos e pessoas envolvidas;
- a tendência média dessa relação;
- as diferenças visuais entre acidentes fatais e não fatais.

> ⚠️ **Importante:** o enunciado original da atividade acadêmica determina que a entrega oficial seja realizada exclusivamente em **Excel/Google Sheets**, sem Python, R ou Jupyter. Este repositório é uma **extensão complementar para estudo, prática de Pandas e portfólio**, não uma substituição da entrega oficial.

---

## 🎯 Objetivos

O projeto tem como objetivos:

1. praticar leitura e tratamento de arquivos Excel com Pandas;
2. validar os indicadores obtidos anteriormente no Excel;
3. explorar distribuições e relações entre variáveis;
4. reproduzir os cinco primeiros gráficos do notebook de referência usando a base real do projeto;
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
| `pessoas` | Pessoas envolvidas |
| `mortos` | Mortos |
| `feridos_leves` | Feridos leves |
| `feridos_graves` | Feridos graves |
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
atividade_unidade_5_prf/
│
├── dados/
│   └── dados_abertos_prf_2025.xlsx
│
├── graficos/
│   ├── 01_histograma_mortos.png
│   ├── 02_densidade_pessoas.png
│   ├── 03_dispersao_veiculos_pessoas.png
│   ├── 04_dispersao_regressao.png
│   └── 05_dispersao_fatalidade.png
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
Arquivo → Abrir Pasta → atividade_unidade_5_prf
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

### 5. Consulte os arquivos gerados

Ao executar o notebook, os cinco arquivos PNG serão gravados automaticamente em:

```text
graficos/
```

---

## 📈 Gráficos adaptados do código de referência

Foram mantidos os cinco primeiros tipos de gráficos do notebook fornecido.

| Nº | Visualização | Pergunta respondida |
|---:|---|---|
| 1 | Histograma | Quantas mortes normalmente ocorrem em um acidente fatal? |
| 2 | Densidade | A distribuição de pessoas muda entre fatal e não fatal? |
| 3 | Dispersão | Mais veículos estão associados a mais pessoas envolvidas? |
| 4 | Dispersão + tendência | Qual é a direção média dessa relação? |
| 5 | Dispersão por classe | Fatais e não fatais ocupam regiões diferentes? |

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

---

## 🧠 Cuidados de interpretação

Este projeto trabalha principalmente com **análise exploratória e estatística descritiva**.

Portanto:

- correlação não significa causalidade;
- um gráfico de dispersão mostra associação, não explicação causal;
- a linha de tendência resume um padrão médio e não representa todos os acidentes;
- a sobreposição de pontos pode ocultar a quantidade real de ocorrências;
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

A análise em Pandas confirma os principais indicadores obtidos no trabalho em planilha e explora os dados com cinco técnicas de visualização.

O conjunto de gráficos permite observar a **distribuição de mortes e pessoas**, a **relação entre veículos e pessoas** e as diferenças visuais entre acidentes **fatais e não fatais**.

Além dos resultados sobre acidentes rodoviários, o projeto demonstra uma evolução importante no processo de Data Analytics: sair da exploração manual em planilhas e reproduzir a mesma lógica de análise em código de forma documentada, reutilizável e organizada.

---

## 📄 Fonte dos dados

Base acadêmica utilizada no projeto:

```text
dados_abertos_prf-datatran2025
Registros de ocorrências da Polícia Rodoviária Federal — 2025
```

Para uso público ou publicação externa, consulte também os termos e a documentação oficial da fonte de dados da PRF.
