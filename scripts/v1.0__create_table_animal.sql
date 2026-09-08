CREATE TABLE IF DO NOT EXISTS animal (
    id_animal BIGINT GENERATED ALWAYS AS IDENTITY,
    id_cliente BIGINT NOT NULL,
    nome VARCHAR(100),
    especie VARCHAR(50),
    raca VARCHAR(50),
    sexo VARCHAR(20),
    data_nascimento DATE,

    CONSTRAINT pk_animal
        PRIMARY KEY (id_animal),

    CONSTRAINT fk_animal_cliente
        FOREIGN KEY (id_cliente)
        REFERENCES cliente (id_cliente)
);
