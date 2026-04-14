USE caoTrilha2;

DROP TABLE IF EXISTS hora_trilhas;

CREATE TABLE hora_trilhas (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    id_trilha INT UNSIGNED NOT NULL,
    hora_inicio DATETIME,
    hora_fim DATETIME,
    FOREIGN KEY (id_trilha) REFERENCES trilhas(id)
);
 

