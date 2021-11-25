Attribute VB_Name = "SubMain"
'============================================================================================
' Instruções
'  - Dados os salários do ano de um vendedor, calcule o percentual de IRPF
'============================================================================================

Public Sub Main()
    Dim caSalarios(12) As Currency
    caSalarios(0) = 1021.37
    caSalarios(1) = 1000.21
    caSalarios(2) = 1243.12
    caSalarios(3) = 1554.55
    caSalarios(4) = 2341.22
    caSalarios(5) = 2211.12
    caSalarios(6) = 2215.87
    caSalarios(7) = 1297.86
    caSalarios(8) = 1425.76
    caSalarios(9) = 1877.43
    caSalarios(10) = 1122.9
    caSalarios(11) = 1298.99
    
    Dim iPosicao As Integer
    Dim dPercentualIRPF As Double
    Do While iPosicao <= 11
        If caSalarios(iPosicao) >= 0 And caSalarios(iPosicao) <= 500 Then
            dPercentualIRPF = 0
        ElseIf caSalarios(iPosicao) > 500 And caSalarios(iPosicao) <= 1000 Then
            dPercentualIRPF = 7.5
        ElseIf caSalarios(iPosicao) > 1001 And caSalarios(iPosicao) <= 2000 Then
            dPercentualIRPF = 15
        Else
            dPercentualIRPF = 27.5
        End If
        Debug.Print ("Valor do IRPF: " & caSalarios(iPosicao) / 100 * dPercentualIRPF)
            
        ' Incrementa a variável iPosicao com +1
        iPosicao = iPosicao + 1
    Loop
    
End Sub
