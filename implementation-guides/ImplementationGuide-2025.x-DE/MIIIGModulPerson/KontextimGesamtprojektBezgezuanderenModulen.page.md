---
parent: 
---
## Kontext im Gesamtprojekt / Bezüge zu anderen Modulen

Das Modul PERSON spielt in Form der Entität PatientIn und in Form der Entität ProbandIn in allen Use Cases der MII eine zentrale Rolle:

* PatientIn: Sekundärnutzung von Versorgungsdaten bildet den Schwerpunkt der MII. Daten eines Patienten gibt es nur, wenn es die Entität PatientIn gibt. Die lokalen DIZ halten die lokalen Patientendaten zur Nutzung bereit.

* ProbandIn: Jeder Einschluss in einen MII-Use-Case generiert einen Probanden

Person, PatientIn und ProbandIn stehen am Anfang aller Pfade. Dies gilt bereits, wenn nur lokal am Standort der Versorgung Daten der dortigen Versorgung „findable“, „accessible“, „interoperable“ und „reusable“ ([FAIR-Prinzipien](https://www.go-fair.org/fair-principles/)) aufbereitet und bereitgehalten werden und wenn eine erste Studie geplant wird.

Die zentrale Ankerrolle kommt dem MODUL PERSON mit den Entitäten PatientIn und ProbandIn zu. Da jede Einrichtung ihre eigene Instanz des MII-Kerndatensatzes für alle Patienten der Einrichtung pflegt, liegt zunächst pro Standort in der Regel eine 1:1-Beziehung zwischen Person und PatientIn vor. Da keine Person an einer Studie teilnehmen muss, aber an vielen Studien teilnehmen darf, liegt zwischen Person und Proband eine 0:n-Beziehung vor. Regelmäßig erfolgen Studienteilnahmen und Notationen als PatientIn auf der Basis der Einwilligungen der Patienten. Die Teilnahme kann aber auch auf einer gesetzlichen Grundlage ohne Abstimmung mit den Personen erfolgen, wie zum Beispiel im HiGHmed-Use-Case Infection Control, in den alle Patienten der teilnehmenden Häuser (Infizierte als Untersuchungsgruppe und Nicht-Infizierte als Referenzgruppe) auf der Basis des Infektionsschutzgesetzes (IfSG) einen Subjekt-Identifizierungscode erhalten und somit eingeschlossen werden.
