CREATE TABLE IF NOT EXISTS item (
	id INT AUTO_INCREMENT,
    name VARCHAR(255),
    price DECIMAL(10,2),
    description VARCHAR(350),
    category VARCHAR(55),
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS orders (
	id INT AUTO_INCREMENT,
    time TIMESTAMP,
    total DECIMAL(10, 2),
    status VARCHAR(55),
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS order_items (
	order_id INT,
    item_id INT,
    quantity INT,
    subtotal DECIMAL (10, 2),
    PRIMARY KEY (order_id, item_id),
    FOREIGN KEY (order_id) REFERENCES orders(id),
    FOREIGN KEY (item_id) REFERENCES item(id)
);

CREATE TABLE IF NOT EXISTS employees (
	id INT AUTO_INCREMENT,
    name VARCHAR(255),
    salary DECIMAL(10, 2),
    username VARCHAR(255),
    password VARCHAR(255),
    pin INT(4),
    email VARCHAR(255),
    phone INT(10),
    role VARCHAR(55),
    status VARCHAR(25),
    PRIMARY KEY(id)
);

CREATE TABLE IF NOT EXISTS clock_events (
	emp_id INT,
    clock_in DATETIME,
    clock_out DATETIME,
    shift_duration TIME,
    date DATE,
    PRIMARY KEY (emp_id, clock_in),
    FOREIGN KEY (emp_id) REFERENCES employees(id)
);