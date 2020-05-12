USE car_dealership; 


CREATE TABLE IF NOT EXISTS cars(
	car_ID  int AUTO_INCREMENT PRIMARY KEY,
	VIN VARCHAR(20) UNIQUE, 
	manufacturer VARCHAR (50), 
	model VARCHAR(50),
	year_m INT,
	color VARCHAR(30)
); 

CREATE TABLE IF NOT EXISTS customers(
id INT AUTO_INCREMENT PRIMARY KEY,  
customer_ID VARCHAR(5) UNIQUE,
full_name VARCHAR(50),
phone_number VARCHAR(20), 
email VARCHAR(50),
address VARCHAR(100),
city VARCHAR(30),
state_province VARCHAR(30),
country VARCHAR(30),
postal_code VARCHAR(10)
);

CREATE TABLE IF NOT EXISTS salespersons(
id INT AUTO_INCREMENT PRIMARY KEY,
staff_ID VARCHAR(5) UNIQUE, 
full_name VARCHAR(100),
store VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS invoices( 
invoice_ID INT AUTO_INCREMENT PRIMARY KEY,
invoice_number VARCHAR(10),
invoice_date DATE,
car_ID INT,
customer_ID VARCHAR(5),
staff_ID VARCHAR(5), 
price FLOAT(50)
);