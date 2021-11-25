Attribute VB_Name = "SubMain"
'============================================================================================
' Instruções
'  - Dado um array de strings, concatene todo seu conteúdo e mostre ao usuário
'============================================================================================

Public Sub Main()
    Dim asTextos() As String
    Dim sTextoFinal As String
    
    '------------------------------------------------------------------------------------------------------
    ' Constroi o array
    Call ObterArrayComTextos(asTextos)
    '------------------------------------------------------------------------------------------------------
    
    ' Concatena os valores
    Dim iPosicao As Integer
    For iPosicao = 0 To UBound(asTextos)
        sTextoFinal = sTextoFinal & asTextos(iPosicao) & vbCrLf
    Next iPosicao
    
    Debug.Print (sTextoFinal)
End Sub

Private Sub ObterArrayComTextos(ByRef r_asRetorno() As String)
    Const iQUANTIDADE_ITENS As Integer = 1000
    
    Dim iPosicao As Integer
    ReDim r_asRetorno(iQUANTIDADE_ITENS - 1)
    For iPosicao = 0 To iQUANTIDADE_ITENS - 1
        r_asRetorno(iPosicao) = iPosicao & " - Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras vulputate accumsan lectus quis cursus. Nam porta metus nibh, vel suscipit dolor pulvinar nec. Duis accumsan ligula vitae varius interdum. Donec ut blandit turpis, ac ultricies tortor. Vivamus sem ex, ultricies sit amet orci et, sodales blandit nibh. Vivamus cursus, purus at vestibulum condimentum, felis dolor tristique augue, at elementum purus diam non augue. Fusce finibus bibendum augue, nec ullamcorper urna volutpat nec. In ac feugiat metus. Donec fringilla, neque eu condimentum faucibus, quam turpis gravida lacus, sed lobortis lectus ligula eget ex."
    Next iPosicao
End Sub
