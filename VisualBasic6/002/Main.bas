Attribute VB_Name = "SubMain"
'============================================================================================
' Instru��es
'  - Solicite ao usu�rio o valor trimestral de KM rodados pelos carros da locadora
'  - Some os quatro valores para calcular o valor anual
'============================================================================================

Public Sub Main()
    'Vari�veis
    Dim iKmPrimeiroTri As Integer
    Dim iKmSegundoTri As Integer
    Dim iKmTerceiroTri As Integer
    Dim iKmQuartoTri As Integer
    Dim iKmTotal As Integer
    
    'Usu�rio informa os KMs
    iKmPrimeiroTri = 12541
    iKmSegundoTri = 8235
    iKmTerceiroTri = 7892
    iKmQuartoTri = 9001
    
    'Calculo o valor do ano
    iKmTotal = (iKmPrimeiroTri + iKmSegundoTri + iKmTerceiroTri + iKmQuartoTri)
End Sub
