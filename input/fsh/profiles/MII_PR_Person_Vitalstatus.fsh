Profile: MII_PR_Person_Vitalstatus
Parent: Observation
Id: mii-pr-person-vitalstatus
Title: "MII PR Person Vitalstatus"
Description: "Dieses Profil beschreibt den Vitalstatus der Patient*in in der Medizininformatik-Initiative."
* ^url = "https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/Vitalstatus"
* insert Translation(^title, de-DE, Vitalstatus)
* insert Translation(^title, en-US, Vital status)
* insert Translation(^description, de-DE, Vitalstatus einer Patientin oder eines Patienten.)
* insert Translation(^description, en-US, Vital status of a patient.)
* insert PR_CS_VS_Version
* insert Publisher
* insert LicenseCodeableCCBY40
* ^date = "2024-12-04"
* id MS
* meta MS
//* meta.source MS
* meta.profile MS
* status = #final (exactly)
* status MS
* status ^short = "Status"
* status ^definition = "abgeschlossen"
* insert Translation(status ^short, de-DE, Status)
* insert Translation(status ^short, en-US, Status)
* insert Translation(status ^definition, de-DE, abgeschlossen)
* insert Translation(status ^definition, en-US, completed)
* category MS
* category ^short = "Kategorie"
* category ^definition = "Klassifikation des Typs der Beobachtung für den Vitalstatus."
* insert Translation(category ^short, de-DE, Kategorie)
* insert Translation(category ^short, en-US, Category)
* insert Translation(category ^definition, de-DE, Klassifikation des Typs der Beobachtung für den Vitalstatus.)
* insert Translation(category ^definition, en-US, Classification of type of observation for vital status.)
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category contains survey 1..1 MS
* category[survey] = $observation-category#survey
* code MS
* code ^short = "Code"
* code ^definition = "Ein LOINC Code, der die Vitalstatus Beobachtung identifiziert."
* insert Translation(code ^short, de-DE, Code)
* insert Translation(code ^short, en-US, Code)
* insert Translation(code ^definition, de-DE, Ein LOINC Code\, der die Vitalstatus Beobachtung identifiziert.)
* insert Translation(code ^definition, en-US, A LOINC code identifying the vital status observation.)
* code.coding MS
* code.coding ^slicing.discriminator.type = #pattern
* code.coding ^slicing.discriminator.path = "$this"
* code.coding ^slicing.rules = #open
* code.coding contains loinc 1..1 MS
* code.coding[loinc] = $loinc#67162-8
* code.coding[loinc].system 1.. MS
* code.coding[loinc].code 1.. MS
* code.coding[loinc] ^short = "LOINC Code"
* code.coding[loinc] ^definition = "LOINC Code für Vitalstatus"
* subject 1.. MS
* subject only Reference(Patient or Group)
//* subject only $MII-Reference
* encounter MS
* encounter ^short = "Fall oder Kontakt"
* encounter ^definition = "Fall oder Kontakt, bei dem der Vitalstatus festgestellt wurde."
* insert Translation(encounter ^short, de-DE, Fall oder Kontakt)
* insert Translation(encounter ^short, en-US, Encounter)
* insert Translation(encounter ^definition, de-DE, Fall oder Kontakt\, bei dem der Vitalstatus festgestellt wurde.)
* insert Translation(encounter ^definition, en-US, Encounter during which the vital status was determined.)
* effective[x] 1.. MS
* effective[x] ^short = "Zeitpunkt"
* effective[x] ^definition = "Der Zeitpunkt, zu dem der beobachtete Vitalstatus als wahr festgestellt wird."
* effective[x] only dateTime
* effectiveDateTime ^short = "Zeitpunkt"
* effectiveDateTime ^definition = "Der Zeitpunkt, zu dem der beobachtete Vitalstatus als wahr festgestellt wird."
* insert Translation(effectiveDateTime ^short, de-DE, Zeitpunkt)
* insert Translation(effectiveDateTime ^short, en-US, Point in time)
* insert Translation(effectiveDateTime ^definition, de-DE, Der Zeitpunkt\, zu dem der beobachtete Vitalstatus als wahr festgestellt wird.)
* insert Translation(effectiveDateTime ^definition, en-US, The time the observed vital status is asserted as being true.)
* value[x] 1.. MS
* value[x] only CodeableConcept
* value[x] ^short = "Wert"
* value[x] ^definition = "lebendig | verstorben | unbekannt"
* insert Translation(value[x] ^short, de-DE, Wert)
* insert Translation(value[x] ^short, en-US, Value)
* insert Translation(value[x] ^definition, de-DE, lebendig | verstorben | unbekannt)
* insert Translation(value[x] ^definition, en-US, alive | deceased | unknown)
* valueCodeableConcept ^short = "Codierter Wert"
* valueCodeableConcept ^definition = "Der codierte Wert für den Vitalstatus."
* valueCodeableConcept.coding MS
* valueCodeableConcept.coding ^slicing.discriminator.type = #pattern
* valueCodeableConcept.coding ^slicing.discriminator.path = "$this"
* valueCodeableConcept.coding ^slicing.rules = #open
* valueCodeableConcept.coding contains Vitalstatus 1..1 MS
* valueCodeableConcept.coding[Vitalstatus] from MII_VS_Person_Vitalstatus (required)
* valueCodeableConcept.coding[Vitalstatus].system 1.. MS
* valueCodeableConcept.coding[Vitalstatus].code 1.. MS
* valueCodeableConcept.coding[Vitalstatus] ^short = "Vitalstatus"
* valueCodeableConcept.coding[Vitalstatus] ^definition = "Der Vitalstatus der Person."
* note MS
* note ^short = "Hinweis"
* note ^definition = "Zusätzliche Informationen zum Vitalstatus als Freitext."
* insert Translation(note ^short, de-DE, Hinweis)
* insert Translation(note ^short, en-US, Note)
* insert Translation(note ^definition, de-DE, Zusätzliche Informationen zum Vitalstatus als Freitext.)
* insert Translation(note ^definition, en-US, Additional information about the vital status as free text.)
* bodySite ..0
* specimen ..0
* referenceRange ..0
* component ..0