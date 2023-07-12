Instance: ExampleConditionTodesursache
InstanceOf: SD_MII_Person_Todesursache
Usage: #example
* category[todesDiagnose].coding[snomed] = $sct#16100001 "Death diagnosis (contextual qualifier) (qualifier value)"
* category[todesDiagnose].coding[loinc] = $loinc#79378-6 "Cause of death"
* code.coding[icd10-who] = $icd-10#R96.1
* code.coding[icd10-who].version = "2021"
* subject = Reference(Patient/example)