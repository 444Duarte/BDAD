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
	idPessoa	INTEGER	 	PRIMARY KEY 	REFERENCES Pessoa(idPessoa)
);

CREATE TABLE ClubeLeitores(
	nomeClube 	TEXT 	PRIMARY KEY
);

CREATE TABLE Cliente(
	idPessoa 	INTEGER	 	PRIMARY KEY 	REFERENCES Pessoa(idPessoa),
	morada 		TEXT,
	nomeClube 	TEXT 		REFERENCES ClubeLeitores(nomeClube)
);

CREATE TABLE Funcionario(
	idPessoa			INTEGER		PRIMARY KEY 	REFERENCES Pessoa(idPessoa),
	dataEmpregue		DATE,
	nif					INTEGER,
	morada				TEXT,
	salario				INTEGER
);

CREATE TABLE Actor(
	idPessoa			INTEGER		PRIMARY KEY 	REFERENCES Pessoa(idPessoa),
	numeroOscares		INTEGER,
	numFilmesParticipou	INTEGER
);	

CREATE TABLE Realizador(
	idPessoa			INTEGER	 	PRIMARY KEY 	REFERENCES Pessoa(idPessoa),
	numFilmesRealizados	INTEGER
);

CREATE TABLE Pertence(
	idPessoa 	INTEGER 	PRIMARY KEY 	REFERENCES Cliente(idPessoa),
	nomeClube 	TEXT  		REFERENCES ClubeLeitores(nome)
);

CREATE TABLE Genero(
	idGenero 	INTEGER 	PRIMARY KEY 	AUTOINCREMENT,
	nome 		TEXT 	
);

CREATE TABLE Item(
	idItem 			INTEGER		PRIMARY KEY 	AUTOINCREMENT,
	anoPublicacao 	INTEGER,
	nome  			TEXT		NOT NULL,
	numeroTotal	 	INTEGER		NOT NULL,
	idEditora		INTEGER 	REFERENCES Editora(idEditora)	NOT NULL, 
	idGenero 		INTEGER 	REFERENCES Genero(idGenero) NOT NULL,
	idFaixaEtaria	INTEGER 	REFERENCES FaixaEtaria(idFaixaEtaria) NOT NULL
);

CREATE TABLE Livro(
	idItem		INTEGER		PRIMARY KEY		REFERENCES Item(idItem),
	edicao		INTEGER,
	isbn		INTEGER		NOT NULL
);

CREATE TABLE Jogo(
	idItem					INTEGER		PRIMARY KEY 	REFERENCES Item(idItem) ,
	numeroMaximoJogadores	INTEGER		NOT NULL
);

CREATE TABLE Filme(
	idItem		INTEGER		PRIMARY KEY		REFERENCES Item(idItem),
	duracao		INTEGER		NOT NULL
);

CREATE TABLE Plataforma(
	idPlataforma 	INTEGER 	PRIMARY KEY 	AUTOINCREMENT,		
	nome 			TEXT
);

CREATE TABLE JogoPlataforma(
	idItem 			INTEGER 	REFERENCES Jogo(idItem),
	idPlataforma 	INTEGER 	REFERENCES Plataforma(idPlataforma),
	PRIMARY KEY (idItem, idPlataforma)
);

CREATE TABLE FaixaEtaria(
	idFaixaEtaria	INTEGER		PRIMARY KEY		AUTOINCREMENT,
	menorIdade		INTEGER,
	maiorIdade		INTEGER
	CHECK (menorIdade is not NULL OR maiorIdade is not NULL)
);

CREATE TABLE Escreveu(
	idPessoa 	INTEGER		REFERENCES Autor(idPessoa),
	idItem		INTEGER		REFERENCES Livro(idItem),
	PRIMARY KEY	(idItem)
);

CREATE TABLE Participa(
	idPessoa		INTEGER		REFERENCES Actor(idPessoa),
	idItem		INTEGER		REFERENCES Filme(idItem),
	PRIMARY KEY (idPessoa, idItem)
);

CREATE TABLE Realizou(
	idPessoa		INTEGER		REFERENCES Realizador(idPessoa),
	idItem		INTEGER		REFERENCES Filme(idItem),
	PRIMARY KEY (idPessoa, idItem)
);

CREATE TABLE Editora(
	idEditora	INTEGER 	PRIMARY KEY 	AUTOINCREMENT,
	nome 		TEXT		NOT NULL,
	morada		TEXT 	
);

CREATE TABLE Sediado(
	idEditora		INTEGER 	REFERENCES Editora(idEditora),
	pais 			TEXT		REFERENCES Pais(nome),
	PRIMARY KEY (idEditora)
);

CREATE TABLE Piso(
	numero 		INTEGER		PRIMARY KEY 	NOT NULL
);

CREATE TABLE FuncionarioPiso(
	idPessoa	INTEGER		REFERENCES Funcionario(idPessoa),
	numero 			INTEGER		REFERENCES Piso(numero),
	PRIMARY KEY (idPessoa, numero)
);

CREATE TABLE Seccao(
	idSeccao 	INTEGER		PRIMARY KEY 	AUTOINCREMENT,
	nome 		TEXT		NOT NULL,
	numero 		INTEGER		REFERENCES Piso(numero)
);

CREATE TABLE Prateleira(
	nrPrateleira	INTEGER,
	idSeccao		INTEGER 	REFERENCES Seccao(idSeccao),
	idItem			INTEGER 	REFERENCES Item(idItem),
	PRIMARY KEY (idItem)
);

CREATE TABLE Requisicao(
	dataInicio		DATE 		NOT NULL,
	dataEntrega		DATE,
	idPessoa		INTEGER		REFERENCES Cliente(idPessoa),
	idItem			INTEGER		REFERENCES Item(idItem),
	PRIMARY KEY (idPessoa, idItem)
);


