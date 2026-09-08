CREATE TABLE IF DO NOT EXISTS item_atendimento (
    id_item BIGINT GENERATED ALWAYS AS IDENTITY,

    id_atendimento BIGINT NOT NULL,
    id_produto BIGINT NOT NULL,

    valor_utilizado NUMERIC(10,2),
    quantidade INTEGER,

    CONSTRAINT pk_item_atendimento
        PRIMARY KEY (id_item),

    CONSTRAINT fk_item_atendimento
        FOREIGN KEY (id_atendimento)
        REFERENCES atendimento (id_atendimento),

    CONSTRAINT fk_item_produto
        FOREIGN KEY (id_produto)
        REFERENCES produto (id_produto)
);
