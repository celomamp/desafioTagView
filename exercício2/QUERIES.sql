SELECT titulo FROM jogos WHERE genero LIKE 'ação'

SELECT nome FROM personagem 
INNER JOIN participar ON participar.idPersonagem = personagem.idPersonagem
WHERE participar.importancia = 1 GROUP BY nome

SELECT TOP 5 titulo, genero, COUNT(participar.idPersonagem) AS 'Número de Personagens' FROM jogos
INNER JOIN participar ON participar.idJogo = jogos.idjogo
ORDER BY COUNT(participar.idPersonagem) DESC
GROUP BY titulo, genero

SELECT nome FROM personagem
INNER JOIN participar ON participar.idPersonagem = personagem.idPersonagem
INNER JOIN jogos ON jogos.idJogos = participar.idJogos
WHERE jogos.genero LIKE 'ação' AND jogos.genero LIKE 'aventura' 

SELECT titulo FROM jogos
INNER JOIN participar ON participar.idJogo = jogos.idJogo
WHERE COUNT(idPersonagem) >= 5
GROUP BY titulo --Para não mostrar o título várias vezes

SELECT titulo FROM jogos
INNER JOIN participar on participar.idJogo = jogos.idjogo
WHERE COUNT(SELECT idPersonagem FROM participar WHERE importancia = 1 AND idjogo = jogos.idJogo) > 2 






