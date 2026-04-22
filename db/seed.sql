INSERT INTO users (name, email) VALUES
('Anuj', 'anuj@gmail.com'),
('Rahul', 'rahul@gmail.com'),
('Aman', 'aman@gmail.com'),
('Neha', 'neha@gmail.com'),
('Simran', 'simran@gmail.com');

INSERT INTO products (name, price, stock) VALUES
('Laptop', 50000, 10),
('Phone', 20000, 20),
('Headphones', 2000, 50),
('Keyboard', 1500, 30),
('Mouse', 800, 40);

INSERT INTO orders (user_id, product_id, quantity, total_price) VALUES
(1,1,1,50000),
(2,2,2,40000),
(3,3,3,6000),
(4,4,1,1500),
(5,5,2,1600);