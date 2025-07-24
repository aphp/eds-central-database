---
hide:
    - toc
---

# Catalogues des données

Cette section de la documentation recense l'**ensemble des tables contenant des données cliniques intégrées dans la base centrale**.

<!-- --8<-- [start:migration-omop-fhir] -->

??? warning "Migration d'OMOP vers FHIR en cours"

    Suite au changement d'achitecture de l'**EDS** (voir ci-dessous), [FHIR R4](https://hl7.org/fhir/R4/index.html) est devenu le choix pour la standardisation de la base centrale à la place d'**OMOP**.
    Une migration est en cours pour adapter la **base de données centralisées et standardisées de l'EDS** à ce standard.

    Vous pouvez distinguer les tables qui sont au format [OMOP v5.4](https://ohdsi.github.io/CommonDataModel/cdm54.html) et celles au format [FHIR](https://hl7.org/fhir/R4/index.html) via leur pictogramme :
    
    - :omop-standard: : Table ou champ au format _OMOP_
    - :fhir-standard: : Table ou champ au format _FHIR_

    <figure markdown="span">
    ![Architecture cible de l'EDS](/isd/data-engineering/eds-central-database/assets/schema/images/target_eds_architecture.png){ width="500",loading=lazy }
      <figcaption>Architecture cible de l'EDS _(Cliquez pour zoomer)_</figcaption>
    </figure>

<!-- --8<-- [end:migration-omop-fhir] -->

Pour en savoir plus sur la **gestion des terminologies** dans la **base centrale**, vous pouvez consulter ces deux pages :

- [Documentation sur la gestion des référentiels dans FHIR](../terminology/standard/fhir/index.md)
- [Documentation sur la gestion des référentiels dans OMOP](../terminology/standard/omop/index.md)

## Domaines disponibles

<!-- --8<-- [start:domains] -->

=== card {: href=/isd/data-engineering/eds-central-database/data_catalog/patient .patient}

    :grid-patient:
    **Patient**

    ---
    Informations sur le patient comme la **date de naissance**, le **genre**, la **zone IRIS**, etc.


=== card {: href=/isd/data-engineering/eds-central-database/data_catalog/biology .biology }

    :grid-biology:
    **Biologie**

    ---
    Résultats des analyses biologiques classifiées par code **ANABIO** ou **LOINC**.

=== card {: href=/isd/data-engineering/eds-central-database/data_catalog/imaging .imaging}

    :grid-imaging:
    **Imagerie**

    ---
    Métadonnées des examens et des séries relatives à des images **DICOM**.

=== card {: href=/isd/data-engineering/eds-central-database/data_catalog/drug .drug}

    :grid-drug:
    **Médicaments**

    ---
    Prescriptions et administrations des médicaments à des patients classifiées par code **UCD** ou **ATC**.

=== card {: href=/isd/data-engineering/eds-central-database/data_catalog/forms .maternity}

    :grid-maternity:
    **Maternité**

    ---
    Réponses aux questions du **formulaire de grossesse** et d'**hospitalisation**.

=== card {: href=/isd/data-engineering/eds-central-database/data_catalog/document .document}

    :grid-document:
    **Comptes-rendus médicaux**

    ---
    Métadonnées des comptes-rendus disponibles pour chaque patient.

=== card {: href=/isd/data-engineering/eds-central-database/data_catalog/pmsi .pmsi}

    :grid-pmsi:
    **Parcours Patients - PMSI**

    ---
    **Actes**, **diagnostics**, **GHM**, **RUM**, **RSS** et **mouvements** des patients.

=== card {: href=/isd/data-engineering/eds-central-database/data_catalog/care_site .caresite}

    :grid-caresite:
    **Structures**

    ---
    Etablissements de santé de l'**AP-HP** et leur hiérarchie.

=== card {: href=/isd/data-engineering/eds-central-database/data_catalog/physio .physio}

    :grid-physio:
    **Signaux physiologiques**

    ---
    Métadonnées des **signaux physiologiques haute fréquence**.

=== card {: href=/isd/data-engineering/eds-central-database/data_catalog/pediatrics .pediatrics}

    :grid-pediatrics:
    **Croissance pédiatrique**

    ---
    **Taille**, **poids** et **périmètre crânien** des enfants.

=== card {: href=/isd/data-engineering/eds-central-database/data_catalog/administration .administration}

    :grid-administration:
    **Administration**

    ---
    Informations sur le stockage des **cohortes**, sur les **praticiens**, etc.

<!-- --8<-- [end:domains] -->
