Attribute VB_Name = "SubMain"
'============================================================================================
' Instru��es
'  - Mostre a lista de todos os funcion�rios e sal�rios
'  - Mostra a lista dos funcion�rios cujo nome come�a com "a"
'============================================================================================

Public Sub Main()
    Dim rsSalarios As ADODB.Recordset
    Set rsSalarios = ObterFuncionariosSalarios()
    
    ' Mostra todos os funcion�rios
    Call rsSalarios.MoveFirst
    Do
        Call PrintarNomeSalario(rsSalarios("Nome"), rsSalarios("Salario"))
    Loop While Not rsSalarios.EOF
    
    
    ' Mostra os funcion�rios cujo nome come�a com A
    rsSalarios.Filter = "Nome Like 'A%'"
    Do
        Call PrintarNomeSalario(rsSalarios("Nome"), rsSalarios("Salario"))
        Call rsSalarios.MoveNext
    Loop While Not rsSalarios.EOF
End Sub

Private Function PrintarNomeSalario(ByVal v_sNome As String, ByVal v_cSalario As Currency)
    Debug.Print (v_sNome & " R$ " & v_cSalario)
End Function

Private Function ObterFuncionariosSalarios() As ADODB.Recordset
    Dim rsRet As New ADODB.Recordset
    With rsRet
        'Cria os campos
        Call .Fields.Append("Nome", adBSTR)
        Call .Fields.Append("Salario", adCurrency)
        .Open
    
        'Adiciona os funcion�rios
        Call .AddNew
        .Fields("Nome") = "Jo�o da Silva"
        .Fields("Salario") = 1021.37
        Call .Update
        
        Call .AddNew
        .Fields("Nome") = "Maria Antonieta"
        .Fields("Salario") = 2215.87
        Call .Update
        
        Call .AddNew
        .Fields("Nome") = "Fernando Matias"
        .Fields("Salario") = 1298.99
        Call .Update
        
        Call .AddNew
        .Fields("Nome") = "Tatiane das Dores"
        .Fields("Salario") = 2211.12
        Call .Update
    End With
    Set ObterFuncionariosSalarios = rsRet
End Function
