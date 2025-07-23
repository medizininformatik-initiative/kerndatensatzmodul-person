Profile: MII_PR_Person_PatientPseudonymisiert
Parent: Patient
Id: mii-pr-person-patient-pseudonymisiert
Title: "MII PR Person Patient (Pseudonymisiert)"
Description: "Dieses Profil beschreibt eine*n pseudonymisierte*n Patient*in in der Medizininformatik-Initiative."
* ^url = "https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/PatientPseudonymisiert"
* insert Translation(^title, de-DE, Patient / Patientin pseudonymisiert)
* insert Translation(^title, en-US, Patient pseudonymized)
* insert Translation(^description, de-DE, Demografische und andere administrative Informationen über eine Patientin oder einen Patienten.)
* insert Translation(^description, en-US, Demographics and other administrative information about a patient.)
* insert PR_CS_VS_Version
* insert Publisher
* insert LicenseCodeableCCBY40
* ^date = "2025-07-22"
* obeys mii-pat-1
* id MS
* meta MS
//* meta.source MS
* meta.profile MS
* identifier 1.. MS
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
    PseudonymisierterIdentifier 0..* MS and
    AnonymisierterIdentifier 0..* MS and
    MaskierterVersichertenIdentifer 0..1 MS
* identifier[PseudonymisierterIdentifier] ^short = "Pseudonymisierter Identifikator"
* identifier[PseudonymisierterIdentifier] ^definition = """
    Ein Pseudonym ersetzt einen Originalwert. 
    Die Verarbeitung ist umkehrbar. Zusätzliche Informationen sind erforderlich, um den Originalwert zu rekonstruieren, bspw. eine Trusted Third Party.
    """
* identifier[PseudonymisierterIdentifier] ^patternIdentifier.type = $v3-ObservationValue#PSEUDED
* identifier[AnonymisierterIdentifier] ^patternIdentifier.type = $v3-ObservationValue#ANONYED
* identifier[AnonymisierterIdentifier] ^short = "Anonymisierter Identifikator"
* identifier[AnonymisierterIdentifier] ^definition = """
    Ein Anonymisierter Identifikator ersetzt einen Originalwert. 
    Die Verarbeitung ist unumkehrbar. Der Originalwert kann nicht oder nur mit unverhältnismäßigem Aufwand rekonstruiert werden.
    """
