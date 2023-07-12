Profile: SD_MII_Person_Vitalstatus
Parent: Observation
Id: sd-mii-person-vitalstatus
Title: "SD MII Person Vitalstatus"
Description: "Dieses Profil beschreibt den Vitalstatus der Patient*in in der Medizininformatik-Initiative."
* ^url = "https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/Vitalstatus"
* ^version = "2.0.0-ballot2"
* id MS
* meta MS
* meta.source MS
* meta.profile MS
* status = #final (exactly)
* status MS
* category MS
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category contains survey 1..1 MS
* category[survey] = $observation-category#survey
* code MS
* code.coding MS
* code.coding ^slicing.discriminator.type = #pattern
* code.coding ^slicing.discriminator.path = "$this"
* code.coding ^slicing.rules = #open
* code.coding contains loinc 1..1 MS
* code.coding[loinc] = $loinc#67162-8
* code.coding[loinc].system 1.. MS
* code.coding[loinc].code 1.. MS
* subject 1.. MS
* subject only Reference(Patient or Group)
* subject ^type.profile = "https://www.medizininformatik-initiative.de/fhir/core/StructureDefinition/MII-Reference"
* effective[x] 1.. MS
* effective[x] only dateTime
* value[x] 1.. MS
* value[x] only CodeableConcept
* value[x].coding MS
* value[x].coding ^slicing.discriminator.type = #pattern
* value[x].coding ^slicing.discriminator.path = "$this"
* value[x].coding ^slicing.rules = #open
* value[x].coding contains Vitalstatus 1..1 MS
* value[x].coding[Vitalstatus] from VS_MII_Person_Vitalstatus (required)
* value[x].coding[Vitalstatus].system 1.. MS
* value[x].coding[Vitalstatus].code 1.. MS
* bodySite ..0
* specimen ..0
* referenceRange ..0
* component ..0