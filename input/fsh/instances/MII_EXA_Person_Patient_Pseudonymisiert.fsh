Instance: mii-exa-person-patient-pseudonymisiert
InstanceOf: MII_PR_Person_PatientPseudonymisiert
Usage: #example
* identifier.use = #usual
* identifier.type = $v3-ObservationValue#PSEUDED
* identifier.system = "https://www.medizininformatik-initiative.de/fhir/sid/pseudonym"
* identifier.value = "1234567890"
* deceasedBoolean = false
* address.type = #both
* address.postalCode = "50"
* address.country = "DE"
* gender = #other
* gender.extension.url = "http://fhir.de/StructureDefinition/gender-amtlich-de"
* gender.extension.valueCoding = $gender-amtlich-de#D "divers"
* birthDate = "2022-04"
* managingOrganization = Reference(Organization/Charite-Universitaetsmedizin-Berlin)