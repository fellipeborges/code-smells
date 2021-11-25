Attribute VB_Name = "SubMain"
'============================================================================================
' Instru��es
'  - Encontre um funcion�rio com o nome "Jo�o da Silva" e s� mostre seus dados se
'    ele for encontrado e se a idade for maior que 18
'  - Considere que a idade est� gravada como string e precisa ser convertida para inteiro
'============================================================================================

Public Sub Main()
    Dim rsIdades As ADODB.Recordset
    Set rsIdades = ObterFuncionariosIdades()
    
    ' Tenta encontrar o Jo�o da Silva
    rsIdades.Filter = "Nome = 'Jo�o da Silva'"
    If (rsIdades.EOF = False And CInt(rsIdades("Idade")) > 18) Then
        Debug.Print ("Usu�rio encontrado e com idade maior que 18 anos")
    End If
End Sub

Private Function PrintarNomeIdade(ByVal v_sNome As String, ByVal v_iIdade As Integer)
    Debug.Print (v_sNome & " - " & v_iIdade)
End Function

Private Function ObterFuncionariosIdades() As ADODB.Recordset
    Dim rsRet As New ADODB.Recordset
    With rsRet
        'Cria os campos
        Call .Fields.Append("Nome", adBSTR)
        Call .Fields.Append("Idade", adBSTR, , adFldIsNullable)
        .Open
    
        'Adiciona os funcion�rios
        Call .AddNew
        .Fields("Nome") = "Jo�o da Silva"
        Call .Update
        
        Call .AddNew
        .Fields("Nome") = "Maria Antonieta"
        .Fields("Idade") = "32"
        Call .Update
        
        Call .AddNew
        .Fields("Nome") = "Fernando Matias"
        Call .Update
        
        Call .AddNew
        .Fields("Nome") = "Tatiane das Dores"
        .Fields("Idade") = "45"
        Call .Update
    End With
    Set ObterFuncionariosIdades = rsRet
End Function
