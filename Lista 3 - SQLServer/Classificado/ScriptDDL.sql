CREATE DATABASE classificado_lista2;
USE classificado_lista2;

CREATE TABLE tb_usuarios (
	Id_usuario INT NOT NULL PRIMARY KEY,
	Nome VARCHAR(255) NOT NULL,
	Email VARCHAR(255) NOT NULL,
	Senha VARCHAR(255) NOT NULL
);

CREATE TABLE tb_anuncios (
	Id_anuncio INT NOT NULL PRIMARY KEY,
	Vendedor INT NOT NULL,
	FOREIGN KEY (Vendedor) REFERENCES tb_usuarios (Id_usuario),
	Categoria VARCHAR(255) NOT NULL,
	Descricao VARCHAR(255) NOT NULL,
	Preco INT NOT NULL,
	Contato VARCHAR (255) NOT NULL
);