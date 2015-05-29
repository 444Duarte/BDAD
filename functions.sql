.bail ON
.mode columns
.headers on
.nullvalue NULL
PRAGMA foreign_keys = ON;

DROP VIEW IF EXISTS ItemDisponibilidade;
DROP VIEW IF EXISTS listaRequisicoes;

CREATE VIEW ItemDisponibilidade AS 
SELECT *
FROM (
	SELECT idItem, numeroTotal - count(*) as disponibilidade
	FROM Requisicao natural join Item
	GROUP BY idItem
	HAVING dataEntrega is NULL
	UNION
	SELECT idItem, numeroTotal as disponibilidade
	FROM Item
	WHERE idItem not in (
		SELECT idItem
		FROM Requisicao natural join Item
		GROUP BY nome
		HAVING dataEntrega is NULL));

CREATE VIEW listaRequisicoes AS
SELECT Cliente.idPessoa, Item.idItem
FROM Cliente, Requisicao, Item
WHERE Cliente.idPessoa = Requisicao.idPessoa AND
	  Requisicao.idItem = Item.idItem AND
	  Requisicao.dataEntrega is NULL;

/*Itens actualmente requisitados e Cliente que requisitou*/
SELECT Pessoa.nome as Cliente, Item.nome as Item
FROM Pessoa, listaRequisicoes, Item, Cliente
WHERE 	Pessoa.idPessoa = Cliente.idPessoa AND
		Cliente.idPessoa = listaRequisicoes.idPessoa AND
		Item.idItem = listaRequisicoes.idItem
ORDER BY Cliente, Item;


/*Pessoas que estão em atraso na entrega de um item*/
SELECT Pessoa.nome, Item.nome, (julianday(date('now')) - julianday(Requisicao.dataInicio)) as diasPassados
FROM Pessoa, Requisicao, Item, Cliente
WHERE Pessoa.idPessoa = Cliente.idPessoa AND
	  Cliente.idPessoa = Requisicao.idPessoa AND
	  Requisicao.idItem = Item.idItem AND
	  Requisicao.dataEntrega is NULL AND
	  diasPassados > 30
ORDER BY diasPassados DESC;

/*nome do item e número de requisições*/
SELECT nome, count(*) requisicoes
FROM Requisicao natural join Item
GROUP BY nome
ORDER BY requisicoes DESC;

/*Itens disponiveis e suas quantidades*/
SELECT nome, disponibilidade
FROM Item, ItemDisponibilidade
WHERE 	Item.idItem = ItemDisponibilidade.idItem AND 
		disponibilidade > 0
ORDER BY nome;

/*Informação de todos os clientes*/
SELECT Pessoa.nome, dataNascimento, (strftime('%Y', 'now') - strftime('%Y', dataNascimento) - (strftime('%m-%d', 'now') < strftime('%m-%d', dataNascimento))) as idade , nomePais as Nacionalidade, morada, requisicoes
FROM Pessoa, Nacionalidade, Cliente NATURAL JOIN (
		SELECT idPessoa, requisicoes
		FROM (SELECT idPessoa, count(*) as requisicoes FROM listaRequisicoes GROUP BY idPessoa)
		UNION
		SELECT idPessoa, 0 as requisicoes
		FROM Cliente
		WHERE idPessoa not in (SELECT idPessoa from listaRequisicoes)
		)
WHERE Pessoa.idPessoa = Cliente.idPessoa AND
		Nacionalidade.idPessoa = Pessoa.idPessoa
ORDER BY Pessoa.nome;

/*Seccoes ordenadas por piso e com o respectivo funcionario*/
SELECT Piso.numero as piso, Seccao.nome as seccao, Pessoa.nome as funcionario
FROM Pessoa, Funcionario, Piso, Seccao, FuncionarioPiso
WHERE 	Pessoa.idPessoa = Funcionario.idPessoa AND
		Funcionario.idPessoa = FuncionarioPiso.idPessoa AND	
		FuncionarioPiso.numero = Piso.numero AND
		Piso.numero = Seccao.numero
ORDER BY Piso.numero;

/*Itens com a sua informaçao, com a respectiva localizaçao e disponibilidade*/
SELECT Item.idItem as idItem, Item.nome as nome, anoPublicacao, Editora.nome as Editora, Genero.nome as Genero, FaixaEtaria.menorIdade, FaixaEtaria.maiorIdade, Piso.numero as Piso, Seccao.nome as Seccao, nrPrateleira as Prateleira, disponibilidade
FROM 	Item NATURAL JOIN ItemDisponibilidade,
		Editora, Genero, FaixaEtaria, Seccao, Piso, Prateleira
WHERE 	Item.idItem = Prateleira.idItem AND
		Editora.idEditora = Item.idEditora AND
		Genero.idGenero = Item.idGenero AND
		FaixaEtaria.idFaixaEtaria = Item.idFaixaEtaria AND
		Seccao.idSeccao = Prateleira.idSeccao AND 
		Piso.numero = Seccao.numero
ORDER BY Item.idItem;


/*Itens para idades menores que 18 anos*/
SELECT idItem, nome
FROM Item, FaixaEtaria
WHERE	Item.idFaixaEtaria = FaixaEtaria.idFaixaEtaria AND
		(menorIdade < 18 OR menorIdade is NULL);

/*Membros dos Clubes de Leitores*/
SELECT ClubeLeitores.nomeClube, Pessoa.nome
FROM Cliente, Pessoa, ClubeLeitores
WHERE 	Cliente.idPessoa = Pessoa.idPessoa AND
		Cliente.nomeClube = ClubeLeitores.nomeClube
ORDER BY ClubeLeitores.nomeClube, Pessoa.nome;

/*Clientes por ordem de idades*/
SELECT nome, (strftime('%Y', 'now') - strftime('%Y', dataNascimento) - (strftime('%m-%d', 'now') < strftime('%m-%d', dataNascimento))) as idade
FROM Pessoa, Cliente
WHERE 	Pessoa.idPessoa = Cliente.idPessoa
ORDER BY idade;

/*Autores e os seus respetivos livros na biblioteca*/
SELECT Pessoa.nome as Autor, Item.nome AS Livro, anoPublicacao, isbn as ISBN, edicao, Editora.nome as Editora
FROM Autor, Pessoa, Item, Livro, Editora, Escreveu, Genero
WHERE 	Autor.idPessoa = Pessoa.idPessoa AND
		Autor.idPessoa = Escreveu.idPessoa AND 
		Livro.idItem = Escreveu.idItem AND
		Livro.idItem = Item.idItem AND
		Item.idGenero = Genero.idGenero AND
		Item.idEditora = Editora.idEditora
ORDER BY Pessoa.nome, anoPublicacao;