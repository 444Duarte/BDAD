.bail ON
.mode columns
.headers on
.nullvalue NULL
PRAGMA foreign_keys = ON;
/*PLATADORMA*/
INSERT INTO Plataforma VALUES('Playstation 3');
INSERT INTO Plataforma VALUES('Playstation 4');
INSERT INTO Plataforma VALUES('Xbox360');
INSERT INTO Plataforma VALUES('Xbox One');
INSERT INTO Plataforma VALUES('PC');
/*GENERO*/
INSERT INTO Genero VALUES('Ação');
INSERT INTO Genero VALUES('Misterio');
INSERT INTO Genero VALUES('Guerra');
INSERT INTO Genero VALUES('Musical');
INSERT INTO Genero VALUES('Drama');
/*FAIXA ETARIA*/
INSERT INTO FaixaEtaria VALUES(0,0,3);
INSERT INTO FaixaEtaria VALUES(1,3,9);
INSERT INTO FaixaEtaria VALUES(2,9,12);
INSERT INTO FaixaEtaria VALUES(3,12,15);
INSERT INTO FaixaEtaria VALUES(4,15,18);
INSERT INTO FaixaEtaria VALUES(5,18,100);
/*PISO*/
INSERT INTO Piso VALUES(0);
INSERT INTO Piso VALUES(1);
INSERT INTO Piso VALUES(2);
INSERT INTO Piso VALUES(3);
/*SECCAO*/
INSERT INTO Seccao VALUES(0,'A',0);
INSERT INTO Seccao VALUES(1,'B',1);
INSERT INTO Seccao VALUES(2,'C',2);
INSERT INTO Seccao VALUES(3,'D',0);
INSERT INTO Seccao VALUES(4,'E',2);
/*PRATELEIRA*/
INSERT INTO Prateleira VALUES(0,0);
INSERT INTO Prateleira VALUES(1,0);
INSERT INTO Prateleira VALUES(2,1);
INSERT INTO Prateleira VALUES(3,1);
INSERT INTO Prateleira VALUES(4,2);
INSERT INTO Prateleira VALUES(5,2);
INSERT INTO Prateleira VALUES(6,3);
INSERT INTO Prateleira VALUES(7,3);
INSERT INTO Prateleira VALUES(8,4);
INSERT INTO Prateleira VALUES(9,4);
/*EDITORA*/
INSERT INTO Editora(nome, morada) VALUES(0,'Scholastic Corporation', '557 Broadway New York, NY 10012 Estados Unidos');
INSERT INTO Editora(nome, morada) VALUES(1,'Areal Editores', 'Av. da Boavista 1471, 4100 Porto');
INSERT INTO Editora(nome, morada) VALUES(2,'Porto Editora', 'Rua da Restauracao, 365 4099-023 Porto');
INSERT INTO Editora(nome, morada) VALUES(3,'Intrinseca', 'Rua Marques de Sao Vicente, 99 / 3º andar Gávea - Rio de Janeiro');
INSERT INTO Editora(nome, morada) VALUES(4,'FEUP Edicoes', 'Rua Doutor Roberto Frias s/n, 4200-465 Porto');
INSERT INTO Editora(nome, morada) VALUES(5,'Warner Brothers', 'Warner Bros. Studios Leavesden, Aerodrome Way, Leavesden, Hertfordshire, WD25 7LR, UK');
INSERT INTO Editora(nome, morada) VALUES(6,'Electronic arts', 'Electronic Arts Inc. Privacy Policy Administrator 209 Redwood Shores Parkway Redwood City, CA 94065 United States');
/*LIVROS*/
INSERT INTO Item VALUES(0, 2008, 'The Hunger Games', 3,1,0,'Ação',4);
INSERT INTO Item VALUES(1, 1997, 'Harry Potter and the Sorcerer''s Stone', 2,0,1,'Drama',4);
INSERT INTO Item VALUES(2, 1998, 'Harry Potter and the Chamber of Secrets', 2,0,1,'Drama',4);
INSERT INTO Item VALUES(3, 1999, 'Harry Potter and the Prisoner of Azkaban', 2,0,1,'Drama',4);
INSERT INTO Item VALUES(4, 2000, 'Harry Potter and the Goblet of Fire', 2,0,1,'Drama',4);
INSERT INTO Item VALUES(5, 2004, 'Harry Potter and the Order of the Phoenix', 2,0,1,'Drama',4);
INSERT INTO Item VALUES(6, 2005, 'Harry Potter and the Half-Blood Prince', 2,0,1,'Drama',4);
INSERT INTO Item VALUES(7, 2007, 'Harry Potter and the Deathly Hallows', 2,0,1,'Drama',4);
INSERT INTO Item VALUES(8, 1995, 'The Hitchhiker''s Guide to the Galaxy', 1,3,4,'Drama',4);
INSERT INTO Item VALUES(9, 1937, 'The Hobbit', 2,2,5,'Guerra',5);
INSERT INTO Item VALUES(10, 1954, 'The Fellowship of the Ring', 3,2,5,'Guerra',5);
INSERT INTO Item VALUES(11, 1954, 'The Return of the King', 3,2,5,'Guerra',5);
INSERT INTO Item VALUES(12, 1954, 'The Two Towers', 3,2,5,'Guerra',5);
INSERT INTO Item VALUES(13, 1977, 'The Silmarillion', 1,5,5,'Guerra',5);
INSERT INTO Item VALUES(14, 2006, 'The Da Vinci Code', 2,5,7,'Misterio',5);

