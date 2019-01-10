Attribute VB_Name = "SubMain"
'============================================================================================
' Instruções
'  - Mostre a lista de todos os funcionários e idades
'  - O campo idade pode não estar preenchido para alguns funcionários
'============================================================================================

Public Sub Main()
    Dim rsIdades As ADODB.Recordset
    Set rsIdades = ObterFuncionariosIdades()
    
    ' Mostra todos os funcionários e suas idades
    Call rsIdades.MoveFirst
    Do While Not rsIdades.EOF
        Call PrintarNomeIdade(rsIdades("Nome"), rsIdades("Idade"))
        Call rsIdades.MoveNext
    Loop
End Sub

Private Function PrintarNomeIdade(ByVal v_sNome As String, ByVal v_iIdade As Integer)
    Debug.Print (v_sNome & " - " & v_iIdade)
End Function

Private Function ObterFuncionariosIdades() As ADODB.Recordset
    Dim rsRet As New ADODB.Recordset
    With rsRet
        'Cria os campos
        Call .Fields.Append("Nome", adBSTR)
        Call .Fields.Append("Idade", adInteger, , adFldIsNullable)
        .Open
    
        'Adiciona os funcionários
        Call .AddNew
        .Fields("Nome") = "João da Silva"
        .Fields("Idade") = 22
        Call .Update
        
        Call .AddNew
        .Fields("Nome") = "Maria Antonieta"
        .Fields("Idade") = 32
        Call .Update
        
        Call .AddNew
        .Fields("Nome") = "Fernando Matias"
        Call .Update
        
        Call .AddNew
        .Fields("Nome") = "Tatiane das Dores"
        .Fields("Idade") = 45
        Call .Update
    End With
    Set ObterFuncionariosIdades = rsRet
End Function
