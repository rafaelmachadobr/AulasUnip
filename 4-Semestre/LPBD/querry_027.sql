-- Restrição 4: "O e-mail precisa ser único para cada registro de funcionário"

ALTER TABLE funcionario
ADD CONSTRAINT Unique_Email UNIQUE (ds_email_funcionario);
