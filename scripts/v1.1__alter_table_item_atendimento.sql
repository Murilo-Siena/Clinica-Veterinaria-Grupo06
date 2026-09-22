ALTER TABLE item_atendimento
ADD COLUMN id_servico INT;

ALTER TABLE item_atendimento
ADD CONSTRAINT fk_item_servico
FOREIGN KEY	(id_servico)
REFERENCES servico (id_servico);
