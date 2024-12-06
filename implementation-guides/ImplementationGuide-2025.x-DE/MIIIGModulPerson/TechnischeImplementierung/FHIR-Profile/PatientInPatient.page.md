---
topic: PersonPatientIn
subject: https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/Patient
canonical: https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/Patient
expand: 1
---

### Patient:in (Patient)

---

## {{link}}

**Beschreibung**

Dieses Profil beschreibt eine PatientIn in der Medizininformatik-Initiative.

Im Vergleich zur Vorversion wird die Krankenversicherten-ID in `Patient.identifier` nicht mehr in Gesetzliche Krankenversicherung (GKV) und Private Krankenversicherung (PKV) unterschieden. `Patient.identifier:versichertenId` gilt für alle Krankenversichertennummern, unabhängig, ob es sich um GKV, PKV oder Sonderkostenträger handelt. Als `Identifier.type` SOLL der Code `KVZ10` aus `http://fhir.de/CodeSystem/identifier-type-de-basis` verwendet werden, die Codes `GKV` und `PKV` haben den Status `retired`. Siehe Constraint **kvid-2** im Profil [IdentifierKvid10](https://simplifier.net/packages/de.basisprofil.r4/1.5.0/files/2461154) in den Deutschen FHIR-Basisprofilen.

@```
from 
    StructureDefinition 
where 
    url = 'https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/Patient' 
select 
    Name: name, Status: status, Version: version, Lizenz: extension.where(url='https://www.medizininformatik-initiative.de/fhir/modul-meta/StructureDefinition/mii-ex-meta-license-codeable').value.coding.code, Canonical: url, Basis: baseDefinition
```

### Inhalt

<tabs>
  <tab title="Darstellung">{{tree, buttons}}</tab>
  <tab title="Beschreibung"> 
        @```
        from
	        StructureDefinition
        where
	        url = 'https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/Patient'
        select
	        Beschreibung: description
        with
            no header
        ```
        @```
        from 
            StructureDefinition 
        where 
            url = 'https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/Patient' 
        for 
            differential.element 
            where 
                mustSupport = true 
            select Feldname: id, Kurzbeschreibung: short, Hinweise: comment
        ```
  </tab>
  <tab title="XML">{{xml}}</tab>
  <tab title="JSON">{{json}}</tab>
  <tab title="Link">{{link}}</tab>
</tabs>

---

**Hinweise**

| FHIR-Element | Erklärung |
|--------------|-----------|
| Patient.id      | Must-support, jedoch optional        |
| Patient.meta       | Must-support, jedoch optional         |
| Patient.meta.profile       | VERPFLICHTEND für die Abfrage im DIZ-Repsoitory inkl Versionsnummer des Profils. Siehe **CapabilityStatement**. In allen anderen Fällen optional.         |
| Patient.identifier:versichertenId        |  Siehe [FHIR Basisprofile - Lebenslange Krankenversicherten-ID (10-stellige KVID)](https://ig.fhir.de/basisprofile-de/1.5.0/ig-markdown-LebenslangeKrankenversichertennummer10-stelligeKVID-Identifier.html). Es sei darauf hingewiesen, dass im 'Assigner'-Element die IKNR der ausgebenden Instiution eingetragen werden MUSS. Es handelt sich stets um die aktuelle Versicherungsnummer der PatientIn. |
| Patient.identifier:pid        | Siehe [Basisprofil Organisationsinterner Patienten-Identifier (PID)](https://ig.fhir.de/basisprofile-de/1.5.0/ig-markdown-OrganisationsinternerPatienten-Identifier.html). Führende (MPI) ID der PatientIn.  In Patient.identifier:pid.assigner ist eine Referenz auf die ausgebende Organization EMPFOHLEN. Logische Referenz per IK-Nummer oder IHE Affinity Domain OID ist zulässig. Es kann desweiteren folgendes CodeSystem aller MII-Standorte verwendet werden: [Core-Location-Identifier](https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.meta/2025.0.0/files/2678530). Bitte auch immer den Current Build prüfen. Das DIZ-Standorte-CodeSystem wird laufend aktualisiert. |
| Patient.identifier        |  Jegliche weiteren Identifier, falls GKV/PKV/PID nicht zutreffend ist.       |
| Patient.name        |  Siehe [Basis-Profil für Datentyp HumanName](https://ig.fhir.de/basisprofile-de/1.5.0/ig-markdown-Ressourcen-Patient-Name.html). Es sei darauf hingewiesen, dass die Aufteilung des vollständigen Namens in seine Bestandteile (z.B. Vorsatzworte, Namenszusatz, Nachname) nur durchgeführt werden SOLLTE, falls diese Informationen explizit in dieser Granulatität zur Verfügung stehen (z.B. durch einen direkten Import auf Basis eines VSDM-Datensatzes). Es ist zu berücksichtigen, dass der Geburtsname per allgemeiner Konvention nur den Familiennamen enthält.|
| Patient.gender        | Siehe [Basis-Profil Geschlecht](https://ig.fhir.de/basisprofile-de/1.5.0/ig-markdown-Ressourcen-Patient.html#ig-markdown-Ressourcen-Patient-Geschlecht)          |
| Patient.birthDate        |   Siehe [Basisprofil - Geburtsdatum](https://ig.fhir.de/basisprofile-de/1.5.0/ig-markdown-Ressourcen-Patient.html#ig-markdown-Ressourcen-Patient-Geburtsdatum)        |
| Patient.deceased[x]        |  deceasedBoolean SOLLTE, wo möglich, durch deceasedDateTime ersetzt werden, wenn PatientIn verstorben ist.         |
| Patient.address        |  Siehe [Basisprofil - Adresse](https://ig.fhir.de/basisprofile-de/1.5.0/ig-markdown-Ressourcen-Patient.html#ig-markdown-Ressourcen-Patient-Addresse). Mehrfach-Adressen sind erlaubt. Systeme SOLLTEN ehemalige Adressen als solche kennzeichnen, sodass die aktuelle Adresse der PatientIn erkennbar ist.|
| Patient.link        |  VERPFLICHTEND zur Verlinkung mehrer Patient-Ressourcen, z.B. im Kontext eines Patienten-Matching. Die vorliegende Spezifikation enthält keine Vorgaben diesbezüglich, weitere Ausgestaltung notwendig.        |

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
| Patient.address.City + <br> Patient.address.extension.Stadtteil <br> (Bei Stadtstaaten)    |  Person.Demographie.Adresse.Wohnort. <br>Hinweis: Der Stadtteil ist nicht Bestandteil des [VSDM-Datensatzes](https://fachportal.gematik.de/fachportal-import/files/gemSpec_FM_VSDM_V2.6.0.pdf) der Gematik. Andere Quellen konform zu §21 KHEntgG müssen eventuell hinzugezogen werden. |
| Patient.address.line        |  Person.Demographie.Adresse.Staße        |

---

**Constraints**

Folgende Invarianten müssen bei der Implementierung des Profils beachtet werden:

**Constraints**: @``` from StructureDefinition where url = 'https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/Patient' for differential.element.constraint select key,severity,human, expression```

Weitere Vorgaben werden durch die Profile für die Datentypen HumanName und Address durch die Deutschen Basisprofile gemacht.

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

    Anwendungshinweise: Weitere Informationen zur Suche nach "Patient.name" finden sich in der [FHIR-Basisspezifikation - Abschnitt "String Search"](http://hl7.org/fhir/R4/search.html#string).

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

1. Der Suchparameter "address" MUSS unterstützt werden:

    Beispiele

    ```GET [base]/Patient?address=Berlin```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Patient.address" finden sich in der [FHIR-Basisspezifikation - Abschnitt "String Search"](http://hl7.org/fhir/R4/search.html#string).

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

{{json:fsh-generated/resources/Patient-mii-exa-person-patient-minimal.json}}

Beispiel (vollständig):

{{json:fsh-generated/resources/Patient-mii-exa-person-patient-full.json}}
