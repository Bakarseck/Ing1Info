# We can build a vector by : 
x <- 1:6 # create a vector containing 1 by 6

# We can also build by seq()
x <- seq(1, 6, by=1) # step = "by"
x <- seq(1, 6, length=5) # random

# We cal build a vector by collector function c
x <- c(1, 4, 3) # x = [1 4 3]

# We can build a vector by using the function rep() that will repeat a sequences
x <- rep(1, 4)
x <- rep(c(1, 2), each=3)

x <- rep(c("rouge","jaune","bleu"),times=c(1,4,2))
# [1] "rouge" "jaune" "jaune" "jaune" "jaune" "bleu" "bleu"

nom <- paste(rep("ind",10),1:10,sep=".")
# "ind.1" "ind.2" "ind.3" "ind.4" "ind.5" "ind.6" "ind.7" "ind.8"
# "ind.9" "ind.10"

paste(c("X","Y"),1:5,sep=".",collapse="+")
# [1] "X.1+Y.2+X.3+Y.4+X.5"

x <- substr("freerider",5,9)
# rider

levels(yf) <- c("Femme","Homme")

# give a summary for data quantitatives
summary(X)

# Le facteur est un objet permettant de représenter au mieux une variable qualitative.

# Il permet de garder en mémoire :

# l’ensemble des éléments, comme un vecteur ;

# les différentes modalités possibles.

# Les modalités d’un facteur peuvent être ordonnées ou non.

# Il n’est pas possible d’ajouter un élément qui n’est pas défini dans les différentes modalités (levels).

# Vous pouvez convertir un vecteur en facteur et inversement, en utilisant les fonctions adéquates.

x <- matrix(c(1:6),nrow=2,ncol=3,byrow=TRUE)

m <- matrix(1:4,ncol=2)

n <- matrix(3:6,ncol=2)

# Produit Matriciel
m%*%n 

# Transposé d'une matrice
t(m)

# matrice identité d’ordre 5
diag(m)

# determinant 
det(m)

# diagonalisation d’une matrice
eigen(m)

# for create a list
maliste <- list(c("A","B","C","A"),matrix(1:4,2,2))

# lapply  applique une fonction (comme la moyenne, la variance, etc.) successivement à chacune des composantes.

# unlist(maliste)  crée un seul vecteur contenant tous les éléments de la liste. Les éléments d’un vecteur étant nécessairement du même mode, il faut faire attention à la conversion automatique pratiquée par R.

# c(liste1,liste2)  concatène deux listes.

x <- c("A","B","C","A")
y <- 1:4

mydf <- data.frame(x, y)

attributes(mydf)

# To visualize your data
View(mydf)

# Selection
x <- c(2,-1,15)
x[2] # donne le deuxième élément de x
# [1] -1

x[c(1,3)] # donne les premier et troisième éléments de x
# [1] 2 15

x[c(3,1,2,2,1)]
# [1] 15 2 -1 -1 2

x[x>0]
# [1] 2 15

x[!(x<0)]
# [1] 2 15

x <- c("A","B","C",rep("D",3))
y <- 1:6
z <- c(seq(10,45,length=5),-10)
mondf <- data.frame(x,y,z)
mondf


mondf["z"]

mondf$z

# Qui satisfont la condition
mondf[mondf$y>4,]

temp = c(20, 21, 17.5, 32, 30, 25)
jour = c('Lu', 'Lu', 'Lu', 'Ma', 'Ma', 'Ma')
lieu = c('Nice', 'Lyon', 'Paris', 'Nice', 'Lyon', 'Paris')

df = data.frame(temp, jour, lieu)

# Quel code permet de sélectionner les villes qui ont eu une température strictement supérieure à 20°C, le lundi ?

