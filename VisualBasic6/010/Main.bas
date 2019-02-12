Attribute VB_Name = "SubMain"
'============================================================================================
' Instruções
'  - Leia o arquivo "config.ini" e mostre ao usuário seu conteúdo
'============================================================================================

Public Sub Main()
    Dim iNumeroArquivo As Integer
    Dim sLinha As String
    
    iNumeroArquivo = FreeFile
    
    Open App.Path & "\config.ini" For Input As #iNumeroArquivo
    Do While Not EOF(iNumeroArquivo)
        Line Input #iNumeroArquivo, sLinha
        Debug.Print (sLinha)
    Loop
    Close #iNumeroArquivo
End Sub
