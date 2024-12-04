Instance: mii-exa-person-patient-pseudonymisiert
InstanceOf: MII_PR_Person_PatientPseudonymisiert
Usage: #example
* insert TestDataLabel
* meta.profile[0] = "https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/PatientPseudonymisiert|2025.0.0"
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