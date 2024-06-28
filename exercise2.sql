SELECT * FROM orders;

DROP TABLE IF EXISTS customer_courier_conversations;
CREATE TABLE IF NOT EXISTS customer_courier_conversations AS
SELECT 
	-- ID del pedido
	id_pedido,
    
    -- Codigo de la ciudad
    
    -- Hora del primer mensaje del cliente
    (SELECT MIN(hora_envio_mensaje)
    FROM messages as mc
    WHERE mc.de_id = mc.id_cliente
	AND mc.id_pedido = messages.id_pedido
    GROUP BY mc.id_pedido
    )
    AS hora_primer_mensaje_cliente,   
    
    -- Hora del primer mensaje del repartidor
    (SELECT MIN(hora_envio_mensaje)
    FROM messages as mc
    WHERE mc.de_id = mc.id_repartidor
	AND mc.id_pedido = messages.id_pedido
    GROUP BY mc.id_pedido
    )
    AS hora_primer_mensaje_repartidor,  
    
    -- Número de mensajes del cliente
    SUM(CASE WHEN de_id = id_cliente THEN 1 ELSE 0 END) AS n_mensajes_cliente,
    
    -- Número de mensajes del repartidor
    SUM(CASE WHEN de_id = id_repartidor THEN 1 ELSE 0 END) AS n_mensajes_repartidor,
    
    -- Primer remitente del mensaje
    MIN(CASE WHEN de_id = id_cliente THEN 'cliente' ELSE 'repartidor' END) AS primer_remitente,
    
    -- Tiempo primer mensaje en la conversacion
    MIN(hora_envio_mensaje) AS tiempo_primer_mensaje,
    
    -- Tiempo transcurrido en segundos hasta primera respuesta
    TIMESTAMPDIFF(
		SECOND, 
        MIN(hora_envio_mensaje), 
        (SELECT hora_envio_mensaje
        FROM messages AS m2
        WHERE m2.id_pedido = messages.id_pedido
        AND m2.hora_envio_mensaje > MIN(messages.hora_envio_mensaje)
        AND m2.de_id != (SELECT de_id FROM messages AS m3 
						WHERE m3.id_pedido = messages.id_pedido 
						ORDER BY m3.hora_envio_mensaje 
						LIMIT 1)
        ORDER BY hora_envio_mensaje
        LIMIT 1))
        AS tiempo_reaccion,
        
	-- Tiempo ultimo mensaje en la conversacion
    MAX(hora_envio_mensaje) AS tiempo_ultimo_mensaje,
    
    -- Etapa del pedido cuando se envió el último mensaje
    (SELECT etapa_pedido 
    FROM messages AS m
    WHERE m.hora_envio_mensaje = MAX(messages.hora_envio_mensaje)
    LIMIT 1)
    AS etapa_ultimo_mensaje
FROM messages
GROUP BY id_pedido;

SELECT * FROM customer_courier_conversations;