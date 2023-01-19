-- Connect as the user root
mysql -u root -p

-- Create a database as ipsl2023 name's 
create database ipsl2023 ;

-- Create a user name ipsldirecteur password ipsldirecteur@ and give them all privileges on all database
grant all privileges on *.* to ipsldirecteur@localhost identified by 'ipsl2022@' ;

-- Create a new user ipslEtudiant as password ipsletudiant@ and give the all privileges on ipsl2023 only 
grant all privileges on ipsl2023.* to ipsldirecteur@localhost identified by 'ipsl2022@' ;

-- Crate a database as ipslSupermarche name's
create database ipslSupermarche ;
