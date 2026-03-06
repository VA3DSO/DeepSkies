VERSION 4.00
Begin VB.Form LogEntry 
   Appearance      =   0  'Flat
   BackColor       =   &H80000005&
   Caption         =   "Log Entry"
   ClientHeight    =   6615
   ClientLeft      =   3180
   ClientTop       =   2295
   ClientWidth     =   7215
   ControlBox      =   0   'False
   Height          =   7125
   Left            =   3120
   LinkTopic       =   "Form1"
   ScaleHeight     =   6615
   ScaleWidth      =   7215
   Top             =   1845
   Width           =   7335
   Begin VB.CommandButton btnCancel 
      Cancel          =   -1  'True
      Caption         =   "Cancel"
      Height          =   255
      Left            =   6240
      TabIndex        =   11
      Top             =   6240
      Width           =   855
   End
   Begin VB.CommandButton btnOK 
      Caption         =   "OK"
      Default         =   -1  'True
      Height          =   255
      Left            =   5280
      TabIndex        =   10
      Top             =   6240
      Width           =   855
   End
   Begin VB.TextBox txtNotes 
      Appearance      =   0  'Flat
      Height          =   4935
      Left            =   120
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   8
      Top             =   1200
      Width           =   6975
   End
   Begin VB.TextBox txtTime 
      Appearance      =   0  'Flat
      Height          =   285
      Left            =   4440
      TabIndex        =   5
      Top             =   480
      Width           =   1455
   End
   Begin VB.TextBox txtDate 
      Appearance      =   0  'Flat
      Height          =   285
      Left            =   1080
      TabIndex        =   2
      Top             =   480
      Width           =   1575
   End
   Begin VB.TextBox txtTarget 
      Appearance      =   0  'Flat
      Height          =   285
      Left            =   1080
      TabIndex        =   0
      Top             =   120
      Width           =   6015
   End
   Begin VB.Label Label6 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      Caption         =   "Notes:"
      ForeColor       =   &H80000008&
      Height          =   255
      Left            =   120
      TabIndex        =   9
      Top             =   840
      Width           =   855
   End
   Begin VB.Label Label5 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      Caption         =   "(HH:mm:ss)"
      ForeColor       =   &H00404040&
      Height          =   255
      Left            =   6000
      TabIndex        =   7
      Top             =   480
      Width           =   1095
   End
   Begin VB.Label Label4 
      Alignment       =   1  'Right Justify
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      Caption         =   "Time:"
      ForeColor       =   &H80000008&
      Height          =   255
      Left            =   3840
      TabIndex        =   6
      Top             =   480
      Width           =   495
   End
   Begin VB.Label Label3 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      Caption         =   "(mm/dd/yyyy)"
      ForeColor       =   &H00404040&
      Height          =   255
      Left            =   2760
      TabIndex        =   4
      Top             =   480
      Width           =   975
   End
   Begin VB.Label Label2 
      Alignment       =   1  'Right Justify
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      Caption         =   "Date:"
      ForeColor       =   &H80000008&
      Height          =   255
      Left            =   120
      TabIndex        =   3
      Top             =   480
      Width           =   855
   End
   Begin VB.Label Label1 
      Alignment       =   1  'Right Justify
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      Caption         =   "Target:"
      ForeColor       =   &H80000008&
      Height          =   255
      Left            =   120
      TabIndex        =   1
      Top             =   120
      Width           =   855
   End
End
Attribute VB_Name = "LogEntry"
Attribute VB_Creatable = False
Attribute VB_Exposed = False
Public EditRecord As Long
Public ActionMode As String


Private Sub btnCancel_Click()
    LogEntry.Hide
End Sub

Private Sub btnOK_Click()

    Dim MyLogs As LogData
    Dim x As Long
    
    If ActionMode = "Append" Then
        NumLogs = NumLogs + 1
        x = NumLogs
    ElseIf ActionMode = "Edit" Then
        x = EditRecord
    Else
        MsgBox "WHOA! What is the action???"
        Stop
    End If
    
    Open DataPath & "LOGS.DAT" For Binary Access Write As #3
    
    MyLogs.Target = Trim(txtTarget)
    MyLogs.LDate = Trim(txtDate)
    MyLogs.LTime = Trim(txtTime)
    
    Put #3, (x - 1) * Len(MyLogs) + 1, MyLogs
    
    Close #3
    
    Open DataPath & "L" & Trim(Str(x)) & ".TXT" For Output As #2
    Print #2, txtNotes
    Close #2
    
    LogEntry.Hide
    
End Sub

Private Sub Form_Paint()

    Main.ScaleMode = Twips
    LogEntry.ScaleMode = Twips
    LogEntry.Top = Main.ScaleHeight / 2 - LogEntry.ScaleHeight / 2 - 50
    LogEntry.Left = Main.ScaleWidth / 2 - LogEntry.ScaleWidth / 2

End Sub


