-- Trigger 3: Verificar e-mail no cadastro do funcionário

DELIMITER // 
CREATE TRIGGER verifica_email_funcionario BEFORE INSERT ON funcionario 
FOR EACH ROW 
BEGIN 
    IF NEW.ds_email_funcionario IS NULL OR NEW.ds_email_funcionario = '' THEN 
        INSERT INTO auditoria (dt_auditoria, usuario, mensagem) 
        VALUES (CURRENT_TIMESTAMP, CURRENT_USER(), concat('O registro ', NEW.cd_funcionario, ' não possui e-mail informado.' )); 
    END IF; 
END // 
DELIMITER ;
