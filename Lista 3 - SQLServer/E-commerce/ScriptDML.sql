USE ecommerce_lista2;

SELECT * FROM tb_usuarios;
SELECT * FROM tb_produtos;
SELECT * FROM tb_compras;

INSERT INTO tb_usuarios
VALUES
(1, 'Maju França', 'maju@gmail.com', '13121997', '123.456.789-00'),
(2, 'Gustavo Boaz', 'boaz@gmail.com', '24111991', '321.654.987-00');

INSERT INTO tb_produtos
VALUES
(1, 'Garrafa', 'Produto para carregar líquidos', 'Utensílios', 25, 5, 'URLFOTOGARRAFA'),
(2, 'Moletom', 'Produto para utilizar no corpo', 'Vestimenta', 80, 7, 'URLFOTOMOLETOM');

INSERT INTO tb_compras
VALUES
(87, 'Moletom', 2, 2),
(89, 'Garrafa', 1, 1);

SELECT * FROM tb_usuarios 
WHERE Nome LIKE '%Maju%';

SELECT * FROM tb_produtos
WHERE Valor BETWEEN 10 AND 50;

SELECT * FROM tb_compras
WHERE tb_compras.FK_Usuario IN (2);