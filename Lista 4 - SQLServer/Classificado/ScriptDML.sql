USE classificado_lista2;

SELECT * FROM tb_usuarios;
SELECT * FROM tb_anuncios;

INSERT INTO tb_usuarios
VALUES
(1, 'Clauber', 'binho@gmail.com', '18121992'),
(2, 'Samira', 'samira@gmail.com', '22081995');

INSERT INTO tb_anuncios
VALUES 
(102,1,'Veículo Automotivo', 'Motocicleta em bom estado e conservada, com aproximadamento 35mil km rodados', 17600, '54 98451-8532'),
(154, 2, 'Monitor para computadores','Conservado, com 2 anos de uso. Tudo funcionando perfeitamente',800,'11 94575-6628');

SELECT * FROM tb_usuarios 
WHERE Email LIKE '%nho%';

SELECT * FROM tb_anuncios
WHERE Preco BETWEEN 100 AND 20000;

SELECT
	t.Descricao AS Descrição
FROM tb_anuncios AS t
RIGHT JOIN tb_usuarios AS u
	ON t.Vendedor = u.Id_usuario
WHERE t.Id_anuncio IS NOT NULL;

SELECT SUM(Preco) AS 'Valor total esperado de entrada pós vendas disponíveis'
FROM tb_anuncios
WHERE Preco IS NOT NULL;