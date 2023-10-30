## Context in the overall project / references to other modules

The module PERSON plays a central role in all use cases of the MII in the form of the entity Patient and in the form of the entity Respondent:

* Patient: Secondary use of care data is the main focus of the MII. Data of a patient only exists if the entity Patient exists. Local DIZs hold local patient data for use.

* Research Subject: Each inclusion in an MII use case generates a Research Subject.

Person, Patient, and Research Subject are at the beginning of all pathways. This is already true if only locally at the site of care data are "findable", "accessible", "interoperable" and "reusable" ([FAIR principles](https://www.go-fair.org/fair-principles/)) prepared and made available, if a first study is planned.

The central anchor role is played by the MODULE PERSON with the entities patient and subject. Since each facility maintains its own instance of the MII core data set for all patients at the facility, initially there is usually a 1:1 relationship between person and patient per site. Since no individual is required to participate in a study but may participate in many studies, a 0:n relationship exists between individual and subject. Regularly, study participation and notations as a patient are based on the patients' consents. However, participation can also occur on a legal basis without agreement with the individuals, as for example in the HiGHmed Use Case Infection Control, in which all patients of the participating hospitals (infected persons as the study group and non-infected persons as the reference group) receive a subject identification code on the basis of the Infection Control Act (IfSG) and are thus included.
