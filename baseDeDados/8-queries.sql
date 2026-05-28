USE caoTrilha2;

--1 LOGIN ADMIN
SELECT id, is_admin, nome, telefone, email, morada, password
FROM users 
WHERE email = :email 
AND is_admin = 1 
LIMIT 1;


--2 BUSCAR CÃO POR ID
SELECT id, id_user, id_trilha, id_estadia, nome, raca, idade, estado, peso, sexo, esterilizado 
FROM caes 
WHERE id = :id 
LIMIT 1;


--3 LISTAR USERS
SELECT id, is_admin, nome, telefone, email, morada, password
FROM users;


--4 LISTAR CÃES (COM JOIN)
SELECT 
    caes.id, id_user, id_trilha, id_estadia, nome, raca, idade, estado, peso, sexo, esterilizado,
    users.nome AS dono_nome,
    trilhas.nome AS trilha_nome,
    estadias.id AS estadia_id
FROM caes
INNER JOIN users ON caes.id_user = users.id
INNER JOIN trilhas ON caes.id_trilha = trilhas.id
INNER JOIN estadias ON caes.id_estadia = estadias.id;


--5 LISTAR TRILHAS
SELECT id, nome, data, kms, localidade
FROM trilhas;


--6 LISTAR ESTADIAS
SELECT id, data_entrada, data_saida, preco_total, pago
FROM estadias;


--7 CONTAR USERS
SELECT COUNT(*) 
FROM users;


--8 CONTAR CÃES
SELECT COUNT(*) 
FROM caes;


--9 CONTAR TRILHAS
SELECT COUNT(*) 
FROM trilhas;


--10 CONTAR ESTADIAS
SELECT COUNT(*) 
FROM estadias;



11-- BUSCAR TRILHA POR NOME
SELECT id, nome, data, kms, localidade 
FROM trilhas 
WHERE nome = :nome 
LIMIT 1;

