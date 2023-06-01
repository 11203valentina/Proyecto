
--Disparadores para la tabla 'habitacion'
--Disparador para inserción:

CREATE TRIGGER tr_insert_habitacion
AFTER INSERT ON habitacion
FOR EACH ROW
BEGIN
    INSERT INTO registro_habitaciones (id_habitacion, fecha_registro, tipo_registro)
    VALUES (NEW.id_habitacion, NOW(), 'Inserción');
END;

--Disparador para modificación:

CREATE TRIGGER tr_update_habitacion
AFTER UPDATE ON habitacion
FOR EACH ROW
BEGIN
    INSERT INTO registro_habitaciones (id_habitacion, fecha_registro, tipo_registro)
    VALUES (OLD.id_habitacion, NOW(), 'Actualización');
END;

--Disparador para eliminación:

CREATE TRIGGER tr_delete_habitacion
AFTER DELETE ON habitacion
FOR EACH ROW
BEGIN
    INSERT INTO registro_habitaciones (id_habitacion, fecha_registro, tipo_registro)
    VALUES (OLD.id_habitacion, NOW(), 'Eliminación');
END;

----------------------------------------------------------------------------------------------

--Disparadores para la tabla 'recepcionista':
--Disparador para inserción:

CREATE TRIGGER tr_insert_recepcionista
AFTER INSERT ON recepcionista
FOR EACH ROW
BEGIN
    INSERT INTO registro_recepcionista (id_recepcionista, fecha_registro, tipo_registro)
    VALUES (NEW.id_recepcionista, NOW(), 'Inserción');
END;

--Disparador para modificación:

CREATE TRIGGER tr_update_recepcionista
AFTER UPDATE ON recepcionista
FOR EACH ROW
BEGIN
    INSERT INTO registro_recepcionista (id_recepcionista, fecha_registro, tipo_registro)
    VALUES (OLD.id_recepcionista, NOW(), 'Actualización');
END;

--Disparador para eliminación:

CREATE TRIGGER tr_delete_recepcionista
AFTER DELETE ON recepcionista
FOR EACH ROW
BEGIN
    INSERT INTO registro_recepcionista (id_recepcionista, fecha_registro, tipo_registro)
    VALUES (OLD.id_recepcionista, NOW(), 'Eliminación');
END;

---------------------------------------------------------------------------------------------

--Disparadores para la tabla 'huesped':
--Disparador para inserción:

CREATE TRIGGER tr_insert_huesped
AFTER INSERT ON huesped
FOR EACH ROW
BEGIN
    INSERT INTO registro_huesped (id_huesped, fecha_registro, tipo_registro)
    VALUES (NEW.id_huesped, NOW(), 'Inserción');
END;

--Disparador para modificación:

CREATE TRIGGER tr_update_huesped
AFTER UPDATE ON huesped
FOR EACH ROW
BEGIN
    INSERT INTO registro_huesped (id_huesped, fecha_registro, tipo_registro)
    VALUES (OLD.id_huesped, NOW(), 'Actualización');
END;

--Disparador para eliminación:

CREATE TRIGGER tr_delete_huesped
AFTER DELETE ON huesped
FOR EACH ROW
BEGIN
    INSERT INTO registro_huesped (id_huesped, fecha_registro, tipo_registro)
    VALUES (OLD.id_huesped, NOW(), 'Eliminación');
END;

------------------------------------------------------------------------------------ 

--Disparadores para la tabla 'servicio':
--Disparador para la inserción:

CREATE TRIGGER tr_insert_servicio
AFTER INSERT ON servicio
FOR EACH ROW
BEGIN
    INSERT INTO registro_servicio (id_servicio, fecha_registro, tipo_registro)
    VALUES (NEW.id_servicio, NOW(), 'Inserción');
END;

--Disparador para la modificación:

CREATE TRIGGER tr_update_servicio
AFTER UPDATE ON servicio
FOR EACH ROW
BEGIN
    INSERT INTO registro_servicio (id_servicio, fecha_registro, tipo_registro)
    VALUES (OLD.id_servicio, NOW(), 'Actualización');
END;

--Disparador para la eliminación:

CREATE TRIGGER tr_delete_servicio
AFTER DELETE ON servicio
FOR EACH ROW
BEGIN
    INSERT INTO registro_servicio (id_servicio, fecha_registro, tipo_registro)
    VALUES (OLD.id_servicio, NOW(), 'Eliminación');
END;

----------------------------------------------------------------------------------------

--Disparadores para la tabla 'metodopago':
--Disparador para inserción:

CREATE TRIGGER tr_insert_metodopago
AFTER INSERT ON metodopago
FOR EACH ROW
BEGIN
    INSERT INTO registro_metodopago (id_metodopago, fecha_registro, tipo_registro)
    VALUES (NEW.id_metodopago, NOW(), 'Inserción');
END;

--Disparador para modificación:

