print("Quel dépense voulez vous enregistrer ? : ")
print("Veuillez choisir un numéro : ")
print("""
    1 == > Dépense Alimentaire
    2 == > Dépense vestimentaire
    3 == > Dépense Scolaire 
    """)

listeAchatsAlimentaire = ['Petit Déjeuner', 'Déjeuner', 'Grignottage']
listeAchatsVestimentaire = ["Chaussures", "Vêtements"]
listeAchatsScolaire = ["Cahiers", "Bics", "Materiels Informatique"]


typeDeDepense = int(input())

while typeDeDepense > 3 or typeDeDepense < 1 :
    print("Choix impossible ")
    print("Veuillez choisir une dépense valide")
    typeDeDepense = int(input())

if typeDeDepense == 1 :
    print("""
        1 == > Dépense pour le petit déjeuner
        2 == > Dépense pour le déjeuner
        3 == > Dépense pour le diner
        4 == > Dépense pour du grignottage
    """)

    typeDeSousDepense = int(input())

    while typeDeSousDepense < 1 or typeDeSousDepense > 4:
        print("Choix impossible ")
        print("Veuillez choisir une sous-dépense valide")
        typeDeSousDepense = int(input())

    print("Donnez le prix : ")
    price = int(input())

    print(f"Vous avec acheté au {listeAchatsAlimentaire[typeDeSousDepense-1]} un repas qui coûte {price} FCA")

elif typeDeDepense == 2:
    print("""
        1 == > Achats de Chaussures
        2 == > Achats de vêtements
    """
    )

    typeDeSousDepense = int(input())

    while typeDeSousDepense < 1 or typeDeSousDepense > 2:
        print("Choix impossible ")
        print("Veuillez choisir une sous-dépense valide")
        typeDeSousDepense = int(input())

    print("Donnez le prix : ")
    price = int(input())

    print(f"Vous avec acheté des {listeAchatsVestimentaire[typeDeSousDepense-1]} qui coûte {price} FCA")

elif typeDeDepense == 3:
    print("""
        1 == > Achats de cahiers
        2 == > Achats de bics
        3 == > Achats de materiels informatiques
    """
    )

    typeDeSousDepense = int(input())

    while typeDeSousDepense < 1 or typeDeSousDepense > 3:
        print("Choix impossible ")
        print("Veuillez choisir une sous-dépense valide")
        typeDeSousDepense = int(input())

    print("Donnez le prix : ")
    price = int(input())

    print(f"Vous avec acheté des/du {listeAchatsScolaire[typeDeSousDepense-1]} qui coûte {price} FCA")

