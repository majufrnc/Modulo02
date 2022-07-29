USE marketplace_lista2;

SELECT * FROM tb_usuarios;
SELECT * FROM tb_produtos;
SELECT * FROM tb_vendas;

INSERT INTO tb_usuarios
VALUES
(1,'Rafael', 'rafifa@gmail.com', '22041999', '123.456.789-00'),
(2,'David', 'david@gmail.com', '14091995', '321.654.987-00');

INSERT INTO tb_produtos
VALUES 
(10,'Cadeira Gamer','Móvel para sentar, promovendo o maior conforto na hora de jogar online com os amigos',1200, 23, 'URLFOTORAFIFA', 1),
(20,'Hamburguer congelado','Alimento congelado, para promover maior facilidade no dia a dia',25, 84, 'URLFOTODAVID', 2);

INSERT INTO tb_vendas
VALUES 
(54, 2, 20, 3, 75),
(68, 1, 10, 2, 2400);

SELECT * FROM tb_usuarios 
WHERE Email LIKE '%gmail%';

SELECT * FROM tb_vendas
WHERE Valor BETWEEN 100 AND 5000;

SELECT * FROM tb_produtos
WHERE tb_produtos.FK_Vendedor IN (1);

SELECT COUNT(Nome) AS 'Números de vendedores' FROM tb_usuarios;

SELECT
	u.Nome AS Vendedor
FROM tb_usuarios AS u
LEFT JOIN tb_vendas AS v
	ON u.Id_usuario = v.FK_Comprador
WHERE v.Id_venda IS NOT NULL;