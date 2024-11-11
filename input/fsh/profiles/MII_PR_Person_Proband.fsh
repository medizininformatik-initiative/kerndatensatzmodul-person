Profile: MII_PR_Person_Proband
Parent: ResearchSubject
Id: mii-pr-person-proband
Title: "MII PR Person Proband"
Description: "Dieses Profil beschreibt eine Proband*in in der Medizininformatik-Initiative."
* ^url = "https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/ResearchSubject"
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #retired
* ^date = "2024-11-11"
* id MS
* meta MS
//* meta.source MS
* meta.profile MS
* identifier MS
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "$this"
* identifier ^slicing.rules = #open
* identifier contains subjectIdentificationCode 1..1 MS
* identifier[subjectIdentificationCode] ^patternIdentifier.type = $v2-0203#ANON
* identifier[subjectIdentificationCode].type MS
* identifier[subjectIdentificationCode].system 1.. MS
* identifier[subjectIdentificationCode].value 1.. MS
* status MS
* period 1.. MS
* period.start 1.. MS
* period.end MS
//* study only $MII-Reference
* study MS
* individual 1.. MS
//* individual only $MII-Reference
* consent 1.. MS
//* consent only $MII-Reference