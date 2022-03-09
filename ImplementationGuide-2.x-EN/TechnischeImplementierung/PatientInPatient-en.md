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

**Suchparameter**

The following SearchParameters are relevant for the module Person, also in combination:

1. The SearchParameter "_id" MUST be supported:

    Example:

    ```GET [base]/Patient?_id=103270```

    Note: Additional information regarding the search using "_id" can be found in [FHIR Core Specification - Section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

1. The SearchParameter "_profile" MUST be supported:

    Example:

    ```GET [base]/Patient?_profile=https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/Patient```

    Note: Additional information regarding the search using "_profile" can be found in [FHIR Core Specification - Section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

1. The SearchParameter "identifier" MUST be supported:

    Example:

    ```GET [base]/Patient?identifier=http://fhir.krankenhaus.example|1032702```

    ```GET [base]/Patient?identifier=1032702```

    Note: Additional information regarding the search using "Patient.identifier" can be found in [FHIR Core Specification - Section "Token Search"](http://hl7.org/fhir/R4/search.html#token).

1. The SearchParameter "assigner-pid" MUST be supported:

    Example:

    ```GET [base]/Patient?assigner-pid=http://fhir.de/NamingSystem/arge-ik/iknr|261101015```

    Note: Additional information regarding the search using "Patient.identifier" can be found in [FHIR Core Specification - Section "Token Search"](http://hl7.org/fhir/R4/search.html#token).

1. The SearchParameter "given" MUST be supported:

    Example:

    ```GET [base]/Patient?given=Erika```

    Note: Additional information regarding the search using "Patient.name.given" can be found in [FHIR Core Specification - Section "String Search"](http://hl7.org/fhir/R4/search.html#string).

1. The SearchParameter "family" MUST be supported:

    Example:

    ```GET [base]/Patient?family=Musterfrau```

    Note: Additional information regarding the search using "Patient.name.family" can be found in [FHIR Core Specification - Section "String Search"](http://hl7.org/fhir/R4/search.html#string).

1. The SearchParameter "name" MUST be supported:

    Example:

    ```GET [base]/Patient?name=Erika```

    ```GET [base]/Patient?name=Musterfrau```

    Note: Additional information regarding the search using "Patient.name" can be found in [FHIR Core Specification - Section "String Search"](http://hl7.org/fhir/R4/search.html#string).

1. The SearchParameter "prefix" MUST be supported:

    Example:

    ```GET [base]/Patient?prefix=Dr.```

    Note: Additional information regarding the search using "Patient.name.prefix" can be found in [FHIR Core Specification - Section "String Search"](http://hl7.org/fhir/R4/search.html#string).

1. The SearchParameter "prefix-qualifier" MUST be supported:

    Example:

    ```GET [base]/Patient?prefix-qualifier=AC```

    Note: Additional information regarding the search using "Patient.name.prefix.extension:prefix-qualifier" can be found in [FHIR Core Specification - Section "String Search"](http://hl7.org/fhir/R4/search.html#string).

1. The SearchParameter "gender" MUST be supported:

    Example:

    ```GET [base]/Patient?gender=female```

    Note: Additional information regarding the search using "Patient.gender" can be found in [FHIR Core Specification - Section "Token Search"](http://hl7.org/fhir/R4/search.html#token).

1. The SearchParameter "other-amtlich" MUST be supported:

    Example:

    ```GET [base]/Patient?other-amtlich=http://fhir.de/CodeSystem/gender-amtlich-de|D```

    Note: Additional information regarding the search using "Patient.gender.extension:other-amtlich" can be found in [FHIR Core Specification - Section "Token Search"](http://hl7.org/fhir/R4/search.html#token).

1. The SearchParameter "birthdate" MUST be supported:

    Example:

    ```GET [base]/Patient?birthdate=1964-12-08```

    Note: Additional information regarding the search using "Patient.birthDate" can be found in [FHIR Core Specification - Section "Date Search"](http://hl7.org/fhir/R4/search.html#date).

1. The SearchParameter "death-date" MUST be supported:

    Example:

    ```GET [base]/Patient?death-date=2022-01-01```

    Note: Additional information regarding the search using "Patient.deceased" can be found in [FHIR Core Specification - Section "Date Search"](http://hl7.org/fhir/R4/search.html#date).

1. The SearchParameter "deceased" MUST be supported:

    Example:

    ```GET [base]/Patient?deceased=true```

    Note: Additional information regarding the search using "Patient.deceased" can be found in [FHIR Core Specification - Section "Token Search"](http://hl7.org/fhir/R4/search.html#token).

1. The SearchParameter "address-city" MUST be supported:

    Example:

    ```GET [base]/Patient?address-city=Berlin```

    Note: Additional information regarding the search using "Patient.address.city" can be found in [FHIR Core Specification - Section "String Search"](http://hl7.org/fhir/R4/search.html#string).

1. The SearchParameter "address-postalcode" MUST be supported:

    Example:

    ```GET [base]/Patient?address-postalcode=10117```

    Note: Additional information regarding the search using "Patient.address.postalCode" can be found in [FHIR Core Specification - Section "String Search"](http://hl7.org/fhir/R4/search.html#string).

1. The SearchParameter "address-country" MUST be supported:

    Example:

    ```GET [base]/Patient?address-country=DE```

    Note: Additional information regarding the search using "Patient.address.postalCode" can be found in [FHIR Core Specification - Section "String Search"](http://hl7.org/fhir/R4/search.html#string).

1. The SearchParameter "gemeindeschluessel" MUST be supported:

    Example:

    ```GET [base]/Patient?gemeindeschluessel=http://fhir.de/sid/destatis/ags|11000000```

    Note: Additional information regarding the search using "Patient.address.city.extension:gemeindeschluessel" can be found in [FHIR Core Specification - Section "Token Search"](http://hl7.org/fhir/R4/search.html#token).

1. The SearchParameter "strasse" MUST be supported:

    Example:

    ```GET [base]/Patient?strasse=Anna-Louisa-Karsch Str.```

    Note: Additional information regarding the search using "Patient.address.line.extension:Strasse" can be found in [FHIR Core Specification - Section "String Search"](http://hl7.org/fhir/R4/search.html#string).

1. The SearchParameter "hausnummer" MUST be supported:

    Example:

    ```GET [base]/Patient?hausnummer=2```

    Note: Additional information regarding the search using "Patient.address.line.extension:Hausnummer" can be found in [FHIR Core Specification - Section "String Search"](http://hl7.org/fhir/R4/search.html#string).

1. The SearchParameter "adresszusatz" MUST be supported:

    Example:

    ```GET [base]/Patient?adresszusatz=c/O Abteilung XYZ```

    Note: Additional information regarding the search using "Patient.address.line.extension:Adresszusatz" can be found in [FHIR Core Specification - Section "String Search"](http://hl7.org/fhir/R4/search.html#string).

1. The SearchParameter "postfach" MUST be supported:

    Example:

    ```GET [base]/Patient?postfach=12 54 65```

    Note: Additional information regarding the search using "Patient.address.line.extension:Postfach" can be found in [FHIR Core Specification - Section "String Search"](http://hl7.org/fhir/R4/search.html#string).

1. The SearchParameter "stadtteil" MUST be supported:

    Example:

    ```GET [base]/Patient?stadtteil=Berlin-Mitte```

    Note: Additional information regarding the search using "Patient.address.extension:Stadtteil" can be found in [FHIR Core Specification - Section "String Search"](http://hl7.org/fhir/R4/search.html#string).

1. The SearchParameter "link" MUST be supported:

    Example:

    ```GET [base]/Patient?link=Patient/VerknuepftePatientIn```

    Note: Additional information regarding the search using "Patient.link.other" can be found in [FHIR Core Specification - Section "reference"](http://hl7.org/fhir/R4/search.html#reference).

---

**Examples**

Example (minimal):

{{json:beispiele/Example-Patient-Minimal.json}}

Example (complete):

{{json:beispiele/Example-Patient.json}}