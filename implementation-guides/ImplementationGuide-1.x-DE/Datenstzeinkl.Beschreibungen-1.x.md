## Datensätze inkl. Beschreibungen

Die offizielle und abgenommene Version des Informationsmodells für das Modul PERSON findet sich auf [ART-DECOR](https://art-decor.org/art-decor/decor-datasets--mide-). Zur Vereinheitlichung der Repräsentation wurde das Informationsmodell zusätzlich als FHIR Logical Model abgebildet:

{{render:https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/LogicalModel/Person}}

Es ist zu beachten, dass das Logical Model rein auf die Abbildung der Datenelemente und deren Beschreibung abzielt. Verwendete Datentypen und Kardinalitäten sind nicht als verpflichtend anzusehen. Dies wird abschließend durch die FHIR-Profile festgelegt. Für jedes Element innerhalb des Logical Models existiert ein 1:1 Mapping auf ein Element einer konkreten FHIR Ressource.

| Logischer Datensatz | Beschreibung |
|--------------|-----------|
| Person.Name.Vorname      |  Vollständiger Vorname einer Person         |
| Person.Name.Nachname      |  Nachname einer Person ohne Vor- und Zusätze. Dient z.B. der alphabetischen Einordnung des Namens.         |
| Person.Name.Familienname      |   Der vollständige Familienname, einschließlich aller Vorsatz- und Zusatzwörter, mit Leerzeichen getrennt.        |
| Person.Name.Vorsatzwort      |  Vorsatzwort wie z.B.: "von", "van", "zu", vgl. auch VSDM-Spezifikation der Gematik (Versichertenstammdatenmanagement, "eGK")       |
| Person.Name.Namenszusatz      |  Namenszusatz als Bestandteil das Nachnamens, wie in VSDM (Versichertenstammdatenmanagement, "eGK") definiert. Beispiele: Gräfin, Prinz oder Fürst     |
| Person.Name.Präfix      | Namensteile vor dem Vornamen, z.B. akademischer Grad     |
| Person.Name.ArtdesPräfixes      |  Art des Präfixes, z.B. "AC" für Akademische Titel    |
| Person.Name.Geburtsname      | Familienname einer Person zum Zeitpunkt ihrer Geburt. Kann sich danach z.B. durch Heirat und Annahme eines anderen Familiennamens ändern.    |
| Person.Demographie.AdministrativesGeschlecht      | Administratives Geschlecht der Person  |
| Person.Demographie.Geburtsdatum      | Geburtsdatum des Patienten  |
| Person.Demographie.Adresse.Land      | Ländercode nach ISO 3166  |
| Person.Demographie.Adresse.PLZ      |  Postleitzahl gemäß der im jeweiligen Land gültigen Konventionen  |
| Person.Demographie.Adresse.Wohnort      |  Bei Personen aus Stadtstaaten inklusive des Stadtteils |
| Person.Demographie.Adresse.Straße      |  Straßenname mit Hausnummer oder Postfach sowie weitere Angaben zur Zustellung|
| Person.Demographie.Vitalstatus.PatientVerstorben      |  Gibt an, ob der Patient am Leben oder verstorben ist.|
| Person.Demographie.Vitalstatus.Todeszeitpunkt |  Gibt den Todeszeitpunkt des Patienten an, falls dieser im KH verstorben ist. Ansonsten "Null Flavor". |
| Person.Demographie.Vitalstatus.Informationsquelle | Quelle des Vitalstatus|
| Person.Demographie.Vitalstatus.LetzterLebendzeitpunkt	 | Letzter bekannter Zeitpunkt, zu dem die Person noch am Leben war |
| Person.Demographie.Vitalstatus.Todesgrund	 | Grund für den Tod der PatientIn. Kodiert per ICD-10 GM. |
| Person.Patient.Patienten-Identifikator.Patienten-Identifikator |Gesundheitseinrichtungs-eigene Identifikationsnummer für einen Patienten |
| Person.Patient.Patienten-Identifikator.Patienten-IdentifikatorKontext |Der Kontext des Patienten-Identifikators um den Patienten-Identifikator zu beschreiben, da der Patient innerhalb einer Gesundheitseinrichtung möglicherweise pro System eine Nummer (im Krankenhaus: "Labor", "Radiologie", "internistische Station" etc.) bekommt. |
| Person.Patient.Versicherung.Versicherungsnummer | Angaben zur Identifikation der versicherten Person|
| Person.Patient.Versicherung.Versicherungsnummer.VersichertenID-GKV | Unveränderlicher Teil der Krankenversichertennummer (VersichertenID) bei GKV Patienten. Diese findet sich z.B. auf der Mitgliedskarte der Krankenkasse.|
| Person.Patient.Versicherung.Versicherungsnummer.Versichertennummer-PKV | Versichertennummer bei PKV Patienten. Vergabe erfolgt durch die jeweilige Private Krankenversicherung.|
Person.Patient.Versicherung.InstitutionskennzeichenDerKrankenkasse|Die Institutionskennzeichen (kurz: IK) sind bundesweit eindeutige, neunstellige Zahlen, mit deren Hilfe Abrechnungen und Qualitätssicherungsmaßnahmen im Bereich der deutschen Sozialversicherung einrichtungsübergreifend abgewickelt werden können.|
| Person.Patient.Versicherung.Versicherungstyp| Versicherungstyp des Patienten|
| Person.Studienteilnehmer.SubjektIdentifizierungscode| eindeutiger Identifikator eines Patienten im Kontext eines Forschungsprojekts (klinische Studie, Use Case)|
| Person.Studienteilnehmer.Rechtsgrundlage|Rechtsgrundlage (z.B. Einwilligung), aufgrund derer der oder die PatientIn in die Studie eingeschlossen werden darf|
| Person.Studienteilnehmer.BeginnTeilnahme| Beginn der Teilnahme der Person an der Studie|
| Person.Studienteilnehmer.EndeTeilnahme| Ende der Teilnahme der Person an der Studie|
| Person.Studienteilnehmer.StatusDerTeilnahme|  Stand der Teilnahme einer Person an der Studie, z.B. "eingeschlossen", "widerrufen", "abgeschlossen" etc.|

<!--- @``` from StructureDefinition where url =  'https://www.medizininformatik-initiative.de/fhir/core/StructureDefinition/Person' select differential.element.short ```
-->