VERSION 5.00
Begin VB.Form Form1 
   AutoRedraw      =   -1  'True
   BackColor       =   &H00FFFFFF&
   BorderStyle     =   3  'Fixed Dialog
   ClientHeight    =   1875
   ClientLeft      =   45
   ClientTop       =   45
   ClientWidth     =   4560
   ClipControls    =   0   'False
   ControlBox      =   0   'False
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   1875
   ScaleWidth      =   4560
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.Label lab 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "CycLonE"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   48
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000080FF&
      Height          =   1080
      Index           =   0
      Left            =   240
      TabIndex        =   0
      Top             =   360
      Width           =   3900
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_DblClick()
    End
End Sub

Private Sub Form_Load()
    Me.Print "click me to unload"
    For i = 1 To 25
        Load lab(i)
        lab(i).AutoSize = True
        lab(i).Visible = True
        lab(i).Caption = lab(0).Caption
        'lab(i).Font.Bold = True
        lab(i).Font.Size = lab(0).Font.Size
        lab(i).Font.Name = lab(0).Font.Name
        'lab(i).fon
        lab(i).BackStyle = 0
        lab(i).ForeColor = RGB(i * 10, i * 10, i * 10)
        lab(i).Left = lab(0).Left + i * 10
        lab(i).Top = lab(0).Top + i * 10
    Next i
    lab(0).AutoSize = True
    lab(0).ForeColor = &HFF3070
End Sub

