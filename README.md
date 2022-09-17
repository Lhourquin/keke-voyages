# Keke voyages ( MERISE, MCD, MLD, MPD, UML)

---

##### Contexte du projet

Votre client, une agence de voyages, souhaite proposer la possibilité de réserver en ligne des billets d'avion à leurs clients.

Votre mission est de concevoir à l'aide du standard UML la modélisation de la plateforme.

La plateforme devra permettre que :

- Un vol est ouvert à la réservation et refermé sur ordre de la compagnie.
- Un vol peut être annulé par la compagnie
- Un client peut réserver un ou plusieurs vols, pour des passagers différents.
- Une réservation concerne un seul vol et un seul passager.
- Une réservation peut être annulée ou confirmée.
- Un vol a un aéroport de départ et un aéroport d’arrivée.
- Un vol a un jour et une heure de départ, et un jour et une heure d’arrivée.
- Un vol peut comporter des escales dans des aéroports.
- Une escale a une heure d’arrivée et une heure de départ.
 Chaque aéroport dessert une ou plusieurs villes.
- Des compagnies aériennes proposent différents vols.
​
#### Modalités pédagogiques

Travail en individuel. Livraison pour Mardi 20 Septembre 2022 09h00.



#### Critères de performance

- Un readme répertoriant les informations principales.
- Tous les diagrammes doivent correspondre à la notation officielle du standard UML et Merise
- Les diagrammes doivent être exportés en format images facilement consultables (jpeg, png).
- Minimum d'un commit par diagramme.
- La conception Merise doit respecter au minimum les 3 premières formes normales.

#### Modalités d'évaluation
Correction en groupe et revue des diagrammes sur Github
#### Livrables

Dans un dépôt Github : 
Pour la base de données :
- Un MCD
- Un MLD
- Un MPD

Pour l'application :
- Un dictionnaire de données
- Des règles de gestion
- Un diagramme de cas d'utilisation
- Un diagramme de classe
- Un diagramme de Séquence

---

## Partie I : Règles métier : 


RESERVATION  

- un email de contact

- un numéro de téléphone

- nom

- prénom

- un n° de passport

- peut être annuler par le CLIENT  

- une réservation ne peu être que pour une seul personne et un seul vol

- numéro de réservation

- peut être confirmé par l'agence



VOL  

- le vol contient un numéro de vol  

- aéroport de départ, une date, une heure  

- aéroport d'arrivé, une date, une heure  

- vol avec un ou plusieur passager  

- un vol ne peux pas être reservable ou non  

- un vol peut faire des escale dans un AEROPORT  

- le vol est un trajet d'un aeroport à un autre  

- un vol peut être annulé par la compagnie

- numéro de vol

COMPAGNIE

- contiens un nom

- peut avoir un ou plusieurs vol

ESCALE

- une date et une heure d'arrivé  

- une date et une heure de départ  

- un aeroport d'arrivé  

- un aeroport de départ

 

AEROPORT

- se trouve dans une ville  


VILLE

- un nom
- se trouve dans une pays