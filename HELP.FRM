VERSION 4.00
Begin VB.Form Help 
   Appearance      =   0  'Flat
   BackColor       =   &H80000005&
   Caption         =   "DeepSkies Help"
   ClientHeight    =   5505
   ClientLeft      =   5565
   ClientTop       =   2040
   ClientWidth     =   4905
   ControlBox      =   0   'False
   BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
      Name            =   "MS Sans Serif"
      Size            =   8.25
      Charset         =   0
      Weight          =   700
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   ForeColor       =   &H80000008&
   Height          =   6015
   Left            =   5505
   LinkTopic       =   "Form1"
   ScaleHeight     =   5505
   ScaleWidth      =   4905
   Top             =   1590
   Width           =   5025
   Begin VB.CommandButton Command1 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      Caption         =   "Close"
      Default         =   -1  'True
      Height          =   255
      Left            =   3840
      TabIndex        =   2
      Top             =   5040
      Width           =   855
   End
   Begin VB.Frame Frame1 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      Caption         =   "Instructions"
      ForeColor       =   &H80000008&
      Height          =   5295
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   4695
      Begin VB.TextBox txtHelp 
         Appearance      =   0  'Flat
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   4455
         Left            =   120
         MultiLine       =   -1  'True
         ScrollBars      =   2  'Vertical
         TabIndex        =   1
         TabStop         =   0   'False
         Top             =   360
         Width           =   4455
      End
   End
End
Attribute VB_Name = "Help"
Attribute VB_Creatable = False
Attribute VB_Exposed = False
Private Sub Command1_Click()
    Main.AutoRedraw = False
    Help.Hide
End Sub

Private Sub Form_Paint()

    Dim Buffer As String * 1024

    txtHelp.Text = ""

    Open AppPath & "HELP.TXT" For Binary As #3

    Do While Not EOF(3)

        Get #3, , Buffer
        txtHelp.Text = txtHelp.Text + Buffer

    Loop

    Close #3
    
End Sub

