Attribute VB_Name = "SubMain"
'============================================================================================
' Instru��es
'  - Gere 5 n�meros rand�micos entre 1 e 1000 e mostre ao usu�rio
'============================================================================================

Public Sub Main()
    Dim iContador As Integer
    Dim iNumeroRandomico As Integer
    
    For iContador = 1 To 5
        iNumeroRandomico = Rnd() * 1000
        Debug.Print (iNumeroRandomico)
        
    Next iContador
End Sub
