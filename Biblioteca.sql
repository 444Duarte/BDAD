.bail ON
.mode columns
.headers on
.nullvalue NULL
PRAGMA foreign_keys = ON;

DROP TABLE IF EXISTS Pais;
DROP TABLE IF EXISTS Pessoa;
DROP TABLE IF EXISTS Nacionalidade;
DROP TABLE IF EXISTS Autor;
DROP TABLE IF EXISTS ClubeLeitores;
DROP TABLE IF EXISTS Cliente;
DROP TABLE IF EXISTS Funcionario;
DROP TABLE IF EXISTS Actor;
DROP TABLE IF EXISTS Realizador;
DROP TABLE IF EXISTS Pertence;
DROP TABLE IF EXISTS Item;
DROP TABLE IF EXISTS Livro;
DROP TABLE IF EXISTS Jogo;
DROP TABLE IF EXISTS Filme;
DROP TABLE IF EXISTS Plataforma;
DROP TABLE IF EXISTS JogoPlataforma;
DROP TABLE IF EXISTS Genero;
DROP TABLE IF EXISTS ItemGenero;
DROP TABLE IF EXISTS FaixaEtaria;
DROP TABLE IF EXISTS ItemFaixaEtaria;
DROP TABLE IF EXISTS Escreveu;
DROP TABLE IF EXISTS Participa;
DROP TABLE IF EXISTS Realizou;
DROP TABLE IF EXISTS Editora;
DROP TABLE IF EXISTS Sediado;
DROP TABLE IF EXISTS Piso;
DROP TABLE IF EXISTS FuncionarioPiso;
DROP TABLE IF EXISTS Seccao;
DROP TABLE IF EXISTS Prateleira;
DROP TABLE IF EXISTS Requisicao;


CREATE TABLE Pais(
	nome	TEXT	PRIMARY KEY		NOT NULL
);

CREATE TABLE Pessoa(
	idPessoa 		INTEGER 	PRIMARY KEY,
	nome 			TEXT 		NOT NULL,
	dataNascimento 	DATE
);

CREATE TABLE Nacionalidade(
	idPessoa 	INTEGER	 	REFERENCES Pessoa(idPessoa),
	nomePais 	TEXT 		REFERENCES Pais(nome),
	PRIMARY KEY(idPessoa, nomePais)
);

CREATE TABLE Autor(
	idAutor 	INTEGER		PRIMARY KEY		AUTOINCREMENT,
	idPessoa	INTEGER	 	REFERENCES Pessoa(idPessoa)
);

CREATE TABLE ClubeLeitores(
	nome 	TEXT 	PRIMARY KEY
);

CREATE TABLE Cliente(
	idCliente 	INTEGER		PRIMARY KEY		AUTOINCREMENT,
	idPessoa 	INTEGER	 	REFERENCES Pessoa(idPessoa),
	morada 		TEXT,
	nomeClube 	TEXT 		REFERENCES ClubeLeitores(nome)
);

CREATE TABLE Funcionario(
	idFuncionario		INTEGER		PRIMARY KEY		AUTOINCREMENT,
	idPessoa			INTEGER		REFERENCES Pessoa(idPessoa),
	dataEmpregue		DATE,
	nif					INTEGER,
	morada				TEXT,
	salario				INTEGER
);

CREATE TABLE Actor(
	idActor				INTEGER		PRIMARY KEY		AUTOINCREMENT,
	idPessoa			INTEGER		REFERENCES Pessoa(idPessoa),
	numeroOscares		INTEGER,
	numFilmesParticipou	INTEGER
);	

CREATE TABLE Realizador(
	idRealizador		INTEGER		PRIMARY KEY		AUTOINCREMENT,
	idPessoa			INTEGER	 	REFERENCES Pessoa(idPessoa),
	numFilmesRealizados	INTEGER
);

CREATE TABLE Pertence(
	idCliente 	INTEGER 	REFERENCES Cliente(idCliente),
	nomeClube 	INTEGER  	REFERENCES ClubeLeitores(nome),
	PRIMARY KEY (idCliente, nomeClube)
);


CREATE TABLE Genero(
	nome 	TEXT 	PRIMARY KEY 	NOT NULL
);

