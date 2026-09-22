CREATE TABLE IF NOT EXISTS servico (
    id_servico BIGINT PRIMARY KEY,
    nome VARCHAR(100),
	valor DECIMAL(10, 2),
	pontos INTEGER
);
