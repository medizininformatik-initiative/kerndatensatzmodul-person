---
topic: PersonCapabilityStatement
subject: https://www.medizininformatik-initiative.de/fhir/core/modul-person/CapabilityStatement/metadata
canonical: https://www.medizininformatik-initiative.de/fhir/core/modul-person/CapabilityStatement/metadata
expand: 1
---

## CapabilityStatement

Um eine dezentrale Datenauswertung mittels des Deutschen Forschungsdatenportal für Gesundheit (FDPG) der Medizininformatik-Initiative zu ermöglichen MUSS die [capabilities-Interaktion](https://www.hl7.org/fhir/R4/http.html#capabilities) untersützt werden, sodass durch durch den FHIR-Server unter ```[BASE_URL]/metadata``` ein CapabilityStatement exponiert wird. Innerhalb dieses CapabilityStatement MUSS angegeben werden welche Profile inkl. Version, sowie welche Suchparameter unterstüzt werden.

Nachfolgend wird aufgelistet, welche Inhalte verpflichtend im CapabilityStatement angegeben werden MÜSSEN. Darüber hinaus MUSS eine Konformität zu dem nachfolgenden CapabilityStatement in der jeweiligen CapabilityStatement Instanz unter [```CapabilityStatement.instantiates```](https://www.hl7.org/fhir/R4/capabilitystatement-definitions.html#CapabilityStatement.instantiates) angegeben werden.

Canonical: ```https://www.medizininformatik-initiative.de/fhir/core/modul-person/CapabilityStatement/metadata```

[Link Simplifier Profil Übersicht](https://simplifier.net/resolve?canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-person/CapabilityStatement/metadata&fhirVersion=R4&scope=de.medizininformatikinitiative.kerndatensatz.person@2025.0.1)

{{render:https://www.medizininformatik-initiative.de/fhir/core/modul-person/CapabilityStatement/metadata}}