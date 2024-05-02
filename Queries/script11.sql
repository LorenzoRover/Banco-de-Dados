USE Produto;

SELECT nome FROM produto WHERE fabricante = 'Motorola';
SELECT nome, preco FROM produto WHERE fabricante = 'Nikon' AND categoria = 'camera';
SELECT * FROM produto WHERE categoria = 'tablet' AND preco > 100 AND preco < 150;
SELECT nome FROM produto WHERE fabricante = 'Sony' AND preco > 500;
SELECT * FROM produto WHERE categoria = 'celular' AND preco < 100;
SELECT nome, preco, fabricante FROM produto WHERE categoria = 'notebook' AND(fabricante = 'Sony' OR fabricante = 'Hewlett-Packard') AND preco > 500 AND preco < 800;
SELECT nome, categoria, fabricante, preco FROM produto WHERE fabricante = 'Coby'  OR fabricante = 'Genesis' OR fabricante = 'Samsung' OR fabricante = 'Orange';
SELECT nome, preco FROM produto WHERE(fabricante = 'Nikon' OR fabricante = 'Canon' OR fabricante = 'Sony') AND categoria = 'camera' AND preco >= 100 AND preco <= 250;
SELECT codigo, nome FROM produto WHERE categoria = 'tablet' AND nome LIKE '%vermelho%';
SELECT nome, categoria, preco FROM produto WHERE preco >= 100 AND preco <= 300 AND nome LIKE '%preto' AND(fabricante = 'Sony' OR fabricante = 'Panasonic' OR fabricante = 'LG');
SELECT * FROM produto WHERE fabricante IS NULL;
