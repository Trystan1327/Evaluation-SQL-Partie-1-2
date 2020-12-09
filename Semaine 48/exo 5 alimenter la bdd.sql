-- **********************
-- Insert Into Categories
-- **********************
insert into categories (cat_id,cat_name,cat_parent_id)
 values(8,'Brouette',Null),(23,'tondeuse',Null);
 -- ********************
-- Insert Into Customers
-- *********************
insert into customers (cus_id, cus_lastname, cus_firstname, cus_address, cus_zipcode, cus_city, cus_countries_id, cus_mail, cus_phone, cus_password, cus_add_date, cus_update_date) VALUES
(23, 'Michael', 'Jeffrey Jordan', '45, rue de Chicago', '60007', 'Chicago', 'US', 'Mj@gmail.com', '0007778877', 'motdepass1', '2020-11-12', '2020-08-14 ');
-- *****************
-- Insert Into Posts
-- ******************
INSERT INTO posts (pos_id, pos_libelle) VALUES
(14, 'Admin');
 -- ********************
-- Insert Into Employees
-- *********************
INSERT INTO employees (emp_id, emp_superior_id, emp_pos_id, emp_lastname, emp_firstname, emp_address, emp_zipcode, emp_city, emp_mail, emp_phone, emp_salary, emp_enter_date, emp_gender, emp_children) VALUES
(6, 6, 14, 'dacascoss', 'Mark', '1 rue de lafpa', '80000', 'Amiens', 'mdacascoss@gmailcom', '0000000000', '2000.00', '2020-11-24', 'M', 7);
 -- *****************
-- Insert Into Orders
-- ******************
INSERT INTO orders (ord_id, ord_order_date, ord_payment_date, ord_ship_date, ord_reception_date, ord_status, ord_cus_id) VALUES
(8, '2020-12-01', '2020-12-09', '2020-12-30', '2020-08-14', '', 23);

 -- ********************
-- Insert Into Suppliers
-- *********************
INSERT INTO suppliers (sup_id, sup_name, sup_city, sup_countries_id, sup_address, sup_zipcode, sup_contact, sup_phone, sup_mail) VALUES
(4, 'la main verte', 'Amiens', 'FR', '20 rue de lafpa', '80000', 'John travolta', '8888888888', 'allo@laverdure.com');