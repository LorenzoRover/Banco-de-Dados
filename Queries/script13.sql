USE Produto;

SELECT COUNT(*) FROM produto WHERE fabricante = 'Sony' GROUP BY categoria;
SELECT AVG(preco) FROM produto WHERE categoria = 'celular' AND fabricante = 'Motorola';
SELECT categoria, MIN(preco) FROM produto GROUP BY categoria;
SELECT fabricante, MAX(preco) FROM produto GROUP BY fabricante;
SELECT fabricante, categoria, COUNT(*) FROM produto GROUP BY categoria, fabricante ORDER BY categoria, fabricante;
SELECT AVG(preco) FROM produto WHERE categoria = 'tablet' LIKE '%vermelho%';
SELECT MIN(preco) FROM produto WHERE preco > 100;
