USE car_dealership; 

INSERT INTO cars (VIN, manufacturer, model, year_m, color) VALUES 
	('K096I98581DHSNUQ','Volkswagen','Tiguan',	2019, 'Blue'), 
	('ZM8G7BEUQZ97IH46V','Peugeot',	'Rifter',	2019,	'Red'), 
	('RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion',	2018, 'White'),
	('HKNDGS7CU31E9Z7JW', 'Toyota',	'RAV4',	2018,'Silver'), 
	('AM41UDN3CHU2WVF6', 'Volvo','V60,', 2019,	'Gray'); 
    
INSERT INTO customers (customer_ID, full_name, phone_number, email, address, city, state_province, country, postal_code) VALUES
	('10001', 'Pablo Picasso',	'+34 636 17 63 82','pablo@gmail.com','Paseo de la Chopera, 14', 'Madrid',	'Madrid', 'Spain', '28045'), 
    ('20001', 'Abraham Lincoln', '+1 305 907 7086', 'al@ceo.com', '120 SW 8th St', 'Miami', 'Florida','United States', '33130'),
    ('30001', 'Napoléon Bonaparte',	'+33 1 79 75 40 00', 'np@world.com', '40 Rue du Colisée', 'Paris', 'Île-de-France',	'France', '75008');

INSERT INTO salespersons (staff_ID, full_name, store) VALUES
	('00001', 'Petey Cruiser', 'Madrid'), 
    ('00002', 'Anna Sthesia', 'Barcelona'),
    ('00003', 'Paul Molive', 'Berlin'),
    ('00004', 'Gail Forcewind',	'Paris'),
    ('00005', 'Paige Turner', 'Mimia'),
    ('00006', 'Bob Frapples','Mexico City'),
    ('00007', 'Walter Melon', 'Amsterdam'),
    ('00008', 'Shonda Leer', 'Sao Paul'); 
    
INSERT INTO invoices (invoice_number, invoice_date, car_ID, customer_ID, staff_ID, price) VALUES
	('852399038', '2018-08-22',	1, '10001','00001', 5000),
    ('731166526', '2018-12-31',	3, 	'20001', '00005', 14500),
	('271135104', '2019-01-12',	2, 	'30001', '00007', 3450); 