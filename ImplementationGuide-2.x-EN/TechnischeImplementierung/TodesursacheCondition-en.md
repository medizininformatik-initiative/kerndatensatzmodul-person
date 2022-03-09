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

**Examples**

Example (complete):

{{json:beispiele/Example-Todesursache.json}}