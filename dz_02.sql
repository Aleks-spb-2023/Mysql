CREATE TABLE orders (
	id INT AUTO_INCREMENT PRIMARY KEY,
    employee_id VARCHAR(5),
    amount TIME,
    order_status VARCHAR(20)
);

SELECT
id AS 'Номер',
order_status as 'full_order_status',
IF (order_status = 'OPEN', 'Order is in open state',
IF (order_status = 'CLOSED', 'Order is closed',
IF (order_status = 'CANCELLED', 'Order is cancelled', 'Не определено')
)
) AS 'Тип'
FROM orders;