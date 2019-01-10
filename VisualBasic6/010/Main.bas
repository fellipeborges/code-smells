Attribute VB_Name = "SubMain"
'============================================================================================
' Instruções
'  - Leia o arquivo "config.ini" e mostre ao usuário seu conteúdo
'============================================================================================

Public Sub Main()
    Dim iFile As Integer
    Dim sLinha As String
    
    iFile = FreeFile
    
    Open App.Path & "\config.ini" For Input As #iFile
    Do While Not EOF(iFile)
        Line Input #iFile, sLinha
        Debug.Print (sLinha)
    Loop
End Sub
