## Cause of death (Condition)

---

This profile describes the patient's cause of death as an element of the Medical Informatics Initiative Core Data Set.

@```
from StructureDefinition where url = 'https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/ResearchSubject' select Name: name, Canonical: url
```

---

**Differential**

{{tree:https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/Todesursache, diff}}

---

**Notes**

| FHIR-Element | Descritpion |
|--------------|-----------|
| Condition.id      | Must-support, but optional       |
| Condition.meta       | Must-support, but optional         |
| Condition.category       | Fixed LOINC and SNOMED-Code, additional Codings allowed        |
| Condition.code       | Coding using ICD-10-GM required, but additional Codings allowed       |
| Condition.subject       | Patient reference must always be given          |

---

**Mapping**

| FHIR-Element | Logical Data Set |
|--------------|-----------|
| Condition.code      | Person.Demographie.Vitalstatus.Todesgrund |

---

**Snapshot**

{{tree:https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/Todesursache, snapshot}}

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

{{json:beispiele/Example-Todesursache.json}}