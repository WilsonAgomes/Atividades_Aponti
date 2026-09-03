# 📊 Relatório Analítico — EDA Acidentes PRF 2025

> Análise exploratória de dados (EDA) dos acidentes registrados nas rodovias federais brasileiras em 2025, seguindo o modelo de relatório fornecido pelo professor.

**Aponti Academy** — Curso: Análise de Dados · Professor: Danilo Cavalcanti · Aluno: Wilson A. Gomes

---

## 🎯 Objetivo

Descrever os padrões associados à ocorrência de **acidentes fatais** nas rodovias federais brasileiras em 2025, comparando sempre **volume de ocorrências** com **proporção de fatalidade**, sem confundir os dois indicadores e sem interpretar associações como relações de causa e efeito.

A variável-alvo utilizada em toda a análise é:

```python
acidente_fatal = 1 se mortos >= 1, caso contrário 0
```

## 🗃️ Fonte dos dados

- **Base:** `base_analitica_prf_2025.csv` — versão tratada da base aberta da Polícia Rodoviária Federal (PRF), gerada na etapa de preparação de dados do projeto (`atividade_unidade_3_prf`).
- **Período:** 01/01/2025 a 31/12/2025.
- **Registros analisados:** 72.529 ocorrências, 5.210 delas fatais (7,18%).

## 📁 Arquivos desta entrega

| Arquivo | Descrição |
|---|---|
| `Relatorio_EDA_PRF_2025.docx` | Relatório final em Word, seguindo a estrutura do modelo do professor (8 seções, tabelas, gráficos e quadros de interpretação). |
| `README.md` | Este arquivo. |

## 🧭 Estrutura do relatório

O documento segue fielmente o modelo fornecido, com 8 seções:

1. **Sumário executivo** — indicadores-chave e achado central.
2. **Estatística descritiva e indicadores globais** — tabela de indicadores e leitura da assimetria das variáveis numéricas.
3. **Rankings** — por Unidade da Federação, por rodovia federal (BR) e por macrorregião.
4. **Séries temporais** — série mensal e por dia da semana.
5. **Análise bivariada** — tipo de acidente, causa, condição meteorológica, fase do dia, tipo de pista e uso do solo.
6. **Combinações de fatores e correlação** — cruzamentos (fase do dia × clima; região × fase do dia) e matriz de correlação de Pearson.
7. **Síntese, hipóteses e limitações** — quadro achado/evidência/hipótese/limitação, erros comuns de leitura e limitações gerais da base.
8. **Interpretação, hipóteses e limites** — tabela detalhada no formato *Achado → Evidência → Comparação com a taxa global → Hipótese → Limitação*.

## 📌 Indicadores globais validados

| Indicador | Valor |
|---|---:|
| Total de acidentes | 72.529 |
| Acidentes fatais | 5.210 |
| % de acidentes fatais | 7,18% |
| Total de mortos | 6.043 |
| Total de feridos | 83.550 |
| Total de vítimas | 89.593 |
| Taxa de letalidade operacional | 6,74% |

## 🔎 Achados centrais

- **Volume ≠ gravidade proporcional.** Colisão traseira é o tipo mais frequente (14.360 registros), mas apenas 4,31% são fatais; colisão frontal e atropelamento de pedestre, com bem menos registros, chegam a ~29,5% de fatalidade — cerca de 4,1× a taxa global.
- **Infraestrutura importa.** Pistas simples têm 9,86% de acidentes fatais, quase o dobro das pistas duplas (4,88%).
- **Luminosidade importa.** Amanhecer (11,20%) e plena noite (10,18%) superam claramente o pleno dia (5,07%).
- **Fim de semana é mais letal proporcionalmente.** Domingo (8,87%) e sábado (8,25%) ficam acima da taxa global, mesmo sem serem os dias de maior volume absoluto.
- **Correlação alvo–mortos é alta por construção** (r = 0,884), já que a variável-alvo é definida a partir da existência de mortes — não deve ser lida como uma associação "descoberta".

## ⚠️ Cuidados de interpretação

- Frequência elevada não significa necessariamente maior proporção de fatalidade.
- Percentuais de categorias com poucos registros são instáveis — todos os rankings proporcionais desta análise usam um volume mínimo de registros (150, 200, 500 ou 100, conforme o recorte).
- Correlação não implica causalidade, especialmente entre variáveis que compõem, por definição, o próprio alvo (mortos, feridos, total de vítimas).
- A base não controla exposição ao tráfego, velocidade praticada, extensão das rodovias nem uso de equipamentos de segurança — as hipóteses levantadas no relatório são pontos de partida para investigação futura, não conclusões causais.

## 🛠️ Como o relatório foi gerado

1. Leitura da base tratada (`base_analitica_prf_2025.csv`) com Python/Pandas.
2. Cálculo dos indicadores globais, rankings, séries temporais, cruzamentos bivariados, combinações de fatores e matriz de correlação de Pearson — reproduzindo exatamente as métricas e os limiares de volume mínimo definidos no modelo do professor.
3. Geração dos 8 gráficos (Matplotlib) equivalentes aos do modelo.
4. Montagem do documento Word final, replicando a estrutura, os títulos, as tabelas e os quadros de destaque do modelo original.
