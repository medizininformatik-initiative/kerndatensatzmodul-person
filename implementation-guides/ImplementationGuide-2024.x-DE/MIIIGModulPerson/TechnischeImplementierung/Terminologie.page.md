---
parent: 
---
## Terminologien

| Hinweis |  |
|---------|---------------------|
| {{render:implementation-guides/ImplementationGuide-Common/images/Warning.jpg}} | Zusätzlich zu internationalen Terminologien werden durch das Modul PERSON auch eigene CodeSystems definiert. Es sei drauf hingewiesen, dass CodeSystem ein implizites ValueSet enthalten können, welches der jeweiligen FHIR CodeSystem-Ressource zu entnehmen ist.|

### CodeSystems

| VitalStatus | |
|--|--|
|Canonical CodeSystem | https://www.medizininformatik-initiative.de/fhir/core/modul-person/CodeSystem/Vitalstatus  |
|Canonical ValueSet | https://www.medizininformatik-initiative.de/fhir/core/modul-person/ValueSet/Vitalstatus  |
|Simplifier Link| [ValueSet](https://www.medizininformatik-initiative.de/fhir/core/modul-person/ValueSet/Vitalstatus&fhirVersion=R4&scope=de.medizininformatikinitiative.kerndatensatz.person@2.0.0) - [CodeSystem](https://www.medizininformatik-initiative.de/fhir/core/modul-person/CodeSystem/Vitalstatus&fhirVersion=R4&scope=de.medizininformatikinitiative.kerndatensatz.person@2.0.0)|
| Binding | ([required](http://hl7.org/fhir/terminologies.html#required)) |

**VitalStatus**

Das VitalStatus-CodeSystem wurde auf eigenständig durch die Medizininformatik-Initative entwickelt, da keine entsprechenden LOINC Answer Sets gefunden wurden. Es basiert teilweise auf der Basisdokumentation für Tumorkranke herausgegeben durch die Arbeitsgemeinschaft Deutscher Tumorzentren.

{{render:https://www.medizininformatik-initiative.de/fhir/core/modul-person/ValueSet/Vitalstatus}}