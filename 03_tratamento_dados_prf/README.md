# Tratamento de Dados — Acidentes PRF 2025 (Módulo 4)

**Aponti Academy** — Curso: Análise de Dados — Professor: Danilo Cavalcanti — Aluno: Wilson A. Gomes

## Objetivo

Preparar os dados de acidentes da PRF 2025 para análise exploratória, dashboard e uma futura árvore de
decisão explicável — terceira etapa do projeto PRF 2025 (ver também
[`02_consultas_sql_acidentes_prf`](../02_consultas_sql_acidentes_prf/README.md) e
[`04_dashboard_powerbi_prf`](../04_dashboard_powerbi_prf/README.md)).

## Variável-alvo

`acidente_fatal = 1` quando `mortos >= 1`; caso contrário, `0`.

## Estrutura da pasta

- `dados_brutos/acidentes2025.csv` — fonte original, preservada sem alterações.
- `notebooks/01_preparacao_dados_prf_2025.ipynb` — notebook com todo o pipeline de tratamento.
- `dados_tratados/base_analitica_prf_2025.csv` — base completa, para EDA e dashboard.
- `dados_tratados/base_modelavel_prf_2025.csv` — apenas variáveis explicativas + alvo, sem data leakage.
- `dados_tratados/dicionario_variaveis_modulo4.csv` — dicionário das variáveis criadas/tratadas.
- `logs/resumo_final.csv` — resumo numérico da preparação (linhas, colunas, duplicidades, taxa de
  acidentes fatais).
- `logs/distribuicao_alvo.png` — gráfico da distribuição da variável-alvo.
- `logs/decisoes_tratamento_modulo4.md` — registro detalhado de cada decisão de tratamento e sua
  justificativa.

## O que foi feito

- Leitura do CSV bruto com separador `;` e encoding `latin1`.
- Padronização dos nomes de colunas (minúsculas, sem acento, com underline).
- Conversão de números com `pd.to_numeric(errors='coerce')`, tratando vírgula decimal em km, latitude
  e longitude.
- Conversão de datas/horários com `errors='coerce'`, transformando formatos inválidos em nulos
  verificáveis.
- Padronização de texto (sem espaços nas pontas, maiúsculas, vazios convertidos em nulos).
- Preenchimento de categorias ausentes com `IGNORADO` e de contagens de vítimas ausentes com `0`
  (hipótese operacional do roteiro).
- Na base modelável: categóricas ausentes recebem `IGNORADO`, numéricas ausentes recebem `-1`.
- Remoção de duplicidades exatas (0 encontradas nesta execução).
- Exclusão de `mortos`, `feridos`, indicadores de gravidade e classificação do acidente da base
  modelável, por revelarem o desfecho (data leakage).
- Exportação das saídas em UTF-8 com BOM, para leitura direta no Excel e no dashboard.

Resultado desta execução: 72.529 linhas originais, 0 duplicidades removidas, 44 colunas na base
analítica, 19 na base modelável, 5.210 acidentes fatais (taxa global de ~7,18%). Detalhes completos em
`logs/decisoes_tratamento_modulo4.md`.

## Boas práticas aplicadas

- Nunca sobrescrever a fonte bruta — toda transformação gera uma nova base em `dados_tratados/`.
- Registrar cada decisão de tratamento e sua justificativa em um log versionável
  (`decisoes_tratamento_modulo4.md`), não só no código.
- Separar explicitamente a base analítica (com colunas de resultado, para EDA/dashboard) da base
  modelável (sem vazamento de dados, para modelagem).
- Usar marcadores explícitos para ausência (`IGNORADO`, `-1`) em vez de descartar linhas com dados
  faltantes.
- Gerar um dicionário de variáveis como parte da entrega, não como documentação à parte.

## Como executar

1. Abra o notebook `notebooks/01_preparacao_dados_prf_2025.ipynb` em um ambiente com Python, Jupyter e
   as bibliotecas de dados usuais (pandas, numpy, matplotlib).
2. Execute todas as células, na ordem, a partir da raiz desta pasta.
3. As bases tratadas e os logs serão gerados/atualizados em `dados_tratados/` e `logs/`.
