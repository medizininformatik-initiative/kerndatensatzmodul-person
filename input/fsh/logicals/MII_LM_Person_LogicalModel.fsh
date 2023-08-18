Logical: MII_LM_Person
Parent: Element
Id: mii-lm-person
Title: "MII LM Person"
Description: "Logische Repräsentation des Basismoduls Person"
* ^url = "https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/LogicalModel/Person"
* insert PR_CS_VS_Version
* insert Publisher
* . ^short = "-- Überschrift --"
* . insert Translation(^short, en, -- Heading --)
* Name 0..* BackboneElement "Vollständiger Name einer Person." "Vollständiger Name einer Person."
* Name insert Translation(^short, en, Full name of a person)
* Name.Vorname 0..* http://hl7.org/fhir/StructureDefinition/string "Vollständiger Vorname einer Person." "Vollständiger Vorname einer Person."
* Name.Vorname insert Translation(^short, en, Full first name of a person)
* Name.Nachname 0..* http://hl7.org/fhir/StructureDefinition/string "Nachname einer Person ohne Vor- und Zusätze. Dient z.B. der alphabetischen Einordnung des Namens." "Nachname einer Person ohne Vor- und Zusätze. Dient z.B. der alphabetischen Einordnung des Namens."
* Name.Nachname insert Translation(^short, en, Last name of a person without prefixes and suffixes. Serves e.g. the alphabetical classification of the name.)
* Name.Familienname 0..* http://hl7.org/fhir/StructureDefinition/string "Der vollständige Familienname, einschließlich aller Vorsatz- und Zusatzwörter, mit Leerzeichen getrennt." "Der vollständige Familienname, einschließlich aller Vorsatz- und Zusatzwörter, mit Leerzeichen getrennt."
* Name.Familienname insert Translation(^short, en, [[The full family name, including all prefix and suffix words, separated by spaces.]])
* Name.Vorsatzwort 0..* http://hl7.org/fhir/StructureDefinition/string "Vorsatzwort wie z.B.: von, van, zu Vgl. auch VSDM-Spezifikation der Gematik (Versichertenstammdatenmanagement, \"eGK\")" "Vorsatzwort wie z.B.: von, van, zu Vgl. auch VSDM-Spezifikation der Gematik (Versichertenstammdatenmanagement, \"eGK\")"
* Name.Vorsatzwort insert Translation(^short, en, [[Prefix word such as: \"von\", \"van\", \"zu\", cf. also VSDM specification of Gematik (Versichertenstammdatenmanagement, \"eGK\")]])
* Name.Namenszusatz 0..* http://hl7.org/fhir/StructureDefinition/string "Namenszusatz als Bestandteil das Nachnamens, wie in VSDM (Versichertenstammdatenmanagement, \"eGK\") definiert. Beispiele: Gräfin, Prinz oder Fürst" "Namenszusatz als Bestandteil das Nachnamens, wie in VSDM (Versichertenstammdatenmanagement, \"eGK\") definiert. Beispiele: Gräfin, Prinz oder Fürst"
* Name.Namenszusatz insert Translation(^short, en, [[Name suffix as part of the last name, as defined in VSDM (Versichertenstammdatenmanagement, \"eGK\"). Examples: Countess, Prince, or Prince]])
* Name.Praefix 0..* http://hl7.org/fhir/StructureDefinition/string "Namensteile vor dem Vornamen, z.B. akademischer Grad" "Namensteile vor dem Vornamen, z.B. akademischer Grad"
* Name.Praefix insert Translation(^short, en, [[Parts of the name before the first name, e.g. academic degree]])
* Name.ArtdesPraefixes 0..* http://hl7.org/fhir/StructureDefinition/code "Art des Präfixes, z.B. \"AC\" für Akademische Titel" "Art des Präfixes, z.B. \"AC\" für Akademische Titel"
* Name.ArtdesPraefixes insert Translation(^short, en, [[Type of prefix, e.g. \"AC\" for Academic Titel]])
* Name.Geburtsname 0..* http://hl7.org/fhir/StructureDefinition/string "Familienname einer Person zum Zeitpunkt ihrer Geburt. Kann sich danach z.B. durch Heirat und Annahme eines anderen Familiennamens ändern." "Familienname einer Person zum Zeitpunkt ihrer Geburt. Kann sich danach z.B. durch Heirat und Annahme eines anderen Familiennamens ändern."
* Name.Geburtsname insert Translation(^short, en, [[Family name of a person at the time of his or her birth. Can change afterwards, e.g. by marriage and adoption of another family name.]])
* Demographie 0..* BackboneElement "Das Basismodul Demographie enthält demographische Parameter (Alter, Geschlecht etc.)." "Das Basismodul Demographie enthält demographische Parameter (Alter, Geschlecht etc.)."
* Demographie insert Translation(^short, en, [[The basic demography module contains demographic parameters (age, gender, etc.).]])
* Demographie.AdministrativesGeschlecht 0..* http://hl7.org/fhir/StructureDefinition/code "Administratives Geschlecht der Person" "Administratives Geschlecht der Person"
* Demographie.AdministrativesGeschlecht insert Translation(^short, en, [[Administrative sex of the person]])
* Demographie.Geburtsdatum 0..* http://hl7.org/fhir/StructureDefinition/date "Geburtsdatum des Person." "Geburtsdatum des Person."
* Demographie.Geburtsdatum insert Translation(^short, en, [[Date of birth of the patient]])
* Demographie.Adresse 0..* BackboneElement "Vollständige Anschrift einer Person für die postlische Kommunikation." "Vollständige Anschrift einer Person für die postlische Kommunikation."
* Demographie.Adresse insert Translation(^short, en, [[Full address of a person for postal communication.]])
* Demographie.Adresse.Strassenanschrift 0..* BackboneElement "Eine Adresse für die Strassenanschrift gemäß postalischer Konventionen. Bei Stadtstaaten einschließlich Bezirken." "Eine Adresse für die Strassenanschrift gemäß postalischer Konventionen. Bei Stadtstaaten einschließlich Bezirken."
* Demographie.Adresse.Strassenanschrift insert Translation(^short, en, [[Postal code according to the conventions valid in the respective country. For persons from city states including the city district]])
* Demographie.Adresse.Strassenanschrift.Land 0..* http://hl7.org/fhir/StructureDefinition/string "Ländercode nach ISO 3166." "Ländercode nach ISO 3166."
* Demographie.Adresse.Strassenanschrift.Land insert Translation(^short, en, [[Country code according to ISO 3166]])
* Demographie.Adresse.Strassenanschrift.PLZ 0..* http://hl7.org/fhir/StructureDefinition/string "Postleitzahl gemäß der im jeweiligen Land gültigen Konventionen." "Postleitzahl gemäß der im jeweiligen Land gültigen Konventionen."
* Demographie.Adresse.Strassenanschrift.PLZ insert Translation(^short, en, [[Postal code according to the conventions valid in the respective country]])
* Demographie.Adresse.Strassenanschrift.Wohnort 0..* http://hl7.org/fhir/StructureDefinition/string "Bei Personen aus Stadtstaaten inklusive des Stadtteils." "Bei Personen aus Stadtstaaten inklusive des Stadtteils."
* Demographie.Adresse.Strassenanschrift.Wohnort insert Translation(^short, en, [[For persons from city states including the city district]])
* Demographie.Adresse.Strassenanschrift.Strasse 0..* http://hl7.org/fhir/StructureDefinition/string "Straßenname mit Hausnummer oder Postfach sowie weitere Angaben zur Zustellung." "Straßenname mit Hausnummer oder Postfach sowie weitere Angaben zur Zustellung."
* Demographie.Adresse.Strassenanschrift.Strasse insert Translation(^short, en, [[Street name with house number or P.O. Box and other delivery details]])
* Demographie.Adresse.Postfach 0..* BackboneElement "Eine Adresse für ein Postfach gemäß postalischer Konventionen. Bei Stadtstaaten einschließlich Bezirken." "Eine Adresse für ein Postfach gemäß postalischer Konventionen. Bei Stadtstaaten einschließlich Bezirken."
* Demographie.Adresse.Postfach insert Translation(^short, en, [[Postal code according for a P.O box to the conventions valid in the respective country. For persons from city states including the city district.]])
* Demographie.Adresse.Postfach.Land 0..* http://hl7.org/fhir/StructureDefinition/string "Ländercode nach ISO 3166." "Ländercode nach ISO 3166."
* Demographie.Adresse.Postfach.Land insert Translation(^short, en, [[Country code according to ISO 3166]])
* Demographie.Adresse.Postfach.PLZ 0..* http://hl7.org/fhir/StructureDefinition/string "Postleitzahl gemäß der im jeweiligen Land gültigen Konventionen." "Postleitzahl gemäß der im jeweiligen Land gültigen Konventionen."
* Demographie.Adresse.Postfach.PLZ insert Translation(^short, en, [[Postal code according to the conventions valid in the respective country]])
* Demographie.Adresse.Postfach.Wohnort 0..* http://hl7.org/fhir/StructureDefinition/string "Bei Personen aus Stadtstaaten inklusive des Stadtteils." "Bei Personen aus Stadtstaaten inklusive des Stadtteils."
* Demographie.Adresse.Postfach.Wohnort insert Translation(^short, en, [[For persons from city states including the city district]])
* Demographie.Adresse.Postfach.Strasse 0..* http://hl7.org/fhir/StructureDefinition/string "Straßenname mit Hausnummer oder Postfach sowie weitere Angaben zur Zustellung." "Straßenname mit Hausnummer oder Postfach sowie weitere Angaben zur Zustellung."
* Demographie.Adresse.Postfach.Strasse insert Translation(^short, en, [[Street name with house number or P.O. Box and other delivery details]])
* Demographie.Vitalstatus 0..* BackboneElement "Gibt an, ob ein Patient verstorben ist. Falls ja, zudem den Zeitpunkt." "Gibt an, ob ein Patient verstorben ist. Falls ja, zudem den Zeitpunkt."
* Demographie.Vitalstatus insert Translation(^short, en, [[Indicates whether a patient has died. If yes, also the time is recorded.]])
* Demographie.Vitalstatus.PatientVerstorben 0..* http://hl7.org/fhir/StructureDefinition/boolean "Gibt an, ob der Patient am Leben oder verstorben ist." "Gibt an, ob der Patient am Leben oder verstorben ist."
* Demographie.Vitalstatus.PatientVerstorben insert Translation(^short, en, [[Indicates whether the patient is alive or deceased.]])
* Demographie.Vitalstatus.Todeszeitpunkt 0..* http://hl7.org/fhir/StructureDefinition/dateTime "Gibt den Todeszeitpunkt des Patienten an, falls dieser im KH verstorben ist. Ansonsten \"Null Flavor\"." "Gibt den Todeszeitpunkt des Patienten an, falls dieser im KH verstorben ist. Ansonsten \"Null Flavor\"."
* Demographie.Vitalstatus.Todeszeitpunkt insert Translation(^short, en, [[Indicates the time of death of the patient, if the patient died in the hospital. Otherwise \"Null flavor\".]])
* Demographie.Vitalstatus.Informationsquelle 0..* http://hl7.org/fhir/StructureDefinition/string "Quelle des Vitalstatus." "Quelle des Vitalstatus."
* Demographie.Vitalstatus.Informationsquelle insert Translation(^short, en, [[Source of vital status]])
* Demographie.Vitalstatus.ZeitpunktFeststellungDesVitalstatus 0..* http://hl7.org/fhir/StructureDefinition/dateTime "Letzter bekannter Zeitpunkt oder Zeitraum, zudem ein Vitalstatus festgestellt wurde" "Letzter bekannter Zeitpunkt oder Zeitraum, zudem ein Vitalstatus festgestellt wurde"
* Demographie.Vitalstatus.ZeitpunktFeststellungDesVitalstatus insert Translation(^short, en, [[Last known point in time at which a vital status was recorded]])
* Demographie.Vitalstatus.Todesursache 0..* http://hl7.org/fhir/StructureDefinition/string "Reason for patient's death. Coded per ICD-10 GM." "Reason for patient's death. Coded per ICD-10 GM."
* Demographie.Vitalstatus.Todesursache insert Translation(^short, en, [[Last known time when the person was still alive]])
* PatientIn 0..* BackboneElement "Person, die in einer oder mehreren Gesundheitseinrichtungen behandelt wird" "Person, die in einer oder mehreren Gesundheitseinrichtungen behandelt wird"
* PatientIn insert Translation(^short, en, [[Person receiving treatment in one or more health care facilities]])
* PatientIn.PatientenIdentifikator 0..* BackboneElement "Identifikation des Patienten in Verschiedenen Gesundheitseinrichtungen, Einrichtungskennzeichen kann als \"Codesystem\" gesehen werden, und Patienten-Identifikator als \"Code\"" "Identifikation des Patienten in Verschiedenen Gesundheitseinrichtungen, Einrichtungskennzeichen kann als \"Codesystem\" gesehen werden, und Patienten-Identifikator als \"Code\""
* PatientIn.PatientenIdentifikator.PatientenIdentifikator 0..* http://hl7.org/fhir/StructureDefinition/Identifier "Gesundheitseinrichtungs-eigene Identifikationsnummer für einen Patienten" "Gesundheitseinrichtungs-eigene Identifikationsnummer für einen Patienten"
* PatientIn.PatientenIdentifikator.PatientenIdentifikator insert Translation(^short, en, [[Health facility unique identification number for a patient.]])
* PatientIn.PatientenIdentifikator.PatientenIdentifikatorKontext 0..* http://hl7.org/fhir/StructureDefinition/CodeableConcept "Der Kontext des Patienten-Identifikators um den Patienten-Identifikator zu Beschreiben, da der Patient innerhalb einer Gesundheitseinrichtung möglicherweise pro System eine Nummer (Im Krankenhaus: Labor, Radiologie, Internistische Station etc.) bekommt." "Der Kontext des Patienten-Identifikators um den Patienten-Identifikator zu Beschreiben, da der Patient innerhalb einer Gesundheitseinrichtung möglicherweise pro System eine Nummer (Im Krankenhaus: Labor, Radiologie, Internistische Station etc.) bekommt."
* PatientIn.PatientenIdentifikator.PatientenIdentifikatorKontext insert Translation(^short, en, [[The context of the patient identifier to describe the patient identifier, since the patient within a healthcare facility may be assigned a number per system (in the hospital: \"laboratory\", \"radiology\", \"internal medicine ward\", etc.).]])
* PatientIn.Versicherung 0..* BackboneElement "Aktuell gültige Versicherung der Patient:in welcher zur Abrechnung der Behandlungsleistung verwendet wird." "Aktuell gültige Versicherung der Patient:in welcher zur Abrechnung der Behandlungsleistung verwendet wird."
* PatientIn.Versicherung insert Translation(^short, en, [[Patient's current valid insurance which is used to bill the medical healthcare services.]])
* PatientIn.Versicherung.InstitutionskennzeichenDerKrankenkasse 0..* http://hl7.org/fhir/StructureDefinition/string "Die Institutionskennzeichen (kurz: IK) sind bundesweit eindeutige, neunstellige Zahlen, mit deren Hilfe Abrechnungen und Qualitätssicherungsmaßnahmen im Bereich der deutschen Sozialversicherung einrichtungsübergreifend abgewickelt werden können." "Die Institutionskennzeichen (kurz: IK) sind bundesweit eindeutige, neunstellige Zahlen, mit deren Hilfe Abrechnungen und Qualitätssicherungsmaßnahmen im Bereich der deutschen Sozialversicherung einrichtungsübergreifend abgewickelt werden können."
* PatientIn.Versicherung.InstitutionskennzeichenDerKrankenkasse insert Translation(^short, en, [[The institutional identifiers (IK for short) are nationwide unique nine-digit numbers that can be used to process billing and quality assurance measures across institutions in the German social insurance sector.]])
* PatientIn.Versicherung.InstitutionskennzeichenDerKrankenkasse ^maxLength = 9
* PatientIn.Versicherung.Versicherungstyp 0..* http://hl7.org/fhir/StructureDefinition/string "Versicherungstyp des Patienten" "Versicherungstyp des Patienten"
* PatientIn.Versicherung.Versicherungstyp insert Translation(^short, en, [[Insurance type of the patient]])
* PatientIn.Versicherung.Versichertennummer 0..* BackboneElement "Angaben zur Identifikation der versicherten Person" "Angaben zur Identifikation der versicherten Person"
* PatientIn.Versicherung.Versichertennummer insert Translation(^short, en, [[Information for the identification of the insured person]])
* PatientIn.Versicherung.Versichertennummer.VersichertenIDGKV 0..* http://hl7.org/fhir/StructureDefinition/string "Unveränderlicher Teil der Krankenversichertennummer (VersichertenID) bei GKV Patienten. Diese findet sich z.B. auf der Mitgliedskarte der Krankenkasse." "Unveränderlicher Teil der Krankenversichertennummer (VersichertenID) bei GKV Patienten. Diese findet sich z.B. auf der Mitgliedskarte der Krankenkasse."
* PatientIn.Versicherung.Versichertennummer.VersichertenIDGKV insert Translation(^short, en, [[Unchangeable part of the health insurance number (insured ID) for SHI patients. This can be found, for example, on the health insurance compan's membership card.]])
* PatientIn.Versicherung.Versichertennummer.VersichertennummerPKV 0..* http://hl7.org/fhir/StructureDefinition/string "Versichertennummer bei PKV Patienten. Vergabe erfolgt durch die jeweilige Private Krankenversicherung." "Versichertennummer bei PKV Patienten. Vergabe erfolgt durch die jeweilige Private Krankenversicherung."
* PatientIn.Versicherung.Versichertennummer.VersichertennummerPKV insert Translation(^short, en, [[Insurance number for private health insurance patients. The number is assigned by the respective private health insurance company.]])
* ProbandIn 0..* BackboneElement "Person, die an einer Studie teilnimmt (unter Umständen, während sie Patient:in in einer Gesundheitseinrichtung ist)" "Person, die an einer Studie teilnimmt (unter Umständen, während sie Patient:in in einer Gesundheitseinrichtung ist)"
* ProbandIn insert Translation(^short, en, [[Person participating in a study (in some circumstances, while being a patient in a health care facility)]])
* ProbandIn.SubjektIdentifizierungscode 0..* http://hl7.org/fhir/StructureDefinition/Identifier "Eindeutiger Identifikator eines Patienten im Kontext eines Forschungsprojekts (klinische Studie, Use Case)" "Eindeutiger Identifikator eines Patienten im Kontext eines Forschungsprojekts (klinische Studie, Use Case)"
* ProbandIn.SubjektIdentifizierungscode insert Translation(^short, en, [[Unique identifier of a patient in the context of a research project (clinical study, use case)]])
* ProbandIn.Rechtsgrundlage 0..* Reference(Consent) "Rechtsgrundlage (z.B. Einwilligung) aufgrund die PatientIn in die Studie eingeschlossen werden darf." "Rechtsgrundlage (z.B. Einwilligung) aufgrund die PatientIn in die Studie eingeschlossen werden darf."
* ProbandIn.Rechtsgrundlage insert Translation(^short, en, [[Legal basis (e.g. consent) on the basis of which the patient may be included in the study.]])
* ProbandIn.BeginnTeilnahme 0..* http://hl7.org/fhir/StructureDefinition/dateTime "Beginn der Teilnahme der Person an der Studie." "Beginn der Teilnahme der Person an der Studie."
* ProbandIn.BeginnTeilnahme insert Translation(^short, en, [[Start of the person's participation in the study]])
* ProbandIn.EndeTeilnahme 0..* http://hl7.org/fhir/StructureDefinition/dateTime "Ende der Teilnahme der Person an der Studie." "Ende der Teilnahme der Person an der Studie."
* ProbandIn.EndeTeilnahme insert Translation(^short, en, [[End of the person's participation in the study]])
* ProbandIn.StatusDerTeilnahme 0..* http://hl7.org/fhir/StructureDefinition/code "Stand der Teilnahme einer Person an der Studie, z.B. eingeschlossen, widerrufen, abgeschlossen etc." "Stand der Teilnahme einer Person an der Studie, z.B. eingeschlossen, widerrufen, abgeschlossen etc."
* ProbandIn.StatusDerTeilnahme insert Translation(^short, en, [[Status of a person's participation in the study, e.g., \"included\", \"revoked\", \"completed\", etc.]])
* ProbandIn.BezeichnungDerStudie 0..* http://hl7.org/fhir/StructureDefinition/Identifier "Identifikator der Studie" "Identifikator der Studie"
* ProbandIn.BezeichnungDerStudie insert Translation(^short, en, [[Unique id of the study]])
* PatientInPseudonym 0..* BackboneElement "Pseudonymisierte Repräsentation einer dazueghörigen Patient:in" "Pseudonymisierte Repräsentation einer dazueghörigen Patient:in"
* PatientInPseudonym insert Translation(^short, en, [[Pseudonymised representation of a corresponding Patient]])
* PatientInPseudonym.Pseudonym 0..* http://hl7.org/fhir/StructureDefinition/Identifier "Neu generierte Identifikation der PatientIn mit Bezug zum Original-Identifikator in einer Treuhandstelle." "Neu generierte Identifikation der PatientIn mit Bezug zum Original-Identifikator in einer Treuhandstelle."
* PatientInPseudonym.Pseudonym insert Translation(^short, en, [[Newly generated identification of the patient with reference to the original identifier in a trust center.]])
* PatientInPseudonym.GeburtsdatumQuartal 0..* http://hl7.org/fhir/StructureDefinition/date "Vergröberung auf Quartal und Jahr." "Vergröberung auf Quartal und Jahr."
* PatientInPseudonym.GeburtsdatumQuartal insert Translation(^short, en, [[Rounded up to quarter and year.]])
* PatientInPseudonym.Todesdatum 0..* http://hl7.org/fhir/StructureDefinition/dateTime "Zeitpunkt des Todes begrenzt auf Jahr, Monat und Tag." "Zeitpunkt des Todes begrenzt auf Jahr, Monat und Tag."
* PatientInPseudonym.Todesdatum insert Translation(^short, en, [[Time of death limited to year, month and day.]])
* PatientInPseudonym.VergroebertePLZ 0..* http://hl7.org/fhir/StructureDefinition/string "Erste zwei Stellen der Postleitzahl" "Erste zwei Stellen der Postleitzahl"
* PatientInPseudonym.VergroebertePLZ insert Translation(^short, en, [[First two digits of the postal code]])