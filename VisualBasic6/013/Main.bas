Attribute VB_Name = "SubMain"
'============================================================================================
' Instru��es
'  - Receba 2 nomes digitados pelos usu�rios e troque os caracteres "�" por "a"
'  - Mostre os nomes ao usu�rio
'============================================================================================

Public Sub Main()
    Dim sNome1 As String
    Dim sNome2 As String
    
    sNome1 = "K�tia Albertina de Souza"
    sNome1 = Replace$(sNome1, "�", "a")
    
    sNome2 = "M�rio da Silva Souza"
    sNome2 = Replace$(sNome2, "�", "a")
    
    Debug.Print ("Nome 1: " & sNome1)
    Debug.Print ("Nome 2: " & sNome2)
End Sub
