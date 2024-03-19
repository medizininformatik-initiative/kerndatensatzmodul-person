Profile: MII_PR_Person_Vitalstatus
Parent: Observation
Id: mii-pr-person-vitalstatus
Title: "MII PR Person Vitalstatus"
Description: "Dieses Profil beschreibt den Vitalstatus der Patient*in in der Medizininformatik-Initiative."
* ^url = "https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/Vitalstatus"
* insert PR_CS_VS_Version
* insert Publisher
* ^date = "2024-02-08"
* id MS
* meta MS
//* meta.source MS
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
//* subject only $MII-Reference
* encounter MS
* effective[x] 1.. MS
* effective[x] only dateTime
* value[x] 1.. MS
* value[x] only CodeableConcept
* valueCodeableConcept.coding MS
* valueCodeableConcept.coding ^slicing.discriminator.type = #pattern
* valueCodeableConcept.coding ^slicing.discriminator.path = "$this"
* valueCodeableConcept.coding ^slicing.rules = #open
* valueCodeableConcept.coding contains Vitalstatus 1..1 MS
* valueCodeableConcept.coding[Vitalstatus] from MII_VS_Person_Vitalstatus (required)
* valueCodeableConcept.coding[Vitalstatus].system 1.. MS
* valueCodeableConcept.coding[Vitalstatus].code 1.. MS
* note MS
* bodySite ..0
* specimen ..0
* referenceRange ..0
* component ..0