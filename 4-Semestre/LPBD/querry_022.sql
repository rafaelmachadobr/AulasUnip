ALTER TABLE departamento ADD CONSTRAINT Valor_ORC CHECK (vl_orcamento_departamento > 0);

SELECT * FROM information_schema.table_constraints WHERE constraint_schema = 'PROFESSOR2';

INSERT INTO departamento (cd_departamento, nm_departamento, vl_orcamento_departamento) VALUES (2, 'Testes', 0);

INSERT INTO departamento (cd_departamento, nm_departamento, vl_orcamento_departamento) VALUES (2, 'Testes', 10);
