### Vitalstatus (Observation)

Vital status of the patient. It should be noted that a new observation must be created for each observation. All observations are to be classified as final.

A vital status ("Last known time of life") must be created as an observation at least for each admission/discharge of the patient. It should be noted that the administrative discharge of the patient was also documented due to death.  

**Name**: ProfileObservationVitalstatus ([Simplifier Link](https://simplifier.net/resolve?canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/Vitalstatus@1.0.15))

**Canonical**: ```https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/Vitalstatus```

**Differential**

{{tree:https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/Vitalstatus, diff}}

<br>

| FHIR-Element | Erklärung |
|--------------|-----------|
| Observation.id      | Must-support, but optional       |
| Observation.meta       | Must-support, but optional         |
| Observation.category       | Fixed value, additional codings allowed.         |
| Observation.code       | Fixed LOINC Code, additional codings allowed.        |
| Observation.subject       | Patient reference must always be given.         |
| Observation.effectiveDateTime       | effectiveDateTime allows exact coding of the last time alive, but partial dates are also allowed. Does **not** contain the time of death (see Patient.deceased[x])! |

<br>

| FHIR-Element | Logical Data Set |
|--------------|-----------|
| Observation.effectiveDateTime      | Person.Demographie.Vitalstatus.LetzterLebendzeitpunkt |
| MII-Metadaten-Konzept (Provenance) ist zum Stand der Veröffentlichung ungeklärt    | Person.Demographie.Vitalstatus.Informationsquelle |

---

**Snapshot**

{{tree:https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/Vitalstatus, snapshot}}

---

**Examples**

Example (complete):

{{json:beispiele/Example-Vitalstatus.json}}