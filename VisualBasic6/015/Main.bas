Attribute VB_Name = "SubMain"
'============================================================================================
' Instru��es
'  - Leia o arquivo "config.ini" e mostre ao usu�rio seu conte�do
'============================================================================================

Public Sub Main()
    On Error Resume Next
    
    Dim iFile As Integer
    Dim sLinha As String
    Dim sArquivo As String
    
    iFile = FreeFile
    sArquivo = App.Path & "\config.ini"
    If Dir$(sArquivo, vbArchive) <> "" Then
        Open sArquivo For Input As #iFile
        Do While Not EOF(iFile)
            Line Input #iFile, sLinha
            Debug.Print (sLinha)
        Loop
    End If
End Sub
