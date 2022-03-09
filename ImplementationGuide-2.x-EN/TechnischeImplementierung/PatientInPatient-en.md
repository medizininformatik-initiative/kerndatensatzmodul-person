## Patient (Patient)

---

**Description**

This profile describes a patient in the medical informatics initiative.

It should be noted that no specifications are made for mapping a pseudonymized patient. In the future, specifications may arise in this regard through other core data set modules.

@```
from StructureDefinition where url = 'https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/Patient' select Name: name, Canonical: url
```

---

**Differential**

{{tree:https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/Patient, diff}}

---

**Notes**


| FHIR-Element | Explanation |
|--------------|-----------|
| Patient.id      | Must-support, but optional        |
| Patient.meta       | Must-support, but optional         |
| Patient.identifier:versichertenId_GKV        |  See [Base Profile - Statutory health insurance number (10-digit KVID)](https://simplifier.net/guide/basisprofil-de-r4/GesetzlicheKrankenversichertennummer10-stelligeKVID-Identifier). It should be noted that the IKNR of the issuing institution must be entered in the 'Assigner' element. This is always the current insurance number of the patient.       |
| Patient.identifier:versicherungsnummer_pkv        | Siehe [Base Profile - Private health insurance number](https://simplifier.net/guide/basisprofil-de-r4/PrivateKrankenversichertennummer-Identifier). This is always the patient's current insurance number. |
| Patient.identifier:pid        | See [Base Profile Internal organization patient identifier (PID)](https://simplifier.net/guide/basisprofil-de-r4/OrganisationsinternerPatienten-Identifier). Leading (MPI) ID of the patient.  In Patient.identifier:pid.assigner a reference to the issuing organization is required. Logical reference by IK number or IHE Affinity Domain OID is allowed. Furthermore, the following code system of all MII sites can be used: [Core-Location-Identifier](https://simplifier.net/medizininformatikinitiative-kerndatensatz/core-location-identifier). |
| Patient.identifier        |  Any other identifiers if GKV/PKV/PID is not applicable.       |
| Patient.name        |  See [Base Profile for data type HumanName](https://simplifier.net/guide/basisprofil-de-r4/Datentypen-HumanName). It should be noted that the division of the full name into its components (e.g. prefix words, name suffix, surname) should only be performed if this information is explicitly available in this granularity (e.g. through a direct import based on a VSDM dataset). It should be noted that, by general convention, the birth name contains only the family name.|
| Patient.gender        | See [Base Profile - Sex](https://simplifier.net/guide/basisprofil-de-r4/Ressourcen-Patient#Ressourcen-Patient-Geschlecht)          |
| Patient.birthDate        |   See [Base Profile - Date of Birth](https://simplifier.net/guide/basisprofil-de-r4/Ressourcen-Patient#Ressourcen-Patient-Geburtsdatum)        |
| Patient.deceased[x]        |  deceasedBoolean is to be replaced by deceasedDateTime where possible if patient is deceased.         |
| Patient.address        |  Siehe [Base Profile - Address](https://simplifier.net/guide/basisprofil-de-r4/Ressourcen-Patient#Ressourcen-Patient-Addresse). Multiple addresses are allowed. Systems are required to mark former addresses as such, so that the current address of the patient is recognizable.|
| Patient.link        |  Necessary for linking multiple patient resources, e.g. in the context of patient matching. The present specification does not contain any requirements in this regard; further design is necessary.        |

---

**Mappings**

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
| Patient.address.City + <br> Patient.address.extension.Stadtteil <br> (Bei Stadtstaaten)    |  Person.Demographie.Adresse.Wohnort. <br>Hinweis: Der Stadtteil ist nicht Bestandteil des [VSDM](https://fachportal.gematik.de/spezifikationen/online-produktivbetrieb/konzepte-und-spezifikationen/)-Datensatzes der Gematik. Andere Quellen konform zu §21 KHEntgG müssen eventuell hinzugezogen werden. |
| Patient.address.line        |  Person.Demographie.Adresse.Staße        |

---

**Constraints**

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