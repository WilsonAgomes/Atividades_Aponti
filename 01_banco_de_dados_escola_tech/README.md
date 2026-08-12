# Banco de Dados — Escola Tech (SQLite)

**Aponti Academy** — Curso: Análise de Dados — Professor: Danilo Cavalcanti — Aluno: Wilson A. Gomes
Disciplina: Banco de dados usando SQLite

## Objetivo

Praticar comandos fundamentais de SQL (consulta, atualização, inserção e alteração de estrutura) sobre uma
base fictícia de escola, com tabelas de alunos e disciplinas.

## Arquivos

- `EscolaTech (2).db` — banco de dados SQLite com as tabelas `alunos` e `disciplinas`.
- `missao_escola_tech (2).sql` — script com todos os comandos executados na missão.
- `Alunos Aprovados (1).csv`, `Disciplina atualizada (1).csv`, `Relatório aluno (1).csv` — exportações de consultas.
- `tabela_alunos_e_disciplinas (1).docx` — documento de apoio com a estrutura das tabelas.

## O que foi feito

1. Consultas básicas (`SELECT *`, seleção de colunas específicas — nome, nota, professor).
2. Localização de um aluno específico e atualização de sua turma (`UPDATE`), com conferência do resultado.
3. Correção de um cadastro de disciplina (`UPDATE` no professor responsável).
4. Cadastro de 5 novos alunos (`INSERT`).
5. Identificação de duplicidades (`GROUP BY ... HAVING COUNT(*) > 1`) e remoção mantendo o menor `id`.
6. Nova funcionalidade: `ALTER TABLE` para adicionar as colunas `cidade` e `laboratorio`, seguido de `UPDATE`
   em lote por grupo de alunos.
7. Análises agregadas: contagem total de alunos, média de nota por turma, maior e menor nota por aluno,
   turma com mais alunos, alunos aprovados (nota >= 7).
8. Classificação da situação do aluno com `CASE WHEN` (Aprovado / Recuperação / Reprovado).

## Boas práticas aplicadas

- Conferir o resultado de um `UPDATE`/`DELETE` com um `SELECT` logo em seguida.
- Checar duplicidades antes de remover registros, e remover mantendo uma chave estável (menor `id`).
- Comentar cada bloco do script explicando a intenção do comando, facilitando revisão futura.
- Evoluir o schema de forma incremental com `ALTER TABLE`, em vez de recriar a tabela.

## Como abrir

Abra `EscolaTech (2).db` no DB Browser for SQLite (ou na extensão SQLite do VS Code) e execute
`missao_escola_tech (2).sql`.
