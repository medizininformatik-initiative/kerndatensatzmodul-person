---
topic: PersonTodesursache
subject: https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/Todesursache
canonical: https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/Todesursache
expand: 1
---

## Cause of death (Condition)

---

This profile describes the patient's cause of death as an element of the Medical Informatics Initiative Core Data Set.

@```
from 
    StructureDefinition 
where 
    url = 'https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/Todesursache' 
select 
    Name: name, Status: status, Version: version, Canonical: url, Basis: baseDefinition
```

### Inhalt

<tabs>
  <tab title="Visualization">{{tree, buttons}}</tab>
  <tab title="Description"> 
        @```
        from
	        StructureDefinition
        where
	        url = 'https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/Todesursache'
        select
	        Description: description
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
            select Fieldname: id, Shortdescription: short, Comment: comment
        ```
  </tab>
  <tab title="XML">{{xml}}</tab>
  <tab title="JSON">{{json}}</tab>
  <tab title="Link">{{link}}</tab>
</tabs>

---

**Notes**

| FHIR-Element | Descritpion |
|--------------|-----------|
| Condition.id      | Must-support, but optional       |
| Condition.meta       | Must-support, but optional         |
| Condition.category       | Fixed LOINC and SNOMED-Code, additional Codings allowed        |
| Condition.code       | Coding using ICD-10-WHO required, but additional Codings allowed. More infos see [BFARM](https://www.bfarm.de/DE/Kodiersysteme/Klassifikationen/ICD/ICD-10-WHO/Todesursachenstatistik/_node.html).|
| Condition.subject       | Patient reference must always be given          |

---

**Mapping**

| FHIR-Element | Logical Data Set |
|--------------|-----------|
| Condition.code      | Person.Demographie.Vitalstatus.Todesgrund |

---

**SearchParameters**

The following SearchParameters are relevant for the module Person, also in combination:

1. The SearchParameter "_id" MUST be supported:

    Example:

    ```GET [base]/Condition?_id=103270```

    Note: Additional information regarding the search using "_id" can be found in [FHIR Core Specification - Section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

1. The SearchParameter "_profile" MUST be supported:

    Example:

    ```GET [base]/Condition?_profile=https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/Todesursache```

    Note: Additional information regarding the search using "_profile" can be found in [FHIR Core Specification - Section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).


1. The SearchParameter "category" MUST be supported:

    Example:

    ```GET [base]/Condition?category=http://snomed.info/sct|16100001```

    Note: Additional information regarding the search using "Condition.category" can be found in [FHIR Core Specification - Section "Token Search"](http://hl7.org/fhir/R4/search.html#token).

1. The SearchParameter "code" MUST be supported:

    Example:

    ```GET [base]/Condition?code=http://fhir.de/CodeSystem/bfarm/icd-10-gm|I46.1```

    Note: Additional information regarding the search using "Condition.code" can be found in [FHIR Core Specification - Section "Token Search"](http://hl7.org/fhir/R4/search.html#token).

1. The SearchParameter "subject" MUST be supported:

    Example:

    ```GET [base]/Observation?subject=Patient/test```

    Note: Additional information regarding the search using "Condition.subject" can be found in [FHIR Core Specification - Section "reference"](http://hl7.org/fhir/R4/search.html#reference).

1. The SearchParameter "patient" MUST be supported:

    Example:

    ```GET [base]/Observation?patient=Patient/test```

    Note: Additional information regarding the search using "Condition.subject" can be found in [FHIR Core Specification - Section "reference"](http://hl7.org/fhir/R4/search.html#reference).

---

**Examples**

Example (complete):

{{json:fsh-generated/resources/Condition-mii-exa-person-condition-todesursache.json}}