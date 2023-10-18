## Data Sets incl. Descriptions

The official and accepted version of the information model for the PERSON module can be found on [ART-DECOR](https://art-decor.org/art-decor/decor-datasets--mide-). To standardize the representation, the information model was additionally mapped as FHIR Logical Model:

{{render:https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/LogicalModel/Person}}

It should be noted that the Logical Model aims purely at the mapping of data elements and their description. Used data types and cardinalities are not to be regarded as obligatory. This is finally defined by the FHIR profiles. For each element within the Logical Model there is a 1:1 mapping to an element of a concrete FHIR resource.

| Logical Data Set | Description |
|--------------|-----------|
| Person.Name.Vorname      | Full first name of a person         |
| Person.Name.Nachname      |  Last name of a person without prefixes and suffixes. Serves e.g. the alphabetical classification of the name.         |
| Person.Name.Familienname      |   The full family name, including all prefix and suffix words, separated by spaces.        |
| Person.Name.Vorsatzwort      |  Prefix word such as: "von", "van", "zu", cf. also VSDM specification of Gematik (Versichertenstammdatenmanagement, "eGK")       |
| Person.Name.Namenszusatz      |  Name suffix as part of the last name, as defined in VSDM (Versichertenstammdatenmanagement, "eGK"). Examples: Countess, Prince, or Prince     |
| Person.Name.Präfix      | Parts of the name before the first name, e.g. academic degree     |
| Person.Name.ArtdesPräfixes      |  Type of prefix, e.g. "AC" for Academic Titel    |
| Person.Name.Geburtsname      | Family name of a person at the time of his or her birth. Can change afterwards, e.g. by marriage and adoption of another family name.    |
| Person.Demographie.AdministrativesGeschlecht      | Administrative sex of the person  |
| Person.Demographie.Geburtsdatum      | Date of birth of the patient  |
| Person.Demographie.Adresse.Land      | Country code according to ISO 3166  |
| Person.Demographie.Adresse.PLZ      |  Postal code according to the conventions valid in the respective country  |
| Person.Demographie.Adresse.Wohnort      |  For persons from city states including the city district |
| Person.Demographie.Adresse.Straße      |  Street name with house number or P.O. Box and other delivery details|
| Person.Demographie.Vitalstatus.PatientVerstorben      |  Indicates whether the patient is alive or deceased.|
| Person.Demographie.Vitalstatus.Todeszeitpunkt |  Indicates the time of death of the patient, if the patient died in the hospital. Otherwise "Null flavor". |
| Person.Demographie.Vitalstatus.Informationsquelle | Source of vital status|
| Person.Demographie.Vitalstatus.LetzterLebendzeitpunkt	 | Last known time when the person was still alive |
| Person.Demographie.Vitalstatus.Todesgrund	 | Reason for patient's death. Coded per ICD-10 GM. |
| Person.Patient.Patienten-Identifikator.Patienten-Identifikator |Health facility unique identification number for a patient. |
| Person.Patient.Patienten-Identifikator.Patienten-IdentifikatorKontext |The context of the patient identifier to describe the patient identifier, since the patient within a healthcare facility may be assigned a number per system (in the hospital: "laboratory", "radiology", "internal medicine ward", etc.). |
| Person.Patient.Versicherung.Versicherungsnummer | Information for the identification of the insured person|
| Person.Patient.Versicherung.Versicherungsnummer.VersichertenID-GKV | Unchangeable part of the health insurance number (insured ID) for SHI patients. This can be found, for example, on the health insurance company's membership card.|
| Person.Patient.Versicherung.Versicherungsnummer.Versichertennummer-PKV | Insurance number for private health insurance patients. The number is assigned by the respective private health insurance company.|
Person.Patient.Versicherung.InstitutionskennzeichenDerKrankenkasse|The institutional identifiers (IK for short) are nationwide unique nine-digit numbers that can be used to process billing and quality assurance measures across institutions in the German social insurance sector.|
| Person.Patient.Versicherung.Versicherungstyp| Insurance type of the patient|
| Person.Studienteilnehmer.SubjektIdentifizierungscode| Unique identifier of a patient in the context of a research project (clinical study, use case)|
| Person.Studienteilnehmer.Rechtsgrundlage|Legal basis (e.g. consent) on the basis of which the patient may be included in the study.|
| Person.Studienteilnehmer.BeginnTeilnahme| Start of the person's participation in the study|
| Person.Studienteilnehmer.EndeTeilnahme| End of the person's participation in the study|
| Person.Studienteilnehmer.StatusDerTeilnahme|  Status of a person's participation in the study, e.g., "included," "revoked," "completed," etc.|

<!--- @``` from StructureDefinition where url =  'https://www.medizininformatik-initiative.de/fhir/core/StructureDefinition/Person' select differential.element.short ```
-->