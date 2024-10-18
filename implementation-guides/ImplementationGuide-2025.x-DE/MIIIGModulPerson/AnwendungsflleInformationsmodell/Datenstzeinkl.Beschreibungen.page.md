---
parent: 
topic: LogicalModel
---
## Datensätze inkl. Beschreibungen

Die offizielle und abgenommene Version des Informationsmodells für das Modul PERSON ist nachfolgend als FHIR Logical Model abgebildet:

{{tree:https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/LogicalModel/Person}}

Es ist zu beachten, dass das Logical Model rein auf die Abbildung der Datenelemente und deren Beschreibung abzielt. Verwendete Datentypen und Kardinalitäten sind nicht als verpflichtend anzusehen. Dies wird abschließend durch die FHIR-Profile festgelegt. Für jedes Element innerhalb des Logical Models existiert ein Mapping auf ein Element einer konkreten FHIR Ressource.

@``` from StructureDefinition where url =  'https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/LogicalModel/Person' for differential.element select Logischer_Datensatz: id, Beschreibung: short```