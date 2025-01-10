Profile: MII_PR_Person_Todesursache
Parent: Condition
Id: mii-pr-person-todesursache
Title: "MII PR Person Todesursache"
Description: "Dieses Profil beschreibt den Todesursache der Patient*in als Element des Kerndatensatzes Medizininformatik-Initiative"
* ^url = "https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/Todesursache"
* insert Translation(^title, de-DE, Todesursache)
* insert Translation(^title, en-US, Cause of Death)
* insert Translation(^description, de-DE, Todesursache der verstorbenen Patientin oder des verstorbenen Patienten.)
* insert Translation(^description, en-US, Cause of death of the deceased patient.)
* insert PR_CS_VS_Version
* insert Publisher
* insert LicenseCodeableCCBY40
* ^status = #active
* ^date = "2024-12-04"
* id MS
* meta MS
//* meta.source MS
* meta.profile MS
* clinicalStatus MS
* clinicalStatus ^short = "Klinischer Status"
* clinicalStatus ^definition = "aktiv | Rezidiv | Rückfall | inaktiv | Remission | abgeklungen"
* insert Translation(clinicalStatus ^short, de-DE, Klinischer Status)
* insert Translation(clinicalStatus ^short, en-US, Clinical status)
* insert Translation(clinicalStatus ^definition, de-DE, aktiv | Rezidiv | Rückfall | inaktiv | Remission | abgeklungen)
* insert Translation(clinicalStatus ^definition, en-US, active | recurrence | relapse | inactive | remission | resolved)
* verificationStatus MS
* verificationStatus ^short = "Verifizierungsstatus"
* verificationStatus ^definition = "unbestätigt | vorläufig | differential | bestätigt | widerlegt | fehlerhafte Eingabe"
* insert Translation(verificationStatus ^short, de-DE, Verifizierungsstatus)
* insert Translation(verificationStatus ^short, en-US, Verification status)
* insert Translation(verificationStatus ^definition, de-DE, unbestätigt | vorläufig | differential | bestätigt | widerlegt | fehlerhafte Eingabe)
* insert Translation(verificationStatus ^definition, en-US, unconfirmed | provisional | differential | confirmed | refuted | entered-in-error)
* category MS
* category ^short = "Kategorie"
* category ^definition = "Eine Kategorie, die der Diagnose zugeordnet ist."
* insert Translation(category ^short, de-DE, Kategorie)
* insert Translation(category ^short, en-US, Category)
* insert Translation(category ^definition, de-DE, Eine Kategorie\, die der Diagnose zugeordnet ist.)
* insert Translation(category ^definition, en-US, A category assigned to the condition.)
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category contains todesDiagnose 1..1 MS
* category[todesDiagnose] ^patternCodeableConcept.coding[0] = $sct-no-ver#16100001
* category[todesDiagnose] ^patternCodeableConcept.coding[1] = $loinc#79378-6
* category[todesDiagnose].coding MS
* category[todesDiagnose].coding ^slicing.discriminator.type = #pattern
* category[todesDiagnose].coding ^slicing.discriminator.path = "$this"
* category[todesDiagnose].coding ^slicing.rules = #open
* category[todesDiagnose].coding contains
    snomed 1..1 MS and
    loinc 1..1 MS
* category[todesDiagnose].coding[snomed] = $sct-no-ver#16100001
* category[todesDiagnose].coding[loinc] = $loinc#79378-6
* code 1.. MS
* code ^short = "Code"
* code ^definition = "Ein ICD-10-WHO Code, der die Todesursache identifiziert."
* insert Translation(code ^short, de-DE, Code)
* insert Translation(code ^short, en-US, Code)
* insert Translation(code ^definition, de-DE, Ein ICD-10-WHO Code\, der die Todesursache identifiziert.)
* insert Translation(code ^definition, en-US, An ICD-10-WHO code identifying the cause of death.)
* code.coding MS
* code.coding ^slicing.discriminator.type = #pattern
* code.coding ^slicing.discriminator.path = "$this"
* code.coding ^slicing.rules = #open
* code.coding contains icd10-who 1..1 MS
* code.coding[icd10-who] from http://hl7.org/fhir/sid/icd-10/vs (required)
* code.coding[icd10-who] ^patternCoding.system = "http://hl7.org/fhir/sid/icd-10"
* code.coding[icd10-who].system 1.. MS
* code.coding[icd10-who].version 1.. MS
* code.coding[icd10-who].code 1.. MS
* code.coding[icd10-who] ^short = "ICD-10-WHO"
* code.coding[icd10-who] ^definition = "Ein ICD-10-WHO Code, der die Todesursache identifiziert."
* code.text MS
* subject MS
* encounter MS
* encounter ^short = "Fall oder Kontakt"
* encounter ^definition = "Fall oder Kontakt, bei dem die Todesursache festgestellt wurde."
* insert Translation(encounter ^short, de-DE, Fall oder Kontakt)
* insert Translation(encounter ^short, en-US, Encounter)
* insert Translation(encounter ^definition, de-DE, Fall oder Kontakt\, bei dem die Todesursache festgestellt wurde.)
* insert Translation(encounter ^definition, en-US, Encounter during which the cause of death was determined.)
* recordedDate MS
* recordedDate ^short = "Aufzeichnungsdatum"
* recordedDate ^definition = "Datum, an dem die Todesursache erstmals dokumentiert wurde."
* insert Translation(recordedDate ^short, de-DE, Aufzeichnungsdatum)
* insert Translation(recordedDate ^short, en-US, Recorded date)
* insert Translation(recordedDate ^definition, de-DE, Datum\, an dem die Todesursache erstmals dokumentiert wurde.)
* insert Translation(recordedDate ^definition, en-US, Date when the cause of death was first recorded.)
* note MS
* note ^short = "Hinweis"
* note ^definition = "Zusätzliche Informationen zur Todesursache als Freitext."
* insert Translation(note ^short, de-DE, Hinweis)
* insert Translation(note ^short, en-US, Note)
* insert Translation(note ^definition, de-DE, Zusätzliche Informationen zur Todesursache als Freitext.)
* insert Translation(note ^definition, en-US, Additional information about the cause of death as free text.)