---
topic: PersonProbandIn
subject: https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/ResearchSubject
canonical: https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/ResearchSubject
expand: 1
---

## Proband:in (ResearchSubject)

---

## {{link}}

| Hinweis |  |
|---------|---------------------|
| {{render:implementation-guides/ImplementationGuide-Common/images/Warning.jpg}} | Dieses Profil hat den status [retired](http://hl7.org/fhir/R4/codesystem-publication-status.html#publication-status-retired). Beginnend mit Version 2025.0.0 wird dieses Profil im Modul Studie veröffentlicht und weiterentwickelt. |

**Beschreibung**

Dieses Profil beschreibt eine ProbandIn in der Medizininformatik-Initiative.

Beim Einschluss einer Person in eine Studie (auch in einen MII-Use Case) MUSS für diese Person eine ResearchSubject-Ressource erstellt werden. Es sind folgende Varianten zu unterscheiden:

* Der Einschluss erfolgt durch eine spezifische Informierte Einwilligung für eine Studie.

* Der Einschluss erfolgt auf der Basis einer Breiten Informierten Einwilligung („Broad Consent“).

* Der Einschluss erfolgt auf der Basis einer speziellen gesetzlichen Grundlage (Spezialgesetz wie Landeskrankenhausgesetz, Infektionsschutzgesetz oder Krebsregistergesetz). Dies gilt gleichermaßen für die Personen der Untersuchungsgruppe, der Kontrollgruppe und jeder Form von Referenzpopulation, für die personenbezogene (oder personenbeziehbare) Einzelangaben in Berechnungen einbezogen werden.

Die Erstellung der Ressource MUSS zum Zeitpunkt des Abrufens der Daten für die Studie erfolgen. Weitere Pflichten und Anpassungen sind für jeden Use Case zu prüfen.

@```
from 
    StructureDefinition 
where 
    url = 'https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/ResearchSubject' 
select 
    Name: name, Status: status, Version: version, Canonical: url, Basis: baseDefinition
```

### Inhalt

<tabs>
  <tab title="Darstellung">{{tree, buttons}}</tab>
  <tab title="Beschreibung"> 
        @```
        from
	        StructureDefinition
        where
	        url = 'https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/ResearchSubject'
        select
	        Beschreibung: description
        with
            no header
        ```
        @```
        from 
            StructureDefinition 
        where 
            url = 'https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/ResearchSubject' 
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
| ResearchSubject.id      | Must-support, jedoch optional        |
| ResearchSubject.meta       | Must-support, jedoch optional         |
| ResearchSubject.meta.profile       | VERPFLICHTEND für die Abfrage im DIZ-Repsoitory inkl Versionsnummer des Profils. Siehe {{pagelink:PersonCapabilityStatement}}. In allen anderen Fällen optional.         |
| Patient.identifier:subjectIdentificationCode      | Fixes NamingSystem zur einheitlichen, standort-übergreifenden Abfrage des Identifiers (bei Auswertungen)         |
| ResearchSubject.period.start      | Startdatum (Einschluss der PatientIn in die Studie)      |
| ResearchSubject.period.end      | Enddatum (Abschluss der Studie oder Ausschluss der PatientIn)       |
| ResearchSubject.study      | Referenz auf die Metadaten der Studie an welcher die PatientIn teilnimmt. Weitere Vorgaben siehe Erweiterungsmodul STUDIENDATEN. |
| ResearchSubject.individual      | Jede ProbandIn MUSS einer PatientIn zugeordnet werden. |
| ResearchSubject.consent      | Einwilligung in die Studie oder regulatorische Grundlage MUSS vorliegen. Weitere Vorgaben für die Modellierung des Consents können durch andere Erweiterungsmodule entstehen. |

---

**Mapping**

| FHIR-Element | Logischer Datensatz |
|--------------|-----------|
| ResearchSubject.identifier:subjectIdentificationCode       | Person.Studienteilnehmer.SubjektIdentifizierungscode         |
| ResearchSubject.status       | Person.Studienteilnehmer.StatusDerTeilnahme         |
| ResearchSubject.period.start       | Person.Studienteilnehmer.BeginnTeilnahme         |
| ResearchSubject.period.end       | Person.Studienteilnehmer.EndeTeilnahme         |
| ResearchSubject.consent       | Person.Studienteilnehmer.Rechtsgrundlage        |


---

**Suchparameter**

Folgende Suchparameter sind für das Modul Person relevant, auch in Kombination:

1. Der Suchparameter "_id" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/ResearchSubject?_id=103270```

    Anwendungshinweise: Weitere Informationen zur Suche nach "_id" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

1. Der Suchparameter "_profile" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/ResearchSubject?_profile=https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/ResearchSubject```

    Anwendungshinweise: Weitere Informationen zur Suche nach "_profile" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

1. Der Suchparameter "identifier" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/ResearchSubject?identifier=http://fhir.krankenhaus.example/sid/subjectIdentificationCode|1032702```

    Anwendungshinweise: Weitere Informationen zur Suche nach "ResearchSubject.identifier" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).

1. Der Suchparameter "status" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/ResearchSubject?status=candidate```

    Anwendungshinweise: Weitere Informationen zur Suche nach "ResearchSubject.status" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).


1. Der Suchparameter "date" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/ResearchSubject?date=2022-01-01```

    Anwendungshinweise: Weitere Informationen zur Suche nach "ResearchSubject.period" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Date Search"](http://hl7.org/fhir/R4/search.html#date).

1. Der Suchparameter "study" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/ResearchSubject?study=ResearchStudy/study```

    Anwendungshinweise: Weitere Informationen zur Suche nach "ResearchStudy.study" finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](http://hl7.org/fhir/R4/search.html#reference).

1. Der Suchparameter "individual" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/ResearchSubject?individual=Patient/test```

    Anwendungshinweise: Weitere Informationen zur Suche nach "ResearchStudy.individual" finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](http://hl7.org/fhir/R4/search.html#reference).

1. Der Suchparameter "consent" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/ResearchSubject?consent=Consent/test```

    Anwendungshinweise: Weitere Informationen zur Suche nach "ResearchStudy.consent" finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](http://hl7.org/fhir/R4/search.html#reference).

---
