select region
    from adresse, personne
    where adresse.id_adresse = personne.id_adresse ;
        join client 


select concat(Trim(prenom_pers), ' ', nom_pers) as NomComplet, coalesce(id_rayonniste, 'Il n''est pas rayonniste') as Rayonniste,
case 
  when sexe="F" and age > 18 then "Il peut etre agent"
  when sexe="M" and age > 20 then "Il peut etre agent"
  else "Il ne peut être agent"
end as Traitement
from personne
left join rayonniste
on rayonniste.id_personne = personne.id_personne ;

select nom_pers, prenom_pers
    from personne, client, facture, commande
    where personne.id_personne = client.id_personne 
    and client.id_client = commande.id_client 
    and commande.id_facture = facture.id_facture;

select nom_pers, prenom_pers
    from fournisseur, personne, adresse, client
    where fournisseur.id_personne = personne.id_personne
    and client.id_personne = personne.id_personne
    and personne.id_adresse = adresse.id_adresse 
    and region like 'm%';

select distinct nom_pers, nom_article
    from fournisseur, personne, article
    where fournisseur.id_personne = personne.id_personne
    and article.id_fournisseur = fournisseur.id_fournisseur
    and prix_article >= ALL(
        select prix_article from article
    ) ;

select nom_pers, prenom_pers
from personne, client, article
where personne.id_personne = client.id_personne
and article.id_client = client.id_client
and count(id_article) > 2 ;

select nom_article
    from adresse, client, personne, article
    where adresse.id_adresse = personne.id_adresse
    and personne.id_personne = client.id_personne
    and client.id_client = article.id_client
    and region like "m%" ;

select region
    from adresse, personne, client, article
    where adresse.id_adresse = personne.id_adresse
    and personne.id_personne = client.id_personne 
    and client.id_client not in (select id_client from article) ;