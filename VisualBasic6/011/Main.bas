Attribute VB_Name = "SubMain"
'============================================================================================
' Instru��es
'  - Solicite ao usu�rio a quantidade de participantes do evento de manh� e de tarde
'  - Some os dois valores para exibir a quantidade total ao usu�rio no formato:
'  - "Quantidade total de participantes: x"
'============================================================================================

Dim iTotalParticipantes As Integer

Public Sub Main()
    Dim s As String
    Dim qtdeParticipantesManha, qtdeParticipantesTarde As Integer
        
    'Usu�rio informa as quantidades
    qtdeParticipantesManha = 44
    qtdeParticipantesTarde = 38
    
    'Calculo a quantidade total de participantes
    iTotalParticipantes = (qtdeParticipantesManha + qtdeParticipantesTarde)
    
    ' Mostra a mensagem final
    s = "Quantidade total de participantes: " & iTotalParticipantes
    Debug.Print (s)
End Sub
