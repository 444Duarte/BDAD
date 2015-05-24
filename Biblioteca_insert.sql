.bail ON
.mode columns
.headers on
.nullvalue NULL
PRAGMA foreign_keys = ON;

/*PLATADORMA*/
INSERT INTO Plataforma VALUES(0, 'Playstation 3');
INSERT INTO Plataforma VALUES(1, 'Playstation 4');
INSERT INTO Plataforma VALUES(2, 'Xbox360');
INSERT INTO Plataforma VALUES(3, 'Xbox One');
INSERT INTO Plataforma VALUES(4, 'PC');
/*GENERO*/
INSERT INTO Genero VALUES(0, 'Acao');
INSERT INTO Genero VALUES(1, 'Misterio');
INSERT INTO Genero VALUES(2, 'Guerra');
INSERT INTO Genero VALUES(3, 'Musical');
INSERT INTO Genero VALUES(4, 'Drama');
INSERT INTO Genero VALUES(5, 'Simulacao');
INSERT INTO Genero VALUES(6, 'Plataforma');
/*FAIXA ETARIA*/
INSERT INTO FaixaEtaria(idFaixaEtaria, menorIdade, maiorIdade) VALUES(0,NULL,3);
INSERT INTO FaixaEtaria(idFaixaEtaria, menorIdade, maiorIdade) VALUES(1,3,9);
INSERT INTO FaixaEtaria(idFaixaEtaria, menorIdade, maiorIdade) VALUES(2,9,12);
INSERT INTO FaixaEtaria(idFaixaEtaria, menorIdade, maiorIdade) VALUES(3,12,15);
INSERT INTO FaixaEtaria(idFaixaEtaria, menorIdade, maiorIdade) VALUES(4,15,18);
INSERT INTO FaixaEtaria(idFaixaEtaria, menorIdade, maiorIdade) VALUES(5,18,NULL);
/*PISO*/
INSERT INTO Piso VALUES(0);
INSERT INTO Piso VALUES(1);
INSERT INTO Piso VALUES(2);
INSERT INTO Piso VALUES(3);
/*SECCAO*/
INSERT INTO Seccao VALUES(0,'Drama',0);
INSERT INTO Seccao VALUES(1,'Acao/Guerra',1);
INSERT INTO Seccao VALUES(2,'Misterio',0);
INSERT INTO Seccao VALUES(3,'Jogos',2);
INSERT INTO Seccao VALUES(4,'Cinema',2);
/*EDITORA*/
INSERT INTO Editora(idEditora, nome, morada) VALUES(0,'Scholastic Corporation', '557 Broadway New York, NY 10012 Estados Unidos');
INSERT INTO Editora(idEditora, nome, morada) VALUES(1,'Areal Editores', 'Av. da Boavista 1471, 4100 Porto');
INSERT INTO Editora(idEditora, nome, morada) VALUES(2,'Porto Editora', 'Rua da Restauracao, 365 4099-023 Porto');
INSERT INTO Editora(idEditora, nome, morada) VALUES(3,'Intrinseca', 'Rua Marques de Sao Vicente, 99 / 3º andar Gávea - Rio de Janeiro');
INSERT INTO Editora(idEditora, nome, morada) VALUES(4,'FEUP Edicoes', 'Rua Doutor Roberto Frias s/n, 4200-465 Porto');
INSERT INTO Editora(idEditora, nome, morada) VALUES(5,'Warner Brothers', 'Warner Bros. Studios Leavesden, Aerodrome Way, Leavesden, Hertfordshire, WD25 7LR, UK');
INSERT INTO Editora(idEditora, nome, morada) VALUES(6,'Electronic arts', 'Electronic Arts Inc. Privacy Policy Administrator 209 Redwood Shores Parkway Redwood City, CA 94065 United States');
/*LIVROS*/
INSERT INTO Item(idItem, anoPublicacao, nome, numeroTotal, idEditora, idGenero, idFaixaEtaria) VALUES(0, 2008, 'The Hunger Games', 3,1,1,4);
INSERT INTO Item VALUES(1, 1997, '1-Harry Potter and the Sorcerer''s Stone', 2,0,0,4);
INSERT INTO Item VALUES(2, 1998, '2-Harry Potter and the Chamber of Secrets', 2,0,0,4);
INSERT INTO Item VALUES(3, 1999, '3-Harry Potter and the Prisoner of Azkaban', 2,0,0,4);
INSERT INTO Item VALUES(4, 2000, '4-Harry Potter and the Goblet of Fire', 2,0,0,4);
INSERT INTO Item VALUES(5, 2004, '5-Harry Potter and the Order of the Phoenix', 2,0,0,4);
INSERT INTO Item VALUES(6, 2005, '6-Harry Potter and the Half-Blood Prince', 2,0,0,4);
INSERT INTO Item VALUES(7, 2007, '7-Harry Potter and the Deathly Hallows', 2,0,0,4);
INSERT INTO Item VALUES(8, 1995, 'The Hitchhiker''s Guide to the Galaxy', 1,3,4,4);
INSERT INTO Item VALUES(9, 1937, 'The Hobbit', 2,2,0,5);
INSERT INTO Item VALUES(10, 1954, 'The Fellowship of the Ring', 3,2,0,5);
INSERT INTO Item VALUES(11, 1954, 'The Return of the King', 3,2,0,5);
INSERT INTO Item VALUES(12, 1954, 'The Two Towers', 3,2,0,5);
INSERT INTO Item VALUES(13, 1977, 'The Silmarillion', 1,5,0,5);
INSERT INTO Item VALUES(14, 2006, 'The Da Vinci Code', 2,5,1,5);

