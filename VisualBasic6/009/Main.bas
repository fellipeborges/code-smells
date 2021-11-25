Attribute VB_Name = "SubMain"
'============================================================================================
' Instruções
'  - Leia o arquivo "config.ini" e mostre ao usuário seu conteúdo
'============================================================================================

Public Sub Main()
    Dim sLinha As String
    
    Open App.Path & "\config.ini" For Input As #1
    Do While Not EOF(1)
        Line Input #1, sLinha
        Debug.Print (sLinha)
    Loop
End Sub
