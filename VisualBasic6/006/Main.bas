Attribute VB_Name = "SubMain"
'============================================================================================
' Instru��es
'  - Crie uma fun��o que converta um status em texto (A,B,D) para um status num�rico (1,2,3)
'   A=1 Ativo
'   B=2 Bloqueado
'   D=3 Desligado
'============================================================================================

Public Sub Main()
    Debug.Print ("A: " & ConverterStatus("A"))
    Debug.Print ("B: " & ConverterStatus("B"))
    Debug.Print ("D: " & ConverterStatus("D"))
End Sub

Private Function ConverterStatus(ByVal v_sStatus As String) As Integer
    Dim iStatusRet As Integer
    Select Case v_sStatus
        Case "A"
            iStatusRet = 1
        Case "B"
            iStatusRet = 2
        Case "D"
            iStatusRet = 3
    End Select
    ConverterStatus = iStatusRet
End Function