/*JOGOS*/
INSERT INTO Item VALUES(15, 2004, 'Call of Duty: Modern Warfare 2', 1,6,2,5);
INSERT INTO Item VALUES(16, 2005, 'Little Big Planet', 3,6,6,0);
INSERT INTO Item VALUES(17, 2013, 'GTA 5', 1,6,0,5);
INSERT INTO Item VALUES(18, 2008, 'Sims 3', 2,6,5,4);
INSERT INTO Item VALUES(19, 2005, 'Empire Total War', 1,6,2,5);
/*FILMES*/
INSERT INTO Item VALUES(20, 2009, 'Hurt Locker', 1,5,0,5);
INSERT INTO Item VALUES(21, 2002, 'Chicago', 1,5,3,4);
INSERT INTO Item VALUES(22, 2014, 'Big Hero 6', 1,5,4,1);

INSERT INTO Livro(idItem, edicao, isbn) VALUES(0, 8, 0439023483);
INSERT INTO Livro(idItem, edicao, isbn) VALUES(1, 20, 0439554934);
INSERT INTO Livro(idItem, edicao, isbn) VALUES(2, 7, 0439064864);
INSERT INTO Livro(idItem, edicao, isbn) VALUES(3, 9, 0439655488);
INSERT INTO Livro(idItem, edicao, isbn) VALUES(4, 3, 0439139600);
INSERT INTO Livro(idItem, edicao, isbn) VALUES(5, 6, 0439358078);
INSERT INTO Livro(idItem, edicao, isbn) VALUES(6, 8, 0439785960);
INSERT INTO Livro(idItem, edicao, isbn) VALUES(7, 1, 0545010225);
INSERT INTO Livro(idItem, edicao, isbn) VALUES(8, 7, 0345391802);
INSERT INTO Livro(idItem, edicao, isbn) VALUES(9, 87, 0618260307);
INSERT INTO Livro(idItem, edicao, isbn) VALUES(10, 60, 0618346252);
INSERT INTO Livro(idItem, edicao, isbn) VALUES(11, 60, 0345339738);
INSERT INTO Livro(idItem, edicao, isbn) VALUES(12, 60, 0618346260);
INSERT INTO Livro(idItem, edicao, isbn) VALUES(13, 45, 0618391118);
INSERT INTO Livro(idItem, edicao, isbn) VALUES(14, 2, 0307277674);