CREATE TABLE Item(
	idItem 			INTEGER		PRIMARY KEY 	AUTOINCREMENT,
	anoPublicacao 	INTEGER,
	nome  			TEXT		NOT NULL,
	numeroTotal	 	INTEGER		NOT NULL,
	idEditora		INTEGER 	REFERENCES Editora(idEditora)	NOT NULL, 
	idPrateleira	INTEGER		REFERENCES Prateleira(idPrateleira)	NOT NULL,
	genero 			TEXT 		REFERENCES Genero(nome) NOT NULL,
	idFaixaEtaria	INTEGER 	REFERENCES FaixaEtaria(idFaixaEtaria) NOT NULL
);

CREATE TABLE Livro(
	idLivro		INTEGER		PRIMARY KEY 	AUTOINCREMENT,
	idItem		INTEGER		REFERENCES Item(idItem),
	edicao		INTEGER,
	isbn		INTEGER		NOT NULL
);

CREATE TABLE Jogo(
	idJogo					INTEGER		PRIMARY KEY		AUTOINCREMENT,
	idItem					INTEGER		REFERENCES Item(idItem) NOT NULL,
	numeroMaximoJogadores	INTEGER		NOT NULL,
	plataforma 				TEXT 		REFERENCES Plataforma(nome) NOT NULL
);

CREATE TABLE Filme(
	idFilme		INTEGER		PRIMARY KEY		AUTOINCREMENT,
	idItem		INTEGER		REFERENCES Item(idItem),
	duracao		INTEGER		NOT NULL
);

CREATE TABLE Plataforma(
	nome 	TEXT 	PRIMARY KEY		NOT NULL
);

CREATE TABLE FaixaEtaria(
	idFaixaEtaria	INTEGER		PRIMARY KEY		AUTOINCREMENT,
	menorIdade		INTEGER		NOT NULL,
	maiorIdade		INTEGER		NOT NULL
);

CREATE TABLE Escreveu(
	idAutor 	INTEGER		REFERENCES Autor(idAutor),
	idLivro		INTEGER		REFERENCES Livro(idLivro),
	PRIMARY KEY	(idAutor, idLivro)
);

CREATE TABLE Participa(
	idActor		INTEGER		REFERENCES Actor(idActor),
	idFilme		INTEGER		REFERENCES Filme(idFilme),
	PRIMARY KEY (idActor, idFilme)
);

CREATE TABLE Realizou(
	idRealizador		INTEGER		REFERENCES Realizador(idRealizador),
	idFilme		INTEGER		REFERENCES Filme(idFilme),
	PRIMARY KEY (idRealizador, idFilme)
);

CREATE TABLE Editora(
	idEditora	INTEGER 	PRIMARY KEY 	AUTOINCREMENT,
	nome 		TEXT		NOT NULL,
	morada		TEXT 	
);

CREATE TABLE Sediado(
	idEditora		INTEGER 	REFERENCES Editora(idEditora),
	pais 			TEXT		REFERENCES Pais(nome),
	PRIMARY KEY (idEditora, pais)
);

CREATE TABLE Piso(
	numero 		INTEGER		PRIMARY KEY 	NOT NULL
);

CREATE TABLE FuncionarioPiso(
	idFuncionario	INTEGER		REFERENCES Funcionario(idFuncionario),
	numero 			INTEGER		REFERENCES Piso(numero),
	PRIMARY KEY (idFuncionario, numero)
);

CREATE TABLE Seccao(
	idSeccao 	INTEGER		PRIMARY KEY 	AUTOINCREMENT,
	nome 		TEXT		NOT NULL,
	numero 		INTEGER		REFERENCES Piso(numero)
);

CREATE TABLE Prateleira(
	idPrateleira	INTEGER		PRIMARY KEY 	AUTOINCREMENT,
	idSeccao		INTEGER 	REFERENCES Seccao(idSeccao)
);

CREATE TABLE Requisicao(
	dataInicio		DATE 		NOT NULL,
	dataEntrega		DATE,
	idCliente		INTEGER		REFERENCES Cliente(idCliente),
	idItem			INTEGER		REFERENCES Item(idItem),
	PRIMARY KEY (idCliente, idItem)
);


