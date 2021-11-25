VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   1215
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   3375
   LinkTopic       =   "Form1"
   ScaleHeight     =   1215
   ScaleWidth      =   3375
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdCalcular 
      Caption         =   "Calcular"
      Height          =   345
      Left            =   90
      TabIndex        =   4
      Top             =   750
      Width           =   1605
   End
   Begin VB.TextBox txtNumero2 
      Height          =   285
      Left            =   930
      TabIndex        =   3
      Top             =   390
      Width           =   735
   End
   Begin VB.TextBox txtNumero1 
      Height          =   285
      Left            =   930
      TabIndex        =   1
      Top             =   60
      Width           =   735
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      Caption         =   "Número 2:"
      Height          =   195
      Left            =   120
      TabIndex        =   2
      Top             =   450
      Width           =   735
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "Número 1:"
      Height          =   195
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   735
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
'  - Solicite ao usuário dois números e multiplique-os
'============================================================================================
Private Sub cmdCalcular_Click()
    Dim lTotal As Long
    lTotal = CLng(txtNumero1.Text) * CLng(txtNumero2.Text)
    MsgBox lTotal
End Sub
