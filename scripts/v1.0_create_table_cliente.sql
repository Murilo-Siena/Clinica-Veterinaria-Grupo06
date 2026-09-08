CREATE TABLE IF DO NOT EXISTS cliente (
    id_cliente BIGINT GENERATED ALWAYS AS IDENTITY,
    nome VARCHAR(100),
    cpf VARCHAR(14) UNIQUE,
    telefone VARCHAR(20),
    endereco VARCHAR(200),

    CONSTRAINT pk_cliente
        PRIMARY KEY (id_cliente)
);
