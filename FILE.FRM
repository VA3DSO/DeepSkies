VERSION 4.00
Begin VB.Form FileDlg 
   Appearance      =   0  'Flat
   BackColor       =   &H80000005&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Open"
   ClientHeight    =   3255
   ClientLeft      =   2025
   ClientTop       =   2145
   ClientWidth     =   6615
   ControlBox      =   0   'False
   Height          =   3765
   Left            =   1965
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3255
   ScaleWidth      =   6615
   Top             =   1695
   Width           =   6735
   Begin VB.ComboBox Combo1 
      Appearance      =   0  'Flat
      Height          =   300
      ItemData        =   "FILE.frx":0000
      Left            =   120
      List            =   "FILE.frx":000A
      Style           =   2  'Dropdown List
      TabIndex        =   11
      Top             =   2760
      Width           =   2535
   End
   Begin VB.CommandButton Command2 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      Cancel          =   -1  'True
      Caption         =   "Cancel"
      Height          =   255
      Left            =   5640
      TabIndex        =   10
      Top             =   480
      Width           =   855
   End
   Begin VB.CommandButton Command1 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      Caption         =   "OK"
      Default         =   -1  'True
      Height          =   255
      Left            =   5640
      TabIndex        =   9
      Top             =   120
      Width           =   855
   End
   Begin VB.DriveListBox Drive1 
      Appearance      =   0  'Flat
      Height          =   315
      Left            =   2880
      TabIndex        =   8
      Top             =   2760
      Width           =   2535
   End
   Begin VB.DirListBox Dir1 
      Appearance      =   0  'Flat
      Height          =   1605
      Left            =   2880
      TabIndex        =   6
      Top             =   720
      Width           =   2535
   End
   Begin VB.FileListBox File1 
      Appearance      =   0  'Flat
      Height          =   1590
      Left            =   120
      Pattern         =   "*.dsm"
      TabIndex        =   2
      Top             =   720
      Width           =   2535
   End
   Begin VB.TextBox Text1 
      Appearance      =   0  'Flat
      Height          =   285
      Left            =   120
      TabIndex        =   1
      Text            =   "*.dsm"
      Top             =   360
      Width           =   2535
   End
   Begin VB.Label Label5 
      BackColor       =   &H00FFFFFF&
      Caption         =   "Drives:"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   2880
      TabIndex        =   7
      Top             =   2520
      Width           =   2535
   End
   Begin VB.Label Label4 
      BackColor       =   &H00FFFFFF&
      Caption         =   "Not sure? d:\something..."
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   2880
      TabIndex        =   5
      Top             =   360
      Width           =   2535
   End
   Begin VB.Label Label3 
      BackColor       =   &H00FFFFFF&
      Caption         =   "Directories:"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   2880
      TabIndex        =   4
      Top             =   120
      Width           =   2535
   End
   Begin VB.Label Label2 
      BackColor       =   &H00FFFFFF&
      Caption         =   "List Files of Type:"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   120
      TabIndex        =   3
      Top             =   2520
      Width           =   2535
   End
   Begin VB.Label Label1 
      BackColor       =   &H00FFFFFF&
      Caption         =   "File Name:"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   2535
   End
End
Attribute VB_Name = "FileDlg"
Attribute VB_Creatable = False
Attribute VB_Exposed = False
Option Explicit
Dim OkayToPaint As Integer

Private Sub Combo1_Click()
    
    If Combo1.ListIndex = 0 Then
        Text1.Text = "*.dsm"
    End If
    
    If Combo1.ListIndex = 1 Then
        Text1.Text = "*.*"
    End If
    
    Text1.SetFocus
    
End Sub


Private Sub Command1_Click()

    Dim FName As String
    Dim OkayToSave As Integer
    Dim Response As Long
    
    If Right(Dir1.Path, 1) = "\" Then
        FName = UCase(Dir1.Path + Text1.Text)
    Else
        FName = UCase(Dir1.Path + "\" + Text1.Text)
    End If
    
    If Left(FileDlg.Caption, 1) = "O" Then
        CurFile = UCase(Text1.Text)
        Load FName
    ElseIf Left(FileDlg.Caption, 1) = "S" Then
        CurFile = UCase(Text1.Text)
        OkayToSave = 0
        On Error GoTo FileHandler
        Response = GetAttr(FName)
        On Error GoTo 0
        If OkayToSave = 1 Then
            Save FName
        Else
        
            Response = MsgBox("File already exists. Overwrite?", vbYesNo + vbQuestion + vbDefaultButton2, "Hmmmm")
            
            If Response = vbYes Then
                Save FName
            End If
            
        End If
        
    End If
    
    OkayToPaint = 1
    Main.AutoRedraw = False
    FileDlg.Hide
    
    Exit Sub
    
FileHandler:
    OkayToSave = 1
    Resume Next
    
End Sub

Private Sub Command2_Click()
    OkayToPaint = 1
    Main.AutoRedraw = False
    FileDlg.Hide
End Sub


Private Sub Dir1_Change()
    File1.Path = Dir1.Path
End Sub

Private Sub Dir1_LostFocus()
    Dir1.Path = Dir1.List(Dir1.ListIndex)
End Sub


Private Sub Drive1_Change()
    
    On Error GoTo DriveHandler
    Dir1.Path = Drive1.Drive
    Exit Sub
    
DriveHandler:
    Drive1.Drive = Dir1.Path
    Exit Sub
    
End Sub

Private Sub File1_Click()
    Text1.Text = File1.FileName
End Sub

Private Sub File1_DblClick()
    File1_Click
    Command1_Click
End Sub


Private Sub Form_Load()
    OkayToPaint = 1
End Sub

Private Sub Form_Paint()

    Main.AutoRedraw = True
    
    If OkayToPaint = 1 Then
    
        Combo1.ListIndex = 0
        
        If Left(FileDlg.Caption, 1) = "S" And CurFile <> "Untitled" Then
            Text1.Text = CurFile
        Else
            Text1.Text = "*.dsm"
        End If
        
        File1.Refresh
        Text1.SetFocus
            
        OkayToPaint = 0
        
    End If

End Sub


Private Sub Text1_Change()
    ' Update file list box if user changes pattern.
    If Left(Text1.Text, 1) = "*" Then
        File1.Pattern = Text1.Text
    End If
    
End Sub


Private Sub Text1_GotFocus()
    Text1.SelStart = 0
    Text1.SelLength = Len(Text1.Text)
End Sub


