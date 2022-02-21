## Todesursache (Condition)

Dieses Profil beschreibt den Todesursache der PatientIn als Element des Kerndatensatzes Medizininformatik-Initiative.

**Name**: "ProfileConditionTodesursache" ([Simplifier Link](https://simplifier.net/medizininformatikinitiative-modulperson/todesursache))

**Canonical**: 
```https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/Todesursache```

**Differential**

{{tree:https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/Todesursache, diff}}

<br>

| FHIR-Element | Erklärung |
|--------------|-----------|
| Condition.id      | Must-support, jedoch optional       |
| Condition.meta       | Must-support, jedoch optional         |
| Condition.category       | Fixed LOINC und SNOMED-Code, weitere Codings erlaubt.         |
| Condition.code       | Kodierung per ICD-10-GM erforderlich, weitere Codings erlaubt       |
| Condition.subject       | Patientenbezug muss stets gegeben sein.         |

<br>

| FHIR-Element | Logischer Datensatz |
|--------------|-----------|
| Condition.code      | Person.Demographie.Vitalstatus.Todesgrund |

---

**Snapshot**

{{tree:https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/Todesursache, snapshot}}

---

**Beispiele**

Beispiel (vollständig):

{{json:medizininformatikinitiative-modulperson/exampleconditiontodesgrund}}