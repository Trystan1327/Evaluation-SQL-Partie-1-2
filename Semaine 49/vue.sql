-- // exo 1 eval 

-- Créez une vue qui affiche le catalogue produits.
 
CREATE VIEW v_products_categories
AS
SELECT pro_id, pro_ref, pro_name, cat_id, cat_name 
FROM products
JOIN categories
ON pro_cat_id = cat_id

-- Afficher la vue du catalogue produit 
SELECT * FROM v_products_categories

