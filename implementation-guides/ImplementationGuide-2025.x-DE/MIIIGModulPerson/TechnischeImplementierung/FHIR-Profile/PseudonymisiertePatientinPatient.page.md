---
topic: PersonPatientPseudonymisiert
subject: https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/PatientPseudonymisiert
canonical: https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/PatientPseudonymisiert
expand: 1
---

## Patient - Pseudonymisiert (Patient)

---

## {{link}}

**Beschreibung**

Dieses Profil beschreibt eine pseudonymisierte Version des Profils für die ```Patient```-Ressource in der Medizininformatik-Initiative.

| Note |  |
|---------|---------------------|
| {{render:implementation-guides/ImplementationGuide-Common/images/Warning.jpg}}  | Die genauen Regeln zur Pseudonymisierung innerhalb der Medizininformatik-Initiative werden derzeit erarbeitet. Es sind daher noch zu Änderungen an diesem Profil zu erwarten. |

Das [Datenschutzkonzept der Medizininformatik-Initiative](https://www.medizininformatik-initiative.de/de/datenschutzkonzept) enthält in der Version 1.0 folgende Formulierung: *"Aus dem Modul Person werden allerdings das Geburtsdatum auf das Quartal und Jahr vergröbert, das Geschlecht und die Postleitzahl (PLZ) auf die ersten beiden Ziffern vergröbert im Sinne von Klassifikatoren sowohl den IDAT als auch den MDAT zugeordnet."*

Diese Anforderungen werden im Profil Patient - Pseudonymisiert wie folgt umgesetzt:

</br>

**Geburtsdatum**

Folgende Invarinate MUSS beachtet werden:

@```
from StructureDefinition 
where url = 'https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/PatientPseudonymisiert' 
select
join
for differential.element where constraint.exists(key='pat-pseuded-1')
select {Element: id, constraint.key, constraint.severity,constraint.human,constraint.expression}
```

Bei der Vergröberung des Geburtsdatums SOLL die Angabe des Jahres unverändert beibehalten werden. Die Angabe des Monats ist OPTIONAL. Der Monat wird auf den ersten Monat des Quartals abgerundet, wenn vorhanden:

- Quartal 1: 01
- Quartal 2: 04
- Quartal 3: 07
- Quartal 4: 10

Die Angabe des Tags ist OPTIONAL. Der Tag MUSS auf den ersten des Monats abgerundet werden, wenn vorhanden. Es sind entweder vierstellige, siebenstellige oder zehnstellige Datumsangaben erlaubt. Die Anforderungen werden mittels regulärem Ausdruck `^\d{4}(-(01|04|07|10)(-01)?)?$` geprüft. Beispiele:

- ✅ `1967`
- ✅ `1967-04`
- ✅ `1967-04-01`
- ❌ `1967-05-25`

</br>

**Geschlecht**

`Patient.gender` KANN ohne weitere Einschränkungen befüllt werden.

</br>

**Postleitzahl (PLZ)**

Folgende Invariante MUSS beachtet werden:

@```
from StructureDefinition 
where url = 'https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/PatientPseudonymisiert' 
select
join
for differential.element where constraint.exists(key='pat-pseuded-2')
select {Element: id, constraint.key, constraint.severity,constraint.human,constraint.expression}
```

Die Postleitzahl MUSS auf die ersten beiden Ziffern vergröbert werden. Die Anforderung wird mittels FHIRPath `length() = 2` geprüft.

- ✅ `10`
- ❌ `10117`

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

**Beispiele**

{{json:fsh-generated/resources/Patient-mii-exa-person-patient-pseudonymisiert.json}}
