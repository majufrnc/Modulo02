CREATE DATABASE marketplace_lista2;
USE marketplace_lista2;


CREATE TABLE tb_usuarios (
	Id_usuario INT NOT NULL PRIMARY KEY IDENTITY,
	Nome VARCHAR (255) NOT NULL,
	Email VARCHAR (255) NOT NULL,
	Senha VARCHAR (255) NOT NULL,
	CPF VARCHAR (255) NOT NULL,
);

CREATE TABLE tb_produtos (
	Id_produto INT NOT NULL PRIMARY KEY IDENTITY,
	Produto VARCHAR (255) NOT NULL,
	Descricao VARCHAR (255) NOT NULL,
	Valor FLOAT NOT NULL,
	Estoque FLOAT NOT NULL,
	Foto VARCHAR (255) NOT NULL,
	FK_Vendedor INT NOT NULL,
	FOREIGN KEY (FK_Vendedor) REFERENCES tb_usuarios (Id_usuario)
);

CREATE TABLE tb_vendas (
	Id_venda INT NOT NULL PRIMARY KEY IDENTITY,
	FK_Comprador INT NOT NULL,
	FOREIGN KEY (FK_Comprador) REFERENCES tb_usuarios (Id_usuario),
	FK_Produto INT NOT NULL,
	FOREIGN KEY (FK_Produto) REFERENCES tb_produtos (Id_produto),
	Quantidade INT NOT NULL,
	Valor INT NOT NULL
);