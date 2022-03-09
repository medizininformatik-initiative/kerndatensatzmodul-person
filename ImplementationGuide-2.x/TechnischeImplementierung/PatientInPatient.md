## PatientIn (Patient)

---

**Beschreibung**

Dieses Profil beschreibt eine PatientIn in der Medizininformatik-Initiative.

Es ist zu beachten, dass keinerlei Vorgaben zur Abbildung eines pseudonymisierten Patienten gemacht werden. In Zukunft können diesbezüglich durch andere Kerndatensatzmodule Vorgaben entstehen.

@```
from StructureDefinition where url = 'https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/Patient' select Name: name, Canonical: url
```

---

**Differential**

{{tree:https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/Patient, diff}}

---

**Hinweise**

| FHIR-Element | Erklärung |
|--------------|-----------|
| Patient.id      | Must-support, jedoch optional        |
| Patient.meta       | Must-support, jedoch optional         |
| Patient.identifier:versichertenId_GKV        |  Siehe [Basisprofil - Gesetzliche Krankenversichertennummer (10-stellige KVID)](https://ig.fhir.de/basisprofile-de/1.2.0/GesetzlicheKrankenversichertennummer10-stelligeKVID-Identifier.html). Es sei darauf hingewiesen, dass im 'Assigner'-Element die IKNR der ausgebenden Instiution eingetragen werden muss. Es handelt sich stets um die aktuelle Versicherungsnummer der PatientIn.       |
| Patient.identifier:versicherungsnummer_pkv        | Siehe [Basisprofil - Private Krankenversichertennummer](https://ig.fhir.de/basisprofile-de/1.2.0/PrivateKrankenversichertennummer-Identifier.html). Es handelt sich stets um die aktuelle Versicherungsnummer der PatientIn. |
| Patient.identifier:pid        | Siehe [Basisprofil Organisationsinterner Patienten-Identifier (PID)](https://ig.fhir.de/basisprofile-de/1.2.0/OrganisationsinternerPatienten-Identifier.html). Führende (MPI) ID der PatientIn.  In Patient.identifier:pid.assigner ist eine Referenz auf die ausgebende Organization notwendig. Logische Referenz per IK-Nummer oder IHE Affinity Domain OID ist zulässig. Es kann desweiteren folgendes CodeSystem aller MII Standorte verwendet werden: [Core-Location-Identifier](https://simplifier.net/medizininformatikinitiative-kerndatensatz/core-location-identifier). |
| Patient.identifier        |  Jegliche weiteren Identifier, falls GKV/PKV/PID nicht zutreffend ist.       |
| Patient.name        |  Siehe [Basis-Profil für Datentyp HumanName](https://ig.fhir.de/basisprofile-de/1.2.0/Datentypen-HumanName.html). Es sei darauf hingewiesen, dass die Aufteilung des vollständigen Namens in seine Bestandteile (z.B. Vorsatzworte, Namenszusatz, Nachname) nur durchgeführt werden sollte, falls diese Informationen explizit in dieser Granulatität zur Verfügung stehen (z.B. durch einen direkten Import auf Basis eines VSDM-Datensatzes). Es ist zu berücksichtigen, dass der Geburtsname per allgemeiner Konvention nur den Familiennamen enthält.|
| Patient.gender        | Siehe [Basis-Profil Geschlecht](https://ig.fhir.de/basisprofile-de/1.2.0/Ressourcen-Patient.html#Ressourcen-Patient-Geschlecht)          |
| Patient.birthDate        |   Siehe [Basisprofil - Geburtsdatum](https://ig.fhir.de/basisprofile-de/1.2.0/Ressourcen-Patient.html#Ressourcen-Patient-Geburtsdatum)        |
| Patient.deceased[x]        |  deceasedBoolean ist wo möglich durch deceasedDateTime zu ersetzen, wenn PatientIn verstorben ist.         |
| Patient.address        |  Siehe [Basisprofil - Adresse](https://ig.fhir.de/basisprofile-de/1.2.0/Ressourcen-Patient.html#Ressourcen-Patient-Addresse). Mehrfach-Adressen sind erlaubt. Systeme sind angehalten ehemalige Adressen als solche zu kennzeichnen, sodass die aktuelle Adresse der PatientIn erkennbar ist.|
| Patient.link        |  Notwendig zur Verlinkung mehrer Patient-Ressourcen, z.B. im Kontext eines Patienten-Matching. Die vorliegende Spezifikation enthält keine Vorgaben diesbezüglich, weitere Ausgestaltung notwendig.        |

---

**Mapping**

| FHIR Element | Logischer Datensatz |
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

Folgende Invarianten müssen bei der Implementierung des Profils beachtet werden:

**Constraints**: @``` from StructureDefinition where url = 'https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/Patient' for differential.element.constraint select key,severity,human, expression```

Weitere Vorgaben werden durch die Profile für die Datentypen HumanName und Address durch die Deutschen Basisprofile gemacht.

---

**Snapshot**

{{tree:https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/Patient, snapshot}}

---

**Suchparameter**

Folgende Suchparameter sind für das Modul Person relevant, auch in Kombination:

1. Der Suchparameter "_id" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Patient?_id=103270```

    Anwendungshinweise: Weitere Informationen zur Suche nach "_id" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

1. Der Suchparameter "_profile" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Patient?_profile=https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/Patient```

    Anwendungshinweise: Weitere Informationen zur Suche nach "_profile" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

1. Der Suchparameter "identifier" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Patient?identifier=http://fhir.krankenhaus.example|1032702```

    ```GET [base]/Patient?identifier=1032702```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Patient.identifier" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).

1. Der Suchparameter "assigner-pid" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Patient?assigner-pid=http://fhir.de/NamingSystem/arge-ik/iknr|261101015```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Patient.identifier" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).

1. Der Suchparameter "given" MUSS unterstützt werden:

    Beispiele

    ```GET [base]/Patient?given=Erika```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Patient.name.given" finden sich in der [FHIR-Basisspezifikation - Abschnitt "String Search"](http://hl7.org/fhir/R4/search.html#string).

1. Der Suchparameter "family" MUSS unterstützt werden:

    Beispiele

    ```GET [base]/Patient?family=Musterfrau```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Patient.name.family" finden sich in der [FHIR-Basisspezifikation - Abschnitt "String Search"](http://hl7.org/fhir/R4/search.html#string).

1. Der Suchparameter "name" MUSS unterstützt werden:

    Beispiele

    ```GET [base]/Patient?name=Erika```

    ```GET [base]/Patient?name=Musterfrau```

1. Der Suchparameter "prefix" MUSS unterstützt werden:

    Beispiele

    ```GET [base]/Patient?prefix=Dr.```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Patient.name.prefix" finden sich in der [FHIR-Basisspezifikation - Abschnitt "String Search"](http://hl7.org/fhir/R4/search.html#string).

1. Der Suchparameter "prefix-qualifier" MUSS unterstützt werden:

    Beispiele

    ```GET [base]/Patient?prefix-qualifier=AC```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Patient.name.prefix.extension:prefix-qualifier" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).

1. Der Suchparameter "gender" MUSS unterstützt werden:

    Beispiele

    ```GET [base]/Patient?gender=female```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Patient.gender" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).

1. Der Suchparameter "other-amtlich" MUSS unterstützt werden:

    Beispiele

    ```GET [base]/Patient?other-amtlich=http://fhir.de/CodeSystem/gender-amtlich-de|D```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Patient.gender.extension:other-amtlich" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).

1. Der Suchparameter "birthdate" MUSS unterstützt werden:

    Beispiele

    ```GET [base]/Patient?birthdate=1964-12-08```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Patient.birthDate" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Date Search"](http://hl7.org/fhir/R4/search.html#date).

1. Der Suchparameter "death-date" MUSS unterstützt werden:

    Beispiele

    ```GET [base]/Patient?death-date=2022-01-01```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Patient.deceased" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Date Search"](http://hl7.org/fhir/R4/search.html#date).

1. Der Suchparameter "deceased" MUSS unterstützt werden:

    Beispiele

    ```GET [base]/Patient?deceased=true```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Patient.deceased" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).

1. Der Suchparameter "address-city" MUSS unterstützt werden:

    Beispiele

    ```GET [base]/Patient?address-city=Berlin```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Patient.address.city" finden sich in der [FHIR-Basisspezifikation - Abschnitt "String Search"](http://hl7.org/fhir/R4/search.html#string).

1. Der Suchparameter "address-postalcode" MUSS unterstützt werden:

    Beispiele

    ```GET [base]/Patient?address-postalcode=10117```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Patient.address.postalCode" finden sich in der [FHIR-Basisspezifikation - Abschnitt "String Search"](http://hl7.org/fhir/R4/search.html#string).

1. Der Suchparameter "address-country" MUSS unterstützt werden:

    Beispiele

    ```GET [base]/Patient?address-country=DE```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Patient.address.country" finden sich in der [FHIR-Basisspezifikation - Abschnitt "String Search"](http://hl7.org/fhir/R4/search.html#string).


1. Der Suchparameter "gemeindeschluessel" MUSS unterstützt werden:

    Beispiele

    ```GET [base]/Patient?gemeindeschluessel=http://fhir.de/sid/destatis/ags|11000000```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Patient.address.city.extension:gemeindeschluessel" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).

1. Der Suchparameter "strasse" MUSS unterstützt werden:

    Beispiele

    ```GET [base]/Patient?strasse=Anna-Louisa-Karsch Str.```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Patient.address.line.extension:Strasse" finden sich in der [FHIR-Basisspezifikation - Abschnitt "String Search"](http://hl7.org/fhir/R4/search.html#string).

1. Der Suchparameter "hausnummer" MUSS unterstützt werden:

    Beispiele

    ```GET [base]/Patient?hausnummer=2```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Patient.address.line.extension:Hausnummer" finden sich in der [FHIR-Basisspezifikation - Abschnitt "String Search"](http://hl7.org/fhir/R4/search.html#string).

1. Der Suchparameter "adresszusatz" MUSS unterstützt werden:

    Beispiele

    ```GET [base]/Patient?adresszusatz=c/O Abteilung XYZ```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Patient.address.line.extension:Adresszusatz" finden sich in der [FHIR-Basisspezifikation - Abschnitt "String Search"](http://hl7.org/fhir/R4/search.html#string).

1. Der Suchparameter "postfach" MUSS unterstützt werden:

    Beispiele

    ```GET [base]/Patient?postfach=12 54 65```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Patient.address.line.extension:Postfach" finden sich in der [FHIR-Basisspezifikation - Abschnitt "String Search"](http://hl7.org/fhir/R4/search.html#string).

1. Der Suchparameter "stadtteil" MUSS unterstützt werden:

    Beispiele

    ```GET [base]/Patient?stadtteil=Berlin-Mitte```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Patient.address.extension:Stadtteil" finden sich in der [FHIR-Basisspezifikation - Abschnitt "String Search"](http://hl7.org/fhir/R4/search.html#string).

1. Der Suchparameter "link" MUSS unterstützt werden:

    Beispiele

    ```GET [base]/Patient?link=Patient/VerknuepftePatientIn```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Patient.link.other" finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](http://hl7.org/fhir/R4/search.html#reference).

---

**Beispiele**

Beispiel (minimal):

{{json:beispiele/Example-Patient-Minimal.json}}

Beispiel (vollständig):

{{json:beispiele/Example-Patient.json}}
