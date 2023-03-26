select concat(prenom_pers, ' ', nom_pers) as NomComplet, coalesce(id_rayonniste, "Je ne suis rayonnsite") as isRayonniste
    from personne
    left join rayonniste
    on personne.id_personne = rayonniste.id_personne ;

select avg(id_rayonniste)
    from rayonniste ;

select commande.id_commande, commande.id_livreur, commande.id_client, commande.id_facture
    from commande, articlecommande, article
    where commande.id_commande = articlecommande.id_commande
    and article.id_article = articlecommande.id_article 
    and nom_article = "Bissap";

select nom_pers, prenom_pers, count(article.id_article), nom_article
    from personne, livreur, commande, articlecommande, article
    where livreur.id_livreur = commande.id_livreur
    and personne.id_personne = livreur.id_personne
    and article.id_article = articlecommande.id_article
    and commande.id_commande = articlecommande.id_commande ;

select nom_article
    from article, commande, articlecommande, 
    where article.id_article = articlecommande.id_article
    and commande.id_commande = articlecommande.id_commande ;
    
   23wrF#@Va7D#
