-- Trigger 2: Verificar orçamento no cadastro do departamento

DELIMITER // 
CREATE TRIGGER verifica_orcamento_departamento BEFORE INSERT ON departamento 
FOR EACH ROW 
BEGIN 
    IF NEW.vl_orcamento_departamento IS NULL OR NEW.vl_orcamento_departamento <= 0 THEN 
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'O orçamento previsto é inválido ou não foi informado.'; 
    END IF; 
END // 
DELIMITER ;
