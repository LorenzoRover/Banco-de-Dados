USE Produto;

UPDATE produto SET preco = preco * 1.07 WHERE categoria = 'camera';
DELETE FROM produto WHERE fabricante IS NULL;
UPDATE produto SET fabricante = 'Hewlett-Packard' WHERE fabricante = 'Hewlet-Packard';
DELETE FROM produto WHERE fabricante = 'Coby' AND categoria = 'tablet';

SELECT AVG(preco) FROM produto WHERE categoria = 'televisor';
UPDATE produto SET preco = CASE WHEN categoria = 'televisor' AND preco<547.2 THEN preco*1.05 ELSE preco END;