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
   Begin VB.CommandButton Command1 
      Caption         =   "Ler Arquivo Texto"
      Height          =   945
      Left            =   120
      TabIndex        =   0
      Top             =   150
      Width           =   3195
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
'  - Tente ler um arquivo que não existe e mostre a mensagem de erro ao usuário através
'    do tratamento de erros do método.
'============================================================================================

Private Sub Command1_Click()
    Call LerArquivoTexto
End Sub

Private Sub LerArquivoTexto()
    Dim iFile As Integer
    Dim sLinha As String
    Dim sArquivo As String
    
    On Error GoTo ErrMetodo
    
    iFile = FreeFile
    sArquivo = App.Path & "\config.ini"
    Open sArquivo For Input As #iFile
    Do While Not EOF(iFile)
        Line Input #iFile, sLinha
        Debug.Print (sLinha)
    Loop
    
ExitMetodo:
    Exit Sub
    
ErrMetodo:
    Call MsgBox("Erro inesperado: " & Err.Description)
End Sub
