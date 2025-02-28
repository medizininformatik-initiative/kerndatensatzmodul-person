Invariant: pat-pseuded-1
Description: """
    Das Geburtsdatum MUSS auf Quartal und Jahr vergröbert werden. 
    Das Jahr SOLLTE NICHT verändert werden. Wenn vorhanden, MUSS der Monat auf den ersten Monat des Quartals abgerundet werden.
    Die Angabe des Tags ist OPTIONAL. Wenn vorhanden, MUSS der Tag auf den ersten des Monats abgerundet werden.
    Die Datumsangabe MUSS entweder vierstellig, siebenstellig oder zehnstellig sein.
    """
Severity: #error
Expression: "toString().matches('^\\\\d{4}(-(01|04|07|10)(-01)?)?$')"