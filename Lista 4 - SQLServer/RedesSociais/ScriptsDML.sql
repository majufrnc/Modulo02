USE redessociais_lista2;

SELECT * FROM tb_usuarios;
SELECT * FROM tb_grupos;
SELECT * FROM tb_categorias;
SELECT * FROM tb_postagens;

INSERT INTO tb_usuarios
VALUES
(8457, 'Fernanda', 'ferdoscorres@gmail.com', '06082000'),
(6512, 'Jesus', 'filhodosenhor@gmail.com', '14111994');

INSERT INTO tb_categorias
VALUES
(45, 'Drogas', 'Categoria de grupo para pessoas que possuem interesse neste tipo de produtos'),
(41, 'Religião', 'Categoria de grupo para pessoas que possuem um mesmo interesse em um tema relacionado a religião');

INSERT INTO tb_grupos
VALUES 
(84, 'Corres',45),
(171, 'Estudos da bíblia', 41);

INSERT INTO tb_postagens
VALUES 
(3451, 'Procuro parceiros pra corre de @@', 'Procuro pessoas interessadas em rachar o frete do corre pro dia 06/08, de @@ ou M. De preferência na região central da cidade.',8457,84,45),
(945,'Jesus filho do senhor', 'JESUS É FILHO DO SENHOR e todos nós, irmãos!', 6512, 171,41);

SELECT * FROM tb_categorias
WHERE Descricao LIKE '%interesse%';

SELECT * FROM tb_grupos
WHERE Id_grupo BETWEEN 100 AND 200;

SELECT * FROM tb_usuarios
WHERE Id_usuario BETWEEN 5000 AND 10000;

SELECT * FROM tb_postagens
WHERE Descricao LIKE '%@@%';

SELECT  u.Nome, p.Titulo
   FROM tb_usuarios AS u
   FULL JOIN tb_postagens AS p
   ON u.Id_usuario = p.Criador;

SELECT COUNT(*) AS 'N° de postagens' FROM tb_postagens
