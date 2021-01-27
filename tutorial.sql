CREATE TABLE product (
	id VARCHAR(10) NOT NULL,
	name VARCHAR(100) NOT NULL,
	description TEXT,
	price INT UNSIGNED NOT NULL,
	quantity INT UNSIGNED NOT NULL DEFAULT 0,
	created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
) Engine = InnoDb;

INSERT INTO product (id, name, price, quantity)
VALUES ('P0001', 'Mie Ayam Original', 15000, 50),
	   ('P0002', 'Mie Ayam Bakso', 18000, 50),
	   ('P0003', 'Mie Yamin', 18000, 50),
	   ('P0004', 'Mie Ayam Special', 20000, 50);

UPDATE product
SET price = 16000
WHERE id = 'P0001';

DELETE
FROM product
WHERE id = 'P0004';