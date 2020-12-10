-- Creer table commander_articles


DELIMITER |
DROP TRIGGER IF  EXISTs after_products_update |  -- Supprimer le trigger si il existe déjà
CREATE   TRIGGER  after_products_update          --crée le trigger after_products_update
AFTER UPDATE                                      --Après modification 
ON products                                       -- indique la table  ou sera effectuer l'opération update et provoque l'éxécution du trigger
FOR EACH ROW                                       -- Instruction obligatoire qui signifie "pour chaque ligne"
BEGIN                                               -- Bloc d'instructions SQL propres au déclencheur
if new.pro_stock < old.pro_stock_alert
THEN

    insert into commander_articles (codart, qte, date) values (old.pro_id,new.pro_stock ,now());
    END IF;
if new.pro_stock > old.pro_stock_alert  
THEN
        DELETE FROM commander_articles WHERE new.pro_stock > old.pro_stock_alert ;
     END if;   
END |
Delimiter ;


-- tester 
UPDATE  products SET pro_stock = 3  WHERE pro_id = 8