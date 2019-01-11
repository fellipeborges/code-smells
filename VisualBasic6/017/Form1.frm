VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   1245
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   3465
   LinkTopic       =   "Form1"
   ScaleHeight     =   1245
   ScaleWidth      =   3465
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox txtResultado 
      BackColor       =   &H00E0E0E0&
      Height          =   285
      Left            =   930
      TabIndex        =   4
      Top             =   810
      Width           =   2295
   End
   Begin VB.TextBox txtValor 
      Height          =   285
      Left            =   930
      TabIndex        =   2
      Text            =   "12,50"
      Top             =   60
      Width           =   2295
   End
   Begin VB.CommandButton cmdConverter 
      Caption         =   "Converter"
      Height          =   345
      Left            =   60
      TabIndex        =   0
      Top             =   420
      Width           =   3195
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      Caption         =   "Resultado:"
      Height          =   195
      Left            =   90
      TabIndex        =   3
      Top             =   840
      Width           =   765
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "Valor:"
      Height          =   195
      Left            =   90
      TabIndex        =   1
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
'============================================================================================

Private Sub cmdConverter_Click()
    Const cVALOR_DOLAR As Currency = 3.79
    
    If IsNumeric(txtValor.Text) = False Then
        Call MsgBox("Informe um valor válido.", vbExclamation, "Atenção")
        Call txtValor.SetFocus
        Exit Sub
    End If
    
    txtResultado.Text = Round(CCur(txtValor.Text) * cVALOR_DOLAR, 2)
End Sub
