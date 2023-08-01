Invariant: mii-pat-2
Description: "Entweder IKNR oder MII Core Location Identifier muss verwendet werden"
Severity: #error
Expression: "$this = 'http://fhir.de/sid/arge-ik/iknr' or $this = 'https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier'"