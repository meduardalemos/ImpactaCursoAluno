-- Cria base de dados para o projeto
CREATE DATABASE db_impactacursoaluno;

-- Cria tabela de cursos
CREATE TABLE tbl_cursos (
	ID INT PRIMARY KEY IDENTITY(1,1),
	nome VARCHAR(50) NOT NULL
);

-- Cria tabela de alunos
CREATE TABLE tbl_alunos (
	ID INT PRIMARY KEY IDENTITY(1,1),
	nome VARCHAR(50) NOT NULL,
	IDCurso INT,
	CONSTRAINT FK_IDCurso FOREIGN KEY (IDCurso)
		REFERENCES tbl_cursos (ID) ON DELETE CASCADE
);

-- Insere registros na tabela cursos
INSERT INTO tbl_cursos VALUES
('Lógica da Programação com JavaScript'),
('Banco de dados com SQL Server'),
('Azure DevOps');


-- Insere registros na tabela alunos
INSERT INTO tbl_alunos VALUES
('João Felipe Silva', 1),
('Mariana Rodrigues Araújo', 2),
('Bruno Fonseca Filho', 3),
('Pietra Amaral Gonçalves', 2);

-- Consulta na tabela alunos mostrando o nome do curso no lugar do ID
SELECT tbl_alunos.nome AS NomeAluno, tbl_cursos.nome AS NomeCurso
FROM tbl_alunos
INNER JOIN tbl_cursos ON tbl_alunos.IDCurso = tbl_cursos.ID;