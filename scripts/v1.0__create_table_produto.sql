CREATE TABLE IF DO NOT EXISTS produto (
    id_produto BIGINT GENERATED ALWAYS AS IDENTITY,
    nome VARCHAR(100),
    tipo VARCHAR(50),
    marca VARCHAR(100),
    descricao TEXT,
    valor_compra NUMERIC(10,2),
    estoque INTEGER,

    CONSTRAINT pk_produto
        PRIMARY KEY (id_produto)
);
