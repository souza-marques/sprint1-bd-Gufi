USE Gufi_Manha;
---DML

INSERT INTO TipoUsuario (TituloTipoUsuario)
VALUES ('Administrador'),
       ('Comum');

	   SELECT * FROM TipoUsuario;
	    SELECT * FROM TipoEvento;
		SELECT * FROM Instituicao;
		SELECT * FROM Usuario;
		SELECT * FROM TipoUsuario;
		SELECT * FROM Evento;
		SELECT * FROM Presenca;

INSERT INTO TipoEvento (TituloTipoEvento)
VALUES ('C#'),
	   ('React'),
	   ('SQL');

INSERT INTO TipoUsuario (TituloTipoUsuario)
VALUES ('Administrador'),
	   ('Comum');
	

INSERT INTO Instituicao (CNPJ,NomeFantasia,Endereco)
VALUES   ('11111111111111','Escola SENAI de Informática','Alameda Barão de Limeira, 538');

INSERT INTO Usuario (Nome,Email,Senha,DataCadastro,Genero)
VALUES ('Administrador','adm@adm.com','adm123','06/02/2020','Não informado'),
	   ('Carol','carol@email.com','carol123','06/02/2020','Feminino'),
	   ('Saulo','saulo@email.com','saulo123','06/02/2020','Masculino');

	   UPDATE Usuario
	   SET IdTipousuario = 1
	   WHERE IdUsuario = 1;
	   
	   UPDATE Usuario
	   SET IdTipousuario = 2
	   WHERE IdUsuario = 2;
	   
	   UPDATE Usuario
	   SET IdTipousuario = 2
	   WHERE IdUsuario = 3;

	  INSERT INTO Evento (NomeEvento,AcessoLivre,DataEvento,Descricao,IdTipoEvento,IdInstituicao)
		VALUES ('Orientação a objetos','1','07/02/2020','Conceitos sobre os pilares da programação orientada a objetos','1','1'),
				('Ciclo de vida','0','08/02/2020','Como utilizar os ciclos de vida com a biblioteca ReactJs','2','1'),
				('Introdução a SQL','1','09/02/2020','Comandos básicos utilizando SQL Server','3','1');


	   INSERT INTO Presenca (IdUsuario,IdEvento,Situacao)
	   VALUES ('2','2','Confirmada'),
		      ('2','3','Não Confirmada'),
	          ('3','1','Confirmada');

