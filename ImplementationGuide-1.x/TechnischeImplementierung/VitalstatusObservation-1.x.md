### Vitalstatus (Observation)

Vitalstatus der PatientIn. Es ist zu beachten, dass für jede Beobachtung eine neue Observation anzulegen ist. Alle Observations sind als final einzustufen.

Mindestens bei jeder Aufnahme / Entlassung der PatientIn ist ein Vitalstatus ("Letzter bekannter Lebenszeitpunkt") als Observation zu erstellen. Es ist zu beachten, dass die administrative Entlassung der PatientIn auch aufgrund des Todes dokuementiert wurde.  

**Name**: ProfileObservationVitalstatus ([Simplifier Link](https://simplifier.net/resolve?canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/Vitalstatus@1.0.15))

**Canonical**: ```https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/Vitalstatus```

**Differential**

{{tree:https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/Vitalstatus, diff}}

<br>

| FHIR-Element | Erklärung |
|--------------|-----------|
| Observation.id      | Must-support, jedoch optional       |
| Observation.meta       | Must-support, jedoch optional         |
| Observation.category       | Fixed value, weitere Codings erlaubt.         |
| Observation.code       | Fixed LOINC Code, weitere Codings erlaubt.        |
| Observation.subject       | Patientenbezug muss stets gegeben sein.         |
| Observation.effectiveDateTime       | effectiveDateTime erlaubt genaue Kodierung des letzten Lebendzeitpunktes, partielle Datumsangaben sind jedoch auch erlaubt. Enthält **nicht** den Todeszeitpunkt (siehe Patient.deceased[x])! |

<br>

| FHIR-Element | Logischer Datensatz |
|--------------|-----------|
| Observation.effectiveDateTime      | Person.Demographie.Vitalstatus.LetzterLebendzeitpunkt |
| MII-Metadaten-Konzept (Provenance) ist zum Stand der Veröffentlichung ungeklärt    | Person.Demographie.Vitalstatus.Informationsquelle |

---

**Snapshot**

{{tree:https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/Vitalstatus, snapshot}}

---

**Beispiele**

Beispiel (vollständig):

{{json:beispiele/Example-Vitalstatus.json}}