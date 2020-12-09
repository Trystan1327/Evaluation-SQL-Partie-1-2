
-- Q1 
SELECT CONCAT(emp_lastname,' ', emp_firstname) AS 'nom et prenom du salarié', emp_children AS ' Nombre d''enfant'
FROM employees 
where emp_children >0 
ORDER by emp_children desc, emp_lastname asc
LIMIT 4

-- Q2
select cus_lastname, cus_firstname, cus_countries_id
from customers
where cus_countries_id != 'FR'

-- Q3
select cus_city, cus_countries_id,cou_name
from customers 
join countries 
on cus_countries_id= cou_id
order by cus_city
asc limit 5

-- Q4
SELECT cus_lastname, cus_update_date
from customers
where cus_update_date != 'NULL'

-- Q5
SELECT concat('Client ',cus_id,',',' ',cus_lastname,' ',cus_firstname,' ','qui habite à',' ',cus_city)
 from customers 
 WHERE cus_city 
 like '%divos%'

-- Q6
SELECT concat('pro_id = ',pro_id,',',' ','pro_name = ',pro_name,',',' ','pro_price = ',' ',pro_price)
from products
where pro_id = 42

-- Q7
select distinct pro_id, pro_ref, pro_name
from products 
join orders_details 
on pro_id != ode_pro_id 
where pro_id between 34 and 42

-- Q8
select pro_id, pro_ref, pro_name, cus_id, ord_id,ode_pro_id
from products 
join orders_details 
on ode_pro_id = pro_id 
join orders on ord_id=ode_ord_id 
join customers on ord_cus_id = cus_id
where cus_lastname = 'Pikatchien'

-- Q9
SELECT cat_id,cat_name,pro_name 
from categories 
join products on pro_cat_id = cat_id
order by cat_name ASC , pro_name ASC

-- Q10   A Mettre à jour !!
SELECT CONCAT(emp_lastname, ' ',emp_firstname) AS 'Employé'
from employees
join shops
On emp_sho_id = sho_id
where sho_id = 3
order by Employé ASC

SELECT COUNT(CONCAT(emp_lastname,' ',emp_firstname))AS
'Supérieur'
from employees
join shops
on emp_sho_id = sho_id
join posts
On emp_pos_id = pos_id

Where emp_pos_id IN('1','2','4','11','17') and sho_id IN('3')


-- //** Broullion **
-- SELECT count(concat(emp_lastname,' ',emp_firstname))as 'Supérieur'
-- from employees
-- WHERE emp_lastname = 'Dumas' or emp_lastname = 'Drake' or emp_lastname = 'Dressamere' or emp_lastname = 'Cooper'or emp_lastname = 'Ferris' or emp_lastname = 'Rigel'
-- or emp_lastname = 'Dorian'

-- Q11
select max(concat('La remise est', ' ', ode_discount,' ', 'Il s''agit du produit',' ',ode_pro_id,',','commande', ode_ord_id,',','ligne de commande',ode_id))
from products
join orders_details
on ode_pro_id = pro_id
where max(ode_discount)

select max(concat('La remise est', ' ', ode_discount, 'Il s''agit du produit',' ',ode_pro_id,',','commande', ode_ord_id,',','ligne de commande',ode_id))
from orders_details


-- Q13 
select concat(count(cus_countries_id),' ', 'clients') 
from customers
 where cus_countries_id = 'CA'

--  Q16
select ode_id, ode_unit_price, ode_discount,ode_quantity,ode_ord_id,ode_pro_id,ord_order_date
from orders_details
join orders
on ord_id = ode_ord_id
where ord_order_date like '%2020%'

-- Q17


-- Q18
SELECT concat(sum(ode_unit_price - ode_discount)*ode_quantity,' ', 'Euros')
from orders_details
join orders
on ord_id = ode_ord_id
where ord_order_date like '%2020%'

--  Q19 



-- Q20
Select ode_id, ord_order_date, ode_unit_price * ode_quantity AS 'TOTAL', cus_lastname
from orders_details
join orders
on ode_ord_id = ord_id
join customers
on cus_id = ord_cus_id

-- Q22 
select concat('=>produit', ' ', pro_id,',',' ','prix d''origine =', pro_price,'Euros',',',' ' , 'le prix après réduction doit être de' ,pro_price*10/100)
from products
where pro_id = 12 