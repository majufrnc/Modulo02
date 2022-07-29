CREATE DATABASE redessociais_lista2;

USE redessociais_lista2;

CREATE TABLE tb_usuarios (
	Id_usuario INT NOT NULL PRIMARY KEY,
	Nome VARCHAR(255) NOT NULL,
	Email VARCHAR(255) NOT NULL,
	Senha VARCHAR(255) NOT NULL,
);
CREATE TABLE tb_categorias(
	Id_categoria INT NOT NULL PRIMARY KEY,
	Nome VARCHAR(255) NOT NULL,
	Descricao VARCHAR(255) NOT NULL
);

CREATE TABLE tb_grupos(
	Id_grupo INT NOT NULL PRIMARY KEY,
	Nome VARCHAR(255) NOT NULL,
	CategoriaGrupo INT NOT NULL,
	FOREIGN KEY (CategoriaGrupo) REFERENCES tb_categorias (Id_categoria)
);

CREATE TABLE tb_postagens(
	Id_postagem INT NOT NULL PRIMARY KEY,
	Titulo VARCHAR(255) NOT NULL,
	Descricao VARCHAR(255) NOT NULL,
	Criador INT NOT NULL,
	FOREIGN KEY (Criador) REFERENCES tb_usuarios (Id_usuario),
	Grupo INT NOT NULL,
	FOREIGN KEY (Grupo) REFERENCES tb_grupos (Id_grupo),
	Categoria INT NOT NULL,
	FOREIGN KEY (Categoria) REFERENCES tb_categorias (Id_categoria)
);