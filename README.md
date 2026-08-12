# Meus Projetos — Unidade 1 (Análise de Dados)

**Aponti Academy**
**Curso:** Análise de Dados
**Professor:** Danilo Cavalcanti
**Aluno:** Wilson A. Gomes

## Sobre este repositório

Reúne as atividades práticas da Unidade 1 do curso, organizadas em 4 pastas. As pastas `02`, `03` e `04`
formam um único projeto contínuo sobre acidentes da PRF (Polícia Rodoviária Federal) em 2025 — da
exploração em SQL até o dashboard final. A pasta `01` é um exercício independente de fundamentos de
banco de dados.

## Estrutura

| Pasta | Conteúdo | Tecnologia |
|---|---|---|
| [`01_banco_de_dados_escola_tech`](01_banco_de_dados_escola_tech/README.md) | Exercício de banco de dados relacional com uma escola fictícia (CRUD, agregações, `CASE WHEN`) | SQLite |
| [`02_consultas_sql_acidentes_prf`](02_consultas_sql_acidentes_prf/README.md) | Exploração SQL da base de acidentes da PRF 2025 (views, agregações, bivariadas, *lift*) | SQLite |
| [`03_tratamento_dados_prf`](03_tratamento_dados_prf/README.md) | Limpeza e preparação da base de acidentes da PRF 2025 (Módulo 4), gerando bases analítica e modelável | Python / Jupyter (pandas) |
| [`04_dashboard_powerbi_prf`](04_dashboard_powerbi_prf/README.md) | Dashboard consolidando os indicadores de acidentes da PRF 2025 | Excel |

Cada pasta tem seu próprio `README.md` com o detalhamento do que foi feito e as boas práticas aplicadas
naquela atividade.

## Boas práticas gerais adotadas no projeto

- **Dados brutos nunca são sobrescritos** — toda transformação gera um novo arquivo em uma pasta de
  saída (`dados_tratados/`), preservando a fonte original.
- **Variável-alvo consistente**: `acidente_fatal = 1` quando `mortos >= 1`, usada da mesma forma tanto
  nas consultas SQL quanto no tratamento em Python.
- **Prevenção de data leakage**: colunas que revelam o desfecho (mortos, feridos, gravidade,
  classificação) são excluídas da base usada para modelagem.
- **Decisões documentadas**: tratamentos de dados e suas justificativas ficam registrados em log
  (`03_tratamento_dados_prf/logs/decisoes_tratamento_modulo4.md`), não só no código.
- **Encoding e formatação pensados para o público final**: exportações em UTF-8 com BOM para abrir
  corretamente no Excel.
- **Nomes de pastas e arquivos descritivos**, numerados na ordem em que o projeto evolui, facilitando a
  navegação por quem revisa o material depois.
