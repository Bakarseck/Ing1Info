-- Connect as the user root
mysql -u root -p

-- Create a database as ipsl2023 name's 
create database ipsl2023 ;

-- Create a user name ipsldirecteur password ipsl2022@ and give them all privileges on all database
grant all privileges on *.* to ipsldirecteur@localhost identified by 'ipsl2022@' ;

-- Create a new user ipslEtudiant as password ipslEtudiant@ and give the all privileges on ipsl2023 only 
grant all privileges on ipsl2023.* to ipsletudiant@localhost identified by 'etudiant' ;

-- Create a database as ipslSupermarche name's
create database ipslSupermarche ;

-- Connect as the user ipsldirecteur
mysql -u ipsldirecteur -p
---------------------------------CREATION DES TABLES-------------------------------------------

-- Create Table Personne in our Supermarche Information System's
create table personne (
    id_personne int primary key  auto_increment ,
    nom varchar(50),
    prenom varchar(50),
    mail varchar(50),
    telephone varchar(50),
    age smallint(6),
    id_personn varchar(10));

-- Create Table Article in our Supermarche Information System's
create table article (
    id_article int primary key auto_increment,
    nom_article varchar(50),
    prix_article smallint(10),
    date_prod date,
    date_exp date, 
    details varchar(50) ) ;

-- Create Table Gerant in our Supermarche Information System's
create table gerant(
    id_gerant int primary key auto_increment,
    experience varchar(50),
    specialite varchar(50),
    type_de_contrat varchar(50));

-- Create Table  agent-securite in our Supermarche Information System's
create table agent_securite(
    id_agent_sec int primary key auto_increment,
    grade varchar(50),
    experience varchar(50),
    heures_de_services time );

-- Create Table  Etiquette in our Supermarche Information System's
create table  etiquette (
    id_Etiquette int primary key auto_increment,
    nature_Etiquette varchar(50)) ;

-- Create Table  Casier in our Supermarche Information System's
create table  casier (
    id_Casier int primary key auto_increment,
    dimension varchar(50),
    position varchar(50),
    capacite decimal(50));

-- Create Fournisseur  Casier in our Supermarche Information System's
create table  fournisseur (
    id_Fournisseur int primary key auto_increment,
    linea varchar(50),
    agrement varchar(50),
    registre_de_commerce varchar(50));

-- Create Table  Client in our Supermarche Information System's
create table  client (
    id_Client int primary key auto_increment);

-- Create Table Rayonniste  Cas in our Supermarche Information System's
create table  rayonniste (
    id_rayonniste int primary key auto_increment,
    experience varchar(50), 
    tel_rayonniste int);

-- Create Table Local  in our Supermarche Information System's
create table local  (id_local int primary key auto_increment,
    nom_local varchar(50),
    superficie_local decimal(50));

-- Create Table  Rayon in our Supermarche Information System's
create table  rayon (
    id_rayon int primary key auto_increment,
    emplacement varchar(50),
    longueur decimal(50),
    nombre_de_casier int(100),
    le_type varchar(50));

-- Create Table  Caisse in our Supermarche Information System's
create table caisse   (
    id_caisse int primary key auto_increment);

-- Create Table Adresse  in our Supermarche Information System's
create table adresse  (
    id_adresse int primary key auto_increment,
    region  varchar(50),
    ville varchar(50),
    code_postal varchar(50),
    residence varchar(50));

-- Create Table Livreur in our Supermarche Information System's
create table livreur  (
    id_livreur int primary key auto_increment,
    nature_permis varchar(50),
    moyen_de_transport varchar(50));

-- Create Table Facture in our Supermarche Information System's
create table facture (
    id_facture int primary key auto_increment,
    date_facture date,
    montant decimal(10,2));

-- Create Table Avoirs in our Supermarche Information System's
create table avoirs (
    id_avoirs int primary key auto_increment,
    montant decimal(10,2),
    date_avoirs date,
    duree_de_validite time);

-- Create Table Commande in our Supermarche Information System's
create table commande (
    id_commande int primary key auto_increment);

-- Create Table Categories in our Supermarche Information System's
create table categories (
    id_categorie int primary key auto_increment);

-- Create Table Technicien de surface in our Supermarche Information System's
create table Tech_surface (
    id_tech_surface int primary key auto_increment,
    nb_heures_services time);

-- Create Table Caissier in our Supermarche Information System's
create table Caissier (
    id_caissier int primary key auto_increment,
    experience varchar(50));

-- Create Table Type_client in our Supermarche Information System's
create table Type_client (
    id_type_client int primary key auto_increment,
    type_client varchar(50));

-------------------------------INSERTION DES CLE ETRANGERES-----------------------------

--Ajouter un attribut (cle etrangere) dans une table
alter table personne add id_address int not null after id_personne;

--Definir l'attribut etrangere comme cle etrangere
alter table personne add constraint FK_id_address foreign key(id_adresse) references adresse(id_address);

--Ajouter un attribut (cle etrangere) dans une table
alter table article add id_casier int not null after id_article;

--Definir l'attribut etrangere comme cle etrangere
alter table article add constraint FK_id_caisier foreign key(id_casier) references casier(id_casier);

--Ajouter un attribut (cle etrangere) dans une table
alter table commande add id_client int not null after id_commande;

