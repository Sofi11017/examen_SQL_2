USE coworking;

DELIMITER $$
DROP TRIGGER IF EXISTS calcular_fecha_vencimiento $$
CREATE TRIGGER calcular_fecha_vencimiento
BEFORE INSERT ON membresias
FOR EACH ROW
BEGIN
SET NEW.fecha_fin = DATE_ADD(NEW.fecha_inicio, INTERVAL 30 DAY);
END $$
DELIMITER ;


-- PRUEBAS 

/* INSERT */
INSERT INTO membresias (usuario_id, tipo_id, fecha_inicio)
VALUES (52, 2, '2026-10-08');


/* CONCULTA */
SELECT id, usuario_id, tipo_id, fecha_inicio, fecha_fin, estado
FROM membresias
ORDER BY id DESC
LIMIT 1;