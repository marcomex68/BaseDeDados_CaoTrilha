USE caoTrilha2;
 
DROP TABLE IF EXISTS cao_trilhas;

CREATE TABLE trilhas (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    id_cao INT UNSIGNED NOT NULL,
    nome VARCHAR(150) NOT NULL,
    data DATE NOT NULL,
    kms DECIMAL(5,2) NOT NULL,
    localidade VARCHAR(100) NOT NULL,
    localizacao VARCHAR(100) NOT NULL,
    FOREIGN KEY (id_cao) REFERENCES caes(id)
);
 

    