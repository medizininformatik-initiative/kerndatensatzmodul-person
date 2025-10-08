Instance: mii-exa-person-condition-todesursache
InstanceOf: MII_PR_Person_Todesursache
Usage: #example
* insert TestDataLabel
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/Todesursache)
//* category[todesDiagnose].coding[snomed].display = "Death diagnosis (contextual qualifier) (qualifier value)"
//* category[todesDiagnose].coding[loinc].display = "Cause of death"
* code.coding[icd10-who] = $icd-10#R96.1
* code.coding[icd10-who].version = "2019"
* subject = Reference(Patient/example)