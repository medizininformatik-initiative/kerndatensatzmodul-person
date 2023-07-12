Instance: sp-mii-person-prefix
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/core/modul-person/SearchParameter/Patient-Prefix"
* version = "2.0.0-ballot2"
* name = "SP_MII_Person_Prefix"
* status = #active
* experimental = false
* date = "2022-02-21"
* description = "Suchparameter für Patient.name.prefix"
* code = #prefix
* base = #Patient
* type = #token
* expression = "Patient.name.prefix"