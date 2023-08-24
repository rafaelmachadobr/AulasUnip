-- Trigger 1: Verificar idade do funcionário no cadastro

DELIMITER // 
CREATE TRIGGER verifica_idade_funcionario BEFORE INSERT ON funcionario 
FOR EACH ROW 
BEGIN 
    IF NEW.idade_funcionario < 16 THEN 
        INSERT INTO auditoria (dt_auditoria, usuario, mensagem) 
        VALUES (CURRENT_TIMESTAMP, CURRENT_USER(), concat('O registro ', NEW.cd_funcionario, ' possui idade INFERIOR a 16 anos.' )); 
    ELSEIF NEW.idade_funcionario > 70 THEN 
        INSERT INTO auditoria (dt_auditoria, usuario, mensagem) 
        VALUES (CURRENT_TIMESTAMP, CURRENT_USER(), concat('O registro ', NEW.cd_funcionario, ' possui idade SUPERIOR a 70 anos.' )); 
    END IF; 
END // 
DELIMITER ;
