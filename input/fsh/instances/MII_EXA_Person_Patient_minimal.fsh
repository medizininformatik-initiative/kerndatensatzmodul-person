Instance: mii-exa-person-patient-minimal
InstanceOf: MII_PR_Person_Patient
Usage: #example
* insert TestDataLabel
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/Patient)
* identifier[0].use = #usual
* identifier[=].type = $v2-0203#MR
* identifier[=].system = "https://www.charite.de/fhir/sid/patienten"
* identifier[=].value = "42285243"
* identifier[=].assigner.display = "Charité – Universitätsmedizin Berlin"
* identifier[=].assigner.identifier.system = "http://fhir.de/sid/arge-ik/iknr"
* identifier[=].assigner.identifier.value = "261101015"
* identifier[+].use = #official
* identifier[=].type = $identifier-type-de-basis#KVZ10
* identifier[=].system = "http://fhir.de/sid/gkv/kvid-10"
* identifier[=].value = "A999999999"
* identifier[=].assigner.identifier.use = #official
* identifier[=].assigner.identifier.system = "http://fhir.de/sid/arge-ik/iknr"
* identifier[=].assigner.identifier.value = "260326822"
* name[name].use = #official
* name[name].family = "Van-der-Dussen"
* name[name].given[0] = "Maja"
* name[name].given[+] = "Julia"
* address.type = #both
* address.line = "Teststraße 2"
* address.city = "Köln"
* address.postalCode = "50823"
* address.country = "DE"
* gender = #other
* gender.extension.url = "http://fhir.de/StructureDefinition/gender-amtlich-de"
* gender.extension.valueCoding = $gender-amtlich-de#D "divers"
* birthDate = "1998-09-19"
* managingOrganization = Reference(Organization/Charite-Universitaetsmedizin-Berlin)