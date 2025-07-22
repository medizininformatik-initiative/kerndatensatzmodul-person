Instance: mii-exa-person-patient-pseudonymisiert
InstanceOf: MII_PR_Person_PatientPseudonymisiert
Usage: #example
* insert TestDataLabel
* meta.profile[0] = "https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/PatientPseudonymisiert|2025.0.1"
* identifier[PseudonymisierterIdentifier].type = $v3-ObservationValue#PSEUDED
* identifier[PseudonymisierterIdentifier].system = "https://www.medizininformatik-initiative.de/fhir/sid/pseudonym"
* identifier[PseudonymisierterIdentifier].value = "1234567890"
* identifier[versichertenId].use = #official
* identifier[versichertenId].type = $identifier-type-de-basis#KVZ10
* identifier[versichertenId].system = "http://fhir.de/sid/gkv/kvid-10"
* identifier[versichertenId].value.extension[data-absent-reason].valueCode = #masked
* identifier[versichertenId].assigner.identifier.use = #official
* identifier[versichertenId].assigner.identifier.system = "http://fhir.de/sid/arge-ik/iknr"
* identifier[versichertenId].assigner.identifier.value = "260326822"
* address.type = #both
* address.postalCode = "50"
* address.country = "DE"
* gender = #male
* birthDate = "2000-04-01"