/*JOGOS*/
INSERT INTO Item VALUES(15, 2004, 'Call of Duty: Modern Warfare 2', 1,6,2,'Guerra',5);
INSERT INTO Item VALUES(16, 2005, 'Little Big Planet', 3,6,5,'Musical',0);
INSERT INTO Item VALUES(17, 2013, 'GTA 5', 1,6,0,'Ação',5);
INSERT INTO Item VALUES(18, 2008, 'Sims 3', 2,6,7,'Drama',4);
INSERT INTO Item VALUES(19, 2005, 'Empire Total War', 1,6,9,'Guerra',5);
/*FILMES*/
INSERT INTO Item VALUES(20, 2009, 'Hurt Locker', 1,5,2,'Guerra',5);
INSERT INTO Item VALUES(21, 2002, 'Chicago', 1,5,3,'Musical',4);
INSERT INTO Item VALUES(22, 2014, 'Big Hero 6', 1,5,5,'Ação',1);

INSERT INTO Livro VALUES(0, 0, 8, 0439023483);
INSERT INTO Livro VALUES(1, 1, 20, 0439554934);
INSERT INTO Livro VALUES(2, 2, 7, 0439064864);
INSERT INTO Livro VALUES(3, 3, 9, 0439655488);
INSERT INTO Livro VALUES(4, 4, 3, 0439139600);
INSERT INTO Livro VALUES(5, 5, 6, 0439358078);
INSERT INTO Livro VALUES(6, 6, 8, 0439785960);
INSERT INTO Livro VALUES(7, 7, 1, 0545010225);
INSERT INTO Livro VALUES(8, 8, 7, 0345391802);
INSERT INTO Livro VALUES(9, 9, 87, 0618260307);
INSERT INTO Livro VALUES(10, 10, 60, 0618346252);
INSERT INTO Livro VALUES(11, 11, 60, 0345339738);
INSERT INTO Livro VALUES(12, 12, 60, 0618346260);
INSERT INTO Livro VALUES(13, 13, 45, 0618391118);
INSERT INTO Livro VALUES(14, 14, 2, 0307277674);

INSERT INTO Jogo VALUES(0, 15, 4,'Playstation 3');
INSERT INTO Jogo VALUES(1, 16, 1,'Playstation 3');
INSERT INTO Jogo VALUES(2, 17, 2,'Playstation 4');
INSERT INTO Jogo VALUES(3, 18, 1,'PC');
INSERT INTO Jogo VALUES(4, 19, 1,'PC');

INSERT INTO Filme VALUES(0,20,150);
INSERT INTO Filme VALUES(1,21,120);
INSERT INTO Filme VALUES(2,22,100);

