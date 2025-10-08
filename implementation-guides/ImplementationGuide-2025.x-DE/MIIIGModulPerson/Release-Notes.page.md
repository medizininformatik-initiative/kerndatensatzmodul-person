## {{page-title}}

**Version: 2025.0.1**

Datum 08.10.2025

- `Added`: Profil {{pagelink: PersonPatientPseudonymisiert, text: Patient:in Pseudonymisiert (Patient), hint: MII_PR_Person_PatientPseudonymisiert}} enthält unter `Patient.identifier` optionalen Identifier für maskierte Krankenversicherten-ID. 
- `Changed`: ValueSet MII_VS_Person_ICD10WHO wurde [retired](http://hl7.org/fhir/R4/codesystem-publication-status.html#publication-status-retired), da redundant. Das ICD-10-WHO CodeSystem verweist mittels `CodeSystem.valueSet` schon auf implizietes ICD-10-WHO ValueSet. Siehe: https://github.com/medizininformatik-initiative/kerndatensatzmodul-person/issues/86
- `Changed`: Dependency aktualisiert auf [de.basisprofil.r4 1.5.4](https://simplifier.net/packages/de.basisprofil.r4/1.5.4). Dieses Release der FHIR-Basisprofile enthält einen Fix für die kvid-2-Invariante, die im Profil Patient:in (MII_PR_Person_Patient) auf `Patient.identifier:versichertenId.type` angewendet wird.

**Version: 2025.0.0**

Datum 06.12.2024

- Dependency auf de.basisprofil.r4 aktualisiert auf Version 1.5.0
    - Dadurch Änderung im Profil {{pagelink: PersonPatientIn, text: Patient:in (Patient), hint: MII_PR_Person_Patient}} im Element `Patient.identifier`:  GKV- und PKV-Krankenversichertennummern verwenden jetzt ein einheitliches Identifier-Profil [IdentifierKvid10](https://simplifier.net/packages/de.basisprofil.r4/1.5.0/files/2461154). `Patient.identifier.type` MUSS auf `KVZ10` geändert werden für Krankenversichertennummern. Die zuvor verwendeten Codes `GKV` und `PKV` für `Patient.identifier.type` haben den Status `retired` (siehe [CodeSystem IdentifierTypeDeBasis](https://simplifier.net/packages/de.basisprofil.r4/1.5.0/files/2461165)). Patient-Ressourcen der Version 2024 sind weiterhin valide, SOLLTEN aber auf den neuen Identifier wechseln.
- Das Profil {{pagelink: PersonProbandIn, text: Proband:in (ResearchSubject), hint: MII_PR_Person_Proband}} wurde [retired](http://hl7.org/fhir/R4/codesystem-publication-status.html#publication-status-retired). Beginnend mit Version 2025.0.0 wird dieses Profil im Modul Studie veröffentlicht und weiterentwickelt. Implementierungen SOLLTEN auf die Modellierung aus dem Modul Studie wechseln. 
- CodeSystem ICD-10-WHO v2019 und v2016 wurden entfernt. Diese können nun über die Service Unit Terminologische Dienste (SU-TermServ) bezogen werden: https://www.ontoserver.mii-termserv.de/
- Suchparameter aus diesem Modul wurden entfernt. SearchParameter-Ressourcen werden nun zentral im Modul Meta verwaltet.
- Profile enthalten zusätzliche Beschreibungen und Übersetzungen  für Implementierer und das Forschungsdatenportal für Gesundheit (FDPG).

**Version: 2024.0.0**

Datum 16.04.2024

- Die veröffentlichten FHIR-Packages verwenden nun [Calender Versioning (CalVer)](https://calver.org/) nach dem Schema YYYY.MINOR.PATCH. Damit wird ein Releasezyklus im Jahresrhythmus etabliert. Die Jahresversion (YYYY) zeigt das Jahr an, in dem das Kerndatensatzmodul angewendet wird. MINOR-Versionen werden bei Einführung neuer Funktionen, Erweiterungen oder substantieller Änderungen veröffentlicht. PATCH-Versionen umfassen Bugfixes oder textuelle Korrekturen.
- Die Benennung der Conformance-Ressourcen und Beispielinstanzen folgt nun einheitlichen [MII-Namenskonventionen](https://github.com/medizininformatik-initiative/kerndatensatz-meta/wiki/Namenskonventionen-f%C3%BCr-FHIR%E2%80%90Ressourcen-in-der-MII).
- Ressourcen verwenden in diesem Release modulübergreifend SNOMED CT in der Version `http://snomed.info/sct/900000000000207008/version/20230731`, um eine stabile [ValueSet-Expansion](http://hl7.org/fhir/R4/valueset.html#expansion) sicherzustellen.
- Im Profil {{pagelink: PersonPatientIn, text: Patient:in (Patient), hint: MII_PR_Person_Patient}} wurden alle min 1.. Kardinalitäten aufgehoben. 
- Das Profil {{pagelink: PersonPatientPseudonymisiert, text: Patient:in Pseudonymisiert (Patient), hint: MII_PR_Person_PatientPseudonymisiert}} für die pseudonymisierte Version der Patient-Ressource ist neu hinzugekommen seit Version 1.0. Im Vergleich zu vorab veröffentlichten Versionen wurden alle 0..0 Kardinalitäten aufgehoben. Außerdem werden keine Regeln zur Pseudonymisierung mehr durch das Profil vorgeschrieben. Die genauen Regeln zur Pseudonymisierung innerhalb der Medizininformatik-Initiative werden noch erarbeitet und können in einer späteren Version des Profils Anwendung finden. Folglich wurden folgende Invarianten entfernt: 
    - ‘GeburtsdatumRundenAufQuartal’ auf *Patient.birthDate*
    - ‘TodesdatumKeineZeitangabe’ auf *Patient.deceasedDateTime*
    - ‘PostleitzahlEinschraenkung’ auf *Patient.address.postalCode*
- Neu im Vergleich zu Version 1.0 ist das Profil {{pagelink: PersonTodesursache, text: Todesursache (Condition), hint: MII_PR_Person_Todesursache}} zur Abbildung der Todesursache mittels ICD-10-WHO.
- Im {{pagelink: LogicalModel, text: Logischen Modell, hint: Datensätze inkl. Beschreibungen}} wurden die Datentypen angepasst, um den Datentypen der Elemente im FHIR-Profil zu entsprechen, auf welches gemappt wird.

