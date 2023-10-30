## CapabilityStatement

In order to enable decentralized data evaluation using the German Research Data Portal for Health of the Medical Informatics Initiative, the [capabilities interaction](https://www.hl7.org/fhir/R4/http.html#capabilities) MUST be supported, so that a capability statement is exposed by the FHIR server under ``[BASE_URL]/metadata``. Within this capability statement it MUST be specified which profiles incl. version, as well as which search parameters are supported.

The following section displays the elements which MUST be present in the CapabilityStatement. In addition, conformance to the following CapabilityStatement SHALL be specified in the respective CapabilityStatement instance at [``CapabilityStatement.instantiates``](https://www.hl7.org/fhir/R4/capabilitystatement-definitions.html#CapabilityStatement.instantiates).

Canonical: ```https://www.medizininformatik-initiative.de/fhir/core/modul-person/CapabilityStatement/metadata```

[Link Simplifier Profil Overview](https://simplifier.net/resolve?canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-person/CapabilityStatement/metadata&fhirVersion=R4&scope=de.medizininformatikinitiative.kerndatensatz.person@2024.0.0)

{{render:https://www.medizininformatik-initiative.de/fhir/core/modul-person/CapabilityStatement/metadata}}