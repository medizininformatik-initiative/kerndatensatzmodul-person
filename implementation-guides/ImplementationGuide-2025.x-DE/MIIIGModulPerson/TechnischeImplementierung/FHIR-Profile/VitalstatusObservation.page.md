---
topic: PersonVitalstatus
subject: https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/Vitalstatus
canonical: https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/Vitalstatus
expand: 1
---

## Vitalstatus (Observation)

---

## {{link}}

**Beschreibung**

Vitalstatus der PatientIn. Für jede Beobachtung/Angabe des Vitalstatus einer PatientIn MUSS eine neue Observation-Instanz erzeugt werden. Alle Observation-Instanzen sind als `status='final'` einzustufen.

Mindestens bei jeder Aufnahme / Entlassung der PatientIn SOLL ein Vitalstatus ("Letzter bekannter Lebenszeitpunkt") anlassbezogen als Observation erstellt werden. Die Häufigkeit der Erhebung ist ansonsten nicht weiter geregelt und kann variieren, da die Quelldaten oft nur schwer zu erschließen sind - beispielsweise nur durch manuelle Recherche, wie Kontaktaufnahme oder öffentliche Informationen (Todesanzeigen). Die administrative Entlassung der PatientIn aufgrund des Todes SOLL dokumentiert werden (siehe Modul Fall - Entlassungsgrund) und KANN als Datenquelle für den Vitalstatus nützlich sein.

@```
from 
    StructureDefinition 
where 
    url = 'https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/Vitalstatus' 
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
	        url = 'https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/Vitalstatus'
        select
	        Beschreibung: description
        with
            no header
        ```
        @```
        from 
            StructureDefinition 
        where 
            url = 'https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/Vitalstatus' 
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
| Observation.id      | Must-support, jedoch OPTIONAL       |
| Observation.meta       | Must-support, jedoch OPTIONAL         |
| Observation.meta.profile       | VERPFLICHTEND für die Abfrage im DIZ-Repsoitory inkl Versionsnummer des Profils. Siehe {{pagelink:PersonCapabilityStatement}}. In allen anderen Fällen OPTIONAL.         |
| Observation.category       | Fixed value `survey` MUSS vorhanden sein, weitere Codings OPTIONAL.         |
| Observation.code       | Fixed LOINC Code MUSS vorhanden sein, weitere Codings OPTIONAL.        |
| Observation.subject       | Patientenbezug MUSS stets gegeben sein.         |
| Observation.effectiveDateTime       | effectiveDateTime VERPFLICHTEND genaue Angabe des letzten Lebendzeitpunktes, KANN partielle Datumsangaben enthalten. Enthält **nicht** den Todeszeitpunkt (siehe Patient.deceased[x])! |

---

**Mapping**

| FHIR-Element | Logischer Datensatz |
|--------------|-----------|
| Observation.effectiveDateTime      | Person.Demographie.Vitalstatus.Zeitpunkt/-raum der Feststellung des Vitalstatus |
| MII-Metadaten-Konzept (Provenance) ist zum Stand der Veröffentlichung ungeklärt    | Person.Demographie.Vitalstatus.Informationsquelle |

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

1. Der Suchparameter "patient" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?patient=Patient/test```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Observation.subject" finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](http://hl7.org/fhir/R4/search.html#reference).

1. Der Suchparameter "date" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?date=2022-01-01```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Observation.effective" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Date Search"](http://hl7.org/fhir/R4/search.html#date).

1. Der Suchparameter "value-concept" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?value-concept=https://www.medizininformatik-initiative.de/fhir/core/modul-person/CodeSystem/Vitalstatus|T```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Observation.value" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).

1. Der Suchparameter "code-value-concept" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?code-value-concept=http://loinc.org|67162-8$https://www.medizininformatik-initiative.de/fhir/core/modul-person/CodeSystem/Vitalstatus|T```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Observation.value" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Composite Search"](http://hl7.org/fhir/R4/search.html#composite).

---

**Beispiele**

Beispiel (vollständig):

{{json:fsh-generated/resources/Observation-mii-exa-person-observation-vitalstatus.json}}