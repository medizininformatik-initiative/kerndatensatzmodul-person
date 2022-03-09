### Vitalstatus (Observation)

---

**Description**

Vital status of the patient. It should be noted that a new observation must be created for each observation. All observations are to be classified as final.

A vital status ("Last known time of life") must be created as an observation at least for each admission/discharge of the patient. It should be noted that the administrative discharge of the patient was also documented due to death.

@```
from StructureDefinition where url = 'https://simplifier.net/resolve?canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/Vitalstatus`' select Name: name, Canonical: url
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

**Examples**

Example (complete):

{{json:beispiele/Example-Vitalstatus.json}}