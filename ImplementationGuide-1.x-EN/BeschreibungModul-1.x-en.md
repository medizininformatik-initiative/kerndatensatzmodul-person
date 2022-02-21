## Beschreibung Modul Person

{{render:ModulPerson}}

Das Modul PERSON spielt sowohl im Informationsmodell jedes einzelnen Krankenhauses und jeder großen Studie als auch in standort- oder projektübergreifenden Informationsmodellen eine zentrale Rolle.

In der vorliegenden Spezifikation wird das Modul PERSON explizit für PATIENTEN und PROBANDEN modelliert, das bisherige Modul DEMOGRAPHIE integriert und die Möglichkeit eines standortübergreifenden Master Patient Index auf der Basis von identifizierenden Daten (IDAT) vorgesehen.

**Abbildung Modul PERSON in ART-DECOR mit den Komponenten Name, Demographie, Patient und Proband:** <br><br>

[{{render:PersonGanz}}](https://art-decor.org/art-decor/decor-datasets--mide-?id=&effectiveDate=&conceptId=&conceptEffectiveDate=)


Das führende identifizierende -- allerdings mit Unsicherheiten behaftete -- Merkmal ist der Name mit seinen verschiedenen Bestandteilen.

**Abbildung des Namens im Modul PERSON:** <br><br>

[{{render:NamePerson}}](https://art-decor.org/art-decor/decor-datasets--mide-?id=&effectiveDate=&conceptId=&conceptEffectiveDate=)

Durch die Ergänzung von demographischen Merkmalen wie Geburtsdatum, Geschlecht und Wohnort wird die Identifizierungsmöglichkeit verbessert. (Als weiteres, in bestimmtem Rahmen gut identifizierendes Merkmal kann für GKV-Patienten ([90 % der Bevölkerung in Deutschland](https://www.gkv-spitzenverband.de/service/zahlen_und_grafiken/zahlen_und_grafiken.jsp)) die Versicherungsnummer genannt werden.)

**Abbildung der Datensatzgruppe Demographie:** <br><br>

[{{render:DemoPerson}}](https://art-decor.org/art-decor/decor-datasets--mide-?id=&effectiveDate=&conceptId=&conceptEffectiveDate=)

Die Einzelangaben zu den Personen im Modul PERSON dienen aber nicht nur zur Identifizierung. Ein Merkmal wie Wohnort wird auch für räumliche Analysen benötigt, Alter und Geschlecht beispielsweise auch zur Risikoadjustierung.
Dass diese Angaben im Modul PERSON des Kerndatensatzes enthalten sind, bedeutet umgekehrt nicht, dass sie allgemein zur Herausgabe bestimmt sind. Die Nutzung unterliegt den Regeln des jeweiligen Datenintegrationszentrums und der MI-Initiative. Die geforderte besondere Sicherheit muss durch technische und organisatorische Maßnahmen und im Rahmen der Implementierung sichergestellt werden.


**Abbildung der Datensatzgruppe Patient:** <br><br>

[{{render:PatPerson}}](https://art-decor.org/art-decor/decor-datasets--mide-?id=&effectiveDate=&conceptId=&conceptEffectiveDate=)

Innerhalb von Krankenhäusern oder anderen Gesundheitseinrichtungen wird für einmal oder mehrmals zur Versorgung aufgenommene Personen der Begriff *PatientIn* benutzt. Meist erhält eine Person bei der ersten Krankenhausbehandlung einen *„Patienidentifikator“* und eine *„Fallnummer/Aufnahmenummer“*. Bei jeder erneuten, administrativ abgegrenzten Inanspruchnahme erhalten Personen neue Fallnummern; die Patientennummer aber soll möglichst lebenslänglich beibehalten werden.
Jede Person kann in mehreren verschiedenen Krankenhäusern und anderen Gesundheitseinrichtungen *PatientIn* sein und erhält jeweils für diese eine einrichtungsspezifische Patientenidentifikationsnummer. Näheres zur Entität *PatientIn* findet sich beim Modul FALL.

In Studien wird für Personen der Begriff *ProbandIn* benutzt. Jede Person kann in verschiedenen Studien *ProbandIn* sein und erhält jeweils eine neue *Probandenidentifikationsnummer*.

Aus der Perspektive der MI-Initiative ist zwischen externen und internen Probanden zu unterscheiden. Externe Probanden sind in Kohortenstudien, Registerstudien oder randomisierten klinische Studien eingeschrieben, wo unabhängig von der MII Daten erhoben werden. Interne Probanden sind dagegen in der MII auf der Basis von Versorgungsdaten eingeschlossen, wobei einzelne Personen auch mehrmals *ProbandIn* sein können, beispielsweise in den HiGHmed-Use-Cases Infection Control und Kardiologie oder den SMITH-Use-Cases HELP und ASIC sowie zusätzlich in einem oder beiden der konsortien-übergreifenden Use-Cases CORD und POLAR. 
Jede Person kann also mehrmals Proband sein.

Je *ProbandIn* wird insbesondere notiert, an welcher Studie eine Teilnahme stattfindet. Ergänzend werden die Merkmale *Subjekt Identifizierungscode*, *Rechtsgrundlage der Teilnahme*, *Beginn*, *Ende* und *Status der Teilnahme* dokumentiert.

**Abbildung Datensatzgruppe ProbandIn:** <br><br>

[{{render:ProPerson}}](https://art-decor.org/art-decor/decor-datasets--mide-?id=&effectiveDate=&conceptId=&conceptEffectiveDate=)


