CREATE TABLE IF DO NOT EXISTS atendimento (
    id_atendimento BIGINT GENERATED ALWAYS AS IDENTITY,
    data DATE,
    descricao_consulta TEXT,

    id_atendente BIGINT NOT NULL,
    id_cliente BIGINT NOT NULL,
    id_animal BIGINT NOT NULL,
    id_veterinario BIGINT NOT NULL,

    CONSTRAINT pk_atendimento
        PRIMARY KEY (id_atendimento),

    CONSTRAINT fk_atendimento_atendente
        FOREIGN KEY (id_atendente)
        REFERENCES atendente (id_atendente),

    CONSTRAINT fk_atendimento_cliente
        FOREIGN KEY (id_cliente)
        REFERENCES cliente (id_cliente),

    CONSTRAINT fk_atendimento_animal
        FOREIGN KEY (id_animal)
        REFERENCES animal (id_animal),

    CONSTRAINT fk_atendimento_veterinario
        FOREIGN KEY (id_veterinario)
        REFERENCES veterinario (id_veterinario)
);