/*AUTORES*/
INSERT INTO Pessoa VALUES(0, 'Suzanne Collins', 1962-8-10);
INSERT INTO Pessoa VALUES(1, 'J.K. Rowling', 1965-7-31);
INSERT INTO Pessoa VALUES(2, 'Douglas Adams', 1952-5-11);
INSERT INTO Pessoa VALUES(3, 'J.R.R. Tolkien', 1892-1-3);
INSERT INTO Pessoa VALUES(4, 'Dan Brown', 1964-6-22);
/*CLIENTES*/
INSERT INTO Pessoa VALUES(5, 'Ricardo Ricardo', 1988-6-2);
INSERT INTO Pessoa VALUES(6, 'Manuela Carvalhido', 1964-8-15);
INSERT INTO Pessoa VALUES(7, 'Filipe Santos', 1995-2-14);
INSERT INTO Pessoa VALUES(8, 'Orquidia Rodriguez', 1989-4-6);
INSERT INTO Pessoa VALUES(9, 'Chuck Pintor', 1991-10-9);
INSERT INTO Pessoa VALUES(10, 'Jose Leitao', 1959-9-12);
/*FUNCIONÁRIOS*/
INSERT INTO Pessoa(idPessoa, nome, dataNascimento) VALUES(11, 'Josefa Castro', 1945-11-8);
INSERT INTO Pessoa(idPessoa, nome, dataNascimento) VALUES(12, 'Carol Silva', 1982-2-25);
INSERT INTO Pessoa(idPessoa, nome, dataNascimento) VALUES(13, 'Roberto Ortigão', 1964-8-7);
/*REALIZADORES*/
INSERT INTO Pessoa(idPessoa, nome, dataNascimento) VALUES(14, 'Josefa Castro', 1933-5-5);
INSERT INTO Pessoa(idPessoa, nome, dataNascimento) VALUES(15, 'Carol Silva', 1981-1-21);
INSERT INTO Pessoa(idPessoa, nome, dataNascimento) VALUES(16, 'Roberto Ortigão', 1967-7-7);
/*ATORES*/
INSERT INTO Pessoa(idPessoa, nome, dataNascimento) VALUES(17, 'Paul Walker', 1985-3-23);
INSERT INTO Pessoa(idPessoa, nome, dataNascimento) VALUES(18, 'Leonardo Di Caprio', 1971-3-2);
INSERT INTO Pessoa(idPessoa, nome, dataNascimento) VALUES(19, 'Nicolau Breyner', 1951-2-23);

INSERT INTO Autor VALUES(0,0);
INSERT INTO Autor VALUES(1,1);
INSERT INTO Autor VALUES(2,2);
INSERT INTO Autor VALUES(3,3);
INSERT INTO Autor VALUES(4,4);

INSERT INTO Realizador VALUES(0, 14, 3);
INSERT INTO Realizador VALUES(1, 15, 4);
INSERT INTO Realizador VALUES(2, 16, 1);

INSERT INTO Actor VALUES(0,17,5,3);
INSERT INTO Actor VALUES(1,18,0,15);
INSERT INTO Actor VALUES(2,19,2,50);

INSERT INTO ClubeLeitores VALUES ('Amigos dos Livros');
INSERT INTO ClubeLeitores VALUES ('Leitura em Conselho');

INSERT INTO Cliente VALUES(0, 5, 'Rua Costa Cabral n4 Porto', 'Amigos dos Livros');
INSERT INTO Cliente VALUES(1, 6, 'Praça Araujo Pacheco n23, Porto', 'Amigos dos Livros');
INSERT INTO Cliente VALUES(2, 7, 'Rua Elisio Santos n8 6 Dt. Porto', 'Amigos dos Livros');
INSERT INTO Cliente VALUES(3, 8, 'Rua To Darte n131 Porto', 'Leitura em Conselho');
INSERT INTO Cliente VALUES(4, 9, 'Praca Americo Balau n19, 12 Esq. Porto', 'Leitura em Conselho');
INSERT INTO Cliente VALUES(5, 10, 'Praça do Marques n69 Porto', 'Leitura em Conselho');

INSERT INTO Pais VALUES('Portugal');
INSERT INTO Pais VALUES('Inglaterra');
INSERT INTO Pais VALUES('EUA');
INSERT INTo Pais VALUES('Brazil');

INSERT INTO Funcionario(idPessoa, dataEmpregue, nif, morada, salario) VALUES (0,11, 1992-6-19, 145979645, 'Rua Nova da Velha n89 1 Esq. Drt  Porto', 500);
INSERT INTO Funcionario(idPessoa, dataEmpregue, nif, morada, salario) VALUES (1,12, 2002-9-19. 786912459, 'Rua Armando Saraiva n 15 Porto', 420);
INSERT INTO Funcionario(idPessoa, dataEmpregue, nif, morada, salario) VALUES (2,13, 2004-9-21, 789494878, 'Rua Snoop Dog n420 Oporto', 420);

