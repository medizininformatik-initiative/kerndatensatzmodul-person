---
topic: PersonProbandIn
subject: https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/ResearchSubject
---

## ResearchSubject (ResearchSubject)

---

**Description**

This profile describes a Research Subject in the Medical Informatics Initiative.

When including a person in a study (also in a MII use case), a ResearchSubject resource must be created for this person. There are the following variations:

* Inclusion is by specific Informed Consent for a study.

* Inclusion is based on Broad Informed Consent.

* Inclusion is based on a specific legal basis (special law such as State Hospital Act, Infection Protection Act or Cancer Registry Act). This applies equally to the individuals in the study group, the control group and any form of reference population for which personal (or person-related) individual data are included in calculations.

The creation of the resource must occur at the time the data are retrieved for the study. Additional obligations and adjustments must be considered for each use case.

@```
from StructureDefinition where url = 'https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/ResearchSubject' select Name: name, Canonical: url
```

---

<tabs>
    <tab title="snap" active="true">
      {{tree:https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/ResearchSubject, snap}}
    </tab>
    <tab title="diff">
      {{tree:https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/ResearchSubject, diff}}
    </tab>
    <tab title="hybrid">
      {{tree:https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/ResearchSubject, hybrid}}
    </tab>
    <tab title="JSON">
      {{json:https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/ResearchSubject}}
    </tab>
</tabs>

---

**Notes**

| FHIR-Element | Explanation |
|--------------|-----------|
| Patient.id      | Must-support, but optional        |
| Patient.meta       | Must-support, but optional         |
| Patient.identifier:subjectIdentificationCode      | Fixed naming system for uniform, cross-site query of the identifier (for evaluations)     |
| Patient.period.start      | Start date (inclusion of the patient in the study)      |
| Patient.period.end      | End date (completion of the study or exclusion of the patient)       |
| Patient.study      | Reference to the metadata of the study in which the patient is participating. For further specifications, see the STUDIENDATEN extension module. |
| Patient.individual      | Each Research Subject must be assigned to a Patient. |
| Patient.consent      | Consent to the study or regulatory basis must be available. Further specifications for the modeling of consent may arise from other extension modules. |

---

**Mappings**

| FHIR-Element | Logical Data Set |
|--------------|-----------|
| ResearchSubject.identifier:subjectIdentificationCode       | Person.Studienteilnehmer.SubjektIdentifizierungscode         |
| ResearchSubject.status       | Person.Studienteilnehmer.StatusDerTeilnahme         |
| ResearchSubject.period.start       | Person.Studienteilnehmer.BeginnTeilnahme         |
| ResearchSubject.period.end       | Person.Studienteilnehmer.EndeTeilnahme         |
| ResearchSubject.consent       | Person.Studienteilnehmer.Rechtsgrundlage        |


---

**SearchParameters**

The following SearchParameters are relevant for the module Person, also in combination:

1. The SearchParameter "_id" MUST be supported:

    Example:

    ```GET [base]/ResearchSubject?_id=103270```

    Note: Additional information regarding the search using "_id" can be found in [FHIR Core Specification - Section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

1. The SearchParameter "_profile" MUST be supported:

    Example:

    ```GET [base]/ResearchSubject?_profile=https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/ResearchSubject```

    Note: Additional information regarding the search using "_profile" can be found in [FHIR Core Specification - Section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).


1. The SearchParameter "identifier" MUST be supported:

    Example:

    ```GET [base]/ResearchSubject?identifier=http://fhir.krankenhaus.example/sid/subjectIdentificationCode|1032702```

    Note: Additional information regarding the search using "ResearchSubject.identifier" can be found in [FHIR Core Specification - Section "Token Search"](http://hl7.org/fhir/R4/search.html#token).

1. The SearchParameter "status" MUST be supported:

    Example:

    ```GET [base]/ResearchSubject?status=candidate```

    Note: Additional information regarding the search using "ResearchSubject.status" can be found in [FHIR Core Specification - Section "Token Search"](http://hl7.org/fhir/R4/search.html#token).

1. The SearchParameter "date" MUST be supported:

    Example:

    ```GET [base]/ResearchSubject?date=2022-01-01```

    Note: Additional information regarding the search using "ResearchSubject.period" can be found in [FHIR Core Specification - Section "Date Search"](http://hl7.org/fhir/R4/search.html#date).

1. The SearchParameter "study" MUST be supported:

    Example:

    ```GET [base]/ResearchSubject?study=ResearchStudy/study```

    Note: Additional information regarding the search using "ResearchStudy.study" can be found in [FHIR Core Specification - Section "reference"](http://hl7.org/fhir/R4/search.html#reference).

1. The SearchParameter "individual" MUST be supported:

    Example:

    ```GET [base]/ResearchSubject?individual=Patient/test```

    Note: Additional information regarding the search using "ResearchStudy.individual" can be found in [FHIR Core Specification - Section "reference"](http://hl7.org/fhir/R4/search.html#reference).

1. The SearchParameter "consent" MUST be supported:

    Example:


    ```GET [base]/ResearchSubject?consent=Consent/test```

    Note: Additional information regarding the search using "ResearchStudy.consent" can be found in [FHIR Core Specification - Section "reference"](http://hl7.org/fhir/R4/search.html#reference).

---

**Examples**

Example (complete):

{{json:beispiele/Example-ResearchSubject.json}}

---