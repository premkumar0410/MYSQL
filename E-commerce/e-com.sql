-- 1. Create product_details table
CREATE TABLE product_details (
    product_id INT,
    product_name VARCHAR(70),
    product_available INT,
    category VARCHAR(50),
    price DECIMAL(10,2)
);

-- 2. Insert sample products
INSERT INTO product_details (product_id,product_name, product_available, category, price) VALUES
(1,'Wireless Mouse', 50,'Electronics',799.99),
(2,'Bluetooth Headphones',30,'Electronics',1499.50),
(3,'Gaming Keyboard',20,'Electronics',2999.00),
(4,'Office Chair',15,'Furniture',4999.75),
(5,'Coffee Table',10,'Furniture',2999.99),
(6,'Water Bottle',100,'Kitchen',499.00),
(7,'Electric Kettle',25,'Kitchen',1299.25),
(8,'Notebook',200,'Stationery',59.99),
(9,'Pen Set',150,'Stationery',149.50),
(10,'Desk Lamp',40,'Furniture',899.90);



-- 3. Create Customer table
CREATE TABLE Customer (
    c_id INT,
    name VARCHAR(60),
    email VARCHAR(60),
    password VARCHAR(90)
);

select * from customer;


insert into customer values (2,"prem","prem1234","123456");

-- 4. Create order_details table
CREATE TABLE order_details (
    order_id INT,
    product_id INT,
    customer_id INT,
    quantity INT,
    unit_price DECIMAL(10,2),
    order_date TIMESTAMP DEFAULT NOW()
);

-- 5. Create cart_details table
CREATE TABLE cart_details (
    cart_id INT,
    customer_id INT,
    product_id INT,
    add_on_date TIMESTAMP DEFAULT NOW()
);