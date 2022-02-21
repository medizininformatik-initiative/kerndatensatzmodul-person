# Kerndatensatz Modul Person

| Hinweis | Under Construction! |
|---------|---------------------|
| {{render:Warning}} | Dieser Implementation Guide stellt die aktuelle Arbeitsversion des Moduls 'Person' dar. Die jeweils für den produktiven Einsatz veröffentlichte Version finden Sie auf [dieser Seite der Medizininformatik-Initiative](https://www.medizininformatik-initiative.de/Kerndatensatz/Modul_Person/IGMIIKDSModulPerson.html).|

Die vorliegende Spezifikation beschreibt die FHIR-Repräsentation des Kerndatensatz Moduls 'Person' der Medizinformatik-Initative.
Im Folgenden werden die Use-Case des Moduls sowie die dazuhegörigen FHIR-Profile und Terminologie-Ressourcen in ihrer verbindlichen Form beschrieben.

| Veröffentlichung   |   |
|---------|---|
| Datum   | 27.05.2021  |
| Version | 1.0.14         |
| Status  | Active       |
| Realm   | DE          | 


## Inhaltsverzeichnis

{{index:root}}

## Impressum
Dieser Leitfaden ist im Rahmen der Medizininformatik-Initative erstellt wurden und unterliegt per Governance-Prozess dem Abstimmungsverfahren des Interoperabilitätsforums und der Technischen Komitees von HL7 Deutschland e. V.

## Ansprechpartner
* Josef Schepers, Berlin Institute of Health (BIH)
* Andrea Essenwanger, Berlin Institute of Health (BIH)
* Karoline Buckow, TMF – Technologie- und Methodenplattform
für die vernetzte medizinische Forschung e.V.

Fragen zu der vorliegenden Publikation können jederzeit unter [chat.fhir.org](https://chat.fhir.org/#narrow/stream/179307-german.2Fmi-initiative) im Stream 'german/mi-initiative' gestellt werden.

Anmerkungen und Kritik wird in Form von 'Issues' im Simplifier-Projekt stets gern entgegengenommen.

## Autoren (in alphabetischer Reihenfolge)

* Alexander Zautke (HL7 Deutschland)
* Andrea Essenwanger (HiGHmed)
* Antje Wulff (HiGHmed)
* Caroline Böhnisch (HiGHmed)
* Christian Kamann (MIRACUM)
* Dagmar Büschges (SMITH)
* Danny Ammon (SMITH)
* Detlef Kraska (MIRACUM)
* Eugenia Rinaldi (HiGHmed)
* Fabian Prasser (DIFUTURE)
* Florian Rißner (SMITH)
* Hauke Hund (HiGHmed)
* Heinrich Lautenbacher (DIFUTURE)
* Holger Stenzhorn (DIFUTURE)
* Josef Schepers (HiGHmed)
* Julia Schaefer (Universität Berlin)
* Julian Saß (HiGHmed)
* Kai Heitmann (HL7 Deutschland)
* Kutaiba Saleh (SMITH)
* Laurence Strasser (Medizinische Universität Wien)
* Martin Boeker (MIRACUM)
* Matthias Löbe (SMITH)
* Miriam Hübner (Universität zu Lübeck)
* Moritz Lehne (HiGHmed)
* Quynh Trang Nguyen Thi (Technische Universität Ilmenau)
* Raffael Bild (DIFUTURE)
* Sylvia Thun (HL7 Deutschland)
* Thomas Ganslandt (MIRACUM)
* Toralf Kirsten (SMITH)
* Ulrich Sax (HiGHmed)

## Copyright-Hinweis, Nutzungshinweise
Copyright © 2019: TMF e. V., Charlottenstraße 42, 10117 Berlin

Der Inhalt dieser Spezifikation ist öffentlich. Die Nachnutzungs- bzw. Veröffentlichungsansprüche sind nicht beschränkt.

Zu den Nutzungsrechten der zugrunde liegenden FHIR-Technologie siehe die FHIR-Basis-Spezifikation.

Einige verwendete Codesysteme werden von anderen Organisationen herausgegeben und gepflegt. Es gilt das Copyright der dort jeweils aufgeführten Herausgeber (Publisher).

## Disclaimer
* Der Inhalt dieses Dokuments ist öffentlich. Zu beachten ist, dass Teile dieses Dokuments auf FHIR Version R4 beruhen, für die das Copyright von HL7 International gilt.

* Obwohl diese Publikation mit größter Sorgfalt erstellt wurde, können die Autoren keinerlei Haftung für direkten oder indirekten Schaden übernehmen, der durch den Inhalt dieser Spezifikation entstehen könnte.

<br><br>