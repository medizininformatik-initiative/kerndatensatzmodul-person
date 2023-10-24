## Medizininformatik-Initiative - Kerndatensatz - Modul Person - Release 2023

### Übersicht

[![FHIR Project on GitHub.com](https://img.shields.io/badge/FHIR_project_on_GitHub.com-kerndatensatzmodul--person-green)](https://github.com/medizininformatik-initiative/kerndatensatzmodul-person/tree/master-1.x) 

[![CI (FHIR Validation)](https://github.com/medizininformatik-initiative/kerndatensatzmodul-person/actions/workflows/main.yml/badge.svg?branch=master-1.x)](https://github.com/medizininformatik-initiative/kerndatensatzmodul-person/actions/workflows/main.yml)

Das vorliegende Projekt beschreibt die FHIR-Spezifikation des Basismoduls 'Person', welches einen zentralen Teil des Kerndatensatzes der Medizininformatik-Initiative darstellt. Die hier veröffentlichten FHIR-Profile und ImplemenationGuides dienen als zentrale und verbindliche Spezifikation für die syntaktische und semantische Kodierung der Modulinhalte.

### Status:

Vorschauversion: n/A<br>
Aktuelle stabile Version: 1.0.17

Alle veröffentlichen FHIR-Artefakte innerhalb des Projektes verfügen über einen Status durch welchen der jeweilige Reifegrad abgeleitet werden kann.
Profile mit dem Status 'Draft' wurden noch nicht ballotiert und können noch diversen und substantiellen Änderungen unterliegen. Verpflichtende und ballotierte Ergebnisse sind unter dem Tab 'Packages' zu finden.

### Mitwirkungs- und Kommentierungsmöglichkeiten

* Kommentareinreichung via [GitHub](https://github.com/medizininformatik-initiative/kerndatensatzmodul-person/issues)
* Diskussionsforum im int. [FHIR-Chat](https://chat.fhir.org/#narrow/stream/179307-german.2Fmi-initiative)
* Teilnahme am [Interoperabilitätsforum](https://wiki.hl7.de/index.php?title=Interoperabilitätsforum)

### Kurzzusammenfassung

Der Kerndatensatz soll eine Datensatzbeschreibung mit der Bezeichnung PERSON enthalten, die zur Herstellung der Bezüge zu den anderen Modulen genutzt wird. Neben der Verwendung standortinterner Identifikatoren, kann das Modul Person bei Bedarf auch (direkte oder indirekte) Personenmerkmale für eine einrichtungs- und sektorenübergreifende (longitudinale) Integration enthalten.

**Hinweis:** Das Kerndatensatz-Modul 'Demographie' wurden mit dem Modul 'Person' aufgrund seiner inhaltlichen Nähe zusammengelegt. Somit fallen folgende Inhalte auch unter die hier veröffentlichte Spezifikation.

Führende Demographieparameter sind (Geburtsdatum), Alter, Geschlecht und Vitalstatus (lebend/verstorben). Auch der Wohnort (ggfs. vergröbert nach Amtlichen Gemeindeschlüssel (AGS)) darf zu den engeren Basisdaten gezählt werden.

### Wichtige Dokumente und Links
* [Beschreibung des MII-Kerndatensatzes in der Version 1.0 vom 10.3.2017 (PDF)](https://www.medizininformatik-initiative.de/sites/default/files/inline-files/MII_04_Kerndatensatz_1-0.pdf)
* [Datenmodellbeschreibung des MII-Kerndatensatzes in ART-DECOR](https://art-decor.org/art-decor/decor-project--mide-)
* [GitHub Repository](https://github.com/medizininformatik-initiative/kerndatensatzmodul-person)

### Autoren und Ansprechpartner

Leitung des Moduls:

* Sylvia Thun, Berlin Institute of Health at Charité (BIH)
* Julian Saß, Berlin Institute of Health at Charité (BIH)

Technische Umsetzung:

* Alexander Zautke (Technische Umsetzung FHIR Profile und ImplemenationGuides)
* Julian Saß (Technische Umsetzung FHIR Profile und ImplemenationGuides)
* Miriam Hübner (Technische Umsetzung Logical Models)