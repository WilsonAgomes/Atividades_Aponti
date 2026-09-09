# Dashboard — Acidentes PRF 2025

**Aponti Academy** — Curso: Análise de Dados — Professor: Danilo Cavalcanti — Aluno: Wilson A. Gomes

## Objetivo

Consolidar visualmente os indicadores de acidentes da PRF 2025 em um dashboard — primeira atividade do projeto
PRF 2025 (ver também [Unidade 2 — Consultas SQL](../atividade_unidade_2_prf/README.md) e
[Unidade 3 — Tratamento dos dados](../atividade_unidade_3_prf/README.md)).

## Arquivo

- `Dashboard_PRF_2025_Wilson_Antonio_Gomes.xlsx`

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
fase do dia, condição climática e tipo de pista) utilizados nas atividades do projeto, usando tabelas dinâmicas, PROCV e
gráficos para consolidar a visão final.

## Boas práticas aplicadas

- Separar a aba de dados brutos (`dados`) das abas de cálculo/apoio (`tabelas_dinamicas`,
  `Auxiliares Gráficos`, `Consulta PROCV`) e da aba de apresentação final (`Dashboard`), evitando
  misturar fonte e visualização.
- Manter um dicionário de variáveis (`dicionario_resumido`) junto ao próprio arquivo do dashboard.
- Registrar observações e ressalvas sobre os dados (`observacoes`) junto ao entregável, não apenas
  verbalmente.

## Como abrir

Abra `Dashboard_PRF_2025_Wilson_Antonio_Gomes.xlsx` no Excel e navegue até a aba `Dashboard` para a visão
consolidada.

## Onde consultar o indicador

- `dados!AJ2:AJ72530`: coluna `Total_de_vitimas`, calculada por ocorrência com `=SOMA(S2:U2)`.
- `Resumo Estatístico!C14`: soma das vítimas de todas as ocorrências.
- `Dashboard!B12`: apresentação do total de **89.593 vítimas**, vinculada ao resumo.
- `dicionario_resumido`: definição da coluna auxiliar.

## Cálculo do total de vítimas

`total_vitimas = mortos + feridos_leves + feridos_graves`. O total de um recorte é a soma dessa coluna nos acidentes selecionados. Não inclui ilesos ou ignorados e não soma novamente a coluna `feridos`, que já agrega leves e graves.

Na base de 2025: **6.043 mortos + 83.550 feridos = 89.593 vítimas**. A letalidade operacional é `mortos / total_vitimas × 100` (6,74%); quando não há vítimas, a taxa é indefinida. Esse indicador difere do percentual de acidentes fatais.
