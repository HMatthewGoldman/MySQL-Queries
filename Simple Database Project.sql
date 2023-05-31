-- STEP 1: CREATE SCHEMA AND TABLES
CREATE SCHEMA bubsbooties DEFAULT CHARACTER SET utf8mb4;
CREATE TABLE customers
(
customer_id INT AUTO_INCREMENT PRIMARY KEY,
first_name VARCHAR(100) NOT NULL,
last_name VARCHAR(100) NOT NULL,
email VARCHAR (255) NOT NULL UNIQUE,
create_time TIMESTAMP
);
CREATE TABLE employees
(
employee_id INT AUTO_INCREMENT PRIMARY KEY,
first_name VARCHAR(100) NOT NULL,
last_name VARCHAR(100) NOT NULL,
start_date DATE NOT NULL,
position_held VARCHAR(50) NOT NULL
);
CREATE TABLE products
(
product_id INT AUTO_INCREMENT PRIMARY KEY,
product_name VARCHAR (255) NOT NULL,
inventory INT NOT NULL,
price DECIMAL(10,2) NOT NULL
);
CREATE TABLE purchases
(
transaction_id INT AUTO_INCREMENT PRIMARY KEY,
date DATE NOT NULL,
employee_id INT,
customer_id INT,
product_id INT,
quantity INT,
total_sale_price DECIMAL(10,2),
FOREIGN KEY (employee_id) 
	REFERENCES employees(employee_id),
FOREIGN KEY (customer_id)
	REFERENCES customers(customer_id),
FOREIGN KEY (product_id)
	REFERENCES products(product_id)
);
-- STEP 2: INSERT DATA
-- cutomer data
insert into customers (first_name, last_name, email, create_time) values ('Trudi', 'Grigorushkin', 'tgrigorushkin0@intel.com', '2022-03-09');
insert into customers (first_name, last_name, email, create_time) values ('Angel', 'Boodle', 'aboodle1@bbb.org', '2023-02-05');
insert into customers (first_name, last_name, email, create_time) values ('Megan', 'Beckett', 'mbeckett2@technorati.com', '2022-04-18');
insert into customers (first_name, last_name, email, create_time) values ('Lissie', 'Rapinett', 'lrapinett3@adobe.com', '2023-03-08');
insert into customers (first_name, last_name, email, create_time) values ('Garland', 'Mabbot', 'gmabbot4@domainmarket.com', '2023-05-25');
insert into customers (first_name, last_name, email, create_time) values ('Milt', 'Rulton', 'mrulton5@cbsnews.com', '2022-05-04');
insert into customers (first_name, last_name, email, create_time) values ('Keen', 'Saggers', 'ksaggers6@intel.com', '2022-12-24');
insert into customers (first_name, last_name, email, create_time) values ('Morey', 'Putman', 'mputman7@usgs.gov', '2022-10-08');
insert into customers (first_name, last_name, email, create_time) values ('Munroe', 'Dossettor', 'mdossettor8@ameblo.jp', '2023-02-26');
insert into customers (first_name, last_name, email, create_time) values ('Huey', 'MacNeilley', 'hmacneilley9@buzzfeed.com', '2022-12-01');
insert into customers (first_name, last_name, email, create_time) values ('Loren', 'Riolfi', 'lriolfia@google.cn', '2023-01-21');
insert into customers (first_name, last_name, email, create_time) values ('Raviv', 'Kimbell', 'rkimbellb@cornell.edu', '2022-03-01');
insert into customers (first_name, last_name, email, create_time) values ('Aubine', 'Holyard', 'aholyardc@1688.com', '2023-01-13');
insert into customers (first_name, last_name, email, create_time) values ('Salli', 'Snuggs', 'ssnuggsd@ebay.com', '2023-03-30');
insert into customers (first_name, last_name, email, create_time) values ('Imojean', 'Beszant', 'ibeszante@pinterest.com', '2022-12-16');
insert into customers (first_name, last_name, email, create_time) values ('Tonie', 'Stanmer', 'tstanmerf@gnu.org', '2022-01-26');
insert into customers (first_name, last_name, email, create_time) values ('Werner', 'Tunmore', 'wtunmoreg@census.gov', '2022-06-27');
insert into customers (first_name, last_name, email, create_time) values ('Biddy', 'Ramsey', 'bramseyh@tiny.cc', '2022-11-06');
insert into customers (first_name, last_name, email, create_time) values ('Matty', 'Whithorn', 'mwhithorni@prweb.com', '2022-09-09');
insert into customers (first_name, last_name, email, create_time) values ('Shalne', 'Gulley', 'sgulleyj@webs.com', '2022-01-07');
insert into customers (first_name, last_name, email, create_time) values ('Randal', 'Gibbin', 'rgibbink@usda.gov', '2022-05-02');
insert into customers (first_name, last_name, email, create_time) values ('Darrick', 'Saltsberg', 'dsaltsbergl@digg.com', '2022-12-30');
insert into customers (first_name, last_name, email, create_time) values ('Trula', 'Albrighton', 'talbrightonm@mysql.com', '2023-05-28');
insert into customers (first_name, last_name, email, create_time) values ('Merrel', 'Beadel', 'mbeadeln@ustream.tv', '2022-01-09');
insert into customers (first_name, last_name, email, create_time) values ('Sissie', 'Dallicott', 'sdallicotto@shinystat.com', '2023-03-06');
insert into customers (first_name, last_name, email, create_time) values ('Hallie', 'Ragot', 'hragotp@about.me', '2022-08-25');
insert into customers (first_name, last_name, email, create_time) values ('Fawne', 'Aven', 'favenq@so-net.ne.jp', '2022-12-09');
insert into customers (first_name, last_name, email, create_time) values ('Coop', 'Orange', 'coranger@godaddy.com', '2023-04-23');
insert into customers (first_name, last_name, email, create_time) values ('Kipp', 'Philliskirk', 'kphilliskirks@behance.net', '2022-08-26');
insert into customers (first_name, last_name, email, create_time) values ('Tymothy', 'Crock', 'tcrockt@vimeo.com', '2022-05-17');
insert into customers (first_name, last_name, email, create_time) values ('Field', 'Vergine', 'fvergineu@skype.com', '2022-07-17');
insert into customers (first_name, last_name, email, create_time) values ('Lilli', 'MacCallister', 'lmaccallisterv@craigslist.org', '2022-12-08');
insert into customers (first_name, last_name, email, create_time) values ('Fernanda', 'Pethrick', 'fpethrickw@geocities.com', '2022-08-21');
insert into customers (first_name, last_name, email, create_time) values ('Carolina', 'Mattheis', 'cmattheisx@mysql.com', '2022-01-15');
insert into customers (first_name, last_name, email, create_time) values ('Audi', 'Bury', 'aburyy@imageshack.us', '2022-09-19');
insert into customers (first_name, last_name, email, create_time) values ('Pattie', 'Manueau', 'pmanueauz@google.co.jp', '2022-03-15');
insert into customers (first_name, last_name, email, create_time) values ('Myranda', 'Fenge', 'mfenge10@ovh.net', '2023-02-11');
insert into customers (first_name, last_name, email, create_time) values ('Lucas', 'Till', 'ltill11@fc2.com', '2022-11-20');
insert into customers (first_name, last_name, email, create_time) values ('Bertina', 'Lemanu', 'blemanu12@lulu.com', '2023-03-12');
insert into customers (first_name, last_name, email, create_time) values ('Fayette', 'Baccus', 'fbaccus13@nytimes.com', '2022-02-18');
insert into customers (first_name, last_name, email, create_time) values ('Owen', 'Trees', 'otrees14@amazon.co.jp', '2022-11-07');
insert into customers (first_name, last_name, email, create_time) values ('Hobey', 'Cadding', 'hcadding15@washington.edu', '2022-06-11');
insert into customers (first_name, last_name, email, create_time) values ('Sutherland', 'Stockoe', 'sstockoe16@wired.com', '2023-03-10');
insert into customers (first_name, last_name, email, create_time) values ('Royal', 'Dillistone', 'rdillistone17@angelfire.com', '2022-04-11');
insert into customers (first_name, last_name, email, create_time) values ('Aimil', 'Scawen', 'ascawen18@php.net', '2023-05-10');
insert into customers (first_name, last_name, email, create_time) values ('Berget', 'Van Oort', 'bvanoort19@forbes.com', '2023-05-02');
insert into customers (first_name, last_name, email, create_time) values ('Lanna', 'Bruckmann', 'lbruckmann1a@feedburner.com', '2022-03-14');
insert into customers (first_name, last_name, email, create_time) values ('Hyacinth', 'Tours', 'htours1b@ucsd.edu', '2022-04-23');
insert into customers (first_name, last_name, email, create_time) values ('Catina', 'Scapens', 'cscapens1c@sohu.com', '2023-03-08');
insert into customers (first_name, last_name, email, create_time) values ('Geralda', 'Weldrake', 'gweldrake1d@globo.com', '2022-05-08');
SELECT * FROM customers;
-- employee data
insert into employees (first_name, last_name, start_date, position_held) values ('Northrop', 'Maleby', '2023-03-19', 'manager');
insert into employees (first_name, last_name, start_date, position_held) values ('Dunc', 'Cunniff', '2022-08-10', 'sales');
insert into employees (first_name, last_name, start_date, position_held) values ('Baldwin', 'Troak', '2022-09-16', 'manager');
insert into employees (first_name, last_name, start_date, position_held) values ('Homer', 'Ligerton', '2022-01-19', 'manager');
insert into employees (first_name, last_name, start_date, position_held) values ('Evanne', 'Laffranconi', '2022-03-29', 'sales');
insert into employees (first_name, last_name, start_date, position_held) values ('Welch', 'MacMichael', '2022-02-20', 'cashier');
insert into employees (first_name, last_name, start_date, position_held) values ('Nollie', 'Romei', '2022-10-20', 'sales');
insert into employees (first_name, last_name, start_date, position_held) values ('Ulberto', 'Brewett', '2022-12-27', 'cashier');
insert into employees (first_name, last_name, start_date, position_held) values ('Pat', 'Hatchette', '2022-12-12', 'manager');
insert into employees (first_name, last_name, start_date, position_held) values ('Georgena', 'Megson', '2022-07-30', 'sales');
SELECT * FROM employees;
-- products data
insert into products (product_name, inventory, price) values ('Yellow Necklacepod', 5, '18.16');
insert into products (product_name, inventory, price) values ('Heartleaf Saxifrage', 15, '36.72');
insert into products (product_name, inventory, price) values ('Flor De San Jose', 20, '22.08');
insert into products (product_name, inventory, price) values ('Balsamo', 5, '44.81');
insert into products (product_name, inventory, price) values ('Prairie Clover', 20, '7.78');
insert into products (product_name, inventory, price) values ('Beach Pinweed', 5, '15.64');
insert into products (product_name, inventory, price) values ('Compact Dodder', 20, '35.00');
insert into products (product_name, inventory, price) values ('Nandina', 2, '32.93');
insert into products (product_name, inventory, price) values ('Bog Dubautia', 19, '43.51');
insert into products (product_name, inventory, price) values ('Gardenia', 5, '3.53');
insert into products (product_name, inventory, price) values ('Oahu Flatsedge', 17, '4.46');
insert into products (product_name, inventory, price) values ('Sordid Pepperweed', 17, '5.71');
insert into products (product_name, inventory, price) values ('Coastal Indigo', 12, '16.67');
insert into products (product_name, inventory, price) values ('Bentham''s Hevea', 5, '35.13');
insert into products (product_name, inventory, price) values ('Tundra Aster', 15, '16.80');
insert into products (product_name, inventory, price) values ('California Blackberry', 17, '32.18');
insert into products (product_name, inventory, price) values ('Sheep Cinquefoil', 2, '11.27');
insert into products (product_name, inventory, price) values ('Wax Currant', 17, '17.75');
insert into products (product_name, inventory, price) values ('Crested Cinquefoil', 5, '3.64');
insert into products (product_name, inventory, price) values ('Peregrina', 6, '48.45');
SELECT * FROM products;
-- purchases data
insert into purchases (date, employee_id, customer_id, product_id, quantity, total_sale_price) values (	'2022-12-23',	4,	26,	13,	5,	'83.35');
insert into purchases (date, employee_id, customer_id, product_id, quantity, total_sale_price) values (	'2022-03-09',	5,	31, 19,	3,	'10.92');
insert into purchases (date, employee_id, customer_id, product_id, quantity, total_sale_price) values (	'2022-07-12',	5,	1,	6,	1,	'15.64');
insert into purchases (date, employee_id, customer_id, product_id, quantity, total_sale_price) values ( '2022-05-27',	8,	48,	18,	2,	'35.5');
insert into purchases (date, employee_id, customer_id, product_id, quantity, total_sale_price) values (	'2022-08-21',	6,	4,	15,	1,	'16.8');
insert into purchases (date, employee_id, customer_id, product_id, quantity, total_sale_price) values (	'2023-03-07',	1,	47,	8,	4,	'131.72');
insert into purchases (date, employee_id, customer_id, product_id, quantity, total_sale_price) values (	'2022-06-26',	5,	16,	2,	2,	'73.44');
insert into purchases (date, employee_id, customer_id, product_id, quantity, total_sale_price) values (	'2022-03-25',	3,	22,	11,	4,	'17.84');
insert into purchases (date, employee_id, customer_id, product_id, quantity, total_sale_price) values (	'2022-10-12',	4,	25,	4,	4,	'179.24');
insert into purchases (date, employee_id, customer_id, product_id, quantity, total_sale_price) values (	'2022-02-10',	3,	8,	9,	3,	'130.53');
insert into purchases (date, employee_id, customer_id, product_id, quantity, total_sale_price) values (	'2022-02-10',	4,	45,	18,	1,	'17.75');
insert into purchases (date, employee_id, customer_id, product_id, quantity, total_sale_price) values (	'2022-06-21',	8,	41,	5,	5,	'38.9');
insert into purchases (date, employee_id, customer_id, product_id, quantity, total_sale_price) values (	'2023-04-09',	3,	12,	11,	4,	'17.84');
insert into purchases (date, employee_id, customer_id, product_id, quantity, total_sale_price) values (	'2022-04-16',	8,	40,	12,	4,	'22.84');
insert into purchases (date, employee_id, customer_id, product_id, quantity, total_sale_price) values (	'2022-01-30',	10,	43,	7,	5,	'175');
insert into purchases (date, employee_id, customer_id, product_id, quantity, total_sale_price) values (	'2022-01-07',	1,	21,	1,	5,	'90.8');
insert into purchases (date, employee_id, customer_id, product_id, quantity, total_sale_price) values (	'2022-08-10',	2,	37,	11,	2,	'8.92');
insert into purchases (date, employee_id, customer_id, product_id, quantity, total_sale_price) values (	'2022-01-11',	5,	14,	6,	4,	'62.56');
insert into purchases (date, employee_id, customer_id, product_id, quantity, total_sale_price) values (	'2022-06-07',	3,	39,	18,	2,	'35.5');
SELECT * FROM purchases;

-- STEP 3: CREATE TRIGGERS
CREATE TRIGGER purchase_price
BEFORE INSERT ON purchases
FOR EACH ROW
SET NEW.total_sale_price :=
	(SELECT NEW.quantity * products.price
    FROM products
    WHERE products.product_id = NEW.product_id);

CREATE TRIGGER purchase_update_inventory
AFTER INSERT ON purchases
FOR EACH ROW
	UPDATE products
		SET inventory = inventory-1
		WHERE product_id = NEW.product_id;

-- Test Triggers
insert into purchases (date, employee_id, customer_id, product_id, quantity) values ('2022-01-31',	3,	15,	18,	2);
insert into purchases (date, employee_id, customer_id, product_id, quantity) values ('2022-02-05',	7,	29,	5,	2);
insert into purchases (date, employee_id, customer_id, product_id, quantity) values ('2023-03-03',	1,	27,	6,	3);
insert into purchases (date, employee_id, customer_id, product_id, quantity) values ('2022-03-24',	2,	38,	20,	5);

