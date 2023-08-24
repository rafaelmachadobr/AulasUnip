-- Auditando registros na tabela funcionario - DELETE 
DELIMITER // 
CREATE TRIGGER auditoria_func_del AFTER DELETE ON funcionario 
FOR EACH ROW 
BEGIN 
 INSERT INTO auditoria (dt_auditoria, usuario, mensagem) 
 VALUES (CURRENT_TIMESTAMP, CURRENT_USER(), concat('O registro ', OLD.cd_funcionario, ' foi removido!' )); 
END // 
DELIMITER ;

DELETE FROM funcionario WHERE cd_funcionario = 6;

SELECT * FROM funcionario; 
SELECT * FROM auditoria;