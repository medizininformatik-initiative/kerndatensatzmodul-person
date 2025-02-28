Instance: mii-exa-person-patient-pseudonymisiert
InstanceOf: MII_PR_Person_PatientPseudonymisiert
Usage: #example
* insert TestDataLabel
* meta.profile[0] = "https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/PatientPseudonymisiert|2025.0.1"
* identifier.type = $v3-ObservationValue#PSEUDED
* identifier.system = "https://www.medizininformatik-initiative.de/fhir/sid/pseudonym"
* identifier.value = "1234567890"
* address.type = #both
* address.postalCode = "50"
* address.country = "DE"
* gender = #male
* birthDate = "2000-04-01"