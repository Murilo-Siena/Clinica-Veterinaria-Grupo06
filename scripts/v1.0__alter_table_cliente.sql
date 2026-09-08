ALTER TABLE cliente
ADD CONSTRAINT check_cpf
CHECK (cpf ~ '^[0-9]{3}\.[0-9]{3}\.[0-9]{3}-[0-9]{2}$');
