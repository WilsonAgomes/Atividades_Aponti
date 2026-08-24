# Consultas SQL — Acidentes PRF 2025

**Aponti Academy** — Curso: Análise de Dados — Professor: Danilo Cavalcanti — Aluno: Wilson A. Gomes

## Objetivo

Explorar, via SQL (SQLite), a base de acidentes da Polícia Rodoviária Federal (PRF) de 2025 — segunda etapa
do projeto PRF 2025 (ver também [`03_tratamento_dados_prf`](../03_tratamento_dados_prf/README.md) e
[`04_dashboard_powerbi_prf`](../04_dashboard_powerbi_prf/README.md)).

## Arquivos

- `script_prf.sql` — script com a view base e todas as consultas exploratórias.
- `consulta_por_*.csv` — resultado de cada consulta, exportado do SQLite.

## O que foi feito

1. Inspeção inicial da tabela `prf_2025` (`PRAGMA table_info`, contagem de registros).
2. Criação da view `vw_acidentes_base`, adicionando a flag `acidente_fatal` (1 quando `mortos >= 1`).
3. Métricas gerais: total de acidentes, total de fatais, % de letalidade.
4. Agregações univariadas por UF, BR (top 30 por mortos), mês/ano, tipo de acidente, causa (top 30),
   fase do dia, condição meteorológica e tipo de pista — sempre com contagem, % de fatais e, quando
   aplicável, total de mortos.
5. Análises bivariadas: tipo de pista × fase do dia (com % de cobertura sobre o total) e cálculo do
   efeito *lift* (razão entre a taxa de letalidade de um tipo de acidente e a taxa média geral).
6. Criação de duas views de apoio a dashboards: `vw_indicadores_mensais` (indicadores por ano/mês) e
   `vw_indicadores_uf_br` (indicadores por UF e BR).

## Boas práticas aplicadas

- `CAST(... AS INTEGER)` antes de somar/comparar colunas numéricas vindas como texto.
- `DROP VIEW IF EXISTS` antes de recriar uma view, evitando erro de conflito em reexecuções.
- Filtrar agregações por volume mínimo (`HAVING COUNT(*) >= 100`) para não distorcer percentuais com
  grupos pequenos.
- Encapsular a lógica de negócio (`acidente_fatal`) em uma view única, reaproveitada por todas as
  consultas seguintes.
- Nomear consultas exportadas de forma descritiva (`consulta_por_<dimensão>.csv`) para rastrear a
  origem de cada CSV.

