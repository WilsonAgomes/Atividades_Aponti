--Visualizar todos os alunos
SELECT * FROM alunos; 

--Selecionando apenas os nomes dos alunos 
SELECT nome FROM alunos; 

--Selecionando apenas os nomes dos alunos
SELECT nota FROM alunos; 

--Selecionando lista de professores 
select professor from disciplinas;

--Localizando o aluno específico 
SELECT * FROM Alunos WHERE nome = 'Diego Alves';

--Alterando (Atualizando) o cadastro do aluno específico 
UPDATE Alunos SET turma = 'Info B' WHERE nome = 'Diego Alves'; 

--conferindo a alteração (atualização) 
SELECT * FROM Alunos WHERE nome = 'Diego Alves'; 

--Corrigindo o Cadastro da disciplina 
SELECT * FROM Disciplinas WHERE disciplina = 'Programação Web'; 

--Alterando (atualizando) nome do professor 
UPDATE Disciplinas SET professor = 'Fernanda Oliveira' WHERE disciplina = 'Programação Web'; 

--Conferindo Alteração 
SELECT disciplina, professor FROM Disciplinas WHERE disciplina = 'Programação Web'; 

--Cadastrando cinco novos alunos (Mátricula) 
INSERT INTO Alunos (id, nome, idade, turma, nota) 
VALUES (41,'Igor Martins', 18, 'Info B', 8.1); 
INSERT INTO Alunos (id, nome, idade, turma, nota) 
VALUES (42, 'Joana Ferreira', 19, 'Redes A', 7.8); 
INSERT INTO Alunos (id, nome, idade, turma, nota) 
VALUES (43, 'Lucas Pereira', 21, 'Administração A', 6.5); 
INSERT INTO Alunos (id, nome, idade, turma, nota) 
VALUES (44, 'Mariana Lopes', 20, 'Info A', 9.4); 
INSERT INTO Alunos (id, nome, idade, turma, nota) 
VALUES (45, 'Nicolas Gomes', 22, 'Redes A', 4.8); 

--Coferindo novos registros 
SELECT * FROM Alunos ORDER BY id DESC; 

--Conferindo os duplicados antes de excluir
SELECT nome, idade, turma, nota, COUNT(*) AS qtd FROM Alunos GROUP BY nome, idade, turma, nota
HAVING COUNT(*) > 1;

--Remover duplicados, mantendo apenas o menor id 
DELETE FROM Alunos WHERE id NOT IN (SELECT MIN(id) FROM Alunos
GROUP BY nome, idade, turma, nota
);

--Nova Funcionalidade 

--Registrando a cidade dos alunos e o laboratório utilizado por cada disciplina 
ALTER TABLE alunos ADD COLUMN cidade VARCHAR(200);
ALTER TABLE alunos ADD COLUMN laboratorio VARCHAR(200);

--Alterando os dados da tabela alunos e fazendo o registrodos alunos e o laboratório das disciplinas
UPDATE alunos SET cidade = 'Camaragibe', laboratorio = 'Laboratório B4'
WHERE nome IN ('Ana Souza', 'Bruno Lima', 'Carla Santos', 'Diego Alves', 'Elisa Rocha', 
'Felipe Melo', 'Gabriela Costa', 'Henrique Silva', 'Igor Martins', 'Joana Ferreira');
                                                                                   
UPDATE alunos SET cidade = 'São Lourenço', laboratorio = 'Laboratório B5'
WHERE nome IN ('Lucas Pereira', 'Mariana Lopes', 'Nicolas Gomes', 'Olivia Ramos', 'Paulo Mendes', 
 'Renata Lima', 'Samuel Barros', 'Tatiana Nunes', 'Vinícius Araújo', 'Wesley Cardoso');
 
 --Contagem total dos alunos 
 SELECT COUNT(*) as Total_alunos FROM alunos;
 
 --Média dos alunos 
 SELECt turma, round(AVG(nota), 2) AS Media_geral FROM alunos GROUP by turma ORDER BY Media_geral DESC;
 
  --Alunos com a maior nota 
 SELECT nome, MAX(nota) AS Maior_nota FROM alunos GROUP BY nome ORDER BY Maior_nota DESC;
 
 --Menor nota dos |Alunos 
 SELECT nome, MIN(nota) AS Menor_nota FROM alunos GROUP BY nome ORDER BY Menor_nota;
 
 
 --A turma possui mais alunos 
SELECT turma, COUNT(*) AS total_turmas FROM ALUNOS GROUP BY turma ORDER BY total_turmas DESC;

--Os melhores estudantes 
SELECT nome, nota FROM alunos WHERE nota >= 7 ORDER BY nota DESC LIMIT 20;

/* De acordo com o que foi pedido pelea coordenação nosso sistemaMostrará de forma 
automatica a situação de cada aluno. 
Os estudantes serão apresentados da seguinte forma: 
Aprovado;
Recuperação;
e Reprovado.
*/ 

--Aluno aprovado, em recuperaçõa ou reprovado 
SELECT nome, nota, 
CASE 
	WHEN nota <= 5.0 THEN 'Reprovado'
    WHEN nota BETWEEN 5.0 AND 6.9 THEN 'Recuperação'
    WHEN nota >= 7 THEN 'Aprovado'
end as situacao FROM alunos ORDER BY nota DESC;



 
 
               