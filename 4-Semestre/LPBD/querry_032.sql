-- Auditando registros na tabela funcionario - UPDATE 
DELIMITER // 
CREATE TRIGGER auditoria_sal_func BEFORE UPDATE ON funcionario 
FOR EACH ROW 
BEGIN 
 IF NEW.vl_salario_funcionario > (0.05 * (SELECT vl_orcamento_departamento FROM departamento 
 WHERE cd_departamento = OLD.cd_departamento)) THEN 
 SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'O registro não foi gravado pois ultrapassa o orçamento previsto!'; 
END IF; 
END // 
DELIMITER ; 

UPDATE funcionario SET vl_salario_funcionario = 25000 WHERE cd_funcionario = 1; 
