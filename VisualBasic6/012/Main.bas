Attribute VB_Name = "SubMain"
'============================================================================================
' Instruções
'  - Gere 5 números randômicos entre 1 e 1000 e mostre ao usuário
'============================================================================================

Public Sub Main()
    Dim iContador As Integer
    Dim iNumeroRandomico As Integer
    
    For iContador = 1 To 5
        iNumeroRandomico = Rnd() * 1000
        Debug.Print (iNumeroRandomico)
        
    Next iContador
End Sub
