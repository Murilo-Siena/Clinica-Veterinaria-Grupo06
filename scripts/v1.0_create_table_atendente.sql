CREATE TABLE IF DO NOT EXISTS atendente (
    id_atendente BIGINT GENERATED ALWAYS AS IDENTITY,
    nome VARCHAR(100),
    cpf VARCHAR(14) UNIQUE,
    telefone VARCHAR(20),

    CONSTRAINT pk_atendente
        PRIMARY KEY (id_atendente)
);
