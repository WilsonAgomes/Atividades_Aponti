# 🚧 Análise de Acidentes da PRF — 2025

Repositório com as atividades práticas desenvolvidas no curso de **Análise de Dados da Aponti Academy**, utilizando dados de acidentes registrados pela Polícia Rodoviária Federal (PRF) em 2025.

| Informação | Detalhes |
|---|---|
| **Aluno** | Wilson A. Gomes |
| **Professor** | Danilo Cavalcanti |
| **Curso** | Análise de Dados |

---

## 📌 Sobre o repositório

As atividades estão organizadas por unidade e acompanham a evolução do projeto: da exploração inicial dos dados à criação de indicadores, dashboards, tratamento de dados e análises com Python.

Cada pasta possui um `README.md` próprio, com os objetivos, arquivos e detalhes da respectiva atividade.

## 🎯 Objetivo

Aplicar, de forma prática, os principais conceitos de análise de dados por meio da exploração da base de acidentes da PRF de 2025. O projeto busca transformar dados brutos em informações relevantes, utilizando consultas, tratamento, indicadores e visualizações para identificar padrões e apoiar a compreensão das ocorrências nas rodovias federais brasileiras.

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
Análise exploratória e visualizações em Python
```

## 🛠️ Tecnologias utilizadas

- **SQL e SQLite** para consultas, agregações e criação de *views*;
- **Excel** para indicadores, tabelas dinâmicas, gráficos e dashboards;
- **Python** para tratamento e análise exploratória;
- **Pandas e NumPy** para manipulação dos dados;
- **Matplotlib** para visualizações;
- **Jupyter Notebook** para documentação e execução das análises.

## ✅ Boas práticas adotadas

- Preservação dos dados brutos, sem sobrescrever a fonte original;
- separação entre dados de entrada, arquivos tratados e resultados;
- uso consistente da variável-alvo `acidente_fatal`;
- prevenção de *data leakage* na base destinada à modelagem;
- documentação das decisões de tratamento;
- nomes descritivos para pastas, arquivos e consultas;
- exportação em formatos compatíveis com as ferramentas utilizadas.

## 🚀 Como explorar o projeto

1. Acesse uma das unidades na tabela de atividades acima.
2. Consulte o `README.md` da pasta escolhida.
3. Siga as instruções de execução ou abertura indicadas em cada atividade.

---

> Este repositório possui finalidade acadêmica e de portfólio.