INSERT INTO Jogo(idItem, numeroMaximoJogadores) VALUES(15, 4);
INSERT INTO Jogo(idItem, numeroMaximoJogadores) VALUES(16, 1);
INSERT INTO Jogo(idItem, numeroMaximoJogadores) VALUES(17, 2);
INSERT INTO Jogo(idItem, numeroMaximoJogadores) VALUES(18, 1);
INSERT INTO Jogo(idItem, numeroMaximoJogadores) VALUES(19, 1);

INSERT INTO Filme(idItem, duracao) VALUES(20,150);
INSERT INTO Filme(idItem, duracao) VALUES(21,120);
INSERT INTO Filme(idItem, duracao) VALUES(22,100);

INSERT INTO JogoPlataforma(idItem, idPlataforma) VALUES(15, 0);
INSERT INTO JogoPlataforma(idItem, idPlataforma) VALUES(16, 0);
INSERT INTO JogoPlataforma(idItem, idPlataforma) VALUES(17, 1);
INSERT INTO JogoPlataforma(idItem, idPlataforma) VALUES(18, 4);
INSERT INTO JogoPlataforma(idItem, idPlataforma) VALUES(19, 4);
/*PRATELEIRA*/
INSERT INTO Prateleira(nrPrateleira, idSeccao, idItem) VALUES(1, 1, 0);
INSERT INTO Prateleira(nrPrateleira, idSeccao, idItem) VALUES(1, 0, 1);
INSERT INTO Prateleira(nrPrateleira, idSeccao, idItem) VALUES(1, 0, 2);
INSERT INTO Prateleira(nrPrateleira, idSeccao, idItem) VALUES(1, 0, 3);
INSERT INTO Prateleira(nrPrateleira, idSeccao, idItem) VALUES(1, 0, 4);
INSERT INTO Prateleira(nrPrateleira, idSeccao, idItem) VALUES(2, 0, 5);
INSERT INTO Prateleira(nrPrateleira, idSeccao, idItem) VALUES(2, 0, 6);
INSERT INTO Prateleira(nrPrateleira, idSeccao, idItem) VALUES(2, 0, 7);
INSERT INTO Prateleira(nrPrateleira, idSeccao, idItem) VALUES(2, 0, 8);
INSERT INTO Prateleira(nrPrateleira, idSeccao, idItem) VALUES(1, 1, 9);
INSERT INTO Prateleira(nrPrateleira, idSeccao, idItem) VALUES(1, 1, 10);
INSERT INTO Prateleira(nrPrateleira, idSeccao, idItem) VALUES(1, 1, 11);
INSERT INTO Prateleira(nrPrateleira, idSeccao, idItem) VALUES(2, 1, 12);
INSERT INTO Prateleira(nrPrateleira, idSeccao, idItem) VALUES(2, 1, 13);
INSERT INTO Prateleira(nrPrateleira, idSeccao, idItem) VALUES(1, 2, 14);
INSERT INTO Prateleira(nrPrateleira, idSeccao, idItem) VALUES(1, 3, 15);
INSERT INTO Prateleira(nrPrateleira, idSeccao, idItem) VALUES(1, 3, 16);
INSERT INTO Prateleira(nrPrateleira, idSeccao, idItem) VALUES(2, 3, 17);
INSERT INTO Prateleira(nrPrateleira, idSeccao, idItem) VALUES(2, 3, 18);
INSERT INTO Prateleira(nrPrateleira, idSeccao, idItem) VALUES(2, 3, 19);
INSERT INTO Prateleira(nrPrateleira, idSeccao, idItem) VALUES(1, 4, 20);
INSERT INTO Prateleira(nrPrateleira, idSeccao, idItem) VALUES(1, 4, 21);
INSERT INTO Prateleira(nrPrateleira, idSeccao, idItem) VALUES(1, 4, 22);
/*AUTORES*/
INSERT INTO Pessoa(idPessoa, nome, dataNascimento) VALUES(0, 'Suzanne Collins', '1962-08-10');
INSERT INTO Pessoa(idPessoa, nome, dataNascimento) VALUES(1, 'J.K. Rowling', '1965-07-31');
INSERT INTO Pessoa(idPessoa, nome, dataNascimento) VALUES(2, 'Douglas Adams', '1952-05-11');
INSERT INTO Pessoa(idPessoa, nome, dataNascimento) VALUES(3, 'J.R.R. Tolkien', '1892-01-03');
INSERT INTO Pessoa(idPessoa, nome, dataNascimento) VALUES(4, 'Dan Brown', '1964-06-22');
/*CLIENTES*/
INSERT INTO Pessoa(idPessoa, nome, dataNascimento) VALUES(5, 'Ricardo Ricardo','1988-06-02');
INSERT INTO Pessoa(idPessoa, nome, dataNascimento) VALUES(6, 'Manuela Carvalhido', '1964-08-15');
INSERT INTO Pessoa(idPessoa, nome, dataNascimento) VALUES(7, 'Filipe Santos', '1995-02-14');
INSERT INTO Pessoa(idPessoa, nome, dataNascimento) VALUES(8, 'Orquidia Rodriguez', '1989-04-06');
INSERT INTO Pessoa(idPessoa, nome, dataNascimento) VALUES(9, 'Chuck Pintor', '1991-10-09');
INSERT INTO Pessoa(idPessoa, nome, dataNascimento) VALUES(10, 'Jose Leitao', '1959-09-12');
/*FUNCIONÁRIOS*/
INSERT INTO Pessoa(idPessoa, nome, dataNascimento) VALUES(11, 'Josefa Castro', '1945-11-08');
INSERT INTO Pessoa(idPessoa, nome, dataNascimento) VALUES(12, 'Carol Silva', '1982-02-25');
INSERT INTO Pessoa(idPessoa, nome, dataNascimento) VALUES(13, 'Roberto Ortigão', '1964-08-07');
/*REALIZADORES*/
INSERT INTO Pessoa(idPessoa, nome, dataNascimento) VALUES(14, 'Josefa Castro', '1933-05-5');
INSERT INTO Pessoa(idPessoa, nome, dataNascimento) VALUES(15, 'Carol Silva', '1981-01-21');
INSERT INTO Pessoa(idPessoa, nome, dataNascimento) VALUES(16, 'Roberto Ortigão', '1967-07-07');
/*ATORES*/
INSERT INTO Pessoa(idPessoa, nome, dataNascimento) VALUES(17, 'Paul Walker', '1985-03-23');
INSERT INTO Pessoa(idPessoa, nome, dataNascimento) VALUES(18, 'Leonardo Di Caprio', '1971-03-02');
INSERT INTO Pessoa(idPessoa, nome, dataNascimento) VALUES(19, 'Nicolau Breyner', '1951-02-23');
/*CLIENTES(CONT)*/
INSERT INTO Pessoa(idPessoa, nome, dataNascimento) VALUES(20, 'Joao "Joao Gordo" Guarda', '2001-05-06');

