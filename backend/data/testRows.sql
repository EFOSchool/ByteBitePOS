-- Inserting data into the 'item' table
INSERT INTO item (name, price, description, category) VALUES
('Cheeseburger', 5.99, 'Delicious cheeseburger with all the fixings', 'Burgers'),
('French Fries', 2.49, 'Crispy golden french fries', 'Sides'),
('Chicken Sandwich', 6.99, 'Juicy grilled chicken sandwich', 'Sandwiches'),
('Onion Rings', 3.99, 'Crunchy onion rings with a savory coating', 'Sides'),
('Double Cheeseburger', 7.99, 'Two juicy beef patties with melted cheese', 'Burgers'),
('Soda', 1.99, 'Refreshing carbonated soft drink', 'Drinks'),
('Salad', 4.99, 'Fresh garden salad with assorted vegetables', 'Salads'),
('Milkshake', 3.99, 'Creamy milkshake in various flavors', 'Drinks'),
('Hot Dog', 4.49, 'Classic hot dog with ketchup and mustard', 'Sandwiches'),
('Ice Cream', 2.99, 'Creamy vanilla ice cream in a cone or cup', 'Desserts');

-- Inserting data into the 'orders' table
INSERT INTO orders (time, total, status) VALUES
('2024-03-01 12:00:00', 15.98, 'Pending'),
('2024-03-02 11:30:00', 8.97, 'Completed'),
('2024-03-03 13:45:00', 11.49, 'Pending'),
('2024-03-04 10:15:00', 6.98, 'Completed'),
('2024-03-05 14:20:00', 9.97, 'Pending'),
('2024-03-06 09:00:00', 13.98, 'Pending'),
('2024-03-07 17:30:00', 7.49, 'Completed'),
('2024-03-08 15:10:00', 10.49, 'Pending'),
('2024-03-09 12:45:00', 18.97, 'Pending'),
('2024-03-10 08:30:00', 5.99, 'Completed');

-- Inserting data into the 'order_items' table
INSERT INTO order_items (order_id, item_id, quantity, subtotal) VALUES
(1, 1, 2, 11.98),
(2, 3, 1, 6.99),
(3, 2, 1, 2.49),
(4, 5, 1, 7.99),
(5, 7, 2, 9.98),
(6, 4, 1, 3.99),
(7, 10, 1, 2.99),
(8, 8, 3, 11.97),
(9, 6, 4, 7.96),
(10, 9, 1, 4.49);

-- Inserting data into the 'employees' table
INSERT INTO employees (name, salary, username, password, pin, email, phone, role, status) VALUES
('John Doe', 2500.00, 'john_doe', 'hashed_password', 1234, 'john.doe@example.com', 1234567890, 'Cashier', 'Active'),
('Jane Smith', 3000.00, 'jane_smith', 'hashed_password', 5678, 'jane.smith@example.com', 9876543210, 'Manager', 'Active'),
('Mike Johnson', 2800.00, 'mike_johnson', 'hashed_password', 4321, 'mike.johnson@example.com', 1112223333, 'Cook', 'Active'),
('Emily Brown', 2700.00, 'emily_brown', 'hashed_password', 8765, 'emily.brown@example.com', 4445556666, 'Server', 'Active'),
('Chris Wilson', 2600.00, 'chris_wilson', 'hashed_password', 9876, 'chris.wilson@example.com', 7778889999, 'Kitchen Helper', 'Active'),
('Sarah Taylor', 2900.00, 'sarah_taylor', 'hashed_password', 2468, 'sarah.taylor@example.com', 3334445555, 'Cashier', 'Active');
