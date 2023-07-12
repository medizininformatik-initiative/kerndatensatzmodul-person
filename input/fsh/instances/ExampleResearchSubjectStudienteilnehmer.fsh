Instance: ExampleResearchSubjectStudienteilnehmer
InstanceOf: SD_MII_Person_Proband
Usage: #example
* identifier.type = $v2-0203#ANON
* identifier.system = "https://www.example.org/fhir/core/sid/SubjectIdentificationCode"
* identifier.value = "12345"
* status = #candidate
* period.start = "2019-09-06"
* study = Reference(ResearchStudy/MII-Beispielstudie)
* individual = Reference(Patient/MII-Patient)
* consent = Reference(Consent/MII-Consent)