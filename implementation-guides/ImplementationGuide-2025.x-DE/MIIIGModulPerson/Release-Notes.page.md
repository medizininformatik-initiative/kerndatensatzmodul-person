## {{page-title}}

**Version: 2025.0.0**
- Die Profile enthalten zusätzliche Beschreibungen und Übersetzungen zur Anzeige im FDPG. 

**Version: 2024.0.0**

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

