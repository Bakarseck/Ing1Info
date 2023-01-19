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
create table personne (nom varchar(50), prenom varchar(50), mail varchar(50), telephone varchar(50), age smallint(6), id_personn varchar(10) );

-- Create Table Article in our Supermarche Information System's
create table article (id_article varchar(50) primary key, nom_article varchar(50), prix_article smallint(10), date_prod date, date_exp date, details varchar(50) ) ;

-- Create Table Gerant in our Supermarche Information System's
create table gerant (id_gerant varchar(50) primary key, experience varchar(50), specialite varchar(50), type_de_contrat varchar(50));

-- Create Table  agent-securite in our Supermarche Information System's
create table agent_securite(id_agent_sec varchar(50) primary key, grade varchar(50), experience varchar(50), heures_de_services  ) ;

-- Create all tables of the our Supermarche System in ipslSupermarche
create table 
