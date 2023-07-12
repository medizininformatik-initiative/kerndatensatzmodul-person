Instance: ExampleConditionTodesursache
InstanceOf: SD_MII_Person_Todesursache
Usage: #example
* category.coding[0] = $sct#16100001 "Death diagnosis (contextual qualifier) (qualifier value)"
* category.coding[+] = $loinc#79378-6 "Cause of death"
* code.coding = $icd-10#R96.1
* code.coding.version = "2021"
* subject = Reference(Patient/example)