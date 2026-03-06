VERSION 4.00
Begin VB.Form Logs 
   Appearance      =   0  'Flat
   AutoRedraw      =   -1  'True
   BackColor       =   &H80000005&
   Caption         =   "Observing Logs"
   ClientHeight    =   5655
   ClientLeft      =   3750
   ClientTop       =   3195
   ClientWidth     =   7695
   ControlBox      =   0   'False
   Height          =   6060
   Left            =   3690
   LinkTopic       =   "Form1"
   ScaleHeight     =   5655
   ScaleWidth      =   7695
   Top             =   2850
   Width           =   7815
   Begin VB.CommandButton btnEdit 
      Caption         =   "Edit"
      Height          =   255
      Left            =   4800
      TabIndex        =   5
      Top             =   5280
      Width           =   855
   End
   Begin VB.CommandButton btnClose 
      Caption         =   "Close"
      Height          =   255
      Left            =   6720
      TabIndex        =   4
      Top             =   5280
      Width           =   855
   End
   Begin VB.CommandButton btnDelete 
      Caption         =   "Delete"
      Height          =   255
      Left            =   5760
      TabIndex        =   3
      Top             =   5280
      Width           =   855
   End
   Begin VB.CommandButton btnAdd 
      Caption         =   "Add"
      Height          =   255
      Left            =   3840
      TabIndex        =   2
      Top             =   5280
      Width           =   855
   End
   Begin MSGrid.Grid Grid1 
      Height          =   4815
      Left            =   120
      TabIndex        =   0
      Top             =   360
      Width           =   7455
      _Version        =   65536
      _ExtentX        =   13150
      _ExtentY        =   8493
      _StockProps     =   77
      ForeColor       =   0
      BackColor       =   16777215
      Rows            =   1
      Cols            =   1
      FixedRows       =   0
      FixedCols       =   0
      ScrollBars      =   2
   End
   Begin VB.Label Label1 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      Caption         =   "Current Entries:"
      ForeColor       =   &H80000008&
      Height          =   255
      Left            =   120
      TabIndex        =   1
      Top             =   120
      Width           =   2895
   End
End
Attribute VB_Name = "Logs"
Attribute VB_Creatable = False
Attribute VB_Exposed = False

Private Sub btnAdd_Click()

    LogEntry.ActionMode = "Append"
    LogEntry.txtTarget = ""
    LogEntry.txtNotes = ""
    LogEntry.txtDate = ""
    LogEntry.txtTime = ""
    LogEntry.Refresh
    LogEntry.Show 1
    
End Sub

Private Sub btnClose_Click()
    Logs.Hide
End Sub

Private Sub btnDelete_Click()

    Dim MyLogs As LogData
    Dim x As Long
    
    x = Grid1.Row + 1
    
    Open DataPath & "LOGS.DAT" For Binary Access Read As #3
    Get #3, (x - 1) * Len(MyLogs) + 1, MyLogs
    Close #3
    
    MyLogs.Flags = "D"
    
    Open DataPath & "LOGS.DAT" For Binary Access Write As #3
    Put #3, (x - 1) * Len(MyLogs) + 1, MyLogs
    Close #3
    
    MsgBox "Record Deleted!"
    
End Sub

Private Sub btnEdit_Click()

    Dim MyLogs As LogData
    Dim Buffer As String * 1
    Dim x As Long
    
    x = Grid1.Row + 1
    
    Open DataPath & "LOGS.DAT" For Binary Access Read As #3
    Get #3, (x - 1) * Len(MyLogs) + 1, MyLogs
    Close #3
    
    LogEntry.EditRecord = x
    LogEntry.ActionMode = "Edit"
    LogEntry.txtTarget = Trim(MyLogs.Target)
    LogEntry.txtDate = Trim(MyLogs.LDate)
    LogEntry.txtTime = Trim(MyLogs.LTime)
    LogEntry.txtNotes = ""
    
    Open DataPath & "L" & Trim(Str(x)) & ".TXT" For Binary Access Read As #3

    Do While Not EOF(3)

        Get #3, , Buffer
        If Asc(Buffer) = 13 Then
            LogEntry.txtNotes.Text = LogEntry.txtNotes.Text + Chr(13) + Chr(10)
        ElseIf Asc(Buffer) <> 10 Then
            LogEntry.txtNotes.Text = LogEntry.txtNotes.Text + Buffer
        End If

    Loop

    Close #3
    
    LogEntry.Show 1
    
End Sub

Private Sub Form_Load()
    
    Grid1.ColWidth(0) = Grid1.Width

End Sub


Private Sub Form_Paint()
    
    Dim t As Long
    Dim ActiveLogs As Long
    Dim MyLogs As LogData
    
    Grid1.SelEndCol = 0
    Grid1.SelStartCol = 0
    Grid1.SelEndRow = 0
    Grid1.SelStartRow = 0
    Grid1.Col = 0
    Grid1.Row = 0
    Grid1.Rows = 1
    ActiveLogs = 0
    
    Open DataPath & "LOGS.DAT" For Binary Access Read As #3
    
    Get #3, , MyLogs
    
    Do While Not EOF(3)
        
        If MyLogs.Flags <> "D" Then
        
            If t > 1 Then
                Grid1.AddItem MyLogs.Target
            Else
                Grid1.Text = MyLogs.Target
            End If
            
            ActiveLogs = ActiveLogs + 1
                    
        End If
        
        Get #3, , MyLogs
        
    Loop
    
    Close #3
    
    MsgBox "ActiveLogs = " & Str(ActiveLogs)
    
    If ActiveLogs = 0 Then
        Grid1.Text = "No Entries Yet!"
    End If
    
    Grid1.Refresh
    
End Sub


Private Sub Grid1_RowColChange()

End Sub


