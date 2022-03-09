## Vitalstatus (Observation)

---

**Description**

Vital status of the patient. It should be noted that a new observation must be created for each observation. All observations are to be classified as final.

A vital status ("Last known time of life") must be created as an observation at least for each admission/discharge of the patient. It should be noted that the administrative discharge of the patient was also documented due to death.

@```
from StructureDefinition where url = 'https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/Vitalstatus' select Name: name, Canonical: url
```

---

**Differential**

{{tree:https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/Vitalstatus, diff}}

---

**Notes**

| FHIR-Element | Erklärung |
|--------------|-----------|
| Observation.id      | Must-support, but optional       |
| Observation.meta       | Must-support, but optional         |
| Observation.category       | Fixed value, additional codings allowed.         |
| Observation.code       | Fixed LOINC Code, additional codings allowed.        |
| Observation.subject       | Patient reference must always be given.         |
| Observation.effectiveDateTime       | effectiveDateTime allows exact coding of the last time alive, but partial dates are also allowed. Does **not** contain the time of death (see Patient.deceased[x])! |

---

**Mappings**

| FHIR-Element | Logical Data Set |
|--------------|-----------|
| Observation.effectiveDateTime      | Person.Demographie.Vitalstatus.LetzterLebendzeitpunkt |
| MII-Metadaten-Konzept (Provenance) ist zum Stand der Veröffentlichung ungeklärt    | Person.Demographie.Vitalstatus.Informationsquelle |

---

**Snapshot**

{{tree:https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/Vitalstatus, snapshot}}

---

**Terminology Bindings**

@```
from StructureDefinition
where url in ('https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/Vitalstatus' )
for differential.element
select
Path: path,
join binding.where(valueSet.exists())
{
  Name: valueSet.substring((9 + valueSet.indexOf('ValueSet/'))),
  Strength: strength,
  URL: valueSet
}
```

---

**Suchparameter**

The following SearchParameters are relevant for the module Person, also in combination:

1. The SearchParameter "_id" MUST be supported:

    Example:

    ```GET [base]/Observation?_id=103270```

    Note: Additional information regarding the search using "_id" can be found in [FHIR Core Specification - Section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

1. The SearchParameter "_profile" MUST be supported:

    Example:

    ```GET [base]/Observation?_profile=https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/Vitalstatus```

    Note: Additional information regarding the search using "_profile" can be found in [FHIR Core Specification - Section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

1. The SearchParameter "status" MUST be supported:

    Example:

    ```GET [base]/Observation?status=final```

    Note: Additional information regarding the search using "Observation.status" can be found in [FHIR Core Specification - Section "Token Search"](http://hl7.org/fhir/R4/search.html#token).

1. The SearchParameter "category" MUST be supported:

    Example:

    ```GET [base]/Observation?category=http://terminology.hl7.org/CodeSystem/observation-category|survey```

    Note: Additional information regarding the search using "Observation.category" can be found in [FHIR Core Specification - Section "Token Search"](http://hl7.org/fhir/R4/search.html#token).

1. The SearchParameter "code" MUST be supported:

    Example:

    ```GET [base]/Observation?code=http://loinc.org|67162-8```

    Note: Additional information regarding the search using "Observation.code" can be found in [FHIR Core Specification - Section "Token Search"](http://hl7.org/fhir/R4/search.html#token).

1. The SearchParameter "subject" MUST be supported:

    Example:

    ```GET [base]/Observation?subject=Patient/test```

    Note: Additional information regarding the search using "Observation.subject" can be found in [FHIR Core Specification - Section "reference"](http://hl7.org/fhir/R4/search.html#reference).

1. The SearchParameter "date" MUST be supported:

    Example:

    ```GET [base]/Observation?date=2022-01-01```

    Note: Additional information regarding the search using "Observation.effective" can be found in [FHIR Core Specification - Section "Date Search"](http://hl7.org/fhir/R4/search.html#date).

1. The SearchParameter "value-concept" MUST be supported:

    Example:
    
    ```GET [base]/Observation?value-concept=https://www.medizininformatik-initiative.de/fhir/core/modul-person/CodeSystem/Vitalstatus|T```

    Note: Additional information regarding the search using "Observation.value" can be found in [FHIR Core Specification - Section "Token Search"](http://hl7.org/fhir/R4/search.html#token).

---

**Examples**

Example (complete):

{{json:beispiele/Example-Vitalstatus.json}}