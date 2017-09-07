# PANEL MCMYADMIN2

--------------------------------------------------
## Introduction
McMyAdmin est un panel minecraft comme mon précédent panel https://hub.docker.com/r/sirpixel/multicraft/.
McMyAdmin est la pour simplifier l'installation d'un serveur minecraft quelques soit le type de minecraft (Bukkit, Forge, MCPC+, Vannilla, etc...)

Ce panel dispose d'une version gratuite et d'une version payante pour les pro.

## UTILISATION DE BASE

### Pour télécharger l'image :

>docker pull sirpixel/mcmyadmin

### pour exécuter l'image :

>docker run -p 25565:25565 -p 25565:25565/udp -p 8080:8080 -v /home/docker/minecraft:/server -e PASSWORD=changeMe -itd --name minecraft sirpixel/mcmyadmin

### Si vous souhaiter réaliser des modifications ou vérifier la console vous pouvez exécuter la commande

>docker attach minecraft 
    
Vous pouvez retrouver la liste complète des commandes ainsi que tout le fonctionnement de McMyAdmin ici
[https://www.mcmyadmin.com/#/home](https://www.mcmyadmin.com/#/home)

**Les chemin fourni ici sont rédigé en fonction de ma plateforme de développement  et des exemple donné ci-dessus il sera nécessaire d'adapter selon votre configuration**

### Ajout à venir

- Intégration d'un accès ftp

### INFORMATION

Vous pouvez nous retrouver sur le teamspeak de la communauté HAPPYGUARD

[ts.happyguard.fr](ts3server://ts3.happyguard.fr)

### Attention !!!!
Les ip failover peuvent rendre difficile la visibilité de votre serveur sur les listes steams et les listes de serveurs dans le jeu ou tout autre listes.
