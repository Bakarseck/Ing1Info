-- Connect as the user root
mysql -u root -p

-- Create a database as ipsl2023 name's 
create database ipsl2023 ;

-- Create a user name ipsldirecteur password ipsl2022@ and give them all privileges on all database
grant all privileges on *.* to ipsldirecteur@localhost identified by 'ipsl2022@' ;

-- Create a new user ipslEtudiant as password ipslEtudiant@ and give the all privileges on ipsl2023 only 
grant all privileges on ipsl2023.* to ipsletudiant@localhost identified by 'etudiant' ;

-- Crate a database as ipslSupermarche name's
create database ipslSupermarche ;

-- Connect as the user ipsldirecteur
mysql -u ipsldirecteur -p

-- Create Table Personne in our Supermarche Information System's
create table personne (nom varchar(50), prenom varchar(50), mail varchar(50), telephone varchar(50), age smallint(6), id_personn varchar(10) primary key );

-- Create Table Article in our Supermarche Information System's
create table article (id_article varchar(50) primary key, nom_article varchar(50), prix_article smallint(10), date_prod date, date_exp date, details varchar(50) ) ;

-- Create Table Gerant in our Supermarche Information System's
create table gerant (id_gerant varchar(50) primary key, experience varchar(50), specialite varchar(50), type_de_contrat varchar(50));

-- Create Table  agent-securite in our Supermarche Information System's
create table agent_securite(id_agent_sec varchar(50) primary key, grade varchar(50), experience varchar(50), heures_de_services  ) ;

-- Create Table  Etiquette in our Supermarche Information System's
create table  etiquette (id_Etiquette varchar(50) primary key, nature_Etiquette varchar(50));


-- Create Table  Casier in our Supermarche Information System's
create table  casier (id_Casier varchar(50) primary key, dimension varchar(50), position varchar(50), capacite decimal(50));

-- Create Table Fournisseur in our Supermarche Information System's
create table  fournisseur (id_Fournisseur varchar(50) primary key, linea varchar(50), agrement varchar(50), registre_de_commerce varchar(50));


-- Create Table  Client in our Supermarche Information System's
create table  client (id_Client varchar(50) primary key);

-- Create Table Rayonniste  Cas in our Supermarche Information System's
create table  rayonniste (id_rayonniste varchar(50) primary key, experience varchar(50));

-- Create Table Local  in our Supermarche Information System's
create table local  (id_local varchar(50) primary key, nom_local varchar(50), superficie_local decimal(50));

-- Create Table  Rayon in our Supermarche Information System's
create table  rayon (id_rayon varchar(50) primary key, emplacement varchar(50), longueur decimal(50), nombre_de_casier int(100), le_type varchar(50));

-- Create Table  Caisse in our Supermarche Information System's
create table caisse   (id_caisse varchar(50) primary key);

-- Create Table Adresse  in our Supermarche Information System's
create table adresse  (id_adresse varchar(50) primary key, region  varchar(50), ville varchar(50), code_postal varchar(50), residence varchar(50));

-- Create Table Livreur in our Supermarche Information System's
create table livreur  (id_livreur varchar(50) primary key, nature_permis varchar(50), moyen_de_transport varchar(50));

-- Create Table Facture in our Supermarche Information System's
create table facture (id_facture varchar(50) primary key, date_facture date, montant decimal(10,2));

-- Create Table Avoirs in our Supermarche Information System's
create table avoirs (id_avoirs varchar(50) primary key, montant decimal(10,2),date_avoirs date, duree_de_validite time);

-- Create Table Commande in our Supermarche Information System's
create table commande (id_commande varchar(50) primary key);

-- Create Table Categories in our Supermarche Information System's
create table categories (id_categorie varchar(50) primary key);

                                -- Modify the tables by adding a foreign key

-- Add id_adresse in table personne after id_personn
alter table personne add id_adresse varchar(50) not null after id_personn ;

-- Make id_adress as foreign key
alter table personne add constraint fk_adress foreign key(id_adresse) references adresse(id_adresse) ;