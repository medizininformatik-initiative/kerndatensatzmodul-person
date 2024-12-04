Profile: MII_PR_Person_Patient
Parent: Patient
Id: mii-pr-person-patient
Title: "MII PR Person Patient"
Description: "Dieses Profil beschreibt eine Patient*in in der Medizininformatik-Initiative."
* ^url = "https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/Patient"
* insert Translation(^title, de-DE, Patient / Patientin)
* insert Translation(^title, en-US, Patient)
* insert Translation(^description, de-DE, Demografische und andere administrative Informationen über eine Patientin oder einen Patienten.)
* insert Translation(^description, en-US, Demographics and other administrative information about a patient.)
* insert PR_CS_VS_Version
* insert Publisher
* insert LicenseCodeableCCBY40
* ^date = "2024-12-04"
* obeys mii-pat-1
* id MS
* meta MS
//* meta.source MS
* meta.profile MS
* identifier MS
* identifier ^short = "Patienten-Identifikator"
* insert Translation(identifier ^short, de-DE, Identifikator)
* insert Translation(identifier ^short, en-US, Identifier)
* identifier ^definition = "Ein Identifikator für den/die Patient*in"
* insert Translation(identifier ^definition, de-DE, Ein Identifikator für den/die Patient*in)
* insert Translation(identifier ^definition, en-US, An identifier for this patient)
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "$this"
* identifier ^slicing.rules = #open
* identifier contains
    //versichertenId_GKV 0..1 MS and
    versichertenId 0..1 MS and
    pid 0..* MS //and
    //versichertennummer_pkv 0..1 MS
* identifier[versichertenId] only IdentifierKvid10
* identifier[versichertenId] ^patternIdentifier.type = $identifier-type-de-basis#KVZ10
* identifier[versichertenId].type 1.. MS
* identifier[versichertenId].system MS
* identifier[versichertenId].value MS
* identifier[versichertenId].assigner 1.. MS
* identifier[versichertenId].assigner.identifier 1.. MS
* identifier[versichertenId].assigner.identifier only IdentifierIknr
* identifier[versichertenId].assigner.identifier.type MS
* identifier[versichertenId].assigner.identifier.system MS
* identifier[versichertenId].assigner.identifier.value MS
* identifier[versichertenId] ^short = "Krankenversichertennummer"
* identifier[versichertenId] ^definition = "Krankenversichertennummer, unabhängig, ob GKV, PKV oder Sonderkostenträger"
* insert Translation(identifier[versichertenId] ^short, de-DE, Krankenversichertennummer)
* insert Translation(identifier[versichertenId] ^short, en-US, Health insurance number)
* insert Translation(identifier[versichertenId] ^definition, de-DE, 10-stellige KVID)
* insert Translation(identifier[versichertenId] ^definition, en-US, 10-digit health insurance number)
//* identifier[versichertenId_GKV] only IdentifierKvid10
//* identifier[versichertenId_GKV] ^patternIdentifier.type = $identifier-type-de-basis#GKV
//* identifier[versichertenId_GKV].type 1.. MS
//* identifier[versichertenId_GKV].system MS
//* identifier[versichertenId_GKV].value MS
//* identifier[versichertenId_GKV].assigner 1.. MS
//* identifier[versichertenId_GKV].assigner.identifier 1.. MS
//* identifier[versichertenId_GKV].assigner.identifier only IdentifierIknr
//* identifier[versichertenId_GKV].assigner.identifier.type MS
//* identifier[versichertenId_GKV].assigner.identifier.system MS
//* identifier[versichertenId_GKV].assigner.identifier.value MS
//* insert Translation(identifier[versichertenId_GKV] ^short, de-DE, Gesetzliche Krankenversichertennummer)
//* insert Translation(identifier[versichertenId_GKV] ^short, en-US, Statutory health insurance number)
//* insert Translation(identifier[versichertenId_GKV] ^definition, de-DE, 10-stellige KVID)
//* insert Translation(identifier[versichertenId_GKV] ^definition, en-US, 10-digit health insurance number)
* identifier[pid] only IdentifierPid
* identifier[pid] ^patternIdentifier.type = $v2-0203#MR
* identifier[pid].type 1.. MS
* identifier[pid].system MS
* identifier[pid].value MS
//* identifier[pid].assigner only $MII-Reference
* identifier[pid].assigner MS
* identifier[pid].assigner.identifier.type = $v2-0203#XX
* identifier[pid].assigner.identifier.type MS
* identifier[pid].assigner.identifier.system obeys mii-pat-2
* identifier[pid] ^short = "Patientenidentifikation"
* identifier[pid] ^definition = "Patientenidentifikator innerhalb einer Organisation"
* insert Translation(identifier[pid] ^short, de-DE, Organisationsinterner Patienten-Identifikator)
* insert Translation(identifier[pid] ^short, en-US, Organization-internal patient identifier)
* insert Translation(identifier[pid] ^definition, de-DE, Führende ID der Patient*in in der Organisation)
* insert Translation(identifier[pid] ^definition, en-US, Medical record number of the patient in the organization)
//* identifier[versichertennummer_pkv] only IdentifierPkv
//* identifier[versichertennummer_pkv] ^patternIdentifier.type = $identifier-type-de-basis#PKV
//* identifier[versichertennummer_pkv].use MS
//* identifier[versichertennummer_pkv].type 1.. MS
//* identifier[versichertennummer_pkv].value MS
//* identifier[versichertennummer_pkv].assigner MS
//* identifier[versichertennummer_pkv].assigner.identifier.type MS
//* identifier[versichertennummer_pkv].assigner.identifier.system MS
//* identifier[versichertennummer_pkv].assigner.identifier.value MS
//* identifier[versichertennummer_pkv].assigner.display MS
//* insert Translation(identifier[versichertennummer_pkv] ^short, de-DE, Private Krankenversichertennummer)
//* insert Translation(identifier[versichertennummer_pkv] ^short, en-US, Private health insurance number)
//* insert Translation(identifier[versichertennummer_pkv] ^definition, de-DE, Versichertennummer im Kontext eines PKV Versicherungsverhältnisses)
//* insert Translation(identifier[versichertennummer_pkv] ^definition, en-US, Health insurance number in the context of a private health insurance)
* name 0..* MS
* name ^short = "Name"
* name ^definition = "Name der Patientin oder des Patienten"
* insert Translation(name ^short, de-DE, Name)
* insert Translation(name ^short, en-US, Name)
* insert Translation(name ^definition, de-DE, Name der Patientin oder des Patienten)
* insert Translation(name ^definition, en-US, A name associated with the patient)
* name ^slicing.discriminator.type = #pattern
* name ^slicing.discriminator.path = "$this"
* name ^slicing.rules = #open
* name contains
    name 0..1 MS and
    geburtsname 0..1 MS
