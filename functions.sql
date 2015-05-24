.bail ON
.mode columns
.headers on
.nullvalue NULL
PRAGMA foreign_keys = ON;

/*Lista de itens actualmente requisitados e Cliente que requisitou*/
SELECT Pessoa.nome AS Cliente, Item.nome as Item
FROM Pessoa, Requisicao, Item, Cliente
WHERE Pessoa.idPessoa = Cliente.idPessoa AND
	  Cliente.idPessoa = Requisicao.idPessoa AND
	  Requisicao.idItem = Item.idItem AND
	  Requisicao.dataEntrega is NULL
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
SELECT * 
FROM(
		SELECT nome, numeroTotal - count(*) as disponibilidade
		FROM Requisicao natural join Item
		GROUP BY nome
		HAVING dataEntrega is NULL
	UNION
		SELECT nome, numeroTotal as disponibilidade
		FROM Item
		WHERE idItem not in (
			SELECT idItem
			FROM Requisicao natural join Item
			GROUP BY nome
			HAVING dataEntrega is NULL)
)
WHERE disponibilidade > 0;


/*Nacionalidade de todos os Clientes*/
SELECT Pessoa.idPessoa, Pessoa.nome, nomePais
FROM Pessoa, Cliente, Nacionalidade
WHERE Pessoa.idPessoa = Cliente.idPessoa AND
		Nacionalidade.idPessoa = Pessoa.idPessoa
ORDER BY Pessoa.idPessoa;

/*Seccoes ordenadas por piso e com o respectivo funcionario*/
SELECT Piso.numero as piso, Seccao.nome as seccao, Pessoa.nome as funcionario
FROM Pessoa, Funcionario, Piso, Seccao, FuncionarioPiso
WHERE 	Pessoa.idPessoa = Funcionario.idPessoa AND
		Funcionario.idPessoa = FuncionarioPiso.idPessoa AND	
		FuncionarioPiso.numero = Piso.numero AND
		Piso.numero = Seccao.numero
ORDER BY Piso.numero;

/*Itens com a sua informaçao, com a respectiva localizaçao e disponibilidade*/
SELECT Item.idItem, Item.nome, anoPublicacao, Editora.nome as Editora, Genero.nome as Genero, FaixaEtaria.menorIdade, FaixaEtaria.maiorIdade, Piso.numero as Piso, Seccao.nome as Seccao, disponibilidade
FROM 	Item NATURAL JOIN(
				SELECT idItem, numeroTotal - count(*) as disponibilidade
				FROM Requisicao natural join Item
				GROUP BY nome
				HAVING dataEntrega is NULL
			UNION
				SELECT idItem, numeroTotal as disponibilidade
				FROM Item
				WHERE idItem not in (
					SELECT idItem
					FROM Requisicao natural join Item
					GROUP BY nome
					HAVING dataEntrega is NULL)
		),
		Editora, Genero, FaixaEtaria, Seccao, Piso, Prateleira
WHERE 	Item.idItem = Prateleira.idItem AND
		Editora.idEditora = Item.idEditora AND
		Genero.idGenero = Item.idGenero AND
		FaixaEtaria.idFaixaEtaria = Item.idFaixaEtaria AND
		Seccao.idSeccao = Prateleira.idSeccao AND 
		Piso.numero = Seccao.numero
ORDER BY Item.idItem;


/*Items para idades menores que 18 anos*/
SELECT idItem, nome
FROM Item, FaixaEtaria
WHERE	Item.idFaixaEtaria = FaixaEtaria.idFaixaEtaria AND
		(menorIdade < 18 OR menorIdade is NULL);

/*Lista de Membros dos Clubes de Leitores*/
SELECT ClubeLeitores.nomeClube, Pessoa.nome
FROM Cliente, Pessoa, ClubeLeitores
WHERE 	Cliente.idPessoa = Pessoa.idPessoa AND
		Cliente.nomeClube = ClubeLeitores.nomeClube
ORDER BY ClubeLeitores.nomeClube, Pessoa.nome;

/*Lista de Clientes por ordem de idades*/
SELECT nome, (strftime('%Y', 'now') - strftime('%Y', dataNascimento) - (strftime('%m-%d', 'now') < strftime('%m-%d', dataNascimento))) as idade
FROM Pessoa, Cliente
WHERE 	Pessoa.idPessoa = Cliente.idPessoa
ORDER BY idade;