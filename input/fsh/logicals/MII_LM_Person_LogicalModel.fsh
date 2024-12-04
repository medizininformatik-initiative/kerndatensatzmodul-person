Logical: MII_LM_Person
Parent: Element
Id: mii-lm-person
Title: "MII LM Person"
Description: "Logische Repräsentation des Basismoduls Person"
* ^url = "https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/LogicalModel/Person"
* insert PR_CS_VS_Version
* insert Publisher
* insert LicenseCodeableCCBY40
* ^date = "2024-12-04"
* . ^short = "-- Überschrift --"
* . insert Translation(^short, en, -- Heading --)
* Name 0..* BackboneElement "Vollständiger Name einer Person." "Vollständiger Name einer Person."
* Name insert Translation(^short, en, Full name of a person)
  * Vorname 0..* string "Vollständiger Vorname einer Person." "Vollständiger Vorname einer Person."
  * Vorname insert Translation(^short, en, Full given name of a person)
  * Nachname 0..1 string "Nachname einer Person ohne Vor- und Zusätze. Dient z.B. der alphabetischen Einordnung des Namens." "Nachname einer Person ohne Vor- und Zusätze. Dient z.B. der alphabetischen Einordnung des Namens."
  * Nachname insert Translation(^short, en, Last name of a person without prefixes and suffixes. Serves e.g. the alphabetical classification of the name.)
  * Familienname 0..1 string "Der vollständige Familienname, einschließlich aller Vorsatz- und Zusatzwörter, mit Leerzeichen getrennt." "Der vollständige Familienname, einschließlich aller Vorsatz- und Zusatzwörter, mit Leerzeichen getrennt."
  * Familienname insert Translation(^short, en, [[The full family name, including all prefix and suffix words, separated by spaces.]])
  * Vorsatzwort 0..1 string "Vorsatzwort wie z.B.: von, van, zu Vgl. auch VSDM-Spezifikation der Gematik (Versichertenstammdatenmanagement, \"eGK\")" "Vorsatzwort wie z.B.: von, van, zu Vgl. auch VSDM-Spezifikation der Gematik (Versichertenstammdatenmanagement, \"eGK\")"
  * Vorsatzwort insert Translation(^short, en, [[Prefix word such as: \"von\", \"van\", \"zu\", cf. also VSDM specification of Gematik (Versichertenstammdatenmanagement, \"eGK\")]])
  * Namenszusatz 0..1 string "Namenszusatz als Bestandteil das Nachnamens, wie in VSDM (Versichertenstammdatenmanagement, \"eGK\") definiert. Beispiele: Gräfin, Prinz oder Fürst" "Namenszusatz als Bestandteil das Nachnamens, wie in VSDM (Versichertenstammdatenmanagement, \"eGK\") definiert. Beispiele: Gräfin, Prinz oder Fürst"
  * Namenszusatz insert Translation(^short, en, [[Name suffix as part of the last name, as defined in VSDM (Versichertenstammdatenmanagement, \"eGK\"). Examples: Countess, Prince, or Prince]])
  * Praefix 0..* string "Namensteile vor dem Vornamen, z.B. akademischer Grad" "Namensteile vor dem Vornamen, z.B. akademischer Grad"
  * Praefix insert Translation(^short, en, [[Parts of the name before the first name, e.g. academic degree]])
    * ArtdesPraefixes 0..1 code "Art des Präfixes, z.B. \"AC\" für Akademische Titel" "Art des Präfixes, z.B. \"AC\" für Akademische Titel"
    * ArtdesPraefixes insert Translation(^short, en, [[Type of prefix, e.g. \"AC\" for Academic Titel]])
  * Geburtsname 0..1 string "Familienname einer Person zum Zeitpunkt ihrer Geburt. Kann sich danach z.B. durch Heirat und Annahme eines anderen Familiennamens ändern." "Familienname einer Person zum Zeitpunkt ihrer Geburt. Kann sich danach z.B. durch Heirat und Annahme eines anderen Familiennamens ändern."
  * Geburtsname insert Translation(^short, en, [[Family name of a person at the time of his or her birth. Can change afterwards, e.g. by marriage and adoption of another family name.]])
* Demographie 0..* BackboneElement "Das Basismodul Demographie enthält demographische Parameter (Alter, Geschlecht etc.)." "Das Basismodul Demographie enthält demographische Parameter (Alter, Geschlecht etc.)."
* Demographie insert Translation(^short, en, [[The basic demography module contains demographic parameters (age, gender, etc.).]])
  * AdministrativesGeschlecht 0..1 code "Administratives Geschlecht der Person" "Administratives Geschlecht der Person"
  * AdministrativesGeschlecht insert Translation(^short, en, [[Administrative sex of the person]])
  * Geburtsdatum 0..1 date "Geburtsdatum des Person." "Geburtsdatum des Person."
  * Geburtsdatum insert Translation(^short, en, [[Date of birth of the patient]])
  * Adresse 0..* BackboneElement "Vollständige Anschrift einer Person für die postlische Kommunikation." "Vollständige Anschrift einer Person für die postlische Kommunikation."
  * Adresse insert Translation(^short, en, [[Full address of a person for postal communication.]])
    * Strassenanschrift 0..* BackboneElement "Eine Adresse für die Strassenanschrift gemäß postalischer Konventionen. Bei Stadtstaaten einschließlich Bezirken." "Eine Adresse für die Strassenanschrift gemäß postalischer Konventionen. Bei Stadtstaaten einschließlich Bezirken."
    * Strassenanschrift insert Translation(^short, en, [[Postal code according to the conventions valid in the respective country. For persons from city states including the city district]])
      * Land 1..1 string "Ländercode nach ISO 3166." "Ländercode nach ISO 3166."
      * Land insert Translation(^short, en, [[Country code according to ISO 3166]])
      * PLZ 1..1 string "Postleitzahl gemäß der im jeweiligen Land gültigen Konventionen." "Postleitzahl gemäß der im jeweiligen Land gültigen Konventionen."
      * PLZ insert Translation(^short, en, [[Postal code according to the conventions valid in the respective country]])
      * Wohnort 1..1 string "Bei Personen aus Stadtstaaten inklusive des Stadtteils." "Bei Personen aus Stadtstaaten inklusive des Stadtteils."
      * Wohnort insert Translation(^short, en, [[For persons from city states including the city district]])
      * Strasse 1..1 string "Straßenname mit Hausnummer oder Postfach sowie weitere Angaben zur Zustellung." "Straßenname mit Hausnummer oder Postfach sowie weitere Angaben zur Zustellung."
      * Strasse insert Translation(^short, en, [[Street name with house number or P.O. Box and other delivery details]])
    * Postfach 0..* BackboneElement "Eine Adresse für ein Postfach gemäß postalischer Konventionen. Bei Stadtstaaten einschließlich Bezirken." "Eine Adresse für ein Postfach gemäß postalischer Konventionen. Bei Stadtstaaten einschließlich Bezirken."
    * Postfach insert Translation(^short, en, [[Postal code according for a P.O box to the conventions valid in the respective country. For persons from city states including the city district.]])
      * Land 1..1 string "Ländercode nach ISO 3166." "Ländercode nach ISO 3166."
      * Land insert Translation(^short, en, [[Country code according to ISO 3166]])
      * PLZ 1..1 string "Postleitzahl gemäß der im jeweiligen Land gültigen Konventionen." "Postleitzahl gemäß der im jeweiligen Land gültigen Konventionen."
      * PLZ insert Translation(^short, en, [[Postal code according to the conventions valid in the respective country]])
      * Wohnort 1..1 string "Bei Personen aus Stadtstaaten inklusive des Stadtteils." "Bei Personen aus Stadtstaaten inklusive des Stadtteils."
      * Wohnort insert Translation(^short, en, [[For persons from city states including the city district]])
      * Strasse 1..1 string "Straßenname mit Hausnummer oder Postfach sowie weitere Angaben zur Zustellung." "Straßenname mit Hausnummer oder Postfach sowie weitere Angaben zur Zustellung."
      * Strasse insert Translation(^short, en, [[Street name with house number or P.O. Box and other delivery details]])
  * Vitalstatus 0..* BackboneElement "Gibt an, ob ein Patient verstorben ist. Falls ja, zudem den Zeitpunkt." "Gibt an, ob ein Patient verstorben ist. Falls ja, zudem den Zeitpunkt."
  * Vitalstatus insert Translation(^short, en, [[Indicates whether a patient has died. If yes, also the time is recorded.]])
    * PatientVerstorben 0..1 boolean "Gibt an, ob der Patient am Leben oder verstorben ist." "Gibt an, ob der Patient am Leben oder verstorben ist."
    * PatientVerstorben insert Translation(^short, en, [[Indicates whether the patient is alive or deceased.]])
    * Todeszeitpunkt 0..1 dateTime "Gibt den Todeszeitpunkt des Patienten an, falls dieser im KH verstorben ist. Ansonsten \"Null Flavor\"." "Gibt den Todeszeitpunkt des Patienten an, falls dieser im KH verstorben ist. Ansonsten \"Null Flavor\"."
    * Todeszeitpunkt insert Translation(^short, en, [[Indicates the time of death of the patient, if the patient died in the hospital. Otherwise \"Null flavor\".]])
    * Informationsquelle 0..* string "Quelle des Vitalstatus." "Quelle des Vitalstatus."
    * Informationsquelle insert Translation(^short, en, [[Source of vital status]])
    * ZeitpunktFeststellungDesVitalstatus 1..1 dateTime "Letzter bekannter Zeitpunkt oder Zeitraum, zudem ein Vitalstatus festgestellt wurde" "Letzter bekannter Zeitpunkt oder Zeitraum, zudem ein Vitalstatus festgestellt wurde"
    * ZeitpunktFeststellungDesVitalstatus insert Translation(^short, en, [[Last known point in time at which a vital status was recorded]])
    * Todesursache 0..1 CodeableConcept "Todesursache mit ICD-10-WHO kodiert."
    * Todesursache insert Translation(^short, en, [[Reason for patient's death. Coded per ICD-10-WHO.]])
* PatientIn 0..* BackboneElement "Person, die in einer oder mehreren Gesundheitseinrichtungen behandelt wird" "Person, die in einer oder mehreren Gesundheitseinrichtungen behandelt wird"
* PatientIn insert Translation(^short, en, [[Person receiving treatment in one or more health care facilities]])
  * PatientenIdentifikator 0..* BackboneElement "Identifikation des Patienten in Verschiedenen Gesundheitseinrichtungen, Einrichtungskennzeichen kann als \"Codesystem\" gesehen werden, und Patienten-Identifikator als \"Code\"" "Identifikation des Patienten in Verschiedenen Gesundheitseinrichtungen, Einrichtungskennzeichen kann als \"Codesystem\" gesehen werden, und Patienten-Identifikator als \"Code\""
    * PatientenIdentifikator 0..* Identifier "Gesundheitseinrichtungs-eigene Identifikationsnummer für einen Patienten" "Gesundheitseinrichtungs-eigene Identifikationsnummer für einen Patienten"
    * PatientenIdentifikator insert Translation(^short, en, [[Health facility unique identification number for a patient.]])
    * PatientenIdentifikatorKontext 1..1 CodeableConcept "Der Kontext des Patienten-Identifikators um den Patienten-Identifikator zu Beschreiben, da der Patient innerhalb einer Gesundheitseinrichtung möglicherweise pro System eine Nummer (Im Krankenhaus: Labor, Radiologie, Internistische Station etc.) bekommt." "Der Kontext des Patienten-Identifikators um den Patienten-Identifikator zu Beschreiben, da der Patient innerhalb einer Gesundheitseinrichtung möglicherweise pro System eine Nummer (Im Krankenhaus: Labor, Radiologie, Internistische Station etc.) bekommt."
    * PatientenIdentifikatorKontext insert Translation(^short, en, [[The context of the patient identifier to describe the patient identifier, since the patient within a healthcare facility may be assigned a number per system (in the hospital: \"laboratory\", \"radiology\", \"internal medicine ward\", etc.).]])
  * Versicherung 0..* BackboneElement "Aktuell gültige Versicherung der Patient:in welcher zur Abrechnung der Behandlungsleistung verwendet wird." "Aktuell gültige Versicherung der Patient:in welcher zur Abrechnung der Behandlungsleistung verwendet wird."
  * Versicherung insert Translation(^short, en, [[Patient's current valid insurance which is used to bill the medical healthcare services.]])
    * InstitutionskennzeichenDerKrankenkasse 0..* string "Die Institutionskennzeichen (kurz: IK) sind bundesweit eindeutige, neunstellige Zahlen, mit deren Hilfe Abrechnungen und Qualitätssicherungsmaßnahmen im Bereich der deutschen Sozialversicherung einrichtungsübergreifend abgewickelt werden können." "Die Institutionskennzeichen (kurz: IK) sind bundesweit eindeutige, neunstellige Zahlen, mit deren Hilfe Abrechnungen und Qualitätssicherungsmaßnahmen im Bereich der deutschen Sozialversicherung einrichtungsübergreifend abgewickelt werden können."
    * InstitutionskennzeichenDerKrankenkasse insert Translation(^short, en, [[The institutional identifiers (IK for short) are nationwide unique nine-digit numbers that can be used to process billing and quality assurance measures across institutions in the German social insurance sector.]])
    * InstitutionskennzeichenDerKrankenkasse ^maxLength = 9
    * Versicherungstyp 1..1 CodeableConcept "Versicherungstyp des Patienten" "Versicherungstyp des Patienten"
    * Versicherungstyp insert Translation(^short, en, [[Insurance type of the patient]])
    * Versichertennummer 0..1 BackboneElement "Angaben zur Identifikation der versicherten Person" "Angaben zur Identifikation der versicherten Person"
    * Versichertennummer insert Translation(^short, en, [[Information for the identification of the insured person]])
      * VersichertenIDGKV 0..1 string "Unveränderlicher Teil der Krankenversichertennummer (VersichertenID) bei GKV Patienten. Diese findet sich z.B. auf der Mitgliedskarte der Krankenkasse." "Unveränderlicher Teil der Krankenversichertennummer (VersichertenID) bei GKV Patienten. Diese findet sich z.B. auf der Mitgliedskarte der Krankenkasse."
      * VersichertenIDGKV insert Translation(^short, en, [[Unchangeable part of the health insurance number (insured ID) for SHI patients. This can be found, for example, on the health insurance compan's membership card.]])
      * VersichertennummerPKV 0..1 string "Versichertennummer bei PKV Patienten. Vergabe erfolgt durch die jeweilige Private Krankenversicherung." "Versichertennummer bei PKV Patienten. Vergabe erfolgt durch die jeweilige Private Krankenversicherung."
      * VersichertennummerPKV insert Translation(^short, en, [[Insurance number for private health insurance patients. The number is assigned by the respective private health insurance company.]])
* ProbandIn 0..* BackboneElement "Person, die an einer Studie teilnimmt (unter Umständen, während sie Patient:in in einer Gesundheitseinrichtung ist)" "Person, die an einer Studie teilnimmt (unter Umständen, während sie Patient:in in einer Gesundheitseinrichtung ist)"
* ProbandIn insert Translation(^short, en, [[Person participating in a study (in some circumstances, while being a patient in a health care facility)]])
  * SubjektIdentifizierungscode 0..* Identifier "Eindeutiger Identifikator eines Patienten im Kontext eines Forschungsprojekts (klinische Studie, Use Case)" "Eindeutiger Identifikator eines Patienten im Kontext eines Forschungsprojekts (klinische Studie, Use Case)"
  * SubjektIdentifizierungscode insert Translation(^short, en, [[Unique identifier of a patient in the context of a research project (clinical study, use case)]])
  * Rechtsgrundlage 0..* Reference(Consent) "Rechtsgrundlage (z.B. Einwilligung) aufgrund die PatientIn in die Studie eingeschlossen werden darf." "Rechtsgrundlage (z.B. Einwilligung) aufgrund die PatientIn in die Studie eingeschlossen werden darf."
  * Rechtsgrundlage insert Translation(^short, en, [[Legal basis (e.g. consent) on the basis of which the patient may be included in the study.]])
  * BeginnTeilnahme 1..1 dateTime "Beginn der Teilnahme der Person an der Studie." "Beginn der Teilnahme der Person an der Studie."
  * BeginnTeilnahme insert Translation(^short, en, [[Start of the person's participation in the study]])
  * EndeTeilnahme 0..1 dateTime "Ende der Teilnahme der Person an der Studie." "Ende der Teilnahme der Person an der Studie."
  * EndeTeilnahme insert Translation(^short, en, [[End of the person's participation in the study]])
  * StatusDerTeilnahme 1..1 code "Stand der Teilnahme einer Person an der Studie, z.B. eingeschlossen, widerrufen, abgeschlossen etc." "Stand der Teilnahme einer Person an der Studie, z.B. eingeschlossen, widerrufen, abgeschlossen etc."
  * StatusDerTeilnahme insert Translation(^short, en, [[Status of a person's participation in the study, e.g., \"included\", \"revoked\", \"completed\", etc.]])
  * BezeichnungDerStudie 0..* Identifier "Identifikator der Studie" "Identifikator der Studie"
  * BezeichnungDerStudie insert Translation(^short, en, [[Unique id of the study]])
* PatientInPseudonym 0..* BackboneElement "Pseudonymisierte Repräsentation einer dazueghörigen Patient:in" "Pseudonymisierte Repräsentation einer dazueghörigen Patient:in"
* PatientInPseudonym insert Translation(^short, en, [[Pseudonymised representation of a corresponding Patient]])
  * Pseudonym 0..* Identifier "Neu generierte Identifikation der PatientIn mit Bezug zum Original-Identifikator in einer Treuhandstelle." "Neu generierte Identifikation der PatientIn mit Bezug zum Original-Identifikator in einer Treuhandstelle."
  * Pseudonym insert Translation(^short, en, [[Newly generated identification of the patient with reference to the original identifier in a trust center.]])
  //* GeburtsdatumQuartal 0..* date "Vergröberung auf Quartal und Jahr." "Vergröberung auf Quartal und Jahr."
  //* GeburtsdatumQuartal insert Translation(^short, en, [[Rounded up to quarter and year.]])
  //* Todesdatum 0..* dateTime "Zeitpunkt des Todes begrenzt auf Jahr, Monat und Tag." "Zeitpunkt des Todes begrenzt auf Jahr, Monat und Tag."
  //* Todesdatum insert Translation(^short, en, [[Time of death limited to year, month and day.]])
  //* VergroebertePLZ 0..* string "Erste zwei Stellen der Postleitzahl" "Erste zwei Stellen der Postleitzahl"
  //* VergroebertePLZ insert Translation(^short, en, [[First two digits of the postal code]])