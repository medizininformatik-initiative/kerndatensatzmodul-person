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

**Differential**

{{tree:https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/ResearchSubject, diff}}

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

**Snapshot**

{{tree:https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/ResearchSubject, snapshot}}

---

**Examples**

Example (complete):

{{json:beispiele/Example-ResearchSubject.json}}

---