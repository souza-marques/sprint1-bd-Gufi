USE Gufi_Manha;

---DQL

SELECT  Nome,Email,Senha,DataCadastro,Genero,TituloTipoUsuario FROM Usuario INNER JOIN
TipoUsuario ON Usuario.IdTipousuario = TipoUsuario.IdTipoUsuario;

SELECT  CNPJ, NomeFantasia,Endereco  FROM Instituicao;

SELECT TituloTipoEvento FROM TipoEvento;

SELECT NomeEvento,DataEvento,Descricao,NomeFantasia,TituloTipoEvento FROM Evento INNER JOIN
Instituicao ON Evento.IdInstituicao = Instituicao.IdInstituicao
INNER JOIN TipoEvento ON  Evento.IdTipoEvento = TipoEvento.IdTipoEvento;

--
SELECT NomeEvento,AcessoLivre,DataEvento,Descricao,NomeFantasia,TituloTipoEvento FROM Evento INNER JOIN
Instituicao ON Evento.IdInstituicao = Instituicao.IdInstituicao
INNER JOIN TipoEvento ON  Evento.IdTipoEvento = TipoEvento.IdTipoEvento
WHERE AcessoLivre = 1 ;


--MOSTRAR  APENAS EVENTOS COM SITUAÇÃO 'CONFIRMADA' 
SELECT NomeFantasia,TituloTipoEvento,NomeEvento,Descricao,DataEvento,AcessoLivre,Nome FROM Presenca 
INNER JOIN Evento ON Presenca.IdEvento = Evento.IdEvento
INNER JOIN Usuario ON Presenca.IdUsuario = Usuario.IdUsuario
INNER JOIN Instituicao ON Evento.IdInstituicao = Instituicao.IdInstituicao
INNER JOIN TipoEvento ON Evento.IdTipoEvento = TipoEvento.IdTipoEvento
WHERE Nome = 'Carol' AND Situacao = 'Confirmada';

--EXTRAS
SELECT NomeEvento,DataEvento,Descricao, NomeFantasia,
 CASE AcessoLivre      
        WHEN 1 THEN 'Público'     
        WHEN 0 THEN 'Privado'      
     END AS AcessoLivre
	 FROM Evento
INNER JOIN Instituicao ON Evento.IdInstituicao = Instituicao.IdInstituicao
	 WHERE AcessoLivre = 1;

















