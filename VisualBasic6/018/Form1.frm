VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   780
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   3330
   LinkTopic       =   "Form1"
   ScaleHeight     =   780
   ScaleWidth      =   3330
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox txtResultado 
      BackColor       =   &H00E0E0E0&
      Height          =   285
      Left            =   930
      TabIndex        =   3
      Top             =   390
      Width           =   2295
   End
   Begin VB.TextBox txtValor 
      Height          =   285
      Left            =   930
      TabIndex        =   1
      Text            =   "12,50"
      Top             =   60
      Width           =   2295
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      Caption         =   "Resultado:"
      Height          =   195
      Left            =   90
      TabIndex        =   2
      Top             =   420
      Width           =   765
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "Valor:"
      Height          =   195
      Left            =   90
      TabIndex        =   0
      Top             =   90
      Width           =   405
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

'============================================================================================
' Instruções
'  - Faça a conversão de REAL para DOLAR conforme input do usuário
'  - Utilize uma classe para fazer a execução do cálculo
'  - Mostre o valor convertido conforme o usuário digita
'============================================================================================
Private Sub txtValor_Change()
    Dim objConversorMoedas As New ConversorMoedas
    
    txtResultado.Text = objConversorMoedas.ConverterRealParaDolar(txtValor.Text)
End Sub
