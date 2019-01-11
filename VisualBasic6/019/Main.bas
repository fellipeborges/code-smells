Attribute VB_Name = "SubMain"
'============================================================================================
' Instruções
'  - Você está construindo um serviço que irá enviar e-mails que estão em uma tabela.
'  - O serviço deve:
'     > Ler os registros de e-mails pendentes na tabela
'     > Enviar o e-mail
'     > Atualizar o registro na tabela com o indicador de enviado
'============================================================================================

Private Const sSTATUS_AGUARDANDO_ENVIO As String = "A"
Private Const sSTATUS_ENVIADO As String = "E"
Private p_rsTabelaEmails As ADODB.Recordset

Public Sub Main()
    '------------------------------------------------------------------------------------------------------
    ' Constroi o recordset que simula a tabela no banco de dados
    Set p_rsTabelaEmails = ObterEmailsPendentes()
    '------------------------------------------------------------------------------------------------------
    
    ' Lê os e-mails pendentes
    p_rsTabelaEmails.Filter = "Status = '" & sSTATUS_AGUARDANDO_ENVIO & "'"
    
    ' Itera pelos e-mails pendentes
    Do While Not p_rsTabelaEmails.EOF
        ' Envia o e-mail
        Dim objEmail As New EmailSender
        objEmail.Destinatario = p_rsTabelaEmails("Email")
        objEmail.Corpo = p_rsTabelaEmails("Corpo")
        If (objEmail.Enviar() = True) Then
            
            ' Marca o e-mail como enviado
            p_rsTabelaEmails.Fields("Status") = sSTATUS_ENVIADO
            p_rsTabelaEmails.Update
        
        End If
        
        Call p_rsTabelaEmails.MoveNext
    Loop
End Sub

Private Function PrintarNomeIdade(ByVal v_sNome As String, ByVal v_iIdade As Integer)
    Debug.Print (v_sNome & " - " & v_iIdade)
End Function

Private Function ObterEmailsPendentes() As ADODB.Recordset
    Dim rsRet As New ADODB.Recordset
    With rsRet
        'Cria os campos
        Call .Fields.Append("Id", adInteger, , adFldRowID)
        Call .Fields.Append("Email", adBSTR)
        Call .Fields.Append("Corpo", adBSTR)
        Call .Fields.Append("Status", adBSTR)
        .Open
    
        'Adiciona os registros
        Call .AddNew
        .Fields("Id") = 1
        .Fields("Email") = "joao@gmail.com"
        .Fields("Corpo") = "Prezado Sr. João..."
        .Fields("Status") = sSTATUS_ENVIADO
        Call .Update
        
        'Adiciona os registros
        Call .AddNew
        .Fields("Id") = 2
        .Fields("Email") = "maria@yahoo.com.br"
        .Fields("Corpo") = "Prezado Sra. Maria..."
        .Fields("Status") = sSTATUS_AGUARDANDO_ENVIO
        Call .Update
        
        'Adiciona os registros
        Call .AddNew
        .Fields("Id") = 3
        .Fields("Email") = "josefina@bol.com.br"
        .Fields("Corpo") = "Prezado Sra. Joséfina..."
        .Fields("Status") = sSTATUS_AGUARDANDO_ENVIO
        Call .Update
        
    End With
    Set ObterEmailsPendentes = rsRet
End Function
