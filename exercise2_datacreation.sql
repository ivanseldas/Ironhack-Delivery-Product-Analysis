USE project_3;

DROP TABLE IF EXISTS messages;

CREATE TABLE messages (
    tipo_app_remitente VARCHAR(50),
    id_cliente INT,
    de_id INT,
    para_id INT,
    chat_iniciado_por_mensaje BOOLEAN,
    id_pedido INT,
    etapa_pedido VARCHAR(50),
    id_repartidor INT,
    hora_envio_mensaje TIMESTAMP
);

SELECT * FROM messages;

-- Sample insert statements to populate the table with the provided data
INSERT INTO messages (tipo_app_remitente, id_cliente, de_id, para_id, chat_iniciado_por_mensaje, id_pedido, etapa_pedido, id_repartidor, hora_envio_mensaje)
VALUES ('Cliente iOS', 17071099, 17071099, 16293039, FALSE, 59528555, 'RECOGIENDO', 16293039, '2019-08-19 08:01:47');

INSERT INTO messages (tipo_app_remitente, id_cliente, de_id, para_id, chat_iniciado_por_mensaje, id_pedido, etapa_pedido, id_repartidor, hora_envio_mensaje)
VALUES ('Repartidor iOS', 17071099, 16293039, 17071099, FALSE, 59528555, 'LLEGANDO', 16293039, '2019-08-19 08:01:04');

INSERT INTO messages (tipo_app_remitente, id_cliente, de_id, para_id, chat_iniciado_por_mensaje, id_pedido, etapa_pedido, id_repartidor, hora_envio_mensaje)
VALUES ('Cliente iOS', 17071099, 17071099, 16293039, FALSE, 59528555, 'RECOGIENDO', 16293039, '2019-08-19 08:00:04');

INSERT INTO messages (tipo_app_remitente, id_cliente, de_id, para_id, chat_iniciado_por_mensaje, id_pedido, etapa_pedido, id_repartidor, hora_envio_mensaje)
VALUES ('Repartidor Android', 12874122, 18325287, 12874122, TRUE, 59528038, 'ENTREGA_EN_DIRECCIÓN', 18325287, '2019-08-19 07:59:33');

CREATE TABLE orders (
    order_id VARCHAR(50),
    city_code INT
);


