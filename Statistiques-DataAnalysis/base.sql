-- Connect as the user root
mysql -u root -p

-- Create a user current 
grant all privileges on *.* to current@localhost identified by '';

-- Connect the user current
mysql -u current -p

-- create a database named statistics 
create database statistics ;

-- use this database
use statistics ;

-- create a table statistics 
create table statistics(id_stat int primary key auto_increment, 
age varchar(50), revenu varchar(50),
etudiant varchar(50),
credit varchar(50), achat varchar(50));

-- show the tables in my database to verify
show tables ;

-- describe the table statistics
desc statistics ;


-- insert the data 
insert into statistics(age, revenu, etudiant, credit, achat) values ("Inférieur ou égale à 30 ans", "Elevé", "Non", "Bon","Non");

insert into statistics(age, revenu, etudiant, credit, achat) values ("Inférieur ou égale à 30 ans", "Elevé", "Non", "Excellent","Non");

insert into statistics(age, revenu, etudiant, credit, achat) values ("Inférieur ou égale à 30 ans", "Moyen", "Non", "Bon","Non");

insert into statistics(age, revenu, etudiant, credit, achat) values ("Plus de 40 ans", "Moyen", "Non", "Excellent","Non");

insert into statistics(age, revenu, etudiant, credit, achat) values ("Plus de 40 ans", "Faible", "Oui", "Excellent","Non");

insert into statistics(age, revenu, etudiant, credit, achat) values ("Plus de 40 ans", "Moyen", "Non", "Bon","Oui");

insert into statistics(age, revenu, etudiant, credit, achat) values ("Entre 31 et 40 ans", "Elevé", "Non", "Bon","Oui");

insert into statistics(age, revenu, etudiant, credit, achat) values ("Entre 31 et 40 ans", "Moyen", "Non", "Excellent","Oui");

insert into statistics(age, revenu, etudiant, credit, achat) values ("Inférieur ou égale à 30 ans", "Faible", "Oui", "Bon","Oui");

insert into statistics(age, revenu, etudiant, credit, achat) values ("Inférieur ou égale à 30 ans", "Moyen", "Oui", "Excellent","Oui");

insert into statistics(age, revenu, etudiant, credit, achat) values ("Plus de 40 ans", "Faible", "Oui", "Bon","Oui");

insert into statistics(age, revenu, etudiant, credit, achat) values ("Plus de 40 ans", "Moyen", "Oui", "Bon","Oui");

insert into statistics(age, revenu, etudiant, credit, achat) values ("Entre 31 et 40 ans", "Faible", "Oui", "Excellent","Oui");

insert into statistics(age, revenu, etudiant, credit, achat) values ("Entre 31 et 40 ans", "Elevé", "Oui", "Bon","Oui");







-- See all the persons in my database
select * from statistics ;

-- See all the persons that achat is Oui 
select * from statistics where achat like "O%" ;