INSERT INTO Autor(idPessoa) VALUES(0);
INSERT INTO Autor(idPessoa) VALUES(1);
INSERT INTO Autor(idPessoa) VALUES(2);
INSERT INTO Autor(idPessoa) VALUES(3);
INSERT INTO Autor(idPessoa) VALUES(4);

INSERT INTO Realizador(idPessoa, numFilmesRealizados) VALUES(14, 3);
INSERT INTO Realizador(idPessoa, numFilmesRealizados) VALUES(15, 4);
INSERT INTO Realizador(idPessoa, numFilmesRealizados) VALUES(16, 1);

INSERT INTO Actor(idPessoa, numeroOscares, numFilmesParticipou) VALUES(17, 5, 3);
INSERT INTO Actor(idPessoa, numeroOscares, numFilmesParticipou) VALUES(18, 0, 15);
INSERT INTO Actor(idPessoa, numeroOscares, numFilmesParticipou) VALUES(19, 2, 50);

INSERT INTO ClubeLeitores VALUES ('Amigos dos Livros');
INSERT INTO ClubeLeitores VALUES ('Leitura em Conselho');

INSERT INTO Cliente VALUES(5, 'Rua Costa Cabral n4 Porto', 'Amigos dos Livros');
INSERT INTO Cliente VALUES(6, 'Praça Araujo Pacheco n23, Porto', 'Amigos dos Livros');
INSERT INTO Cliente VALUES(7, 'Rua Elisio Santos n8 6 Dt. Porto', 'Amigos dos Livros');
INSERT INTO Cliente VALUES(8, 'Rua To Darte n131 Porto', 'Leitura em Conselho');
INSERT INTO Cliente VALUES(9, 'Praca Americo Balau n19, 12 Esq. Porto', 'Leitura em Conselho');
INSERT INTO Cliente VALUES(10, 'Praca do Marques n69 Porto', 'Leitura em Conselho');
INSERT INTO Cliente VALUES(20, 'Rua Arco do Principiado n43 Porto', 'Amigos dos Livros');

