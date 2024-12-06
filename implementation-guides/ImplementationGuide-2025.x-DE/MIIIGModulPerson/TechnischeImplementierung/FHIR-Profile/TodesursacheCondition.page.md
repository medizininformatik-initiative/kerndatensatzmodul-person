---
topic: PersonTodesursache
subject: https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/Todesursache
canonical: https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/Todesursache
expand: 1
---

## Todesursache (Condition)

---

## {{link}}

**Beschreibung**

Dieses Profil beschreibt den Todesursache der PatientIn als Element des Kerndatensatzes Medizininformatik-Initiative.

Die Todesursache MUSS mittels ICD-10-WHO codiert werden. Das Condition-Profil für die Todesursache unterscheidet sich an dieser Stelle (`Condition.code`) bewusst vom Condition-Profil im Modul Diagnose, welches die ICD-10-GM verwendet. Grund dafür ist, dass in Deutschland die ICD-10-WHO als Grundlage für die Todesursachenstatistik vom Gesetzgeber vorgeschrieben ist, siehe [Todesursachenstatistik beim Bundesinstitut für Arzneimittel und Medizinprodukte (BfArM)](https://www.bfarm.de/DE/Kodiersysteme/Klassifikationen/ICD/ICD-10-WHO/Todesursachenstatistik/_node.html).

@```
from 
    StructureDefinition 
where 
    url = 'https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/Todesursache' 
select 
    Name: name, Status: status, Version: version, Lizenz: extension.where(url='https://www.medizininformatik-initiative.de/fhir/modul-meta/StructureDefinition/mii-ex-meta-license-codeable').value.coding.code, Canonical: url, Basis: baseDefinition
```

### Inhalt

<tabs>
  <tab title="Darstellung">{{tree, buttons}}</tab>
  <tab title="Beschreibung"> 
        @```
        from
	        StructureDefinition
        where
	        url = 'https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/Todesursache'
        select
	        Beschreibung: description
        with
            no header
        ```
        @```
        from 
            StructureDefinition 
        where 
            url = 'https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/Todesursache' 
        for 
            differential.element 
            where 
                mustSupport = true 
            select Feldname: id, Kurzbeschreibung: short, Hinweise: comment
        ```
  </tab>
  <tab title="XML">{{xml}}</tab>
  <tab title="JSON">{{json}}</tab>
  <tab title="Link">{{link}}</tab>
</tabs>


---

**Hinweise**

| FHIR-Element | Erklärung |
|--------------|-----------|
| Condition.id      | Must-support, jedoch OPTIONAL       |
| Condition.meta       | Must-support, jedoch OPTIONAL         |
| Condition.meta.profile       | VERPFLICHTEND für die Abfrage im DIZ-Repsoitory inkl Versionsnummer des Profils. Siehe {{pagelink:PersonCapabilityStatement}}. In allen anderen Fällen OPTIONAL.         |
| Condition.category       | Fixed LOINC und SNOMED-Code MÜSSEN vorhanden sein, weitere Codings OPTIONAL.         |
| Condition.code       | Kodierung per ICD-10-WHO VERPFLICHTEND, weitere Codings OPTIONAL. Weitere Infos siehe [BfArM](https://www.bfarm.de/DE/Kodiersysteme/Klassifikationen/ICD/ICD-10-WHO/Todesursachenstatistik/_node.html).|
| Condition.subject       | Patientenbezug MUSS stets gegeben sein.         |

---

**Mapping**

| FHIR-Element | Logischer Datensatz |
|--------------|-----------|
| Condition.code      | Person.Demographie.Vitalstatus.Todesgrund |

---

**Suchparameter**

Folgende Suchparameter sind für das Modul Person relevant, auch in Kombination:

1. Der Suchparameter "_id" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Condition?_id=103270```

    Anwendungshinweise: Weitere Informationen zur Suche nach "_id" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

1. Der Suchparameter "_profile" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Condition?_profile=https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/Todesursache```

    Anwendungshinweise: Weitere Informationen zur Suche nach "_profile" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).


1. Der Suchparameter "category" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Condition?category=http://snomed.info/sct|16100001```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Condition.category" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).

1. Der Suchparameter "code" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Condition?code=/Condition??code=http://hl7.org/fhir/sid/icd-10|A15.0```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Condition.code" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).

1. Der Suchparameter "subject" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?subject=Patient/test```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Condition.subject" finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](http://hl7.org/fhir/R4/search.html#reference).

1. Der Suchparameter "patient" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?patient=Patient/test```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Condition.subject" finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](http://hl7.org/fhir/R4/search.html#reference).


---

**Beispiele**

Beispiel (vollständig):

{{json:fsh-generated/resources/Condition-mii-exa-person-condition-todesursache.json}}