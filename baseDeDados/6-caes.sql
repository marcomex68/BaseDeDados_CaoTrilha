USE caoTrilha2;
 
DROP TABLE IF EXISTS caes;


CREATE TABLE caes (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    id_user INT UNSIGNED NOT NULL,
    id_trilha INT UNSIGNED NOT NULL,
    id_estadia INT UNSIGNED NOT NULL,
    nome VARCHAR(100) NOT NULL,
    raca VARCHAR(100) NOT NULL,
    idade INT UNSIGNED NOT NULL,
    estado ENUM('Creche', 'Estadia') NOT NULL,   
    peso DECIMAL(5,2) NOT NULL,
    sexo ENUM('Macho', 'Fêmea') NOT NULL,
    esterilizado BOOLEAN NOT NULL,
    FOREIGN KEY (id_user) REFERENCES users(id),
    FOREIGN KEY (id_trilha) REFERENCES trilhas(id),
    FOREIGN KEY (id_estadia) REFERENCES estadias(id)
);
 
