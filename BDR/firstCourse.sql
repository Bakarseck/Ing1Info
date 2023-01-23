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
    id_personne varchar(50) primary key ,
    nom varchar(50),
    prenom varchar(50),
    mail varchar(50),
    telephone varchar(50),
    age smallint(6),
    id_personn varchar(10));

-- Create Table Article in our Supermarche Information System's
create table article (
    id_article varchar(50) primary key,
    nom_article varchar(50),
    prix_article smallint(10),
    date_prod date,
    date_exp date, 
    details varchar(50) ) ;

-- Create Table Gerant in our Supermarche Information System's
create table gerant(
    id_gerant varchar(50) primary key,
    experience varchar(50),
    specialite varchar(50),
    type_de_contrat varchar(50));

-- Create Table  agent-securite in our Supermarche Information System's
create table agent_securite(
    id_agent_sec varchar(50) primary key,
    grade varchar(50),
    experience varchar(50),
    heures_de_services time );

-- Create Table  Etiquette in our Supermarche Information System's
create table  etiquette (
    id_Etiquette varchar(50) primary key,
    nature_Etiquette varchar(50));

-- Create Table  Casier in our Supermarche Information System's
create table  casier (
    id_Casier varchar(50) primary key,
    dimension varchar(50),
    position varchar(50),
    capacite decimal(50));

-- Create Fournisseur  Casier in our Supermarche Information System's
create table  fournisseur (
    id_Fournisseur varchar(50) primary key,
    linea varchar(50),
    agrement varchar(50),
    registre_de_commerce varchar(50));

-- Create Table  Client in our Supermarche Information System's
create table  client (
    id_Client varchar(50) primary key);

-- Create Table Rayonniste  Cas in our Supermarche Information System's
create table  royonniste (
    id_royonniste varchar(50) primary key,
    experience varchar(50));

-- Create Table Local  in our Supermarche Information System's
create table local  (id_local varchar(50) primary key,
    nom_local varchar(50),
    superficie_local decimal(50));

-- Create Table  Rayon in our Supermarche Information System's
create table  rayon (
    id_rayon varchar(50) primary key,
    emplacement varchar(50),
    longueur decimal(50),
    nombre_de_casier int(100),
    le_type varchar(50));

-- Create Table  Caisse in our Supermarche Information System's
create table caisse   (
    id_caisse varchar(50) primary key);

-- Create Table Adresse  in our Supermarche Information System's
create table adresse  (
    id_adresse varchar(50) primary key,
    region  varchar(50),
    ville varchar(50),
    code_postal varchar(50),
    residence varchar(50));

-- Create Table Livreur in our Supermarche Information System's
create table livreur  (
    id_livreur varchar(50) primary key,
    nature_permis varchar(50),
    moyen_de_transport varchar(50));

-- Create Table Facture in our Supermarche Information System's
create table facture (
    id_facture varchar(50) primary key,
    date_facture date,
    montant decimal(10,2));

-- Create Table Avoirs in our Supermarche Information System's
create table avoirs (
    id_avoirs varchar(50) primary key,
    montant decimal(10,2),
    date_avoirs date,
    duree_de_validite time);

-- Create Table Commande in our Supermarche Information System's
create table commande (
    id_commande varchar(50) primary key);

-- Create Table Categories in our Supermarche Information System's
create table categories (
    id_categorie varchar(50) primary key);

-- Create Table Technicien de surface in our Supermarche Information System's
create table Tech_surface (
    id_tech_surface varchar(50) primary key,
    nb_heures_services time);

-- Create Table Caissier in our Supermarche Information System's
create table Caissier (
    id_caissier varchar(50) primary key,
    experience varchar(50));

-- Create Table Type_client in our Supermarche Information System's
create table Type_client (
    id_type_cleint varchar(50) primary key,
    type_client varchar(50));

-------------------------------INSERTION DES CLE ETRANGERES-----------------------------

--Ajouter un attribut (cle etrangere) dans une table
alter table article add id_casier varchar(50) not null after id_article;

--Definir l'attribut etrangere comme cle etrangere
alter table article add constraint FK_id_caisier foreign key(id_casier) references casier(id_casier);

--Ajouter un attribut (cle etrangere) dans une table
alter table commande add id_client varchar(50) not null after id_commande;

--Definir l'attribut etrangere comme cle etrangere
alter table commande add constraint FK_id_client foreign key (id_client) references client(id_client);

--Ajouter un attribut (cle etrangere) dans une table
alter table commande add id_liveur varchar(50) not null after id_commande;

--Definir l'attribut etrangere comme cle etrangere
alter table commande add constraint FK_id_livreur foreign key (id_livreur) references livreur(id_livreur);

--Ajouter un attribut (cle etrangere) dans une table
alter table categories add id_article varchar(50) NOT NULL after id_categorie;

--Definir l'attribut etrangere comme cle etrangere
alter table categories add constraint FK_id_article foreign key(id_article) references article(id_article);

--Ajouter un attribut (cle etrangere) dans une table
alter table rayon add id_rayonniste varchar(50);

--Definir l'attribut etrangere comme cle etrangere
alter table rayon add constraint FK_id_rayonniste foreign key(id_rayonniste) references rayonniste(id_rayonniste);

--Ajouter un attribut (cle etrangere) dans une table
alter table rayon add id_local varchar(50);

--Definir l'attribut etrangere comme cle etrangere
alter table rayon add constraint FK_id_local foreign key(id_local) references local(id_local);

--Ajouter un attribut (cle etrangere) dans une table
alter table agent_securite add id_local varchar(50) after id_agent_sec;

--Definir l'attribut etrangere comme cle etrangere
alter table agent_securite add constraint FK_id_local foreign key(id_local) references local(id_local);

--Ajouter un attribut (cle etrangere) dans une table
alter table tech_surface add id_local varchar(50) after id_tech_surface;

--Definir l'attribut etrangere comme cle etrangere
alter table tech_surface add constraint FK_id_local_of_tech_surf foreign key(id_local) references local(id_local);

--Ajouter un attribut (cle etrangere) dans une table
alter table gerant add id_local varchar(50) not null after id_gerant;

--Definir l'attribut etrangere comme cle etrangere
alter table gerant add constraint FK_id_local_of_gerant foreign key(id_local) references local(id_local);

--Ajouter un attribut (cle etrangere) dans une table
alter table caisse add id_local varchar(50) not null after id_caisse;

--Definir l'attribut etrangere comme cle etrangere
alter table caisse add constraint FK_id_local_of_caisse foreign key(id_local) references local(id_local);

--Ajouter un attribut (cle etrangere) dans une table
alter table caissier add id_caisse varchar(50) not null after id_caissier;

--Definir l'attribut etrangere comme cle etrangere
alter table caissier add constraint FK_id_caisse_of_caissier foreign key(id_caisse) references caisse(id_caisse);

--Ajouter un attribut (cle etrangere) dans une table
alter table type_client add id_client varchar(50) not null after id_type_client;

--Definir l'attribut etrangere comme cle etrangere
alter table type_client add constraint FK_id_client_of_type_client foreign key(id_client) references client(id_client);

-----------------------------CHANGER LES NOM DES ENTITE ET  DES ATTRIBUTS-------------------------------

--pour changer le nom de l'attribut
 alter table personne change prenom prenom_pers varchar(50);

 --renommer le nom de la table
 alter table nom_de_la_table rename nom_de_table