USE caoTrilha2;
 
DROP TABLE IF EXISTS estadias;


CREATE TABLE estadias (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    id_cao INT UNSIGNED NOT NULL,
    data_entrada DATE NOT NULL,
    data_saida DATE NOT NULL,
    preco_total DECIMAL(6,2) NOT NULL,
    pago BOOLEAN NOT NULL,
    FOREIGN KEY (id_cao) REFERENCES caes(id)
);
 
