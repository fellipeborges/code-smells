Attribute VB_Name = "SubMain"
'============================================================================================
' Instru��es
'  - Leia o arquivo "config.ini" e mostre ao usu�rio seu conte�do
'============================================================================================

Public Sub Main()
    Dim sLinha As String
    
    Open App.Path & "\config.ini" For Input As #1
    Do While Not EOF(1)
        Line Input #1, sLinha
        Debug.Print (sLinha)
    Loop
End Sub
