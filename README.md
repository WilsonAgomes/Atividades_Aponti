# 🚧 Análise de Acidentes da PRF — 2025

Repositório com as atividades práticas desenvolvidas no curso de **Análise de Dados da Aponti Academy**, utilizando dados de acidentes registrados pela Polícia Rodoviária Federal (PRF) em 2025.

| Informação | Detalhes |
|---|---|
| **Aluno** | Wilson A. Gomes |
| **Professor** | Danilo Cavalcanti |
| **Curso** | Análise de Dados |

---

## 📌 Sobre o repositório

As atividades estão organizadas por unidade e acompanham a evolução do projeto: da exploração inicial dos dados à criação de indicadores, dashboards, tratamento de dados e análises exploratórias com Python.

Cada pasta possui um `README.md` próprio, com os objetivos, arquivos, códigos, resultados e detalhes da respectiva atividade.

## 🎯 Objetivo

Aplicar, de forma prática, os principais conceitos de análise de dados por meio da exploração da base de acidentes da PRF de 2025.

O projeto busca transformar dados brutos em informações relevantes, utilizando consultas, tratamento, indicadores e visualizações para identificar padrões e apoiar a compreensão das ocorrências nas rodovias federais brasileiras.

Além do aprendizado acadêmico, o repositório tem como objetivo demonstrar a evolução das habilidades em **SQL, Excel e Python**, reunindo as atividades desenvolvidas em um portfólio organizado e documentado.

## 🗂️ Atividades

| Unidade | Descrição | Tecnologias |
| :---: |---|---|
| [**01**](atividade_unidade_1_prf/README.md) | Dashboard com os principais indicadores dos acidentes da PRF em 2025. | Excel |
| [**02**](atividade_unidade_2_prf/README.md) | Consultas e análises exploratórias, incluindo agregações, cruzamentos e cálculo de *lift*. | SQL · SQLite |
| [**03**](atividade_unidade_3_prf/README.md) | Limpeza, padronização e preparação das bases analítica e modelável. | Python · Pandas · Jupyter |
| [**04**](atividade_unidade_4_prf/README.md) | Análise de indicadores, gravidade, letalidade e cruzamentos entre variáveis. | Excel |
| [**05**](atividade_unidade_5_prf/README.md) | Análise exploratória e visualização dos dados como extensão complementar em Python. | Python · Pandas · NumPy · Matplotlib |
| [**05.2**](atividade_unidade_5_2_prf/README.md) | Frequências e rankings de acidentes por UF, tipo de acidente e fase do dia. | Python · Pandas · Jupyter |
| [**05.3**](atividade_unidade_5_3_prf/README.md) | Análise exploratória aprofundada dos padrões associados aos acidentes fatais, incluindo indicadores, rankings, séries temporais, análises bivariadas, cruzamentos de fatores, correlações, hipóteses e limitações. | Python · Pandas · NumPy · Matplotlib · Jupyter |

## 🔎 Unidade 05.3 — Análise Exploratória de Dados

Na Unidade 05.3 foi desenvolvida uma análise exploratória mais aprofundada da base de acidentes da PRF de 2025.

A análise utiliza a variável-alvo `acidente_fatal`, definida como:

- `1` → acidente com pelo menos uma morte;
- `0` → acidente sem ocorrência de morte.

Foram analisados **72.529 registros de acidentes**, buscando compreender os fatores associados à ocorrência de acidentes fatais.

Entre as análises realizadas estão:

- indicadores globais de acidentes, mortos, feridos e fatalidade;
- rankings por Unidade da Federação;
- rankings por rodovia federal;
- comparação entre macrorregiões;
- análise mensal dos acidentes;
- análise por dia da semana;
- comparação entre tipos de acidente;
- análise das principais causas;
- condição meteorológica;
- fase do dia;
- tipo de pista;
- uso do solo;
- cruzamentos entre diferentes fatores;
- matriz de correlação;
- levantamento de hipóteses;
- identificação das limitações da análise.

Um dos principais cuidados adotados nesta etapa foi diferenciar **volume de acidentes** de **proporção de acidentes fatais**, evitando concluir que os locais ou categorias com maior número de ocorrências sejam necessariamente aqueles com maior gravidade proporcional.

## 🔄 Fluxo do projeto

```text
Dados da PRF
    ↓
Consultas e exploração em SQL
    ↓
Tratamento e preparação dos dados
    ↓
Indicadores e dashboards
    ↓
Análise exploratória em Python
    ↓
Frequências e rankings
    ↓
Análise de acidentes fatais
    ↓
Cruzamentos, correlações e interpretação dos resultados
