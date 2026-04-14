USE caoTrilha2; 

INSERT INTO clientes (nome, telefone, email, morada, password) 
VALUES
    ('João Silva', '912345678', 'joao.silva@email.com', 'Rua das Flores 10, Lisboa', '123456'),
    ('Maria Santos', '913456789', 'maria.santos@email.com', 'Avenida da Liberdade 25, Lisboa', '123456'),
    ('Pedro Costa', '914567890', 'pedro.costa@email.com', 'Rua do Sol 8, Porto', '123456'),
    ('Ana Pereira', '915678901', 'ana.pereira@email.com', 'Rua Central 45, Braga', '123456'),
    ('Carlos Ferreira', '916789012', 'carlos.ferreira@email.com', 'Rua Nova 12, Coimbra', '123456'),
    ('Sofia Oliveira', '917890123', 'sofia.oliveira@email.com', 'Rua das Oliveiras 33, Faro', '123456'),
    ('Ricardo Sousa', '918901234', 'ricardo.sousa@email.com', 'Rua do Mercado 5, Aveiro', '123456'),
    ('Inês Martins', '919012345', 'ines.martins@email.com', 'Rua do Campo 17, Setúbal', '123456'),
    ('Miguel Rocha', '920123456', 'miguel.rocha@email.com', 'Rua das Palmeiras 22, Sintra', '123456'),
    ('Beatriz Almeida', '921234567', 'beatriz.almeida@email.com', 'Rua da Praia 9, Cascais', '123456'),
    ('Tiago Gomes', '922345678', 'tiago.gomes@email.com', 'Rua do Parque 14, Leiria', '123456'),
    ('Carla Ribeiro', '923456789', 'carla.ribeiro@email.com', 'Rua do Comércio 3, Évora', '123456'),
    ('Bruno Carvalho', '924567890', 'bruno.carvalho@email.com', 'Rua do Norte 28, Viseu', '123456'),
    ('Patrícia Mendes', '925678901', 'patricia.mendes@email.com', 'Rua da Igreja 6, Santarém', '123456'),
    ('André Lopes', '926789012', 'andre.lopes@email.com', 'Rua da Escola 19, Guimarães', '123456');

INSERT INTO caes (id_cliente, nome, raca, idade, peso, sexo, esterilizado) 
VALUES
    (1, 'Thor', 'Boiadeiro de Berna', 3, 40.00, 'Macho', 0),
    (2, 'Luna', 'Cão Islandês', 2, 18.00, 'Fêmea', 1),
    (3, 'Simba', 'Chow Chow', 4, 25.00, 'Macho', 1),
    (4, 'Max', 'Golden Retriever', 5, 30.00, 'Macho', 0),
    (5, 'Nina', 'Husky Siberiano', 3, 22.00, 'Fêmea', 1),
    (6, 'Kira', 'Husky Siberiano', 1, 20.00, 'Fêmea', 0),
    (7, 'Bolt', 'Terra Nova', 6, 55.00, 'Macho', 1),
    (8, 'Pongo', 'Dálmata', 2, 24.00, 'Macho', 0),
    (9, 'Zeus', 'Cane Corso', 4, 45.00, 'Macho', 0),
    (10, 'Mia', 'Border Collie', 2, 19.00, 'Fêmea', 1),
    (11, 'Bobby', 'Shih Tzu', 5, 7.00, 'Macho', 1),
    (12, 'Rex', 'Rottweiler', 6, 50.00, 'Macho', 0),
    (13, 'Toby', 'Pinscher', 3, 5.00, 'Macho', 1),
    (14, 'Perdita', 'Dálmata', 2, 23.00, 'Fêmea', 0),
    (15, 'Snow', 'Bichon Frisé', 1, 6.00, 'Fêmea', 1);


