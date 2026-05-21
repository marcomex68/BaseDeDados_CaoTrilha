USE caoTrilha2;

-- Cães com o nome do dono e a trilha em que participaram
SELECT c.nome AS cao, c.raca, u.nome AS dono, t.nome AS trilha
FROM caes c
INNER JOIN users u ON c.id_user = u.id
INNER JOIN trilhas t ON c.id_trilha = t.id;
 

-- Trilhas com os seus horários de início e fim
SELECT t.nome AS trilha, t.localidade, ht.hora_inicio, ht.hora_fim
FROM trilhas t
INNER JOIN hora_trilhas ht ON ht.id_trilha = t.id;
 

-- Cães com informação da estadia (datas e preço)
SELECT c.nome AS cao, c.estado, e.data_entrada, e.data_saida, e.preco_total
FROM caes c
INNER JOIN estadias e ON c.id_estadia = e.id;
 

-- Todas as trilhas, mesmo as que não têm horário definido
SELECT t.nome AS trilha, t.data, ht.hora_inicio, ht.hora_fim
FROM trilhas t
LEFT JOIN hora_trilhas ht ON ht.id_trilha = t.id;
 

-- Todos os utilizadores, mesmo os que não têm cão registado
SELECT u.nome AS utilizador, u.email, c.nome AS cao, c.raca
FROM users u
LEFT JOIN caes c ON c.id_user = u.id;
 
 
-- Total de cães por raça
SELECT raca, COUNT(*) AS total_caes
FROM caes
GROUP BY raca;
 

-- Número de cães por estado (Creche / Estadia)
SELECT estado, COUNT(*) AS total
FROM caes
GROUP BY estado;
 

-- Total de receita das estadias pagas
SELECT SUM(preco_total) AS receita_total
FROM estadias
WHERE pago = 1;
 
 
-- Número de cães inscritos por trilha
SELECT t.nome AS trilha, COUNT(c.id) AS total_caes
FROM trilhas t
INNER JOIN caes c ON c.id_trilha = t.id
GROUP BY t.id, t.nome;
 

-- Peso máximo e mínimo dos cães por sexo
SELECT sexo, MAX(peso) AS peso_maximo, MIN(peso) AS peso_minimo
FROM caes
GROUP BY sexo;
 

-- Raças com mais de 1 cão registado
SELECT raca, COUNT(*) AS total
FROM caes
GROUP BY raca
HAVING COUNT(*) > 1;
 
-- Trilhas com mais de 1 cão inscrito
SELECT t.nome AS trilha, COUNT(c.id) AS total_caes
FROM trilhas t
INNER JOIN caes c ON c.id_trilha = t.id
GROUP BY t.id, t.nome
HAVING COUNT(c.id) > 1;
 
-- Estadias com preço total superior a 100€
SELECT id, data_entrada, data_saida, preco_total
FROM estadias
GROUP BY id, data_entrada, data_saida, preco_total
HAVING preco_total > 100;
 
 
-- Média de peso dos cães por raça
SELECT raca, AVG(peso) AS media_peso
FROM caes
GROUP BY raca;
 
-- Média de quilómetros das trilhas por localidade
SELECT localidade, AVG(kms) AS media_kms
FROM trilhas
GROUP BY localidade;