USE caoTrilha2; 

INSERT INTO users (is_admin, nome, telefone, email, morada, password) 
VALUES
    (0, 'João Silva', '912345678', 'joao.silva@email.com', 'Rua das Flores 10, Lisboa', '123456'),
    (0, 'Maria Santos', '913456789', 'maria.santos@email.com', 'Avenida da Liberdade 25, Lisboa', '123456'),
    (0, 'Pedro Costa', '914567890', 'pedro.costa@email.com', 'Rua do Sol 8, Porto', '123456'),
    (0, 'Ana Pereira', '915678901', 'ana.pereira@email.com', 'Rua Central 45, Braga', '123456'),
    (0, 'Carlos Ferreira', '916789012', 'carlos.ferreira@email.com', 'Rua Nova 12, Coimbra', '123456'),
    (0, 'Sofia Oliveira', '917890123', 'sofia.oliveira@email.com', 'Rua das Oliveiras 33, Faro', '123456'),
    (0, 'Ricardo Sousa', '918901234', 'ricardo.sousa@email.com', 'Rua do Mercado 5, Aveiro', '123456'),
    (0, 'Inês Martins', '919012345', 'ines.martins@email.com', 'Rua do Campo 17, Setúbal', '123456'),
    (0, 'Miguel Rocha', '920123456', 'miguel.rocha@email.com', 'Rua das Palmeiras 22, Sintra', '123456'),
    (0, 'Beatriz Almeida', '921234567', 'beatriz.almeida@email.com', 'Rua da Praia 9, Cascais', '123456'),
    (0, 'Tiago Gomes', '922345678', 'tiago.gomes@email.com', 'Rua do Parque 14, Leiria', '123456'),
    (0, 'Carla Ribeiro', '923456789', 'carla.ribeiro@email.com', 'Rua do Comércio 3, Évora', '123456'),
    (0, 'Bruno Carvalho', '924567890', 'bruno.carvalho@email.com', 'Rua do Norte 28, Viseu', '123456'),
    (0, 'Patrícia Mendes', '925678901', 'patricia.mendes@email.com', 'Rua da Igreja 6, Santarém', '123456'),
    (0, 'André Lopes', '926789012', 'andre.lopes@email.com', 'Rua da Escola 19, Guimarães', '123456'),
    (1, 'Marcos Alves', '936262284', '37076@esjaloures.org', 'Rua da Escola 19, Guimarães', '$2y$10$uT2rgweFd5L5RJ/9/uKrkeI2rDIbZi2EwMR76WSaeN7xZ5l3kFg4S');

INSERT INTO trilhas (nome, kms, localidade) 
VALUES
    ('Parque Nacional Peneda Gerês', 10.00, 'Gerês'),
    ('Pico do Areeiro', 7.00, 'Madeira'),
    ('Poços Verdes do Sobroso', 5.00, 'Viana do Castelo'),
    ('Sete Vales Suspensos', 12.00, 'Algarve'),
    ('Trilho do Poço do Inferno', 6.00, 'Serra da Estrela'),
    ('Trilho em Mira', 8.00, 'Mira'),
    ('Trilho para a Ponta', 9.00, 'Madeira'),
    ('Vereda da Ponta', 4.00, 'Madeira'),
    ('A Aldeia Mágica', 3.00, 'Sintra'),
    ('Vale do Rio Olo', 11.00, 'Mondim de Basto'),
    ('Trilho 7 Vales Suspensos', 12.00, 'Lagoa'),
    ('Praia da Costa', 5.00, 'Costa da Caparica'),
    ('Sesimbra', 6.00, 'Sesimbra'),
    ('Floresta Encantada', 7.00, 'Gerês'),
    ('Paraíso Natural', 9.00, 'Açores');

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



INSERT INTO estadias (data_entrada, data_saida, preco_total, pago) 
VALUES
    ('2025-01-02', '2025-01-05', 75.00, 1),
    ('2025-01-10', '2025-01-15', 125.00, 0),
    ('2025-02-01', '2025-02-03', 50.00, 1),
    ('2025-02-05', '2025-02-10', 125.00, 1);


INSERT INTO caes (id_user, id_trilha, id_estadia, nome, raca, idade, estado, peso, sexo, esterilizado) 
VALUES
    (1, 1, 1, 'Thor', 'Boiadeiro de Berna', 3, 'Estadia', 40.00, 'Macho', 0),
    (2, 2, 1, 'Luna', 'Cão Islandês', 2, 'Creche', 18.00, 'Fêmea', 1),
    (3, 1, 1, 'Simba', 'Chow Chow', 4, 'Estadia', 25.00, 'Macho', 1),
    (4, 4, 1, 'Max', 'Golden Retriever', 5, 'Creche', 30.00, 'Macho', 0),
    (5, 1, 2, 'Nina', 'Husky Siberiano', 3, 'Estadia', 22.00, 'Fêmea', 1),
    (6, 6, 3, 'Kira', 'Husky Siberiano', 1, 'Creche', 20.00, 'Fêmea', 0),
    (7, 2, 3, 'Bolt', 'Terra Nova', 6, 'Creche', 55.00, 'Macho', 1),
    (8, 8, 3, 'Pongo', 'Dálmata', 2, 'Estadia', 24.00, 'Macho', 0),
    (9, 9, 2, 'Zeus', 'Cane Corso', 4, 'Creche', 45.00, 'Macho', 0),
    (10, 10, 3, 'Mia', 'Border Collie', 2, 'Estadia', 19.00, 'Fêmea', 1),
    (11, 5, 4, 'Bobby', 'Shih Tzu', 5, 'Estadia', 7.00, 'Macho', 1),
    (12, 12, 4, 'Rex', 'Rottweiler', 6, 'Creche', 50.00, 'Macho', 0),
    (13, 13, 4, 'Toby', 'Pinscher', 3, 'Estadia', 5.00, 'Macho', 1),
    (14, 5, 4, 'Perdita', 'Dálmata', 2, 'Estadia', 23.00, 'Fêmea', 0),
    (15, 15, 1, 'Snow', 'Bichon Frisé', 1, 'Creche', 6.00, 'Fêmea', 1);