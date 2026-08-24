Análise de Acidentes em Rodovias Federais — PRF 2025
Descrição do Projeto

Este projeto realiza uma análise dos dados de acidentes registrados em rodovias federais brasileiras pela Polícia Rodoviária Federal (PRF) em 2025.

O objetivo é identificar padrões de ocorrência, fatores relacionados à gravidade dos acidentes e situações de maior risco, utilizando indicadores, tabelas dinâmicas e cruzamentos entre diferentes variáveis da base de dados.

Preparação dos Dados

Inicialmente, foi realizada a análise da base de dados e a criação de colunas auxiliares necessárias para os cálculos.

Foram criadas as seguintes variáveis:

Total_de_vitimas: utilizada para representar o total de vítimas dos acidentes.
Acidentes_Fatais: utilizada para identificar os acidentes que apresentaram pelo menos uma morte.

Essas informações serviram de apoio para o cálculo dos indicadores e das taxas utilizadas nas análises posteriores.

Indicadores — KPIs

Foram calculados cinco indicadores principais para apresentar uma visão geral dos acidentes registrados:

Indicador	Resultado
Total de Acidentes	72.529
Total de Mortos	6.043
Total de Feridos	83.550
% de Acidentes Fatais	7,18%
Taxa de Letalidade	6,74%

O percentual de acidentes fatais representa a proporção de acidentes que tiveram pelo menos uma morte em relação ao total de acidentes.

A Taxa de Letalidade foi calculada pela relação entre o número de mortos e o total de vítimas.

Análise Espacial — UF × BR

Foi criada uma Tabela Dinâmica cruzando UF × BR, utilizando a contagem de acidentes como valor.

A análise identificou que a combinação Santa Catarina × BR-101 apresentou o maior volume, com 4.222 acidentes.

Também foi realizada uma análise das rodovias pela Taxa de Letalidade. As cinco BRs com maiores taxas encontradas foram:

BR	Acidentes	Mortos	Vítimas	Taxa de Letalidade
BR-403	6	3	5	60,00%
BR-30	4	2	5	40,00%
BR-416	13	6	17	35,29%
BR-402	63	23	92	25,00%
BR-447	8	2	9	22,22%

Os resultados mostram que as rodovias com maior volume de acidentes não são necessariamente aquelas com maior letalidade. As taxas muito elevadas baseadas em poucas ocorrências também devem ser interpretadas com cautela.

Causa do Acidente × Gravidade

Foi realizado o cruzamento entre causa do acidente e gravidade, analisando tanto o volume de ocorrências quanto a Taxa de Letalidade.

A Ausência de reação do condutor apresentou o maior volume, com 11.469 acidentes.

Por outro lado, Suicídio (presumido) apresentou a maior Taxa de Letalidade, com 53,11%.

Essa comparação demonstra que uma causa com grande quantidade de ocorrências não é necessariamente a causa com maior gravidade proporcional.

Fase do Dia × Condição Meteorológica

A análise também relacionou a fase do dia com a condição meteorológica, utilizando o percentual de acidentes fatais.

A combinação Pleno dia + Céu Claro apresentou o maior volume, com 25.941 acidentes.

Já Anoitecer + Nevoeiro/Neblina apresentou o maior percentual de acidentes fatais, com 25,00%, embora esse resultado seja baseado em apenas 8 acidentes, dos quais 2 foram fatais.

Também se destacou Plena Noite + Céu Claro, com 15.909 acidentes e 10,49% de acidentes fatais, indicando que volume e severidade devem ser analisados separadamente.

Tipo de Acidente × Gravidade

O último cruzamento realizado relacionou o tipo de acidente com a gravidade.

A Colisão traseira apresentou o maior volume, com 14.360 acidentes e Taxa de Letalidade de 4,00%.

O Atropelamento de Pedestre apresentou a maior Taxa de Letalidade, com 24,41%, registrando 919 mortos entre 3.765 vítimas.

A Colisão frontal também apresentou elevada severidade, com 1.863 mortos e Taxa de Letalidade de 19,70%.

Os resultados reforçam que os tipos de acidentes mais frequentes não são necessariamente os mais letais.

Principais Resultados

As análises realizadas permitiram identificar diferentes padrões de volume e severidade. A BR-101 em Santa Catarina concentrou o maior volume no cruzamento UF × BR, enquanto algumas rodovias com poucas ocorrências apresentaram taxas de letalidade proporcionalmente elevadas.

Também foi possível observar diferenças importantes entre frequência e gravidade nas análises de causas e tipos de acidentes. Além disso, os cruzamentos entre fase do dia e condições meteorológicas evidenciaram situações que merecem atenção devido ao maior percentual de acidentes fatais.

Esses resultados constituem a base analítica para as próximas etapas do projeto, incluindo a construção do PRF Data Analytics Canvas, do Dashboard Executivo e da apresentação final dos resultados.
