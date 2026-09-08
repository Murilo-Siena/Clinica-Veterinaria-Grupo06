ALTER TABLE animal
ADD CONSTRAINT check_sexo
CHECK (sexo IN ('M', 'F'));