--Definir l'attribut etrangere comme cle etrangere
alter table commande add constraint FK_id_client foreign key (id_client) references client(id_client);

--Ajouter un attribut (cle etrangere) dans une table
alter table commande add id_livreur int not null after id_commande;

--Definir l'attribut etrangere comme cle etrangere
alter table commande add constraint FK_id_livreur foreign key (id_livreur) references livreur(id_livreur);

--Ajouter un attribut (cle etrangere) dans une table
alter table categories add id_article int NOT NULL after id_categorie;

--Definir l'attribut etrangere comme cle etrangere
alter table categories add constraint FK_id_article foreign key(id_article) references article(id_article);

--Ajouter un attribut (cle etrangere) dans une table
alter table rayon add id_rayonniste int;

--Definir l'attribut etrangere comme cle etrangere
alter table rayon add constraint FK_id_rayonniste foreign key(id_rayonniste) references rayonniste(id_rayonniste);

--Ajouter un attribut (cle etrangere) dans une table
alter table rayon add id_local int;

--Definir l'attribut etrangere comme cle etrangere
alter table rayon add constraint FK_id_local foreign key(id_local) references local(id_local);

--Ajouter un attribut (cle etrangere) dans une table
alter table agent_securite add id_local int after id_agent_sec;

--Definir l'attribut etrangere comme cle etrangere
alter table agent_securite add constraint FK_id_local_of_agent foreign key(id_local) references local(id_local);

--Ajouter un attribut (cle etrangere) dans une table
alter table tech_surface add id_local int after id_tech_surface;

--Definir l'attribut etrangere comme cle etrangere
alter table tech_surface add constraint FK_id_local_of_tech_surf foreign key(id_local) references local(id_local);

--Ajouter un attribut (cle etrangere) dans une table
alter table gerant add id_local int not null after id_gerant;

--Definir l'attribut etrangere comme cle etrangere
alter table gerant add constraint FK_id_local_of_gerant foreign key(id_local) references local(id_local);

--Ajouter un attribut (cle etrangere) dans une table
alter table caisse add id_local int not null after id_caisse;

--Definir l'attribut etrangere comme cle etrangere
alter table caisse add constraint FK_id_local_of_caisse foreign key(id_local) references local(id_local);

--Ajouter un attribut (cle etrangere) dans une table
alter table caissier add id_caisse int not null after id_caissier;

--Definir l'attribut etrangere comme cle etrangere
alter table caissier add constraint FK_id_caisse_of_caissier foreign key(id_caisse) references caisse(id_caisse);

--Ajouter un attribut (cle etrangere) dans une table
alter table type_client add id_client int not null after id_type_client;

--Definir l'attribut etrangere comme cle etrangere
alter table type_client add constraint FK_id_client_of_type_client foreign key(id_client) references client(id_client);

-----------------------------CHANGER LES NOM DES ENTITE ET  DES ATTRIBUTS-------------------------------

--pour changer le nom de l'attribut
alter table personne change prenom prenom_pers varchar(50);

 --renommer le nom de la table
alter table nom_de_la_table rename nom_de_table ; 

--pour changer le nom de l'attribut
 alter table personne change prenom prenom_pers varchar(50);

 --renommer le nom de la table
 alter table nom_de_la_table rename nom_de_table


-----------------------------Ajout des contraintes-------------------------------

ALTER TABLE rayonniste
ADD CONSTRAINT chk_tel_rayonniste
CHECK(tel_rayonniste like '+221%' ) ;

-- table article
alter table article
modify nom_article varchar(50) not null;

--table  Avoirs
alter table avoirs 
add constraint CHK_avoirs_montant_avoirs 
check(montant >=0 AND montant <499);

--table personne
alter table personne add constraint UQ_personne_nom_prenom_mail
UNIQUE(nom,prenom,mail);


-----------------------------CODE POUR AJOUTER LES CONTRAINTES-------------------------------

--Contraintes de valuation obligatoire
ALTER TABLE maTable
ALTER COLUMN maColonne memeType NOT NULL ;

--Contraintes de clé primaire
ALTER TABLE maTable
ADD CONSTRAINT PK_maTable
  PRIMARY KEY (colonnesConstituantLaCléPrimaire)

--Contraintes de clé étrangère
ALTER TABLE maTable
ADD CONSTRAINT FK_maTable_colonneDeCleEtrangere
FOREIGN KEY(colonneDeCleEtrangere)
REFERENCES tableContenantLaClePrimaireAReferencer(colonneDeClePrimaire)

--Contraintes d’unicité
ALTER TABLE maTable
ADD CONSTRAINT UQ_maTable_colonnesConstituantLeTupleQuiDoitEtreUnique
UNIQUE (colonnesConstituantLeTupleQuiDoitEtreUnique)

--Contraintes de valeur par défaut :
ALTER TABLE maTable
ADD CONSTRAINT DF_maTable_maColonne
DEFAULT (uneValeur) FOR (maColonne)

--Contraintes de domaine (CHECK)
ALTER TABLE maTable
ADD CONSTRAINT CHK_maTable_maColonne
CHECK(maColonne [formuleDeVerification]);


-----------------------------INSERTION DES DONNEES-------------------------------

--Table personne
insert into personne (id_personne,nom,prenom_pers,mail,telephone,age) values ('jarvis', 'Stark', 'jarvis@gmail.com', '77 777 77 77', '22');