INSERT INTO estadias (id_cao, data_entrada, data_saida, preco_total, pago) 
VALUES
    (1, '2025-01-02', '2025-01-05', 75.00, 1),
    (2, '2025-01-10', '2025-01-15', 125.00, 0),
    (3, '2025-02-01', '2025-02-03', 50.00, 1),
    (4, '2025-02-05', '2025-02-10', 125.00, 1),
    (5, '2025-02-12', '2025-02-14', 50.00, 0),
    (6, '2025-03-01', '2025-03-04', 75.00, 1),
    (7, '2025-03-10', '2025-03-15', 125.00, 0),
    (8, '2025-03-18', '2025-03-20', 50.00, 1),
    (9, '2025-04-01', '2025-04-07', 150.00, 1),
    (10, '2025-04-10', '2025-04-12', 50.00, 0),
    (11, '2025-04-15', '2025-04-18', 75.00, 1),
    (12, '2025-05-01', '2025-05-05', 100.00, 1),
    (13, '2025-05-07', '2025-05-09', 50.00, 0),
    (14, '2025-05-12', '2025-05-16', 100.00, 1),
    (15, '2025-05-20', '2025-05-25', 125.00, 0);


INSERT INTO trilhas (id_cao, nome, data, kms, localidade, localizacao) 
VALUES
    (1, 'Parque Nacional Peneda Gerês', '2025-06-01', 10.00, 'Gerês', 'Portugal'),
    (2, 'Pico do Areeiro', '2025-06-05', 7.00, 'Madeira', 'Portugal'),
    (3, 'Poços Verdes do Sobroso', '2025-06-10', 5.00, 'Viana do Castelo', 'Portugal'),
    (4, 'Sete Vales Suspensos', '2025-06-15', 12.00, 'Algarve', 'Portugal'),
    (5, 'Trilho do Poço do Inferno', '2025-06-20', 6.00, 'Serra da Estrela', 'Portugal'),
    (6, 'Trilho em Mira', '2025-06-25', 8.00, 'Mira', 'Portugal'),
    (7, 'Trilho para a Ponta', '2025-07-01', 9.00, 'Madeira', 'Portugal'),
    (8, 'Vereda da Ponta', '2025-07-05', 4.00, 'Madeira', 'Portugal'),
    (9, 'A Aldeia Mágica', '2025-07-10', 3.00, 'Sintra', 'Portugal'),
    (10, 'Vale do Rio Olo', '2025-07-15', 11.00, 'Mondim de Basto', 'Portugal'),
    (11, 'Trilho 7 Vales Suspensos', '2025-07-20', 12.00, 'Lagoa', 'Portugal'),
    (12, 'Praia da Costa', '2025-07-25', 5.00, 'Costa da Caparica', 'Portugal'),
    (13, 'Sesimbra', '2025-08-01', 6.00, 'Sesimbra', 'Portugal'),
    (14, 'Floresta Encantada', '2025-08-05', 7.00, 'Gerês', 'Portugal'),
    (15, 'Paraíso Natural', '2025-08-10', 9.00, 'Açores', 'Portugal');

INSERT INTO cao_trilhas (id_trilha, hora_inicio, hora_fim) 
VALUES
    (1, '2025-06-01 09:00:00', '2025-06-01 12:00:00'),
    (2, '2025-06-05 08:30:00', '2025-06-05 11:00:00'),
    (3, '2025-06-10 10:00:00', '2025-06-10 12:00:00'),
    (4, '2025-06-15 09:00:00', '2025-06-15 13:00:00'),
    (5, '2025-06-20 08:00:00', '2025-06-20 10:30:00'),
    (6, '2025-06-25 09:30:00', '2025-06-25 12:30:00'),
    (7, '2025-07-01 07:30:00', '2025-07-01 11:30:00'),
    (8, '2025-07-05 08:00:00', '2025-07-05 10:00:00'),
    (9, '2025-07-10 09:00:00', '2025-07-10 11:00:00'),
    (10, '2025-07-15 08:30:00', '2025-07-15 12:30:00'),
    (11, '2025-07-20 09:00:00', '2025-07-20 13:00:00'),
    (12, '2025-07-25 10:00:00', '2025-07-25 12:00:00'),
    (13, '2025-08-01 09:30:00', '2025-08-01 11:30:00'),
    (14, '2025-08-05 08:00:00', '2025-08-05 11:00:00'),
    (15, '2025-08-10 07:30:00', '2025-08-10 12:00:00');