INSERT INTO Pais VALUES('Portugal');
INSERT INTO Pais VALUES('UK');
INSERT INTO Pais VALUES('EUA');
INSERT INTo Pais VALUES('Brazil');


INSERT INTO Funcionario(idPessoa, dataEmpregue, nif, morada, salario) VALUES (11, '1992-6-19', 145979645, 'Rua Nova da Velha n89 1 Esq. Drt  Porto', 500);
INSERT INTO Funcionario(idPessoa, dataEmpregue, nif, morada, salario) VALUES (12, '2002-9-19', 786912459, 'Rua Armando Saraiva n 15 Porto', 420);
INSERT INTO Funcionario(idPessoa, dataEmpregue, nif, morada, salario) VALUES (13, '2004-9-21', 789494878, 'Rua Snoop Dog n420 Oporto', 420);

INSERT INTO Nacionalidade(idPessoa, nomePais) VALUES(0, 'EUA');
INSERT INTO Nacionalidade(idPessoa, nomePais) VALUES(1, 'UK');
INSERT INTO Nacionalidade(idPessoa, nomePais) VALUES(2, 'UK');
INSERT INTO Nacionalidade(idPessoa, nomePais) VALUES(3, 'UK');
INSERT INTO Nacionalidade(idPessoa, nomePais) VALUES(4, 'EUA');
INSERT INTO Nacionalidade(idPessoa, nomePais) VALUES(5, 'Portugal');
INSERT INTO Nacionalidade(idPessoa, nomePais) VALUES(6, 'Portugal');
INSERT INTO Nacionalidade(idPessoa, nomePais) VALUES(7, 'Portugal');
INSERT INTO Nacionalidade(idPessoa, nomePais) VALUES(8, 'Portugal');
INSERT INTO Nacionalidade(idPessoa, nomePais) VALUES(9, 'Portugal');
INSERT INTO Nacionalidade(idPessoa, nomePais) VALUES(10, 'Portugal');
INSERT INTO Nacionalidade(idPessoa, nomePais) VALUES(11, 'Portugal');
INSERT INTO Nacionalidade(idPessoa, nomePais) VALUES(12, 'Portugal');
INSERT INTO Nacionalidade(idPessoa, nomePais) VALUES(13, 'Portugal');

/*INSERT INTO Pertence(idPessoa, nomeClube) VALUES(5, 'Amigos dos Livros');
INSERT INTO Pertence(idPessoa, nomeClube) VALUES(6, 'Amigos dos Livros');
INSERT INTO Pertence(idPessoa, nomeClube) VALUES(7, 'Amigos dos Livros');
INSERT INTO Pertence(idPessoa, nomeClube) VALUES(8, 'Amigos dos Livros');
INSERT INTO Pertence(idPessoa, nomeClube) VALUES(9, 'Leitura em Conselho');
INSERT INTO Pertence(idPessoa, nomeClube) VALUES(10, 'Leitura em Conselho');*/

