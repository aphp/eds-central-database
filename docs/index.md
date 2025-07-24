---
hide:
    - navigation
    - toc
---

# Documentation de la base centrale de l'EDS

Le projet **EDS Central Database** est une base de données centrale et standardisée au format [FHIR R4](https://hl7.org/fhir/R4/index.html) contenant les données des patients de tous les hôpitaux de l'**AP-HP**.  
Le [**catalogue des données**](data_catalog/index.md) décrit les données présentes dans cette base.

Cette base de données s'inscrit dans le cadre de l'**Entrepôt de Données** de l'**AP-HP** et s'alimente grâce au **Data Lake** de ce même entrepôt. Le **Data Lake** récupère les données brutes des différentes applications médicales de l'**AP-HP** (_ORBIS_, _PHEDRA_, _GLIMS_, etc.).

--8<-- "docs/data_catalog/index.md:migration-omop-fhir"

!!! tip "Astuce"

    Vous pouvez facilement naviguer entre les **versions** de la **base de données centralisées et standardisées de l'EDS** (et donc de sa documentation associée) en utilisant la liste déroulante en haut de la page.
    La version `dev` correspond à une version de pré-production et est donc susceptible de changer.


## Catalogues des données par domaine

--8<-- "docs/data_catalog/index.md:domains"

## Organisation de la documentation

La documentation du projet **EDS Central Database** est organisée en trois parties :

- Le [catalogue des données](data_catalog/index.md) décrit les données présentes dans cette base.

- Des informations sur les [particularités et bonnes pratiques](specificities_best_practices/index.md) des données.

- La [convention de nommage FHIR](data-models/index.md) décrit les régles appliquées pour représenter les ressources **FHIR** (au format _NDJSON_) sous une forme relationnelle (_SQL_).

- Un [journal des modifications](changelog/EDS-CENTRAL-DATABASE_CHANGELOG.md) est également disponible afin de visualiser les changements effectués entre les différentes versions de la **base de données centralisées et standardisées de l'EDS**.
