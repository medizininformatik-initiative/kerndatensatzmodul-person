Profile: MII_PR_Person_Todesursache
Parent: Condition
Id: mii-pr-person-todesursache
Title: "MII PR Person Todesursache"
Description: "Dieses Profil beschreibt den Todesursache der Patient*in als Element des Kerndatensatzes Medizininformatik-Initiative"
* ^url = "https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/Todesursache"
* ^version = "2.0.0-ballot2"
* ^status = #active
* id MS
* meta MS
* meta.source MS
* meta.profile MS
* category MS
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category contains todesDiagnose 1..1 MS
* category[todesDiagnose] = $sct#16100001
* category[todesDiagnose] ^patternCodeableConcept.coding[1] = $loinc#79378-6
* category[todesDiagnose].coding MS
* category[todesDiagnose].coding ^slicing.discriminator.type = #pattern
* category[todesDiagnose].coding ^slicing.discriminator.path = "$this"
* category[todesDiagnose].coding ^slicing.rules = #open
* category[todesDiagnose].coding contains
    snomed 1..1 MS and
    loinc 1..1 MS
* category[todesDiagnose].coding[snomed] = $sct#16100001
* category[todesDiagnose].coding[loinc] = $loinc#79378-6
* code 1.. MS
* code.coding MS
* code.coding ^slicing.discriminator.type = #pattern
* code.coding ^slicing.discriminator.path = "$this"
* code.coding ^slicing.rules = #open
* code.coding contains icd10-who 1..1 MS
* code.coding[icd10-who] ^patternCoding.system = "http://hl7.org/fhir/sid/icd-10"
* code.coding[icd10-who].system 1.. MS
* code.coding[icd10-who].version 1.. MS
* code.coding[icd10-who].code 1.. MS
* code.text MS
* subject MS