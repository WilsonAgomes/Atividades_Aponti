# Decisões de tratamento — Módulo 4

## Data e hora da geração

2026-08-09 18:40

## Regras adotadas

- Leitura com separador `;` e encoding de entrada `latin1`.
- Nomes de colunas em minúsculas, sem acentos e com underline.
- Números convertidos com `pd.to_numeric(errors='coerce')`; vírgula decimal tratada em km, latitude e longitude.
- Datas e horários convertidos com `errors='coerce'`, tornando formatos inválidos valores ausentes verificáveis.
- Textos sem espaços nas extremidades, em maiúsculas e com vazios convertidos em nulos.
- Categorias relevantes ausentes preenchidas com `IGNORADO`.
- Nulos nas contagens de vítimas preenchidos com zero, conforme hipótese operacional do roteiro.
- Na base modelável, categóricas ausentes recebem `IGNORADO` e numéricas ausentes recebem `-1`.
- O alvo foi preservado: `acidente_fatal = 1` quando `mortos >= 1`; caso contrário, `0`.
- Foram removidas 0 duplicidades exatas.

## Justificativas metodológicas

- `IGNORADO` preserva a informação de ausência e evita eliminar ocorrências por falta de categoria.
- Zero nas contagens representa a hipótese operacional definida no roteiro; a regra não é aplicada indistintamente a outras variáveis.
- `-1` funciona como marcador numérico fora das categorias válidas e evita falhas na codificação e na árvore do Módulo 7.
- Mortos, feridos, indicadores de gravidade e classificação do acidente foram excluídos da base modelável porque revelam o desfecho e causariam data leakage.
- A base analítica preserva indicadores de resultado para EDA e dashboards; a modelável mantém apenas explicativas e o alvo.
- As saídas usam UTF-8 com BOM para facilitar a leitura no Excel e no Power BI.

## Arquivos gerados e caminhos

- `dados_tratados\base_analitica_prf_2025.csv` — base completa para EDA e Power BI.
- `dados_tratados\base_modelavel_prf_2025.csv` — base para modelagem sem data leakage.
- `dados_tratados\dicionario_variaveis_modulo4.csv` — dicionário das variáveis criadas.
- `logs\resumo_final.csv` — resumo numérico da preparação.
- `logs\distribuicao_alvo.png` — gráfico de distribuição do alvo.
- `logs\decisoes_tratamento_modulo4.md` — este registro de decisões.
- `README.md` — objetivo, execução, bases e observação sobre data leakage.
