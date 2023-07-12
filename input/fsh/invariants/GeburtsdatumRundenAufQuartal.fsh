Invariant: GeburtsdatumRundenAufQuartal
Description: "Geburtsdatum darf nicht tagesgenau angegben werden. Das Geburtsdatum MUSS quartalsweise auf-/abgerundet werden."
Severity: #error
Expression: "toString().matches('^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1|4|7]|1[0]))?$')"