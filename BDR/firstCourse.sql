-- connect as root 
-- mysql -u root -p

-- create a user ipsldirecteur and grant all privileges in all database
-- grant all privileges on *.* to ipsldirecteur@localhost identified by 'ipsl2022@' ;

-- create a user ipsletudiant and grant all privileges database name's ipsletudiant 
-- grant all privileges on *.* to ipsldirecteur@localhost identified by 'ipsl2022@' ;

-----------------------------INSERTION DES DONNEES-------------------------------
---------------------------------------------------------------------------------------
-- table adresse
---------------------------------------------------------------------------------------

INSERT INTO `adresse` (`id_adresse`, `region`, `ville`, `code_postal`, `residence`) VALUES 
    (NULL, 'Dakar', 'Pikine', '17000', 'SIPERES 5'),
    (NULL, 'Dakar', 'Guediawaye', '10200', 'Cite Sofraco'),
    (NULL, 'Saint-Louis', 'Saint-Louis', '32000', 'UGB'),
    (NULL, 'Diourbel', 'Diourbel', '22300', 'RESIDENCE CHEIKHOUL KHADIM'),
    (NULL, 'Thies', 'thies', '21000', 'CITE SENGHOR'),
    (NULL, 'Dakar', 'Rufisque', '20000', 'CITE AL AZHAR '), 
    (NULL, 'Dakar', 'BARGNY', '20100', 'CITE EST 1'),
    (NULL, 'Diourbel', 'Touba', '22300', 'DAROU MINAME 1'),
    (NULL, 'Dakar', 'Dakar', '20000', 'CITE Sicaps'), 
    (NULL, 'Dakar', 'Dakar', '11500', 'CITE MILLIONNAIRE'), 
    (NULL, 'Dakar', 'RUFISQUE', '20000', 'CITE SAGESSE'), 
    (NULL, 'SAINT-LOUIS', 'DAGANA', '32800', 'KEUR MBAYE'), 
    (NULL, 'THIES', 'JOAL', '23015', 'VELINGARA'), 
    (NULL, 'THIES', 'TIVAOUANE', '30000', 'KEUR BACAR'), 
    (NULL, 'LOUGA', 'KEBEMER', '30800', 'WAKHAL DIAM'),
    (NULL, 'RUFISQUE', 'RUFISQUE CITES', '20000', 'CITE SOCOCIM'), 
    (NULL, 'Dakar', 'PARCELLES ASSAINIES-HLM ', '14000', 'UNITE 23'), 
    (NULL, 'SAINT-LOUIS', 'RICHARD TOLL', '32600', 'MEDINA CHERIF'),
    (NULL, 'DIOURBEL', 'DIOURBEL', '22100', 'MBACKE'), 
    (NULL, 'Dakar', 'BEL AIR - MARINAS', '10000', 'VILLA HIBISCUS') ;

---------------------------------------------------------------------------------------
--Table personne
---------------------------------------------------------------------------------------

INSERT INTO `personne` (`id_personne`, `id_adresse`, `nom_pers`, `prenom_pers`, `mail`, `telephone`, `age`, `sexe`)
 VALUES 
