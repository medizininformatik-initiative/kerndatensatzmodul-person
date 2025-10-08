Instance: mii-exa-person-patient-full
InstanceOf: MII_PR_Person_Patient
Usage: #example
* insert TestDataLabel
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/Patient)
* identifier[0].use = #usual
* identifier[=].type = $v2-0203#MR
* identifier[=].system = "https://www.charite.de/fhir/sid/patienten"
* identifier[=].value = "42285243"
* identifier[=].assigner.display = "Charité – Universitätsmedizin Berlin"
* identifier[=].assigner.identifier.system = "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier"
* identifier[=].assigner.identifier.value = "Charité"
* identifier[+].use = #official
* identifier[=].type = $identifier-type-de-basis#KVZ10
* identifier[=].system = "http://fhir.de/sid/gkv/kvid-10"
* identifier[=].value = "Z234567890"
* identifier[=].assigner.identifier.use = #official
* identifier[=].assigner.identifier.value = "109519005"
* identifier[=].assigner.identifier.system = "http://fhir.de/sid/arge-ik/iknr"
//* identifier[+].use = #secondary
//* identifier[=].type = $identifier-type-de-basis#PKV
//* identifier[=].value = "123456"
//* identifier[=].assigner.display = "Signal Iduna"
* name[name].use = #official
* name[name].family = "Van-der-Dussen"
* name[name].family.extension.url = "http://hl7.org/fhir/StructureDefinition/humanname-own-name"
* name[name].family.extension.valueString = "Van-der-Dussen"
* name[name].given[0] = "Maja"
* name[name].given[+] = "Julia"
* name[name].prefix = "Prof. Dr. med."
* name[name].prefix.extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-EN-qualifier"
* name[name].prefix.extension.valueCode = #AC
* name[geburtsname].use = #maiden
* name[geburtsname].family = "Haffer"
* gender = #other
* gender.extension.url = "http://fhir.de/StructureDefinition/gender-amtlich-de"
* gender.extension.valueCoding = $gender-amtlich-de#D "divers"
* birthDate = "1998-09-19"
* deceasedBoolean = false
* address.type = #both
* address.line = "Anna-Louisa-Karsch Str. 2"
* address.city = "Berlin"
* address.city.extension.url = "http://fhir.de/StructureDefinition/destatis/ags"
* address.city.extension.valueCoding = $ags#11000000
* address.state = "DE-BE"
* address.postalCode = "10178"
* address.country = "DE"
* managingOrganization = Reference(Organization/Charite-Universitaetsmedizin-Berlin)