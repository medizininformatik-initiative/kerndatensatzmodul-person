## Vitalstatus (Observation)

---

Vitalstatus der PatientIn. Es ist zu beachten, dass für jede Beobachtung eine neue Observation anzulegen ist. Alle Observations sind als final einzustufen.

Mindestens bei jeder Aufnahme / Entlassung der PatientIn ist ein Vitalstatus ("Letzter bekannter Lebenszeitpunkt") als Observation zu erstellen. Es ist zu beachten, dass die administrative Entlassung der PatientIn auch aufgrund des Todes dokuementiert wurde.  

@```
from StructureDefinition where url = 'https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/ResearchSubject' select Name: name, Canonical: url
```

---

**Differential**

{{tree:https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/Vitalstatus, diff}}

---

**Hinweise**

| FHIR-Element | Erklärung |
|--------------|-----------|
| Observation.id      | Must-support, jedoch optional       |
| Observation.meta       | Must-support, jedoch optional         |
| Observation.category       | Fixed value, weitere Codings erlaubt.         |
| Observation.code       | Fixed LOINC Code, weitere Codings erlaubt.        |
| Observation.subject       | Patientenbezug muss stets gegeben sein.         |
| Observation.effectiveDateTime       | effectiveDateTime erlaubt genaue Kodierung des letzten Lebendzeitpunktes, partielle Datumsangaben sind jedoch auch erlaubt. Enthält **nicht** den Todeszeitpunkt (siehe Patient.deceased[x])! |

---

**Mapping**

| FHIR-Element | Logischer Datensatz |
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
where url in ('https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/ResearchSubject' )
for differential.element
select
Path: path,
join binding.where(valueSet.exists())
{
  Name: valueSet.substring((9 + valueSet.indexOf('ValueSet/'))),
  Strength: strength,
  URL: valueSet
}

---

**Suchparameter**

Folgende Suchparameter sind für das Modul Person relevant, auch in Kombination:

1. Der Suchparameter "_id" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?_id=103270```

    Anwendungshinweise: Weitere Informationen zur Suche nach "_id" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

1. Der Suchparameter "_profile" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?_profile=https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/Vitalstatus```

    Anwendungshinweise: Weitere Informationen zur Suche nach "_profile" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

1. Der Suchparameter "status" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?status=final```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Observation.status" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).

1. Der Suchparameter "category" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?category=http://terminology.hl7.org/CodeSystem/observation-category|survey```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Observation.category" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).

1. Der Suchparameter "code" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?code=http://loinc.org|67162-8```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Observation.code" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).

1. Der Suchparameter "subject" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?subject=Patient/test```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Observation.subject" finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](http://hl7.org/fhir/R4/search.html#reference).

1. Der Suchparameter "date" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?date=2022-01-01```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Observation.period" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Date Search"](http://hl7.org/fhir/R4/search.html#date).

1. Der Suchparameter "value-concept" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?value-concept=https://www.medizininformatik-initiative.de/fhir/core/modul-person/CodeSystem/Vitalstatus|T```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Observation.value" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).

---

**Beispiele**

Beispiel (vollständig):

{{json:medizininformatikinitiative-modulperson/Observation-example-1}}