(NULL, '2', 'Koulibaly', ' Kalidou ', ' Kalidou@gmail.com', '77 555 66 99', '31', 'M'),
(NULL, '16', 'Dieng ', 'Pape Abdoulaye ', 'Dieng@gmail.com', '785426589', '28', 'M'), 
(NULL, '17', 'Faty', 'Alioune Badara ', 'Faty@gmail.com', '754625982', '23', 'M'),
(NULL, '16', 'Sy', 'Pape Mamadou ', 'Sy@gmail.com', '785214596', '25', 'M'),
(NULL, '14', 'Diédhiou', 'Abdoulaye ', 'Diédhiou@gmail.com', '745895623', '22', 'M'), 
(NULL, '15', 'Diouf', 'Ousmane ', 'Diouf@gmail.com', '795652548', '28', 'M'),
(NULL, '16', 'Sané', 'Mamadou ', 'Sané@gmail.com', '759862548', '18', 'M'),
(NULL, '19', 'Sidibé', 'Cheikh Tidiane ', 'Sidibé@gmail.com', '759652458', '23', 'M'),
(NULL, '12', 'Wagué', 'Moussa ', 'Wagué@gmail.com', '785469525', '24', 'M'),
(NULL, '4', 'Cissé', 'Pape Abou ', 'Cissé@gmail.com', '785469256', '27', 'M'), 
(NULL, '12', 'Diatta', 'Krépin', 'Diatta@gmail.com', '785423652', '23', 'M'), 
(NULL, '16', 'Sarr', 'Ismaïla', 'Sarr@gmail.com', '759826521', '24', 'M'),
(NULL, '8', 'Kouyaté', 'Cheikhou ', 'Kouyaté@gmail.com', '785426933', '32', 'M'),
(NULL, '5', 'Mendy', 'Nampalys', 'Mendy@gmail.com', '785426963', '30', 'M'), 
(NULL, '14', 'Ndiaye', 'Iliman', 'Ndiaye@gmail.com', '758265748', '22', 'M'), 
(NULL, '4', 'Diédhiou', 'Famara ', 'Diédhiou@gmail.com', '785462953', '29', 'M'), 
(NULL, '17', 'Dia', 'Boulaye ', 'Dia@gmail.com', '756542325', '25', 'M'), 
(NULL, '3', 'Dieng', 'Bamba ', 'Dieng@gmail.com', '785462369', '22', 'M'),
(NULL, '8', 'Mané', 'Sadio ', 'Mané@gmail.com', '756524859', '30', 'M'),
(NULL, '12', 'Cissé', ' Aliou ', 'Cissé@gmail.com', '755213525', '46', 'M'),
(NULL, '17', 'Diallo', 'Babacar', 'Diallo@gmail.com', '754284510', '12', 'M'),
(NULL, '5', 'Diop', 'Moussa', 'Diop@gmail.com', '752184510', '19', 'M'),
(NULL, '11', 'Ndiaye', 'Oumy', 'Ndiaye@gmail.com', '754284510', '12', 'F'),
(NULL, '12', 'Diarra', 'Abdou', 'Diarra@gmail.com', '754212150', '9', 'M'),
(NULL, '2', 'Mboup', 'Tala', 'Mboup@gmail.com', '754953510', '13', 'F'),
(NULL, '9', 'Mane', 'Mor', 'Mane@gmail.com', '754598510', '15', 'M'),
(NULL, '18', 'Traore', 'Astou', 'Astou@gmail.com', '785462585', '32', 'F'), 
(NULL, '5', 'Marie', 'Anne', 'Anne@gmail.com', '754256523', '18', 'F'), 
(NULL, '5', 'Sène', 'Ndèye ', 'Ndèye@gmail.com', '742159865', '24', 'F'), 
(NULL, '9', 'Sarr', 'Oumoul Khairy ', 'Sarr@gmail.com', '754216985', '30', 'F'),
(NULL, '19', 'Ba', 'Mya ', 'ba@gmail.com', '754282210', '28', 'F'),
(NULL, '18', 'Traoré', 'Aya ', 'Aya@gmail.com', '754262210', '28', 'F'),
(NULL, '4', 'Adja', 'Seck', 'Adja@gmail.com', '754213699', '29', 'F'), 
(NULL, '16', 'Dieng', 'Fatou ', 'Fatou@gmail.com', '754623524', '32', 'F'), 
(NULL, '10', 'Diouf', 'Mame Diodio ', 'Diouf@gmail.com', '754126598', '32', 'F'),
(NULL, '17', 'Fall', 'Aminata ', 'Fall@gmail.com', '785421685', '32', 'F'), 
(NULL, '14', 'Daou', 'Ramata ', 'Daou@gmail.com', '754213698', '30', 'F'), 
(NULL, '13', 'Sidibe', 'Aicha ', 'Sidibe@gmail.com', '795321545', '31', 'F'), 
(NULL, '18', 'Thiam', 'Oumoul ', 'Thiam@gmail.com', '754621358', '34', 'F'), 
(NULL, '12', 'Diouf', 'Bineta ', 'Diouf@gmail.com', '754213698', '32', 'F'),
(NULL, '11', 'Diatta', 'Salimata ', 'Diatta@gmail.com', '762135468', '25', 'F'),
(NULL, '15', 'Diagne', 'Nafissatou ', 'Diagne@gmail.com', '745213598', '22', 'F');

---------------------------------------------------------------------------------------
--Table Local
---------------------------------------------------------------------------------------
INSERT INTO `local` (`id_local`, `id_adresse`, `nom_local`, `superficie_local`) 
VALUES (NULL, '16', 'Local Rufisque', '100'), 
(NULL, '3', 'Local Saint-Louis', '151'), 
(NULL, '5', 'Local  Thies', '140'), 
(NULL, '15', 'Local Louga', '120'), 
(NULL, '8', 'Local Diourbel', '130');

---------------------------------------------------------------------------------------
--Table Gerant
---------------------------------------------------------------------------------------
INSERT INTO `gerant` (`id_gerant`, `id_personne`, `id_local`, `experience`, `specialite`, `type_de_contrat`)
 VALUES 
 (NULL, '19', '1', '4 années d\'expérience', 'Marketing', 'CDI'), (NULL, '12', '2', '2 années d\'expérience', 'Ressources humaines', 'CDI'), 
 (NULL, '1', '3', '1 ans d\'expérience', 'Finance', 'CDD'), (NULL, '18', '4', '1 ans d\'expérience', 'Commerce', 'CDD'), 
 (NULL, '39', '5', '3 ans d\'expérience', 'Marketing digital', 'CDI');     '
