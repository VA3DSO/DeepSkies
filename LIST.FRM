VERSION 4.00
Begin VB.Form List 
   Appearance      =   0  'Flat
   BackColor       =   &H80000005&
   Caption         =   "Observing List"
   ClientHeight    =   6270
   ClientLeft      =   3120
   ClientTop       =   2340
   ClientWidth     =   7455
   ControlBox      =   0   'False
   Height          =   6675
   Left            =   3060
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   6270
   ScaleWidth      =   7455
   Top             =   1995
   Width           =   7575
   Begin VB.CommandButton Command2 
      Cancel          =   -1  'True
      Caption         =   "Cancel"
      Height          =   255
      Left            =   6360
      TabIndex        =   2
      Top             =   5880
      Width           =   855
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Save"
      Default         =   -1  'True
      Height          =   255
      Left            =   5400
      TabIndex        =   1
      Top             =   5880
      Width           =   855
   End
   Begin VB.TextBox Text1 
      Appearance      =   0  'Flat
      BackColor       =   &H00FFFFFF&
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   5655
      Left            =   120
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   0
      Top             =   120
      Width           =   7215
   End
End
Attribute VB_Name = "List"
Attribute VB_Creatable = False
Attribute VB_Exposed = False
Option Explicit
Dim OkayToPaint As Integer

Private Sub Command1_Click()

    Open DataPath + "LIST.TXT" For Output As #2
    Print #2, Text1.Text
    Close #2
    
    OkayToPaint = 1
    Main.AutoRedraw = False
    List.Hide
    
End Sub


Private Sub Command2_Click()
    OkayToPaint = 1
    Main.AutoRedraw = False
    List.Hide
End Sub


Private Sub Form_Load()

    OkayToPaint = 1
    
End Sub

Private Sub Form_Paint()

    Main.AutoRedraw = True
    
    If OkayToPaint = 1 Then
    
        Dim Buffer As String * 1024
    
        Main.ScaleMode = Twips
        List.ScaleMode = Twips
        List.Top = Main.ScaleHeight / 2 - List.ScaleHeight / 2 - 50
        List.Left = Main.ScaleWidth / 2 - List.ScaleWidth / 2
        Text1.Top = 0
        Text1.Left = 0
        Text1.Width = List.ScaleWidth - 1
        Text1.Height = List.ScaleHeight - 400
        Command1.Top = List.ScaleHeight - 325
        Command2.Top = List.ScaleHeight - 325
        Command1.Left = List.ScaleWidth - 2000
        Command2.Left = List.ScaleWidth - 1000
    
        Text1.Text = ""
    
        Open DataPath & "LIST.TXT" For Binary As #3
    
        Do While Not EOF(3)
    
            Get #3, , Buffer
            Text1.Text = Text1.Text + Buffer
    
        Loop
    
        Close #3
        
        Command1.SetFocus
        
        OkayToPaint = 0
    
    End If
    
End Sub


