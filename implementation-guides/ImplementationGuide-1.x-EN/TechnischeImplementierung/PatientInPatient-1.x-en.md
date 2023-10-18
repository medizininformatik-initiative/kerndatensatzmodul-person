## Patient (Patient)

This profile describes a patient in the medical informatics initiative.

It should be noted that no specifications are made for mapping a pseudonymized patient. In the future, specifications may arise in this regard through other core data set modules.

**Name**: "ProfilePatientPatientIn" ([Simplifier Link](https://simplifier.net/resolve?canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/Patient&fhirVersion=R4&scope=de.medizininformatikinitiative.kerndatensatz.person@1.0.15))

**Canonical**: 
```https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/Patient```

**Differential**

{{tree:https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/Patient, diff}}

<br>


| FHIR-Element | Explanation |
|--------------|-----------|
| Patient.id      | Must-support, but optional        |
| Patient.meta       | Must-support, but optional         |
| Patient.identifier:versichertenId_GKV        |  See [Base Profile - Statutory health insurance number (10-digit KVID)](https://ig.fhir.de/basisprofile-de/stable/GesetzlicheKrankenversichertennummer10-stelligeKVID-Identifier.html). It should be noted that the IKNR of the issuing institution must be entered in the 'Assigner' element. This is always the current insurance number of the patient.       |
| Patient.identifier:versicherungsnummer_pkv        | Siehe [Base Profile - Private health insurance number](https://ig.fhir.de/basisprofile-de/stable/PrivateKrankenversichertennummer-Identifier.html). This is always the patient's current insurance number. |
| Patient.identifier:pid        | See [Base Profile Internal organization patient identifier (PID)](https://ig.fhir.de/basisprofile-de/stable/OrganisationsinternerPatienten-Identifier.html). Leading (MPI) ID of the patient.  In Patient.identifier:pid.assigner a reference to the issuing organization is required. Logical reference by IK number or IHE Affinity Domain OID is allowed. Furthermore, the following code system of all MII sites can be used: [Core-Location-Identifier](https://simplifier.net/medizininformatikinitiative-kerndatensatz/core-location-identifier). |
| Patient.identifier        |  Any other identifiers if GKV/PKV/PID is not applicable.       |
| Patient.name        |  See [Base Profile for data type HumanName](https://ig.fhir.de/basisprofile-de/stable/Datentypen-HumanName.html). It should be noted that the division of the full name into its components (e.g. prefix words, name suffix, surname) should only be performed if this information is explicitly available in this granularity (e.g. through a direct import based on a VSDM dataset). It should be noted that, by general convention, the birth name contains only the family name.|
| Patient.gender        | See [Base Profile - Sex](https://ig.fhir.de/basisprofile-de/stable/Ressourcen-Patient.html#Ressourcen-Patient-Geschlecht)          |
| Patient.birthDate        |   See [Base Profile - Date of Birth](https://ig.fhir.de/basisprofile-de/stable/Ressourcen-Patient.html#Ressourcen-Patient-Geburtsdatum)        |
| Patient.deceased[x]        |  deceasedBoolean is to be replaced by deceasedDateTime where possible if patient is deceased.         |
| Patient.address        |  Siehe [Base Profile - Address](https://ig.fhir.de/basisprofile-de/stable/Datentypen-Address.html). Multiple addresses are allowed. Systems are required to mark former addresses as such, so that the current address of the patient is recognizable.|
| Patient.link        |  Necessary for linking multiple patient resources, e.g. in the context of patient matching. The present specification does not contain any requirements in this regard; further design is necessary.        |

<br>

| FHIR-Element | Logical Data Set |
|--------------|-----------|
| Patient.identifier:versichertenId_GKV        |  Person.Patient.Versicherung.Versichertennummer.VersichertenID-GKV|
| Patient.identifier:versicherungsnummer_pkv        | Person.Patient.Versicherung.Versichertennummer.VersichertenID-PKV         |
| Patient.identifier:default        |  Person.Patient.Versicherung, falls keine Versicherung (GKV / PKV) vorliegt     |
| Patient.identifier:pid        | Person.Patient.Patienten-Identifikator        |
| Patient.name        |  Person.Name |
| Patient.name.given        |  Person.Name.Vorname |
| Patient.name.family        |  Person.Name.Familienname |
| Patient.name.family.extension.nachname        |  Person.Name.Nachname |
| Patient.name.family.extension.vorsatzwort        |  Person.Name.Vorsatzwort |
| Patient.name.family.extension.namenszusatz        |  Person.Name.Namenszusatz |
| Patient.name.prefix        |  Person.Name.Präfix |
| Patient.name.prefix.extension-prefix-qualifier        |  Person.Name.ArtDesPräfix |
| Patient.name.use        |  Person.Name.Geburtsname |
| Patient.gender        | Person.Demographie.AdministrativesGeschlecht |
| Patient.birthDate        | Person.Demographie.Geburtsdatum|
| Patient.deceased[x]        |   Person.Demographie.VitalStatus.PatientVerstorben / Todeszeitpunkt      |
| Patient.address        |  Person.Demographie.Adresse        |
| Patient.address.country        |  Person.Demographie.Adresse.Land        |
| Patient.address.postalCode        |  Person.Demographie.Adresse.PLZ        |
| Patient.address.City + <br> Patient.address.extension.Stadtteil <br> (In case of In city-states)    |  Person.Demographie.Adresse.Wohnort. <br>Note: 
The district is not part of the VSDM dataset of Gematik. Other sources compliant with §21 KHEntgG may need to be consulted. |
| Patient.address.line        |  Person.Demographie.Adresse.Staße        |

<br>

The following invariants must be considered when implementing the profile:

**Constraints**: @``` from StructureDefinition where url = 'https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/Patient' for differential.element.constraint select key,severity,human, expression```

Further specifications are made by the profiles for the data types HumanName and Address by the German base profiles.

---

**Snapshot**

{{tree:https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/Patient, snapshot}}

---

**Examples**

Example (minimal):

{{json:beispiele/Example-Patient-Minimal.json}}

Example (complete):

{{json:beispiele/Example-Patient.json}}