---------------------------------------------------------------------------------------
--Table Agent securite
---------------------------------------------------------------------------------------
INSERT INTO `agent_securite` (`id_agent_sec`, `id_personne`, `id_local`, `grade`, `experience`, `heures_de_services`) 
VALUES
(NULL, '31', '1', 'Surveillance', '2 ans ', '5:00:00'),
(NULL, '17', '2', 'Surveillance', '3 années d\'expérience', '04:00:00'),
(NULL, '36', '3', 'Surveillance', '1 ans d\'expérience', '6:00:00'),
(NULL, '13', '4', 'Surveillance', '2 ans d\'expérience', '07:00:00'),
(NULL, '14', '5', 'Surveillance', '3 ans d\'expérience', '04:00:00');

---------------------------------------------------------------------------------------
--Table Technicien de surface
---------------------------------------------------------------------------------------
INSERT INTO `tech_surface` (`id_tech_surface`, `id_personne`, `id_local`, `nb_heures_services`) 
VALUES 
(NULL, '28', '1', '02:00:00'), 
(NULL, '29', '1', '02:00:00'), 
(NULL, '30', '2', '03:00:00'), 
(NULL, '31', '2', '03:00:00'), 
(NULL, '32', '3', '02:00:00'), 
(NULL, '33', '3', '02:00:00'), 
(NULL, '34', '4', '01:30:00'), 
(NULL, '35', '4', '01:30:00'), 
(NULL, '36', '5', '02:30:00'), 
(NULL, '23', '5', '02:30:00');
---------------------------------------------------------------------------------------
--Table rayonniste
---------------------------------------------------------------------------------------
INSERT INTO rayonniste (`id_personne`, `experience`) 
VALUES 
('23', '1 années d\'expérience'),
('20', '3 années d\'expérience'),
('30', '2 années d\'expérience'),
('11', '5 années d\'expérience'),
( 33', '0 année d\'expérience');

INSERT INTO rayonniste (`id_personne`, `experience`) 
VALUES
( 44 , '5 années d\'expérience') ;


/*
-------------------------------------------------------------------------------------
Table
-------------------------------------------------------------------------------------
------||||||||||||||||||||||||||||||--------||||||||||||||||||||||||||||||-----------
--La syntaxe pour supprimer des lignes est la suivante :
DELETE FROM table
WHERE condition
--Par défaut, lauto-increment débute à la valeur “1” 
--et sincrémentera de un pour chaque nouvel enregistrement. 
--Il est possible de modifier la valeur initiale avec la requête SQL suivante :
ALTER TABLE `nom_de__la_table` AUTO_INCREMENT=(v_initial);
-----------------------------CODE POUR AJOUTER LES CONTRAINTES-------------------------------
--Contraintes de valuation obligatoire
ALTER TABLE maTable
ALTER COLUMN maColonne memeType NOT NULL
--Contraintes de clé primaire
ALTER TABLE maTable
ADD CONSTRAINT PK_maTable
  PRIMARY KEY (colonnesConstituantLaCléPrimaire)
--Contraintes de clé étrangère
ALTER TABLE maTable
ADD CONSTRAINT FK_maTable_colonneDeCleEtrangere
  FOREIGN KEY(colonneDeCleEtrangere)
  REFERENCES tableContenantLaClePrimaireAReferencer(colonneDeClePrimaire)
--Contraintes d_unicité
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
--supprimer une cle etrangere
 ALTER TABLE personne DROP constraint FK_id_adresse_of_personne;
 alter table personne Drop id_adresse;
 ------||||||||||||||||||||||||||||||--------||||||||||||||||||||||||||||||-----------
*/

INSERT INTO `personne` (`id_personne`, `id_adresse`, `nom_pers`, `prenom_pers`, `mail`, `telephone`, `age`, `sexe`)
 VALUES 
(NULL, '2', 'Dia', 'Fatou', ' Fatou@gmail.com', '77 556 66 99', '20', 'F') ;

INSERT INTO `adresse` (`id_adresse`, `region`, `ville`, `code_postal`, `residence`) VALUES 
    (NULL, 'matam', 'Yorofoula', '19000', 'SIPERES 6'),

INSERT INTO `personne` (`id_personne`, `id_adresse`, `nom_pers`, `prenom_pers`, `mail`, `telephone`, `age`, `sexe`)
 VALUES 
(NULL, '21', 'Diallo', 'Souleymane', 'souleymane@gmail.com', '776756765', '23', 'M') ;

create table articleCommande(
  id_commande int ,
  id_article int,
  primary key(id_commande, id_article)
) ;

select concat(Trim(prenom_pers), ' ', nom_pers) as NomComplet, coalesce(, 'Il n''est pas rayonniste') as Rayonniste,
case 
  when sexe="F" and age > 18 then "Il peut etre agent"
  when sexe="M" and age > 20 then "Il peut etre agent"
  else "Il ne peut être agent"
end as Traitement
from personne
left join rayonniste
on rayonniste.id_personne = personne.id_personne ;