CREATE ROLE'r_gescomafpa_marketing'

GRANT INSERT, DELETE, UPDATE
ON r_gescomafpa_products AND r_gescomafpa_categories
TO 'r_gescomafpa_marketing'@'localhost'

GRANT SELECT
ON r_gescomafpa_order AND r_gescomafpa_order_details AND r_gescomafpa_customers
TO TO 'r_gescomafpa_marketing'@'localhost'