create database if not exists oto;
-- ******************
--   Table Employe  
-- ******************
create table employe(
    id_employe int primary key,
    nom varchar(50),
    prenom varchar(50)
);
-- ******************
--   Table Client   
-- ******************
create table client(
    id_client int primary key,
    type varchar(30),
    nom varchar(30),
    prenom varchar(30),
    adresse varchar(100),
    ville varchar(50),
    codePostal int(50)
);
-- ******************
--   Table Commande 
-- ******************
create table commande(
    num_commande int primary key,
    id_client int,
    id_employe int,
    date_commande datetime,
    foreign key (id_client)References client (id_client),
    foreign key(id_employe)references employe(id_employe)
);
-- ******************
--   Table Service 
-- ******************
create table service(
    id_service int primary key,
    nom varchar(50),
    prix decimal(6.2)
);
-- ******************
--   Table Marque
-- ******************
create table marque(
    id_marque int primary key,
    nom varchar(50)
);
-- ******************
--   Table Model
-- ******************
create table model(
    id_model int primary key,
    id_marque int,
    nom varchar(50),
    carburant varchar(30),
    puis_fiscale int,
    categorie varchar(50),
    foreign key(id_marque) references marque(id_marque)
);
-- ******************
--   Table Vehicule
-- ******************
create table vehicule(
    id_vehicule int primary key,
    id_model int,
    nbre_porte int,
    couleur varchar(30),
    neuf varchar(30),
    occassion varchar(30),
    année int,
    foreign key(id_model)references model(id_model)
);
-- ********************
--   Ligne de commande
-- ********************
create table Ligne_de_commande(
    id_ligne_commande int primary key,
    id_vehicule int ,
    num_commande int,
    id_service int,
    achat_comptant varchar(30),
    achat_credit varchar(30),
    quantité int,
    prixHT int,
    tauxTva int,
    Date_livraison datetime,
    foreign key(id_vehicule)references service(id_vehicule),
    foreign key (num_commande)references commande(num_commande),
    foreign key(id_service)references service(id_service)
);