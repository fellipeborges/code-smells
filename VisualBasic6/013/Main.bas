Attribute VB_Name = "SubMain"
'============================================================================================
' Instruções
'  - Receba 2 nomes digitados pelos usuários e troque os caracteres "á" por "a"
'  - Mostre os nomes ao usuário
'============================================================================================

Public Sub Main()
    Dim sNome1 As String
    Dim sNome2 As String
    
    sNome1 = "Kátia Albertina de Souza"
    sNome1 = Replace$(sNome1, "á", "a")
    
    sNome2 = "Mário da Silva Souza"
    sNome2 = Replace$(sNome2, "á", "a")
    
    Debug.Print ("Nome 1: " & sNome1)
    Debug.Print ("Nome 2: " & sNome2)
End Sub