CREATE TRIGGER tr_update_metodopago
AFTER UPDATE ON metodopago
FOR EACH ROW
BEGIN
    INSERT INTO registro_metodopago (id_metodopago, fecha_registro, tipo_registro)
    VALUES (OLD.id_metodopago, NOW(), 'Actualización');
END;

--Disparador para eliminación:

CREATE TRIGGER tr_delete_metodopago
AFTER DELETE ON metodopago
FOR EACH ROW
BEGIN
    INSERT INTO registro_metodopago (id_metodopago, fecha_registro, tipo_registro)
    VALUES (OLD.id_metodopago, NOW(), 'Eliminación');
END;

------------------------------------------------------------------------------------------

--Disparadores para la tabla 'reserva':
--Disparador para inserción:

CREATE TRIGGER tr_insert_reserva
AFTER INSERT ON reserva
FOR EACH ROW
BEGIN
    INSERT INTO registro_reserva (id_reserva, fecha_registro, tipo_registro)
    VALUES (NEW.id_reserva, NOW(), 'Inserción');
END;

--Disparador para modificación:

CREATE TRIGGER tr_update_reserva
AFTER UPDATE ON reserva
FOR EACH ROW
BEGIN
    INSERT INTO registro_reserva (id_reserva, fecha_registro, tipo_registro)
    VALUES (OLD.id_reserva, NOW(), 'Actualización');
END;

--Disparador para eliminación:

CREATE TRIGGER tr_delete_reserva
AFTER DELETE ON reserva
FOR EACH ROW
BEGIN
    INSERT INTO registro_reserva (id_reserva, fecha_registro, tipo_registro)
    VALUES (OLD.id_reserva, NOW(), 'Eliminación');
END;

-----------------------------------------------------------------------------------

--Disparadores para la tabla 'reserva_servicio':
--Disparador para inserción:

CREATE TRIGGER tr_insert_reserva_servicio
AFTER INSERT ON reserva_servicio
FOR EACH ROW
BEGIN
    INSERT INTO registro_reserva_servicio (id_reserva_servicio, fecha_registro, tipo_registro)
    VALUES (NEW.id_reserva_servicio, NOW(), 'Inserción');
END;

--Disparador para modificación:
CREATE TRIGGER tr_update_reserva_servicio
AFTER UPDATE ON reserva_servicio
FOR EACH ROW
BEGIN
    INSERT INTO registro_reserva_servicio (id_reserva_servicio, fecha_registro, tipo_registro)
    VALUES (OLD.id_reserva_servicio, NOW(), 'Actualización');
END;

--Disparador para eliminación:
CREATE TRIGGER tr_delete_reserva_servicio
AFTER DELETE ON reserva_servicio
FOR EACH ROW
BEGIN
    INSERT INTO registro_reserva_servicio (id_reserva_servicio, fecha_registro, tipo_registro)
    VALUES (OLD.id_reserva_servicio, NOW(), 'Eliminación');
END;

--------------------------------------------------------------------------------------------------

--Disparadores para la tabla 'transaccion':
--Disparador para inserción:

CREATE TRIGGER tr_insert_transaccion
AFTER INSERT ON transaccion
FOR EACH ROW
BEGIN
    INSERT INTO registro_transaccion (id_transaccion, fecha_registro, tipo_registro)
    VALUES (NEW.id_transaccion, NOW(), 'Inserción');
END;

--Disparador para modificación:

CREATE TRIGGER tr_update_transaccion
AFTER UPDATE ON transaccion
FOR EACH ROW
BEGIN
    INSERT INTO registro_transaccion (id_transaccion, fecha_registro, tipo_registro)
    VALUES (OLD.id_transaccion, NOW(), 'Actualización');
END;

--Disparador para eliminación:
CREATE TRIGGER tr_delete_transaccion
AFTER DELETE ON transaccion
FOR EACH ROW
BEGIN
    INSERT INTO registro_transaccion (id_transaccion, fecha_registro, tipo_registro)
    VALUES (OLD.id_transaccion, NOW(), 'Eliminación');
END;
-------- disparadores-------
DELIMITER //
CREATE TRIGGER update_disponibilidad_after_insert
AFTER INSERT ON reserva
FOR EACH ROW
BEGIN
    UPDATE habitacion
    SET disponibilidad = 0
    WHERE idHabitacion = NEW.idHabitacion;
END //

--se obtiene la información sobre el disparador 

SHOW CREATE TRIGGER update_disponibilidad_after_insert

----------------------------------------------------------------------------------
DELIMITER //
--Disparador para actualizar el precio por noche de la habitación al actualizar el precio en la tabla "habitacion":
CREATE TRIGGER update_precioNoche_after_update
AFTER UPDATE ON habitacion
FOR EACH ROW
BEGIN
    UPDATE reserva
    SET precioNoche = NEW.precioNoche
    WHERE idHabitacion = NEW.idHabitacion;
END //
