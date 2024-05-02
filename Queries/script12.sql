USE Produto;

SELECT DISTINCT categoria FROM produto WHERE nome LIKE '%motorola%';
SELECT DISTINCT fabricante FROM produto WHERE categoria = 'tablet';
SELECT nome, preco FROM produto WHERE fabricante = 'Nikon' ORDER BY preco ASC;
SELECT nome, fabricante, preco FROM produto WHERE categoria = 'celular' ORDER BY preco ASC, fabricante ASC;
SELECT * FROM produto WHERE fabricante = 'Samsung' AND categoria = 'tablet' ORDER BY preco DESC;
