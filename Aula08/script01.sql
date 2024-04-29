USE Olimpiadas;

SELECT esporte.nome_esporte, evento.nome_evento FROM evento INNER JOIN esporte ON evento.codigo_esporte = esporte.codigo_esporte;

SELECT atleta.nome_atleta FROM atleta INNER JOIN pais ON atleta.codigo_pais = pais.codigo_pais INNER JOIN continente 
ON pais.codigo_continente = continente.codigo_continente WHERE continente.nome_continente = 'Oceania';

SELECT prova.nome_prova, prova.hora_inicio_prova FROM prova INNER JOIN evento ON prova.codigo_evento = evento.codigo_evento 
INNER JOIN esporte ON evento.codigo_esporte = esporte.codigo_esporte WHERE esporte.nome_esporte = 'Basketball';

SELECT esporte.nome_esporte, prova.hora_inicio_prova FROM prova INNER JOIN evento ON prova.codigo_evento = evento.codigo_evento 
INNER JOIN esporte ON evento.codigo_esporte = esporte.codigo_esporte WHERE prova.hora_inicio_prova >= '2012-08-02 00:00:00' 
AND prova.hora_inicio_prova < '2012-08-02 00:00:00';

SELECT atleta.nome_atleta FROM atleta_idioma INNER JOIN idioma ON atleta_idioma.codigo_idioma = idioma.codigo_idioma INNER JOIN
atleta ON atleta_idioma.codigo_atleta = atleta.codigo_atleta WHERE nome_idioma = 'Portuguese';


