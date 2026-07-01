# INCEPTION

*This project has been created as part of the 42 curriculum by lpalabos.*

## Description
Le but du projet est de creer un infrastructure web(MariaDB, Wordpress + PHP, nginx) avec Docker.

## Instructions

### Prerequis
Une OS linux
Avoir docker et makefile

### Exec
Pour contruire nos image et run nos containers
```bash
make
```

## Key Concept

### Vm vs Container
La difference que l'on peut citer c'est que l'un est un daemon et l'autre non, d'ailleur c'est un gros point fort que Docker est un daemon.
Pourquoi ? Un daemon permet l'utilisation en temps reel des ressources de nos machine, c'est a dire que si nos containers ne tourne pas notre process
'dockerd' ne consomme tout simplement rien, hors l'utilisation d'une VM qui emule une machine privatise une partie des ressources de celle-ci.
Deplus avec le systeme des docker compose on peut lancer nos services de facon groupe pour directement fournir une infrastucture operationel en une seul commande.

### Secrets vs Environment variables
Les secrets sont des espaces gere par Docker qui vont je suppose hache la donne pour la rendre illisible est donc donner un certain niveau de securite
Les variable d'environnement sont des variables stocke par notre systeme.

### Docker Network vs Host Network
Docker Network ou "Docker Bridge" de son nom est un network comme un reseau prive au Docker va faire office de NAT est permettre de reconnaitre quels
containers parle a qui, la veritable force de ca c'est que ce reseau est donc interne a Docker ce qui evite l'ouverture des ports de notre machine pour la communication ou d'un UNIX socket.
Le host network c'est un reseau comme on peut l'imaginer nos Docker, donc nos process qui serai relie directement a notre carte reseau avec l'ouverture des ports.

### Docker Volumes vs Bind Mounts
Le Docker Volumes c'est le volume intelligent que Docker gere de facon autonome, il a l'avantage qu'il ne demande aucun configuration.
L'autre type de volume c'est le Bind mount ou volume mappe c'est les volume qui seront reliee a notre a machine a nos container ceci demande d'etre configurer et d'avoir une session particuliere dans nos docker compose 'volumes'.

## Resources
site officiel de (Docker, nginx, CLI wordpress),
commentaire sur les fichiers de config par default,
stephane.robet.info,
IA sur la recherche de notion