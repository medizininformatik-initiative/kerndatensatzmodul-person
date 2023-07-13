Invariant: TodesdatumKeineZeitangabe
Description: "Das Todesdatum darf nur tagesgenau ohne Uhrzeit erfasst werden."
Severity: #error
Expression: "toString().matches('([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?')"
//Expression: "($this as dateTime).hasValue() implies ($this as dateTime).toString().matches('^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$')"
//Expression: "($this as dateTime).hasValue() implies ($this as dateTime).toString().length() = 10"
//Expression: "($this as dateTime).hasValue() implies ($this as dateTime).toString().matches('([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?')"
