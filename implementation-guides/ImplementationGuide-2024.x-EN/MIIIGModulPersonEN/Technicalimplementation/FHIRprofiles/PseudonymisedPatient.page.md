---
topic: PersonPatientPseudonymisiert
subject: https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/PatientPseudonymisiert
canonical: https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/PatientPseudonymisiert
expand: 1
---

## Patient - Pseudonymised (Patient)

---

## {{link}}

**Description**

This profile describes a pseudonymized version of the profile for the ``Patient`` resource in the Medical Informatics Initiative.

| Note |  |
|---------|---------------------|
| {{render:implementation-guides/ImplementationGuide-Common/images/Warning.jpg}}  | The exact rules for pseudonymization within the Medical Informatics Initiative are currently being determined. Therefore, changes to this profile are still to be expected. |

@```
from 
    StructureDefinition 
where 
    url = 'https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/PatientPseudonymisiert' 
select 
    Name: name, Status: status, Version: version, Canonical: url, Base: baseDefinition
```

### Inhalt

<tabs>
  <tab title="Visualization">{{tree, buttons}}</tab>
  <tab title="Description"> 
        @```
        from
	        StructureDefinition
        where
	        url = 'https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/PatientPseudonymisiert'
        select
	        Description: description
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
            select Fieldname: id, Shortdescription: short, Comment: comment
        ```
  </tab>
  <tab title="XML">{{xml}}</tab>
  <tab title="JSON">{{json}}</tab>
  <tab title="Link">{{link}}</tab>
</tabs>

---

**Notes**


| FHIR-Element | Erklärung |
|--------------|-----------|
| Patient.id      | Must-support, but optional        |
| Patient.meta       | Must-support, but optional        |
| Patient.meta.profile       | Required for querying against the DIZ repository. See **CapabilityStatement**. Optional in all other cases. |
| Patient.identifier:PseudonymisierterIdentifier        | If the identifier is a derived pesudonym, it was be marked as such using a corresponding type.|
| Patient.identifier:AnonymisierterIdentifier        | An anonymized should only be given if no inference can be made regarding the orgiginal dataset.|
| Patient.gender        | Can be used without restrictions.|
| Patient.birthDate        | Must be rounded up/down to the next quarter. |
| Patient.deceased[x]        |  Must be rounded up/down to the next quarter.|
| Patient.address        | Only the first two digits of the postal code. The country can be included as well.|
| Patient.link        | Care must be taken to ensure that there is no link to a non-pseudonymized version of the patient.|

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

The following invariants must be considered when implementing the profile:

**Constraints**: @``` from StructureDefinition where url = 'https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/PatientPseudonymisiert' for differential.element.constraint select key,severity,human, expression```

Further specifications are made by the profiles for the data types HumanName and Address by the German base profiles.

---

**SearchParameters**

The following SearchParameters are relevant for the module Person, also in combination:

1. The SearchParameter "_id" MUST be supported:

    Example:

    ```GET [base]/Patient?_id=103270```

    Note: Additional information regarding the search using "_id" can be found in [FHIR Core Specification - Section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

1. The SearchParameter "_profile" MUST be supported:

    Example:

    ```GET [base]/Patient?_profile=https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/PatientPseudonymisiert```

    Note: Additional information regarding the search using "_profile" can be found in [FHIR Core Specification - Section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

1. The SearchParameter "identifier" MUST be supported:

    Example:

    ```GET [base]/Patient?identifier=http://example.org/fhir/sid/pseudonym|1032702```

    ```GET [base]/Patient?identifier=1032702```

    Note: Additional information regarding the search using "Patient.identifier" can be found in [FHIR Core Specification - Section "Token Search"](http://hl7.org/fhir/R4/search.html#token).

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

1. The SearchParameter "address" MUST be supported:

    Example:

    ```GET [base]/Patient?address=Berlin```

    Note: Additional information regarding the search using "Patient.address" can be found in [FHIR Core Specification - Section "String Search"](http://hl7.org/fhir/R4/search.html#string).

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

1. The SearchParameter "link" MUST be supported:

    Example:

    ```GET [base]/Patient?link=Patient/VerknuepftePatientIn```

    Note: Additional information regarding the search using "Patient.link.other" can be found in [FHIR Core Specification - Section "reference"](http://hl7.org/fhir/R4/search.html#reference).

---

**Examples**

{{json:fsh-generated/resources/Patient-mii-exa-person-patient-pseudonymisiert.json}}
