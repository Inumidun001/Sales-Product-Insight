-- Create products table
CREATE TABLE Products (
    Product_ID INT PRIMARY KEY,
    Product_Name VARCHAR(50),
    Category VARCHAR(50),
    Base_Price FLOAT,
    In_Stock INT
);

INSERT INTO Products 
(Product_ID, Product_Name, Category, Base_Price, In_Stock)
VALUES 
(1, 'Laptop', 'Electronics', 415.53, 155);
INSERT INTO Products 
(Product_ID, Product_Name, Category, Base_Price, In_Stock)
VALUES 
(2, 'Smartphone', 'Electronics', 1354.51, 74);
INSERT INTO Products 
(Product_ID, Product_Name, Category, Base_Price, In_Stock)
VALUES 
(3, 'Tablet', 'Electronics', 1193.85, 94);
INSERT INTO Products 
(Product_ID, Product_Name, Category, Base_Price, In_Stock)
VALUES 
(4, 'Monitor', 'Electronics', 486.73, 153);
INSERT INTO Products 
(Product_ID, Product_Name, Category, Base_Price, In_Stock)
VALUES 
(5, 'Headphones', 'Electronics', 1368.99, 144);
INSERT INTO Products 
(Product_ID, Product_Name, Category, Base_Price, In_Stock)
VALUES 
(6, 'Keyboard', 'Electronics', 1043.78, 114);