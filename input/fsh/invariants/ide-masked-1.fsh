Invariant: ide-masked-1
Description: "Identifier.value SOLLTE keinen Wert und SOLLTE die Extension Data Absent Reason mit Code 'masked' enthalten."
Severity: #warning
Expression: "value.hasValue().not() and value.extension.where(url='http://hl7.org/fhir/StructureDefinition/data-absent-reason' and value='masked').exists()"