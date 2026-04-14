USE caoTrilha2;
 
DROP TABLE IF EXISTS caes;


CREATE TABLE caes (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT UNSIGNED NOT NULL,
    nome VARCHAR(100) NOT NULL,
    raca VARCHAR(100) NOT NULL,
    idade INT UNSIGNED NOT NULL,
    peso DECIMAL(5,2) NOT NULL,
    sexo VARCHAR(10) NOT NULL,
    esterilizado BOOLEAN NOT NULL,
    
    FOREIGN KEY (id_cliente) REFERENCES clientes(id)
);
 
