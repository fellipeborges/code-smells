Attribute VB_Name = "SubMain"
'============================================================================================
' Instru��es
'  - Considere o valor da di�ria de R$ 50,00
'  - Considere uma taxa de turismo di�ria de R$ 1,00
'  - Calcule o valor total que o viajante deve pagar se ficar na cidade por 10 dias
'============================================================================================

Public Sub Main()
    'Constantes
    Const cVALOR_DIARIA As Currency = 50
    Const cTAXA_TURISMO As Currency = 1
    Const iQTDE_DIAS_ESTADIA As Integer = 10
    
    'C�lculo
    Dim cValorFinal As Currency
    cValorFinal = cVALOR_DIARIA + cTAXA_TURISMO * iQTDE_DIAS_ESTADIA
End Sub
