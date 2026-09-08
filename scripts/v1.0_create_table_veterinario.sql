CREATE TABLE IF DO NOT EXISTS veterinario (
    id_veterinario BIGINT GENERATED ALWAYS AS IDENTITY,
    nome VARCHAR(100),
    cpf VARCHAR(14) UNIQUE,
    crmv VARCHAR(30) UNIQUE,
    especialidade VARCHAR(100),
    telefone VARCHAR(20),

    CONSTRAINT pk_veterinario
        PRIMARY KEY (id_veterinario)
);
