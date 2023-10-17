---
parent: 
---
## Beschreibung Modul Person

{{render:implementation-guides/ImplementationGuide-Common/images/11_Abbildung_Person_de.jpg}}

Das Modul PERSON spielt sowohl im Datenbestand jedes einzelnen Krankenhauses und jeder großen Studie als auch in standort- oder projektübergreifenden Informationsmodellen eine zentrale Rolle.

In der vorliegenden Spezifikation wird das Modul PERSON explizit für Patient\*innen und Proband\*innen modelliert und die Möglichkeit eines standortübergreifenden Master Patient Index auf der Basis von identifizierenden Daten (IDAT) vorgesehen.

**Abbildung Modul PERSON in ART-DECOR mit den Komponenten Name, Demographie, Patient und Proband:** <br><br>

[{{render:implementation-guides/ImplementationGuide-Common/images/art-decor-person-2x-gesamt.png}}](https://art-decor.org/art-decor/decor-datasets--mide-?id=&effectiveDate=&conceptId=&conceptEffectiveDate=)


Das führende identifizierende -- allerdings mit Unsicherheiten behaftete -- Merkmal ist der Name mit seinen verschiedenen Bestandteilen.

**Abbildung des Namens im Modul PERSON:** <br><br>

[{{render:implementation-guides/ImplementationGuide-Common/images/art-decor-person-2x-name.png}}](https://art-decor.org/art-decor/decor-datasets--mide-?id=&effectiveDate=&conceptId=&conceptEffectiveDate=)

Durch die Ergänzung von demographischen Merkmalen wie Geburtsdatum, Geschlecht und Wohnort wird die Identifizierungsmöglichkeit verbessert. (Als weiteres, in bestimmtem Rahmen gut identifizierendes Merkmal kann für GKV-Patient\*innen ([90 % der Bevölkerung in Deutschland](https://www.gkv-spitzenverband.de/service/zahlen_und_grafiken/zahlen_und_grafiken.jsp)) die Versichertennummer genannt werden.)

**Abbildung der Datensatzgruppe Demographie:** <br><br>

[{{render:implementation-guides/ImplementationGuide-Common/images/art-decor-person-2x-demographie.png}}](https://art-decor.org/art-decor/decor-datasets--mide-?id=&effectiveDate=&conceptId=&conceptEffectiveDate=)

Die Einzelangaben zu den Personen im Modul PERSON dienen aber nicht nur zur Identifizierung. Ein Merkmal wie Wohnort wird auch für räumliche Analysen benötigt, Alter und Geschlecht beispielsweise auch zur Risikoadjustierung.

Dass diese Angaben im Modul PERSON des Kerndatensatzes enthalten sind, bedeutet umgekehrt nicht, dass sie allgemein zur Herausgabe bestimmt sind. Die Nutzung unterliegt den Regeln des jeweiligen Datenintegrationszentrums und der MI-Initiative. Die geforderte besondere Sicherheit muss durch technische und organisatorische Maßnahmen und im Rahmen der Implementierung sichergestellt werden.


**Abbildung der Datensatzgruppe Patient:** <br><br>

[{{render:implementation-guides/ImplementationGuide-Common/images/art-decor-person-2x-patientin.png}}](https://art-decor.org/art-decor/decor-datasets--mide-?id=&effectiveDate=&conceptId=&conceptEffectiveDate=)

Innerhalb von Krankenhäusern oder anderen Gesundheitseinrichtungen wird für einmal oder mehrmals zur Versorgung aufgenommene Personen der Begriff *PatientIn* benutzt. Meist erhält eine Person bei der ersten Krankenhausbehandlung einen *„Patientenidentifikator“* und eine *„Fallnummer/Aufnahmenummer“*. Bei jeder erneuten, administrativ abgegrenzten Inanspruchnahme erhalten Personen neue Fallnummern; die Patientennummer aber, soll möglichst lebenslänglich beibehalten werden.
Jede Person kann in mehreren verschiedenen Krankenhäusern und anderen Gesundheitseinrichtungen *PatientIn* sein und erhält jeweils für diese eine einrichtungsspezifische Patientenidentifikationsnummer. Näheres zur Entität *PatientIn* findet sich beim [Modul FALL](https://simplifier.net/medizininformatikinitiative-modulfall).

Zum Zweck der Nutzung von Versorgungsdaten im Rahmen biomedizinischer Forschungsprojekte sind zentrale Elemente eines Patientenstammdatensatzes, wie er in der Krankenversorgung zum Einsatz kommt, zu entfernen, um die Datensätze zu pseudonymisieren. Für solch einen pseudonymisierten Datensatz ist eine separate Spezifikation im Modul PERSON enthalten. Bei dieser handelt es sich prinzipiell um eine technische Umsetzung der Vorgaben zur Pseudonymisierung im [MII-Datenschutzkonzept v1.0](https://www.medizin.uni-tuebingen.de/files/view/9pdz6meGqZppXyZjArPk4wD8/MII-Datenschutzkonzept.pdf).

Basisvorgaben für die Erstellung pseudonymer Patientenstammdatensätze sind insbesondere folgende: 
* Umgang mit technischen IDs: Pseudonyme Daten dürfen an keiner Stelle technische IDs der nicht-pseudonymen Daten übernehmen
* Patientenidentifikatoren: Für pseudonyme Daten werden patientenbezogene Identifikatoren aus der Krankenversorgung durch andere Identifikatoren ersetzt.
* Verwaltende Organisationen und Akteure: Die verwaltende Organisation eines Patientendatensatzes sowie Daten von dort Beschäftigten oder anderen Akteuren sind ebenfalls zu pseudonymisieren bzw. nur unter besonderen Bedingungen bereitzustellen. Die pseudonymisierte Form solcher Angaben ist nicht Bestandteil des Moduls PERSON.

**Tab. 1:** Übersicht der Stellen und ihrer Zugriffsmöglichkeiten auf Datenkategorien mit den jeweiligen Schutzstufen 

| Datenkategorie                        |  DIZ-Standort   | übergreifende Treuhandstelle | Datenmanagementstelle |     Nutzer      | Forschungsdatenportal |
| ------------------------------------- | :-------------: | :--------------------------: | :-------------------: | :-------------: | :-------------------: |
| IDAT (C<sup>2</sup>)                  |        X        |       (X)<sup>3</sup>        |    (X)<sup>4</sup>    | (X)<sup>4</sup> |                       |
| MDAT (D-E<sup>5</sup>)                |        X        |                              |     X<sup>6</sup>     |  X<sup>6</sup>  |                       |
| Pseudonym<sub>DIZ</sub>(B)            |        X        |                              |                       |                 |                       |
| IDAT<sub>Kodiert</sub>(B)             |        X        |              X               |                       |                 |                       |
| Pseudonym<sub>DIZ-Projekt</sub>(B)    |        X        |              X               |    (X)<sup>6</sup>    |                 |                       |
| Pseudonym<sub>Nutzer-Projekt</sub>(B) | (X)<sup>8</sup> |              X               |           X           |        X        |    (X)<sup>9</sup>    |

<sup>1</sup> nach dem Schutzstufenkonzept der LfD Niedersachsen <br>
<sup>2</sup> je nach Zuordnungsmöglichkeit zu den Patientendaten ggf. auch höher <br>
<sup>3</sup> nur in Einzelfällen, in denen eine Zuordnung der Datensätze anhand IDAT<sub>Kodiert</sub> nicht ausreichend sicher möglich ist <br>
<sup>4</sup> nur Alters- und Adressangaben (nur PLZ oder Gemeindekennziffer) im jeweils nach wissenschaftlicher Notwendigkeit zu begründenden und zu prüfenden Detailgrad <br>
<sup>5</sup> je nach Umfang und Sensibilität der Daten, psychiatrische Diagnosen mit Diskriminierungspotential sind ggf. anders einzuordnen als ein grippaler Infekt <br>
<sup>6</sup> je Projekt werden nur die für eine wiss. Fragestellung notwendigen Teile der MDAT und ggf. auch nur in der notwendigen Detailliertheit (z. B. beim Geburtsdatum oder der PLZ) herausgegeben <br>
<sup>7</sup> nur bei Daten-Herausgabe ohne eingebundene Treuhandstelle und ohne Record Linkage <br>
<sup>8</sup> je nach Architekturmodell <br>
<sup>9</sup> nur bei der Koordinierung von Widerrufen durch das Forschungsdatenportal <br><br>

**Abbildung Datensatzgruppe Pseudonyme/r PatientIn:** <br><br>

[{{render:implementation-guides/ImplementationGuide-Common/images/art-decor-person-2x-patient-pseudonym.png}}](https://art-decor.org/art-decor/decor-datasets--mide-?id=&effectiveDate=&conceptId=&conceptEffectiveDate=)


In Studien wird für teilnehmende Personen der Begriff *ProbandIn* benutzt. Jede Person kann in verschiedenen Studien *ProbandIn* sein und erhält jeweils eine neue *Probandenidentifikationsnummer*.

Aus der Perspektive der MI-Initiative ist zwischen externen und internen Probanden zu unterscheiden. Externe Probanden sind in Kohortenstudien, Registerstudien oder randomisierten klinische Studien eingeschrieben, wo unabhängig von der MII Daten erhoben werden. Interne Probanden sind dagegen in der MII auf der Basis von Versorgungsdaten eingeschlossen, wobei einzelne Personen auch mehrmals *ProbandIn* sein können, beispielsweise in den HiGHmed-Use-Cases Infection Control und Kardiologie oder den SMITH-Use-Cases HELP und ASIC sowie zusätzlich in einem oder beiden der konsortien-übergreifenden Use-Cases CORD und POLAR. 

Je *ProbandIn* wird insbesondere notiert, an welcher Studie eine Teilnahme stattfindet. Ergänzend werden die Merkmale *Subjekt Identifizierungscode*, *Rechtsgrundlage der Teilnahme*, *Beginn*, *Ende* und *Status der Teilnahme* dokumentiert.

**Abbildung Datensatzgruppe ProbandIn:** <br><br>

[{{render:implementation-guides/ImplementationGuide-Common/images/ProPerson.jpg}}](https://art-decor.org/art-decor/decor-datasets--mide-?id=&effectiveDate=&conceptId=&conceptEffectiveDate=)

