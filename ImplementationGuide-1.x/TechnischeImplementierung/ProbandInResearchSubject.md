## ProbandIn (ResearchSubject)

Dieses Profil beschreibt eine ProbandIn in der Medizininformatik-Initiative.

Beim Einschluss einer Person in eine Studie (auch in einen MII-Use Case) muss für diese Person eine ResearchSubject-Ressource erstellt werden. Es sind folgende Varianten zu unterscheiden:

* Der Einschluss erfolgt durch eine spezifische Informierte Einwilligung für eine Studie.

* Der Einschluss erfolgt auf der Basis einer Breiten Informierten Einwilligung („Broad Consent“).

* Der Einschluss erfolgt auf der Basis einer speziellen gesetzlichen Grundlage (Spezialgesetz wie Landeskrankenhausgesetz, Infektionsschutzgesetz oder Krebsregistergesetz). Dies gilt gleichermaßen für die Personen der Untersuchungsgruppe, der Kontrollgruppe und jeder Form von Referenzpopulation, für die personenbezogene (oder personenbeziehbare) Einzelangaben in Berechnungen einbezogen werden.

Die Erstellung der Ressource muss zum Zeitpunkt des Abrufens der Daten für die Studie erfolgen. Weitere Pflichten und Anpassungen sind für jeden Use Case zu prüfen.

**Name**: ProfileResearchSubjectProbandIn ([Simplifier Link](https://simplifier.net/medizininformatikinitiative-modulperson/probantin))

**Canonical**: ```https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/ResearchSubject```

**Differential**

{{tree:https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/ResearchSubject, diff}}

<br>

| FHIR-Element | Erklärung |
|--------------|-----------|
| Patient.id      | Must-support, jedoch optional        |
| Patient.meta       | Must-support, jedoch optional         |
| Patient.identifier:subjectIdentificationCode      | Fixes NamingSystem zur einheitlichen, standort-übergreifenden Abfrage des Identifiers (bei Auswertungen)         |
| Patient.period.start      | Startdatum (Einschluss der PatientIn in die Studie)      |
| Patient.period.end      | Enddatum (Abschluss der Studie oder Ausschluss der PatientIn)       |
| Patient.study      | Referenz auf die Metadaten der Studie an welcher die PatientIn teilnimmt. Weitere Vorgaben siehe Erweiterungsmodul STUDIENDATEN. |
| Patient.individual      | Jede ProbandIn muss einer PatientIn zugeordnet werden. |
| Patient.consent      | Einwilligung in die Studie oder regulatorische Grundlage muss vorliegen. Weitere Vorgaben für die Modellierung des Consents können durch andere Erweiterungsmodule entstehen. |

<br>

| FHIR-Element | Logischer Datensatz |
|--------------|-----------|
| ResearchSubject.identifier:subjectIdentificationCode       | Person.Studienteilnehmer.SubjektIdentifizierungscode         |
| ResearchSubject.status       | Person.Studienteilnehmer.StatusDerTeilnahme         |
| ResearchSubject.period.start       | Person.Studienteilnehmer.BeginnTeilnahme         |
| ResearchSubject.period.end       | Person.Studienteilnehmer.EndeTeilnahme         |
| ResearchSubject.consent       | Person.Studienteilnehmer.Rechtsgrundlage        |


---

**Snapshot**

{{tree:https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/ResearchSubject, snapshot}}

---

**Beispiele**

Beispiel (vollständig):

{{json:medizininformatikinitiative-modulperson/ResearchSubject-example-1}}

---