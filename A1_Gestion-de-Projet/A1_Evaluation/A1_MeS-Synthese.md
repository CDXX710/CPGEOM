# Cahier des charges de l’évaluation de l’activité 1

## Présentation du projet

### CONTEXTE

L'agglomération de Losse-en-Gelaisse, disposant de la compétence d'Autorité Organisatrice de la Mobilité, a sous-traité la collecte de données d'accessibilité pour répondre à ses obligations de la LOM (Loi d'Orientation des Mobilités).

Ces données cartographient l'accessibilité de la voirie et de quelques ERPs emblématiques (gare, médiathèques...), et couvrent une zone de l'ordre de 200 mètres autour de chaque arrêt prioritaire de son territoire. Elles sont stockées dans une base de données PostgreSQL, selon un MCD conforme au modèle CNIG Accessibilité.

Les données seront à l'avenir entretenues par les services techniques de la collectivité, en particulier les services SIG et Voirie, ou par des prestataires dans le cadre d'appels d'offres.

L'agglomération souhaite aujourd'hui faire appel à un prestataire pour la réalisation de deux types de travaux:

> ● d'une part, pour la mise au point d'un outil web dont la vocation est de permettre l'analyse des problèmes d'accessibilité du territoire.
>
> ● d'autre part, pour mettre au point une méthodologie et des outils de contrôle des données livrées par les sociétés réalisant la collecte de données.

### OUTIL WEB

Cet outil doit faciliter l'analyse des problèmes d'accessibilité du territoire, en lien avec l'offre de transports et la densité d'habitants pour identifier des zones à traiter en priorité.

Cet outil devra aussi permettre de réaliser des présentations auprès des associations de personnes handicapées, via des cartographies thématiques qui pourront soit être exportées, soit directement consultables dans l'outil en mode présentation.

Parmi les cartographies souhaitées, il y aura aussi la visualisation des derniers aménagements réalisés pour améliorer l'accessibilité de la voirie, ainsi que la consultation de l'ensemble des zones de travaux sur une période de temps.

Les grandes fonctionnalités attendues pour l’outil seront les suivantes:

> ● Authentification / Backoffice pour gérer les comptes et permis
>
> ● Interface web ou outil externe pour la génération / paramétrage des cartographies thématiques, permettant d’analyser les données reçues des différents prestataires réalisant la collecte
>
> ● Interface web de consultation des cartographies thématiques pour les agents de la collectivité
>
> ● Interface web de consultation thématiques en vue de présentations à des associations de personnes à mobilité réduite

La collectivité souhaite que l'outil soit entièrement open source dans le but de pouvoir servir à d'autres territoires. L’interface web doit être responsive, avec une expérience utilisateur adaptée au Web et Mobile. Par ailleurs, le site web doit être partiellement conforme au référentiel d’accessibilité web RGAA (note > 85%).

Le prestataire sera retenu pour sa capacité à concevoir l'outil, l'héberger et le maintenir, et être force de proposition en matière de cartographies thématiques.

### CONTROLE DE DONNEES

De façon à pouvoir contrôler les données reçues de diverses sociétés, la collectivité souhaite se doter d'une méthodologie et d'outils pour analyser la qualité des données :

> ● en les comparant à des données issues de télédétection (détection de passages piétons notamment).
>
> ● en les comparant à des données LIDAR ou Modèles Numériques de Terrain (calcul de pentes / dévers).

Le prestataire doit proposer une méthodologie, ainsi que différents outils, pour aider à cette analyse de qualité. Les outils peuvent être bureautiques (autonomes ou plugins SIG) ou web, et devront être open source.

Il est attendu du prestataire d'être force de proposition sur les contrôles réalisés, ainsi que sur la manière d'exploiter les résultats d'analyse pour identifier d'éventuelles anomalies dans les données reçues.

### CONSULTATION

Une consultation a été réalisée pour choisir un prestataire. Vous avez répondu à la consultation et votre proposition commerciale a été retenue pour développer les différents outils.

Avant de démarrer le projet, Losse-en-Gelaisse souhaite obtenir de votre part divers documents de cadrage décrivant la mise en œuvre du développement et les garanties que vous apportez quant au travail que vous allez mener.

## Consignes Générales

L’objectif est de pouvoir rassurer Losse-en-Gelaisse sur la gestion projet que vous allez réaliser, en anticipant tous les cas de figure possibles pendant le déroulement du projet, ainsi qu’à son issue pour l’assistance et la maintenance.

Un document est attendu décrivant notamment la méthodologie de développement, la composition de l’équipe de développement (profils) et les moyens/outils mis en œuvre pour que Losse-en-Gelaisse puisse suivre le déroulement du projet.

Un planning prévisionnel phasé, un plan de suivi du projet et des indicateurs d’avancement doivent être fournis à Losse-en-Gelaisse, ainsi qu’une proposition pour que les échanges entre le chef de projet de Losse-en-Gelaisse et votre chef de projet soient efficaces durant toute la durée du projet ainsi que durant la période d'assistance/maintenance.

Enfin, un Plan d’Assurance Qualité adapté au projet est attendu pour décrire les dispositions mises en œuvre pour que le développement soit robuste, maintenable et conforme aux règles de sécurité web (confidentialité des données propres à chaque adhérent, sécurisation de l’application). Le plan devra décrire les moyens mis en œuvre durant le développement et déploiement de l’application, ainsi que pour assurer une assistance et une maintenance durable du logiciel.
