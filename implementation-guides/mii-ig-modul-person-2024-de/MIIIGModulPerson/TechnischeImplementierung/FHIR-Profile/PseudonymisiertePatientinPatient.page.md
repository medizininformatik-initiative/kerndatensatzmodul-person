---
topic: PersonPatientPseudonymisiert
subject: https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/PatientPseudonymisiert
---

## Patient - Pseudonymisiert (Patient)

---

**Beschreibung**

Dieses Profil beschreibt eine pseudonymisierte Version des Profils für die ```Patient```-Ressource in der Medizininformatik-Initiative.

| Note |  |
|---------|---------------------|
| {{render:implementation-guides/ImplementationGuide-Common/images/Warning.jpg}}  | Die genauen Regeln zur Pseudonymisierung innerhalb der Medizininformatik-Initiative werden derzeit erarbeitet. Es sind daher noch zu Änderungen an diesem Profil zu erwarten. |

@```
from StructureDefinition where url = 'https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/PatientPseudonymisiert' select Name: name, Canonical: url
```

---

<tabs>
    <tab title="snap" active="true">
      {{tree:https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/PatientPseudonymisiert, snap}}
    </tab>
    <tab title="diff">
      {{tree:https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/PatientPseudonymisiert, diff}}
    </tab>
    <tab title="hybrid">
      {{tree:https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/PatientPseudonymisiert, hybrid}}
    </tab>
    <tab title="JSON">
      {{json:https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/PatientPseudonymisiert}}
    </tab>
</tabs>

---

**Hinweise**


| FHIR-Element | Erklärung |
|--------------|-----------|
| Patient.id      | Must-support, jedoch optional        |
| Patient.meta       | Must-support, jedoch optional         |
| Patient.meta.profile       | Verpflichtend für die Abfrage im DIZ-Repsoitory inkl Versionsnummer des Profils. Siehe **CapabilityStatement**. In allen anderen Fällen optional.         |
| Patient.identifier:PseudonymisierterIdentifier        | Falls der Identifier ein abgeleitetes Pseudonym ist, muss der Identifier entsprechend typisiert werden.|
| Patient.identifier:AnonymisierterIdentifier        | Ein anonymisierter Identifier ist nur als solcher anzugegben, falls keinerlei Rückschlüsse auf den originalen Datemsatz möglich sind.|
| Patient.gender        | Ohne Einschränkung verwendbar.|
| Patient.birthDate        | Muss auf das nächste Quartal auf-/abgerundet werden. |
| Patient.deceased[x]        |  Muss auf das nächste Quartal auf-/abgerundet werden. |
| Patient.address        | Nur die ersten beiden Stellen der PLZ inkl. Angabe des Landes ist anzugeben.|
| Patient.link        | Es muss darauf geachtet werden, dass keine Verlinkung zu einer nicht-pseudonymisierten Version des Patienten existiert.|

---

**Mapping**

| FHIR Element | Logischer Datensatz |
|--------------|-----------|
| Patient.identifier:versichertenId_GKV        |  Person.PatientInPseudonym.Pseudonym|
| Patient.identifier:versicherungsnummer_pkv        | Person.PatientInPseudonym.GeburtsdatumQuartal        |
| Patient.identifier:default        |  Person.PatientInPseudonym.Todesdatum     |
| Patient.identifier:pid        | Person.PatientInPseudonym.VergroebertePLZ        |

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

1. Der Suchparameter "death-date" MUSS unterstützt werden:

    Beispiele

    ```GET [base]/Patient?death-date=2022-01-01```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Patient.deceased" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Date Search"](http://hl7.org/fhir/R4/search.html#date).

1. Der Suchparameter "deceased" MUSS unterstützt werden:

    Beispiele

    ```GET [base]/Patient?deceased=true```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Patient.deceased" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).

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

1. Der Suchparameter "link" MUSS unterstützt werden:

    Beispiele

    ```GET [base]/Patient?link=Patient/VerknuepftePatientIn```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Patient.link.other" finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](http://hl7.org/fhir/R4/search.html#reference).

---

**Beispiele**

{{json:fsh-generated/resources/Patient-mii-exa-person-patient-pseudonymisiert.json}}
