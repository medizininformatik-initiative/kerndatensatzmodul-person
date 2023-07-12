Instance: ExampleObservationVitalstatus
InstanceOf: SD_MII_Person_Vitalstatus
Usage: #example
* status = #final
* category = $observation-category#survey
* code = $loinc#67162-8
* subject = Reference(Patient/example)
* effectiveDateTime = "2019-12-23T09:30:10+01:00"
* valueCodeableConcept = CS_MII_Person_Vitalstatus#X