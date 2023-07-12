Instance: sp-mii-person-otheramtlich
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/core/modul-person/SearchParameter/Patient-OtherAmtlich"
* version = "2.0.0-ballot2"
* name = "SP_MII_Person_OtherAmtlich"
* status = #active
* experimental = false
* date = "2022-02-21"
* description = "Suchparameter für Patient.gender.extension:other-amtlich"
* code = #other-amtlich
* base = #Patient
* type = #token
* expression = "Patient.gender.extension('http://fhir.de/StructureDefinition/gender-amtlich-de').value"