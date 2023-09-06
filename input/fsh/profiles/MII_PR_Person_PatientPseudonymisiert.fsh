Profile: MII_PR_Person_PatientPseudonymisiert
Parent: Patient
Id: mii-pr-person-patient-pseudonymisiert
Title: "MII PR Person Patient (Pseudonymisiert)"
Description: "Dieses Profil beschreibt eine pseudonymisierte Patient*in in der Medizininformatik-Initiative."
* ^url = "https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/PatientPseudonymisiert"
* insert PR_CS_VS_Version
* insert Publisher
* obeys mii-pat-1
* id MS
* meta MS
* meta.source MS
* meta.profile MS
* identifier 1.. MS
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "$this"
* identifier ^slicing.rules = #open
* identifier contains
    PseudonymisierterIdentifier 0..* MS and
    AnonymisierterIdentifier 0..* MS
* identifier[PseudonymisierterIdentifier] ^patternIdentifier.type = $v3-ObservationValue#PSEUDED
* identifier[AnonymisierterIdentifier] ^patternIdentifier.type = $v3-ObservationValue#ANONYED
//* name ..0
//* telecom ..0
* gender MS
* gender.extension ^slicing.discriminator.type = #value
* gender.extension ^slicing.discriminator.path = "url"
* gender.extension ^slicing.rules = #open
* gender.extension contains GenderOtherDE named other-amtlich 0..1 MS
* birthDate MS
//* birthDate obeys GeburtsdatumRundenAufQuartal
* deceased[x] MS
* deceased[x] only boolean or dateTime
//* deceased[x] obeys TodesdatumKeineZeitangabe
//* deceasedDateTime only dateTime
* deceasedDateTime MS
//* deceasedDateTime obeys TodesdatumKeineZeitangabe
* address MS
* address ^slicing.discriminator.type = #pattern
* address ^slicing.discriminator.path = "$this"
* address ^slicing.rules = #open
* address contains
    Strassenanschrift 0..* MS and
    Postfach 0..* MS
* address[Strassenanschrift] only AddressDeBasis
* address[Strassenanschrift] ^patternAddress.type = #both
* address[Strassenanschrift].extension ^slicing.discriminator.type = #value
* address[Strassenanschrift].extension ^slicing.discriminator.path = "url"
* address[Strassenanschrift].extension ^slicing.rules = #open
//* address[Strassenanschrift].extension[Stadtteil] 0..0 MS
* address[Strassenanschrift].type 1.. MS
//* address[Strassenanschrift].line ..0 MS
//* address[Strassenanschrift].city ..0 MS
* address[Strassenanschrift].city.extension ^slicing.discriminator.type = #value
* address[Strassenanschrift].city.extension ^slicing.discriminator.path = "url"
* address[Strassenanschrift].city.extension ^slicing.rules = #open
* address[Strassenanschrift].city.extension contains ExtensionDestatisAgs named gemeindeschluessel 0..1 MS
* address[Strassenanschrift].postalCode 1.. MS
//* address[Strassenanschrift].postalCode obeys PostleitzahlEinschraenkung
* address[Strassenanschrift].country 1.. MS
* address[Strassenanschrift].country obeys pat-cnt-2or3-char
* address[Postfach] only AddressDeBasis
* address[Postfach] ^patternAddress.type = #postal
* address[Postfach].extension ^slicing.discriminator.type = #value
* address[Postfach].extension ^slicing.discriminator.path = "url"
* address[Postfach].extension ^slicing.rules = #open
//* address[Postfach].extension[Stadtteil] 0..0 MS
* address[Postfach].type 1.. MS
//* address[Postfach].line ..0 MS
//* address[Postfach].city ..0 MS
* address[Postfach].city.extension ^slicing.discriminator.type = #value
* address[Postfach].city.extension ^slicing.discriminator.path = "url"
* address[Postfach].city.extension ^slicing.rules = #open
* address[Postfach].city.extension contains ExtensionDestatisAgs named gemeindeschluessel 0..1 MS
* address[Postfach].postalCode 1.. MS
//* address[Postfach].postalCode obeys PostleitzahlEinschraenkung
* address[Postfach].country 1.. MS
* address[Postfach].country obeys pat-cnt-2or3-char
//* maritalStatus ..0
//* multipleBirth[x] ..0
//* photo ..0
//* contact ..0
//* communication ..0
//* generalPractitioner ..0
* link MS
* link.other only $MII-Reference
* link.other MS
* link.type MS