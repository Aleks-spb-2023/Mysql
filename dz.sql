Use dz_02;
CREATE TABLE sales (
	id INT AUTO_INCREMENT PRIMARY KEY,
	order_date DATE,
    count_product INT
);

INSERT INTO sales (order_date, count_product) VALUES ('2022-01-01', 156);
INSERT INTO sales (order_date, count_product) VALUES ('2022-01-02', 180);
INSERT INTO sales (order_date, count_product) VALUES ('2022-01-03', 21);
INSERT INTO sales (order_date, count_product) VALUES ('2022-01-04', 124);
INSERT INTO sales (order_date, count_product) VALUES ('2022-01-05', 341);


SELECT 
	id AS "Номер позиции",
    CASE
		WHEN count_product < 100 THEN 'Маленький заказ'
        WHEN count_product between 100 and 300 THEN 'Средний заказ'
        WHEN count_product > 300 THEN 'Большой заказ'
    END AS 'Размер заказа'
FROM sales;    