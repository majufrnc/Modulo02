CREATE DATABASE ecommerce_lista2;
USE ecommerce_lista2;

CREATE TABLE tb_usuarios (
	Id INT NOT NULL PRIMARY KEY,
	Nome VARCHAR (255) NOT NULL,
	Email VARCHAR (255) NOT NULL,
	Senha VARCHAR (255) NOT NULL,
	Documento VARCHAR (255) NOT NULL
);

CREATE TABLE tb_produtos (
	Id_produto INT NOT NULL PRIMARY KEY,
	Produto VARCHAR (255) NOT NULL,
	Descricao VARCHAR (255) NOT NULL,
	Categoria VARCHAR (255) NOT NULL,
	Valor FLOAT NOT NULL,
	Estoque FLOAT NOT NULL,
	Foto VARCHAR (255) NOT NULL
);

CREATE TABLE tb_compras (
	Id_compra INT NOT NULL PRIMARY KEY,
	Produto VARCHAR (255) NOT NULL,
	FK_Usuario INT NOT NULL,
	FK_Produto INT NOT NULL
	FOREIGN KEY(FK_Usuario) REFERENCES tb_usuarios (Id),
	FOREIGN KEY(FK_Produto) REFERENCES tb_produtos (Id_produto)
);