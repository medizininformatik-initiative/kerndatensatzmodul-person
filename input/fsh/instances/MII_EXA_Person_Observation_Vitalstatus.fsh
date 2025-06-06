Instance: mii-exa-person-observation-vitalstatus
InstanceOf: MII_PR_Person_Vitalstatus
Usage: #example
* insert TestDataLabel
* meta.profile[0] = "https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/Vitalstatus|2025.0.1"
* status = #final
* category[survey] = $observation-category#survey
* code.coding[loinc] = $loinc#67162-8
* subject = Reference(Patient/example)
* effectiveDateTime = "2019-12-23T09:30:10+01:00"
* valueCodeableConcept.coding[Vitalstatus] = MII_CS_Person_Vitalstatus#X