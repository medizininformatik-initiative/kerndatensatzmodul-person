Invariant: mii-pat-1
Description: "Falls die Geschlechtsangabe 'other' gewählt wird, muss die amtliche Differenzierung per Extension angegeben werden"
Severity: #error
Expression: "gender.exists() and gender='other' implies gender.extension('http://fhir.de/StructureDefinition/gender-amtlich-de').exists()"