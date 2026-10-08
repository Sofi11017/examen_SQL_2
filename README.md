Examen #1

Crea un trigger SQL que, al insertar una nueva membresía, calcule y complete automáticamente la fecha de vencimiento sumando 30 días a la fecha de inicio.

-El trigger debe ejecutarse después de insertar (AFTER INSERT) una membresía.

-La fecha de vencimiento debe guardarse en el mismo registro de la membresía.

-Incluye un comentario explicando brevemente cómo funciona el trigger.

Este trigger calcula automáticamente la fecha de vencimiento de una membresía. Utilizo BEFORE INSERT porque quiero calcularla antes de guardar el registro. Con NEW.fecha_inicio obtengo la fecha de inicio y con DATE_ADD le sumo 30 días. Finalmente, guardo el resultado en NEW.fecha_vencimiento.

Realice un insert y una consulta para verificar que todo estuviera bien 