* name[name] only HumannameDeBasis
* name[name] ^patternHumanName.use = #official
* name[name].use 1.. MS
* name[name].family 1.. MS
* name[name].family.extension[namenszusatz] MS
* name[name].family.extension[nachname] MS
* name[name].family.extension[vorsatzwort] MS
* name[name].given 1.. MS
* name[name].prefix MS
* name[name].prefix.extension[prefix-qualifier] MS
* name[name] ^short = "Personenname"
* name[name] ^definition = "Personenname mit in Deutschland üblichen Namensbestandteilen"
* insert Translation(name[name] ^short, de-DE, Personenname)
* insert Translation(name[name] ^short, en-US, Person's name)
* insert Translation(name[name] ^definition, de-DE, Personenname mit in Deutschland üblichen Namensbestandteilen)
* insert Translation(name[name] ^definition, en-US, A person's name with components typically used in Germany)
* name[geburtsname] only HumannameDeBasis
* name[geburtsname] ^patternHumanName.use = #maiden
* name[geburtsname].use 1.. MS
* name[geburtsname].family 1.. MS
* name[geburtsname].family.extension[namenszusatz] MS
* name[geburtsname].family.extension[nachname] MS
* name[geburtsname].family.extension[vorsatzwort] MS
* name[geburtsname].given ..0
* name[geburtsname].prefix ..0
* name[geburtsname].prefix.extension[prefix-qualifier] MS
* name[geburtsname] ^short = "Geburtsname"
* name[geburtsname] ^definition = "Name, der vor einer Namensänderung aufgrund von Heirat verwendet wurde"
* insert Translation(name[geburtsname] ^short, de-DE, Geburtsname)
* insert Translation(name[geburtsname] ^short, en-US, Maiden name)
* insert Translation(name[geburtsname] ^definition, de-DE, Name\, der vor einer Namensänderung aufgrund von Heirat verwendet wurde.)
* insert Translation(name[geburtsname] ^definition, en-US, A name used prior to changing name because of marriage.)
* gender MS
* gender ^short = "Administratives Geschlecht"
* gender ^definition = "männlich | weiblich | andere | unbekannt | unbestimmt | divers"
* insert Translation(gender ^short, de-DE, Administratives Geschlecht)
* insert Translation(gender ^short, en-US, Administrative gender)
* insert Translation(gender ^definition, de-DE, männlich | weiblich | andere | unbekannt | unbestimmt | divers)
* insert Translation(gender ^definition, en-US, male | female | other | unknown | undetermined | diverse)
* gender.extension contains GenderOtherDE named other-amtlich 0..1 MS
* gender.extension[other-amtlich] ^short = "Extension Administratives Geschlecht"
* gender.extension[other-amtlich] ^definition = "Extension zur genaueren Differenzierung des administrativen Geschlechts"
* insert Translation(gender.extension[other-amtlich] ^short, de-DE, Extension Administratives Geschlecht)
* insert Translation(gender.extension[other-amtlich] ^short, en-US, Extension administrative gender)
* insert Translation(gender.extension[other-amtlich] ^definition, de-DE, Extension zur genaueren Differenzierung des administrativen Geschlechts)
* insert Translation(gender.extension[other-amtlich] ^definition, en-US, Extension for detailed differentiation of administrative gender)
* birthDate MS
* birthDate ^short = "Geburtsdatum"
* birthDate ^definition = "Das Geburtsdatum der Patientin oder des Patienten"
* insert Translation(birthDate ^short, de-DE, Geburtsdatum)
* insert Translation(birthDate ^short, en-US, Date of birth)
* insert Translation(birthDate ^definition, de-DE, Das Geburtsdatum der Patientin oder des Patienten)
* insert Translation(birthDate ^definition, en-US, The date of birth for the individual)
* birthDate.extension contains $data-absent-reason named data-absent-reason 0..1 MS
* deceased[x] MS
* deceased[x] ^short = "Verstorben"
* deceased[x] ^definition = "Gibt an, ob die Person verstorben ist oder nicht"
* insert Translation(deceased[x] ^short, de-DE, Verstorben)
* insert Translation(deceased[x] ^short, en-US, Deceased)
* insert Translation(deceased[x] ^definition, de-DE, Gibt an\, ob die Person verstorben ist oder nicht)
* insert Translation(deceased[x] ^definition, en-US, Indicates if the individual is deceased or not)
* address MS
* address ^short = "Adresse"
* address ^definition = "Eine Adresse der Patientin oder des Patienten"
* insert Translation(address ^short, de-DE, Adresse)
* insert Translation(address ^short, en-US, Address)
* insert Translation(address ^definition, de-DE, Eine Adresse der Patientin oder des Patienten)
* insert Translation(address ^definition, en-US, An address for the individual)
* address ^slicing.discriminator.type = #pattern
* address ^slicing.discriminator.path = "$this"
* address ^slicing.rules = #open
* address contains
    Strassenanschrift 0..* MS and
    Postfach 0..* MS
* address[Strassenanschrift] only AddressDeBasis
* address[Strassenanschrift] ^patternAddress.type = #both
* address[Strassenanschrift].extension[Stadtteil] MS
* address[Strassenanschrift].type 1.. MS
* address[Strassenanschrift].line 1..3 MS
* address[Strassenanschrift].line.extension[Strasse] MS
* address[Strassenanschrift].line.extension[Hausnummer] MS
* address[Strassenanschrift].line.extension[Adresszusatz] MS
* address[Strassenanschrift].line.extension[Postfach] 0..0 MS
* address[Strassenanschrift].city 1.. MS
* address[Strassenanschrift].city.extension contains ExtensionDestatisAgs named gemeindeschluessel 0..1 MS
* address[Strassenanschrift].postalCode 1.. MS
* address[Strassenanschrift].country 1.. MS
* address[Strassenanschrift] obeys pat-cnt-2or3-char
* address[Strassenanschrift] ^short = "Straßenanschrift"
* address[Strassenanschrift] ^definition = "Eine Straßenanschrift der Patientin oder des Patienten"
* insert Translation(address[Strassenanschrift] ^short, de-DE, Straßenanschrift)
* insert Translation(address[Strassenanschrift] ^short, en-US, Street address)
* insert Translation(address[Strassenanschrift] ^definition, de-DE, Eine Straßenanschrift der Patientin oder des Patienten)
* insert Translation(address[Strassenanschrift] ^definition, en-US, A street address for the individual)
* address[Postfach] only AddressDeBasis
* address[Postfach] ^patternAddress.type = #postal
* address[Postfach].extension[Stadtteil] MS
* address[Postfach].type 1.. MS
* address[Postfach].line 1..3 MS
* address[Postfach].line.extension[Strasse] 0..0
* address[Postfach].line.extension[Hausnummer] 0..0
* address[Postfach].line.extension[Adresszusatz] 0..0
* address[Postfach].line.extension[Postfach] MS
* address[Postfach].city 1.. MS
* address[Postfach].city.extension contains ExtensionDestatisAgs named gemeindeschluessel 0..1 MS
* address[Postfach].postalCode 1.. MS
* address[Postfach].country 1.. MS
* address[Postfach] obeys pat-cnt-2or3-char
* address[Postfach] ^short = "Postfach"
* address[Postfach] ^definition = "Eine Postfachanschrift der Patientin oder des Patienten"
* insert Translation(address[Postfach] ^short, de-DE, Postfach)
* insert Translation(address[Postfach] ^short, en-US, Postbox)
* insert Translation(address[Postfach] ^definition, de-DE, Eine Postfachanschrift der Patientin oder des Patienten)
* insert Translation(address[Postfach] ^definition, en-US, A postbox address for the individual)
* link MS
* link ^short = "Verweis"
* link ^definition = "Verweis auf eine andere Patientenressource, die die gleiche tatsächliche Person betrifft"
* insert Translation(link ^short, de-DE, Verweis)
* insert Translation(link ^short, en-US, Link)
* insert Translation(link ^definition, de-DE, Verweis auf eine andere Patientenressource\, die die gleiche tatsächliche Person betrifft)
* insert Translation(link ^definition, en-US, Link to another patient resource that concerns the same actual person)
//* link.other only $MII-Reference
* link.other MS
* link.type MS