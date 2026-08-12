# Dashboard — Acidentes PRF 2025

**Aponti Academy** — Curso: Análise de Dados — Professor: Danilo Cavalcanti — Aluno: Wilson A. Gomes

## Objetivo

Consolidar visualmente os indicadores de acidentes da PRF 2025 em um dashboard — etapa final do projeto
PRF 2025 (ver também [`02_consultas_sql_acidentes_prf`](../02_consultas_sql_acidentes_prf/README.md) e
[`03_tratamento_dados_prf`](../03_tratamento_dados_prf/README.md)).

## Arquivo

- `dashboard_acidentes_prf_2025.xlsx`

## Abas da planilha

- `dados` — base de dados utilizada como fonte do dashboard.
- `dicionario_resumido` — dicionário resumido das variáveis usadas.
- `tabelas_dinamicas` — tabelas dinâmicas de apoio aos gráficos.
- `graficos` — gráficos individuais construídos a partir das tabelas dinâmicas.
- `Auxiliares Gráficos` — colunas/tabelas auxiliares para alimentar os gráficos.
- `Consulta PROCV` — consultas de apoio via PROCV (VLOOKUP).
- `Resumo Estatístico` — indicadores estatísticos consolidados (totais, percentuais, médias).
- `observacoes` — anotações e observações sobre os dados/resultados.
- `Dashboard` — painel final, reunindo os principais indicadores e gráficos em uma única visão.

## O que foi feito

Construção de um dashboard em Excel a partir dos indicadores de acidentes (por UF, BR, mês, tipo, causa,
fase do dia, condição climática e tipo de pista) já apurados nas etapas anteriores do projeto
(`02_consultas_sql_acidentes_prf` e `03_tratamento_dados_prf`), usando tabelas dinâmicas, PROCV e
gráficos para consolidar a visão final.

## Boas práticas aplicadas

- Separar a aba de dados brutos (`dados`) das abas de cálculo/apoio (`tabelas_dinamicas`,
  `Auxiliares Gráficos`, `Consulta PROCV`) e da aba de apresentação final (`Dashboard`), evitando
  misturar fonte e visualização.
- Manter um dicionário de variáveis (`dicionario_resumido`) junto ao próprio arquivo do dashboard.
- Registrar observações e ressalvas sobre os dados (`observacoes`) junto ao entregável, não apenas
  verbalmente.

## Como abrir

Abra `dashboard_acidentes_prf_2025.xlsx` no Excel e navegue até a aba `Dashboard` para a visão
consolidada.