INSERT INTO FuncionarioPiso(idPessoa,numero) VALUES(11,0);
INSERT INTO FuncionarioPiso(idPessoa,numero) VALUES(12,1);
INSERT INTO FuncionarioPiso(idPessoa,numero) VALUES(12,2);
INSERT INTO FuncionarioPiso(idPessoa,numero) VALUES(13,3);

INSERT INTO Escreveu(idPessoa, idItem) VALUES(0,0);
INSERT INTO Escreveu(idPessoa, idItem) VALUES(1,1);
INSERT INTO Escreveu(idPessoa, idItem) VALUES(1,2);
INSERT INTO Escreveu(idPessoa, idItem) VALUES(1,3);
INSERT INTO Escreveu(idPessoa, idItem) VALUES(1,4);
INSERT INTO Escreveu(idPessoa, idItem) VALUES(1,5);
INSERT INTO Escreveu(idPessoa, idItem) VALUES(1,6);
INSERT INTO Escreveu(idPessoa, idItem) VALUES(2,8);
INSERT INTO Escreveu(idPessoa, idItem) VALUES(3,9);
INSERT INTO Escreveu(idPessoa, idItem) VALUES(3,10);
INSERT INTO Escreveu(idPessoa, idItem) VALUES(3,11);
INSERT INTO Escreveu(idPessoa, idItem) VALUES(3,12);
INSERT INTO Escreveu(idPessoa, idItem) VALUES(3,13);
INSERT INTO Escreveu(idPessoa, idItem) VALUES(4,14);

INSERT INTO Realizou(idPessoa, idItem) VALUES(14,20);
INSERT INTO Realizou(idPessoa, idItem) VALUES(15,21);
INSERT INTO Realizou(idPessoa, idItem) VALUES(16,22);

INSERT INTO Participa(idPessoa, idItem) VALUES(17,20);
INSERT INTO Participa(idPessoa, idItem) VALUES(18,20);
INSERT INTO Participa(idPessoa, idItem) VALUES(19,20);
INSERT INTO Participa(idPessoa, idItem) VALUES(17,21);
INSERT INTO Participa(idPessoa, idItem) VALUES(18,22);
INSERT INTO Participa(idPessoa, idItem) VALUES(19,22);

INSERT INTO Sediado(idEditora, pais) VALUES (0,'EUA');
INSERT INTO Sediado(idEditora, pais) VALUES (1,'Portugal');
INSERT INTO Sediado(idEditora, pais) VALUES (2,'Portugal');
INSERT INTO Sediado(idEditora, pais) VALUES (3,'Brazil');
INSERT INTO Sediado(idEditora, pais) VALUES (4,'Portugal');
INSERT INTO Sediado(idEditora, pais) VALUES (5,'UK');
INSERT INTO Sediado(idEditora, pais) VALUES (6,'EUA');

INSERT INTO Requisicao(dataInicio, dataEntrega, idPessoa, idItem) VALUES('2015-02-28', '2015-03-12', 7, 1);
INSERT INTO Requisicao(dataInicio, dataEntrega, idPessoa, idItem) VALUES('2015-04-20', NULL,7,4);
INSERT INTO Requisicao(dataInicio, dataEntrega, idPessoa, idItem) VALUES('2015-04-02', '2015-04-15',8,18);
INSERT INTO Requisicao(dataInicio, dataEntrega, idPessoa, idItem) VALUES('2015-01-15', NULL,10,17);
INSERT INTO Requisicao(dataInicio, dataEntrega, idPessoa, idItem) VALUES('2015-05-23', NULL,6,1);
INSERT INTO Requisicao(dataInicio, dataEntrega, idPessoa, idItem) VALUES('2015-01-23', NULL,20,16);
INSERT INTO Requisicao(dataInicio, dataEntrega, idPessoa, idItem) VALUES('2015-01-23', NULL,10,1);
INSERT INTO Requisicao(dataInicio, dataEntrega, idPessoa, idItem) VALUES('2015-01-23', NULL,10,2);