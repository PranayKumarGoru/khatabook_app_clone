CREATE TABLE Users (
    user_id varchar(255) PRIMARY KEY,
    password varchar(255),
    name varchar(255),
    email varchar(255),
    phone varchar(255)
);


CREATE TABLE Khatabook (
    khatabook_id INTEGER AUTO_INCREMENT PRIMARY KEY,
    user_id varchar(255) references Users(user_id),
    business_name varchar(255),
    business_type varchar(255),
    address varchar(255)
);


INSERT INTO Users (user_id, password, name, email, phone)
   VALUES ('ram123', 'dummyP', 'Ramu', 'ram.cherry@relevel.com', '7784521475');
   
INSERT INTO Users (user_id, password, name, email, phone)
   VALUES ('rahul.k', 'dummyP', 'RahulK', 'rahul.k@relevel.com', '8544745896');
   
INSERT INTO Khatabook(user_id, business_name, business_type, address)
    VALUES('ram123', 'Blizz General Store', 'Groceries', 'Plot No 5/A, Pedemma Temple Lane, Madhapur, Hyderabad - 500047');
    
INSERT INTO Khatabook(user_id, business_name, business_type, address)
    VALUES('rahul.k', 'Mega General Store', 'Groceries', 'Plot No 5/A, Madhuranagar, Hyderabad - 500084');  

CREATE TABLE Customers (
    customer_id INTEGER AUTO_INCREMENT PRIMARY KEY,
    khatabook_id INTEGER references Khatabook(khatabook_id),
    customer_name varchar(255),
    mobile varchar(255)
);

INSERT INTO Customers (khatabook_id, customer_name, mobile)
   VALUES (1, 'Diveish', '7754547158');
INSERT INTO Customers (khatabook_id, customer_name, mobile)
   VALUES (2, 'Sukesh', '8524796301');
INSERT INTO Customers (khatabook_id, customer_name, mobile)
   VALUES (1, 'Mukesh', '7475668746');

CREATE TABLE Transactions (
    transaction_id INTEGER AUTO_INCREMENT PRIMARY KEY,
    khatabook_id INTEGER references Khatabook(khatabook_id),
    customer_id INTEGER references Customers(customer_id),
    transaction_date DATE,
    amount DECIMAL,
    status varchar(255)
);

INSERT INTO Transactions (khatabook_id, customer_id, transaction_date, amount, status)  
   VALUES (1, 1, '2021-10-01', 125, 'pending');
INSERT INTO Transactions (khatabook_id, customer_id, transaction_date, amount, status)
   VALUES (1, 1, '2021-10-06', 2200, 'pending');
INSERT INTO Transactions (khatabook_id, customer_id, transaction_date, amount, status)
   VALUES (1, 3, '2021-10-24', 999, 'pending');


