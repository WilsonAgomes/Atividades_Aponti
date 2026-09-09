# Consultas SQL — Acidentes PRF 2025

**Aponti Academy** — Curso: Análise de Dados — Professor: Danilo Cavalcanti — Aluno: Wilson A. Gomes

## Objetivo

Explorar, via SQL (SQLite), a base de acidentes da Polícia Rodoviária Federal (PRF) de 2025 — segunda etapa
do projeto PRF 2025 (ver também [Unidade 3 — Tratamento dos dados](../atividade_unidade_3_prf/README.md) e
[Unidade 4 — Indicadores no Excel](../atividade_unidade_4_prf/README.md)).

## Arquivos

- `script_prf.sql` — script com a view base e todas as consultas exploratórias.
- `consulta_por_*.csv` — resultado de cada consulta, exportado do SQLite.

## O que foi feito

1. Inspeção inicial da tabela `prf_2025` (`PRAGMA table_info`, contagem de registros).
2. Criação da view `vw_acidentes_base`, adicionando a flag `acidente_fatal` (1 quando `mortos >= 1`) e `total_vitimas` (mortos + feridos leves + feridos graves).
3. Métricas gerais: total de acidentes, total de vítimas, acidentes fatais e percentual de acidentes fatais.
4. Agregações univariadas por UF, BR (top 30 por mortos), mês/ano, tipo de acidente, causa (top 30),
   fase do dia, condição meteorológica e tipo de pista — com total de vítimas em todos os recortes e, conforme a consulta, contagem de acidentes, percentual de fatais e total de mortos.
5. Análises bivariadas: tipo de pista × fase do dia (com % de cobertura sobre o total) e cálculo do
   efeito *lift* (razão entre a proporção de acidentes fatais de um tipo e a proporção global de acidentes fatais).
6. Criação de duas views de apoio a dashboards: `vw_indicadores_mensais` (indicadores por ano/mês) e
   `vw_indicadores_uf_br` (indicadores por UF e BR).

## Boas práticas aplicadas

- `CAST(... AS INTEGER)` antes de somar/comparar colunas numéricas vindas como texto.
- `DROP VIEW IF EXISTS` antes de recriar uma view, evitando erro de conflito em reexecuções.
- Filtrar agregações por volume mínimo (`HAVING COUNT(*) >= 100`) para não distorcer percentuais com
  grupos pequenos.
- Encapsular a lógica de negócio (`acidente_fatal` e `total_vitimas`) em uma view única, reaproveitada por todas as
  consultas seguintes.
- Nomear consultas exportadas de forma descritiva (`consulta_por_<dimensão>.csv`) para rastrear a
  origem de cada CSV.

## Cálculo do total de vítimas

`total_vitimas = mortos + feridos_leves + feridos_graves`. O total de um recorte é a soma dessa coluna nos acidentes selecionados. Não inclui ilesos ou ignorados e não soma novamente a coluna `feridos`, que já agrega leves e graves.

Na base de 2025: **6.043 mortos + 83.550 feridos = 89.593 vítimas**. A letalidade operacional é `mortos / total_vitimas × 100` (6,74%); quando não há vítimas, a taxa é indefinida. Esse indicador difere do percentual de acidentes fatais.

## Leitura dos resultados exportados

Os CSVs de UF, mês, tipo, clima e fase do dia cobrem todos os registros: a soma de `total_vitimas` em cada arquivo é **89.593**. Rankings limitados a 30 categorias, consultas com volume mínimo e recortes que excluem rodovias ausentes podem apresentar subtotais menores. O campo `condicao_metereo` do SQL corresponde a `condicao_metereologica` na fonte CSV.
