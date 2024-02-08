CodeSystem: MII_CS_Person_Vitalstatus
Id: mii-cs-person-vitalstatus
Title: "MII CS Person Vitalstatus"
Description: "Vitalstatus des Patienten"
* ^url = "https://www.medizininformatik-initiative.de/fhir/core/modul-person/CodeSystem/Vitalstatus"
* insert PR_CS_VS_Version
* ^status = #active
* insert Publisher
* ^date = "2024-02-08"
* ^caseSensitive = true
* ^valueSet = "https://www.medizininformatik-initiative.de/fhir/core/modul-person/ValueSet/Vitalstatus"
* ^content = #complete
* #L "Patient lebt"
* #T "Patient verstorben"
* #A "unbekannt, Patient nicht mehr auffindbar (lost to follow-up)"
* #N "unbekannt, Betreuung/Nachsorge nicht mehr nötig"
* #B "unbekannt, Patient ist anderenorts in Betreuung"
* #V "unbekannt, Patient verweigert weitere Betreuung"
* #X "unbekannt"