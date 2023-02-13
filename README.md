# 42_inception

# 42\_cpp

## Content
- [Historic :clock7:](#historic-clock7)

## Historic :clock7:
[Go to content](#content)
|Date _YYYY-MM-DD_|Description|
|:-|:-|
|2022-12-15|Init|

## Main
Docker, tout comme d'autres implémentations de conteneurs, est basé sur deux extensions du kernel Linux :
- Cgroups;
- N amespaces.

> CGroups 1 (pour Control Groups) permet de partitionner les ressources d'un hôte (processeur, mémoire, accès au réseau ou à d'autres terminaux). L'objectif est de contrôler la consommation de ces ressources par processus.
> Les Namespaces sont indépendants de CGroups, mais fon ctionnent de concert. Ils permettent de faire en sorte que des processus ne voient pas les ressources utilisées par d'autres. Si C G roups gère la distribution des ressources, N amespaces apporte l'isolation nécessaire à la créatio n de conteneurs. L'ancêtre du mécanisme des N amespaces est la commande chroot qui existe au sein du système U N IX depuis 1979 !

## Lexic
`CaaS` est l'acronyme en anglais de **Container as a Service**

## Souces :link:
N/A

- https://hub.docker.com/_/mariadb
- https://www.php.net/manual/fr/install.unix.nginx.php
- https://gist.github.com/Mins/4602864
- https://www.digitalocean.com/community/tutorials/how-to-install-mariadb-on-debian-10