* identifier[MaskierterVersichertenIdentifer] only IdentifierKvid10
* identifier[MaskierterVersichertenIdentifer] obeys ide-masked-1
* identifier[MaskierterVersichertenIdentifer] ^patternIdentifier.type = $identifier-type-de-basis#KVZ10
* identifier[MaskierterVersichertenIdentifer].type 1.. MS
* identifier[MaskierterVersichertenIdentifer].system MS
* identifier[MaskierterVersichertenIdentifer].value MS
* identifier[MaskierterVersichertenIdentifer].value.extension contains $data-absent-reason named data-absent-reason 0..1 MS
* identifier[MaskierterVersichertenIdentifer].value.extension[data-absent-reason].valueCode = #masked
* identifier[MaskierterVersichertenIdentifer].assigner 1.. MS
* identifier[MaskierterVersichertenIdentifer].assigner.identifier 1.. MS
* identifier[MaskierterVersichertenIdentifer].assigner.identifier only IdentifierIknr
* identifier[MaskierterVersichertenIdentifer].assigner.identifier.type MS
* identifier[MaskierterVersichertenIdentifer].assigner.identifier.system MS
* identifier[MaskierterVersichertenIdentifer].assigner.identifier.value MS
* identifier[MaskierterVersichertenIdentifer] ^short = "Maskierter Identifier der Krankenversicherten-ID"
* identifier[MaskierterVersichertenIdentifer] ^definition = "Identifier der Krankenversichertennummer, bei dem der Wert maskiert wurde."
* insert Translation(identifier[MaskierterVersichertenIdentifer] ^short, de-DE, Maskierter Identifier der Krankenversicherten-ID)
* insert Translation(identifier[MaskierterVersichertenIdentifer] ^short, en-US, Masked identifier of the health insurance ID)
* insert Translation(identifier[MaskierterVersichertenIdentifer] ^definition, de-DE, Identifier der Krankenversichertennummer\, bei dem der Wert maskiert wurde.)
* insert Translation(identifier[MaskierterVersichertenIdentifer] ^definition, en-US, Health insurance number identifier with masked value.)
* active MS
* active ^short = "Aktiv"
* insert Translation(active ^short, de-DE, Aktiv)
* insert Translation(active ^short, en-US, Active)
* active ^definition = "Gibt an, ob diese Patient-Ressource aktiv verwendet wird."
* insert Translation(active ^definition, de-DE, Gibt an\, ob diese Patient-Ressource aktiv verwendet wird.)
* insert Translation(active ^definition, en-US, Whether this patient's record is in active use)
//* name ..0
//* telecom ..0
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
//* birthDate obeys pat-pseuded-1
* birthDate ^short = "Geburtsdatum"
* birthDate ^definition = "Das Geburtsdatum der Patientin oder des Patienten"
* insert Translation(birthDate ^short, de-DE, Geburtsdatum)
* insert Translation(birthDate ^short, en-US, Date of birth)
* insert Translation(birthDate ^definition, de-DE, Das Geburtsdatum der Patientin oder des Patienten)
* insert Translation(birthDate ^definition, en-US, The date of birth for the individual)
//* birthDate obeys GeburtsdatumRundenAufQuartal
//* deceased[x] MS
//* deceased[x] ^short = "Verstorben"
//* deceased[x] ^definition = "Gibt an, ob die Person verstorben ist oder nicht"
//* insert Translation(deceased[x] ^short, de-DE, Verstorben)
//* insert Translation(deceased[x] ^short, en-US, Deceased)
//* insert Translation(deceased[x] ^definition, de-DE, Gibt an\, ob die Person verstorben ist oder nicht)
//* insert Translation(deceased[x] ^definition, en-US, Indicates if the individual is deceased or not)
//* deceased[x] only boolean or dateTime
//* deceased[x] obeys TodesdatumKeineZeitangabe
//* deceasedDateTime only dateTime
//* deceasedDateTime MS
//* deceasedDateTime obeys TodesdatumKeineZeitangabe
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
    Strassenanschrift 0..* MS //and
    //Postfach 0..* MS
* address[Strassenanschrift] only AddressDeBasis
* address[Strassenanschrift] ^patternAddress.type = #both
//* address[Strassenanschrift].extension[Stadtteil] 0..0 MS
* address[Strassenanschrift].type 1.. MS
//* address[Strassenanschrift].line ..0 MS
//* address[Strassenanschrift].city ..0 MS
* address[Strassenanschrift].city.extension contains ExtensionDestatisAgs named gemeindeschluessel 0..1 MS
* address[Strassenanschrift].postalCode 1.. MS
//* address[Strassenanschrift].postalCode obeys pat-pseuded-2
* address[Strassenanschrift].country 1.. MS
* address[Strassenanschrift] obeys pat-cnt-2or3-char
* address[Strassenanschrift] ^short = "Straßenanschrift"
* address[Strassenanschrift] ^definition = "Eine Straßenanschrift der Patientin oder des Patienten"
* insert Translation(address[Strassenanschrift] ^short, de-DE, Straßenanschrift)
* insert Translation(address[Strassenanschrift] ^short, en-US, Street address)
* insert Translation(address[Strassenanschrift] ^definition, de-DE, Eine Straßenanschrift der Patientin oder des Patienten)
* insert Translation(address[Strassenanschrift] ^definition, en-US, A street address for the individual)
//* address[Postfach] only AddressDeBasis
//* address[Postfach] ^patternAddress.type = #postal
//* address[Postfach].extension[Stadtteil] 0..0 MS
//* address[Postfach].type 1.. MS
//* address[Postfach].line ..0 MS
//* address[Postfach].city ..0 MS
//* address[Postfach].city.extension contains ExtensionDestatisAgs named gemeindeschluessel 0..1 MS
//* address[Postfach].postalCode 1.. MS
//* address[Postfach].postalCode obeys PostleitzahlEinschraenkung
//* address[Postfach].country 1.. MS
//* address[Postfach] obeys pat-cnt-2or3-char
//* address[Postfach] ^short = "Postfach"
//* address[Postfach] ^definition = "Eine Postfachanschrift der Patientin oder des Patienten"
//* insert Translation(address[Postfach] ^short, de-DE, Postfach)
//* insert Translation(address[Postfach] ^short, en-US, Postbox)
//* insert Translation(address[Postfach] ^definition, de-DE, Eine Postfachanschrift der Patientin oder des Patienten)
//* insert Translation(address[Postfach] ^definition, en-US, A postbox address for the individual)
//* maritalStatus ..0
//* multipleBirth[x] ..0
//* photo ..0
//* contact ..0
//* communication ..0
//* generalPractitioner ..0
//* link MS
//* link ^short = "Verweis"
//* link ^definition = "Verweis auf eine andere Patientenressource, die die gleiche tatsächliche Person betrifft"
//* insert Translation(link ^short, de-DE, Verweis)
//* insert Translation(link ^short, en-US, Link)
//* insert Translation(link ^definition, de-DE, Verweis auf eine andere Patientenressource\, die die gleiche tatsächliche Person betrifft)
//* insert Translation(link ^definition, en-US, Link to another patient resource that concerns the same actual person)
//* link.other only $MII-Reference
//* link.other MS
//* link.type MS