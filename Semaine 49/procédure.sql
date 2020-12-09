
--  Exo 2 evaluation 

--  Créez la procédure facture

DELIMITER |
DROP PROCEDURE IF EXISTS Lst_facture |
Create procedure  Lst_facture() 
begin 
    SELECT concat(' Mme, Mr',' ',cus_lastname, ' ',cus_firstname) As 'Civilité',
    concat(ode_unit_price * ode_quantity) as 'Prix total',
     ord_reception_date as 'date', concat(pro_name)as 'articles'
    from orders_details
    join orders
    on ord_id = ode_ord_id
    join customers
    on ord_cus_id = cus_id
    
   join products
   on pro_id = ode_pro_id;
    
end |

DELIMITER ;

call Lst_facture()