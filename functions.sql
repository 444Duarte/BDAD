.bail ON
.mode columns
.headers on
.nullvalue NULL
PRAGMA foreign_keys = ON;

/*Lista de itens actualmente requisitados e Cliente que requisitou*/
SELECT Item.nome, Pessoa.nome
FROM Pessoa, Requisicao, Item, Cliente
WHERE Pessoa.idPessoa = Cliente.idPessoa AND
	  Cliente.idCliente = Requisicao.idCliente AND
	  Requisicao.idItem = Item.idItem AND
	  Requisicao.dataEntrega = NULL;

/*Pessoas que estão em atraso na entrega de um item*/
SELECT Pessoa.nome, Item.nome, (julianday(date('now')) - julianday(Requisicao.dataInicio)) diasPassados
FROM Pessoa, Requisicao, Item, Cliente
WHERE Pessoa.idPessoa = Cliente.idPessoa AND
	  Cliente.idCliente = Requisicao.idCliente AND
	  Requisicao.idItem = Item.idItem AND
	  Requisicao.dataEntrega = NULL AND
	  diasPassados > 30;

/*nome do item e número de requisições*/
SELECT nome, count(*)
FROM Requisicao natural join Item
GROUP BY nome;

/*Itens disponiveis e suas quantidades*/
SELECT nome, availability 
FROM(
	SELECT *, numeroTotal - count(*) as availability
	FROM Requisicao natural join Item
	WHERE dataEntrega is NULL
	GROUP BY nome)
WHERE availability > 0
UNION
SELECT nome, numeroTotal as availability
FROM Item
WHERE idItem not in (
	SELECT idItem
	FROM Requisicao natural join Item
	WHERE dataEntrega is NULL
	GROUP BY nome);

/*Nacionalidade de todos os Clientes*/
SELECT Pessoa.idPessoa, nome, pais
FROM Pessoa, Cliente, Nacionalidade
WHERE Pessoa.idPessoa = Cliente.idPessoa AND
		Nacionalidade.idPessoa = Pessoa.idPessoa
ORDER BY Pessoa.idPessoa;

