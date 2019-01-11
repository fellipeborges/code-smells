VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "ConversorMoedas"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit

Public Function ConverterRealParaDolar(ByVal v_cValorReal As Currency) As Currency
    Const cVALOR_DOLAR As Currency = 3.79
    
    If IsNumeric(Form1.txtValor.Text) = False Then
        Call MsgBox("Informe um valor válido.", vbExclamation, "Atenção")
        Call Form1.txtValor.SetFocus
        Exit Function
    End If
    
    ConverterRealParaDolar = Round(CCur(Form1.txtValor.Text) * cVALOR_DOLAR, 2)
End Function
