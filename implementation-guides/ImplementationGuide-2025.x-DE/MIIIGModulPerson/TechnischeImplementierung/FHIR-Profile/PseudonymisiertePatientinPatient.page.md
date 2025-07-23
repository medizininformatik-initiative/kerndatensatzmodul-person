---
topic: PersonPatientPseudonymisiert
subject: https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/PatientPseudonymisiert
canonical: https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/PatientPseudonymisiert
expand: 1
---

## Patient - Pseudonymisiert (Patient)

---

## {{link}}

### **Beschreibung**

Dieses Profil beschreibt eine pseudonymisierte Version des Profils für die ```Patient```-Ressource in der Medizininformatik-Initiative.

| Note |  |
|---------|---------------------|
| {{render:implementation-guides/ImplementationGuide-Common/images/Warning.jpg}}  | Dieses Profil enthält keine Regeln zur Prüfung der korrekten Pseudonymisierung. Ein erfolgreiches Validieren gegen dieses Profil bedeutet daher nicht, dass eine fachlich oder datenschutzrechtlich korrekte Pseudonymisierung erfolgt ist.<br><br>Anforderungen an die Pseudonymisierung können je nach Projektkontext variieren und lassen sich nicht vollständig und allgemeingültig in einem Profil abbilden. Für weiterführende Informationen ist der *Implementation Guide Pseudonymization Interface for the MII* unter https://medizininformatik-initiative.github.io/mii-interface-module-pseudonymization/ heranzuziehen. |

---

### **Hinweis zur Verwendung der IK-Nummer im Kontext pseudonymisierter Patientendaten**

Für den Use Case "NUM-CON-MON" wird eine Auswertung nach Krankenkasse benötigt. Dazu ist es erforderlich, im pseudonymisierten Patientenprofil die IK-Nummer der Krankenkasse mitzuführen, ohne die Versicherten-ID offenzulegen.

Dies kann realisiert werden, indem ein Identifier mit dem Typ `KVZ10` (10-stellige Krankenversicherten-ID) angegeben wird, bei dem das Element `Identifier.value` durch die Extension [Data Absent Reason](http://hl7.org/fhir/R4/extension-data-absent-reason.html) mit dem Code `masked` ersetzt wird. Die IK-Nummer der Krankenkasse wird dabei im `assigner.identifier` angegeben.

Ein Beispiel für diese Modellierung findet sich in der Beispielressource [Patient/mii-exa-person-patient-pseudonymisiert](#beispiele).

---

@```
from 
    StructureDefinition 
where 
    url = 'https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/PatientPseudonymisiert' 
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
	        url = 'https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/PatientPseudonymisiert'
        select
	        Beschreibung: description
        with
            no header
        ```
        @```
        from 
            StructureDefinition 
        where 
            url = 'https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/PatientPseudonymisiert' 
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
| Patient.id      | Must-support, jedoch OPTIONAL        |
| Patient.meta       | Must-support, jedoch OPTIONAL         |
| Patient.meta.profile       | VERPFLICHTEND für die Abfrage im DIZ-Repository inkl Versionsnummer des Profils. Siehe **CapabilityStatement**. In allen anderen Fällen OPTIONAL.         |
| Patient.identifier:PseudonymisierterIdentifier        | Falls der Identifier ein abgeleitetes Pseudonym ist, MUSS der Identifier entsprechend typisiert werden.|
| Patient.identifier:AnonymisierterIdentifier        | Ein anonymisierter Identifier SOLLTE nur als solcher angegeben werden, falls keinerlei Rückschlüsse auf den originalen Datensatz möglich sind.|
| Patient.identifier:MaskierterVersichertenIdentifer | Identifier der Krankenversichertennummer, bei dem der Wert maskiert wurde. Siehe auch [Hinweis](#hinweis-zur-verwendung-der-ik-nummer-im-kontext-pseudonymisierter-patientendaten) |
| Patient.gender        | KANN ohne Einschränkung verwendet werden.|
| Patient.birthDate        | MUSS auf das Quartal und Jahr vergröbert werden. |
| Patient.address        | Postleitzahl MUSS auf die ersten zwei Stellen vergröbert werden |

---

**Mapping**

| FHIR Element | Logischer Datensatz |
|--------------|-----------|
| Patient.identifier:PseudonymisierterIdentifier | Person.PatientInPseudonym.Pseudonym |

---

**Constraints**

Folgende Invarianten müssen bei der Implementierung des Profils beachtet werden:

**Constraints**: @``` from StructureDefinition where url = 'https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/PatientPseudonymisiert' for differential.element.constraint select key,severity,human, expression```

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

    ```GET [base]/Patient?_profile=https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/PatientPseudonymisiert```

    Anwendungshinweise: Weitere Informationen zur Suche nach "_profile" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

1. Der Suchparameter "identifier" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Patient?identifier=http://example.org/fhir/sid/pseudonym|1032702```

    ```GET [base]/Patient?identifier=1032702```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Patient.identifier" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).

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

---

## Beispiele

{{json:fsh-generated/resources/Patient-mii-exa-person-patient-pseudonymisiert.json}}