INSERT INTO Nacionalidade(idPessoa, nomePais) VALUES(0, 'EUA');
INSERT INTO Nacionalidade(idPessoa, nomePais) VALUES(1, 'Inglaterra');
INSERT INTO Nacionalidade(idPessoa, nomePais) VALUES(2, 'Inglaterra');
INSERT INTO Nacionalidade(idPessoa, nomePais) VALUES(3, 'Inglaterra');
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

INSERT INTO Pertence VALUES(0, 'Amigos dos Livros');
INSERT INTO Pertence VALUES(1, 'Amigos dos Livros');
INSERT INTO Pertence VALUES(2, 'Amigos dos Livros');
INSERT INTO Pertence VALUES(3, 'Amigos dos Livros');
INSERT INTO Pertence VALUES(4, 'Leitura em Conselho');
INSERT INTO Pertence VALUES(5, 'Leitura em Conselho');

INSERT INTO FuncionarioPiso(idFuncionario,numero) VALUES(0,0);
INSERT INTO FuncionarioPiso(idFuncionario,numero) VALUES(1,1);
INSERT INTO FuncionarioPiso(idFuncionario,numero) VALUES(1,2);
INSERT INTO FuncionarioPiso(idFuncionario,numero) VALUES(2,3);

INSERT INTO Escreveu(idAutor, idLivro) VALUES(0,0);
INSERT INTO Escreveu(idAutor, idLivro) VALUES(1,1);
INSERT INTO Escreveu(idAutor, idLivro) VALUES(1,2);
INSERT INTO Escreveu(idAutor, idLivro) VALUES(1,3);
INSERT INTO Escreveu(idAutor, idLivro) VALUES(1,4);
INSERT INTO Escreveu(idAutor, idLivro) VALUES(1,5);
INSERT INTO Escreveu(idAutor, idLivro) VALUES(1,6);
INSERT INTO Escreveu(idAutor, idLivro) VALUES(2,8);
INSERT INTO Escreveu(idAutor, idLivro) VALUES(3,9);
INSERT INTO Escreveu(idAutor, idLivro) VALUES(3,10);
INSERT INTO Escreveu(idAutor, idLivro) VALUES(3,11);
INSERT INTO Escreveu(idAutor, idLivro) VALUES(3,12);
INSERT INTO Escreveu(idAutor, idLivro) VALUES(3,13);
INSERT INTO Escreveu(idAutor, idLivro) VALUES(4,14);

INSERT INTO Realizou(idRealizador, idFilme) VALUES(0,0);
INSERT INTO Realizou(idRealizador, idFilme) VALUES(1,1);
INSERT INTO Realizou(idRealizador, idFilme) VALUES(2,2);

INSERT INTO Participa(idActor, idFilme) VALUES(0,0);
INSERT INTO Participa(idActor, idFilme) VALUES(1,0);
INSERT INTO Participa(idActor, idFilme) VALUES(2,0);
INSERT INTO Participa(idActor, idFilme) VALUES(0,1);
INSERT INTO Participa(idActor, idFilme) VALUES(1,2);
INSERT INTO Participa(idActor, idFilme) VALUES(2,2);

INSERT INTO Sediado(idEditora, pais) VALUES (0,'EUA');
INSERT INTO Sediado(idEditora, pais) VALUES (1,'Portugal');
INSERT INTO Sediado(idEditora, pais) VALUES (2,'Portugal');
INSERT INTO Sediado(idEditora, pais) VALUES (3,'Brazil');
INSERT INTO Sediado(idEditora, pais) VALUES (4,'Portugal');
INSERT INTO Sediado(idEditora, pais) VALUES (5,'UK');
INSERT INTO Sediado(idEditora, pais) VALUES (6,'EUA');

INSERT INTO Requisicao(idCliente, idItem) VALUES(2015-2-28,2015-3-12,2,1);
INSERT INTO Requisicao(idCliente, idItem) VALUES(2015-4-20,NULL,2,4);
INSERT INTO Requisicao(idCliente, idItem) VALUES(2015-4-2,2015-4-15,3,18);
INSERT INTO Requisicao(idCliente, idItem) VALUES(2015-1-15,NULL,5,17);
