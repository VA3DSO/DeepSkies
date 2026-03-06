VERSION 4.00
Begin VB.Form Find 
   Appearance      =   0  'Flat
   BackColor       =   &H80000005&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Search..."
   ClientHeight    =   5535
   ClientLeft      =   4725
   ClientTop       =   2700
   ClientWidth     =   5055
   ClipControls    =   0   'False
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
   Height          =   6045
   Left            =   4665
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   5535
   ScaleWidth      =   5055
   Top             =   2250
   Width           =   5175
   Begin VB.Frame Frame3 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      Caption         =   "Constellations"
      ForeColor       =   &H80000008&
      Height          =   1095
      Left            =   120
      TabIndex        =   11
      Top             =   4320
      Width           =   4815
      Begin VB.CommandButton Command2 
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         Caption         =   "Cancel"
         Height          =   255
         Left            =   3840
         TabIndex        =   9
         Top             =   720
         Width           =   855
      End
      Begin VB.ComboBox txtConstellation 
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
         Height          =   300
         Left            =   120
         Sorted          =   -1  'True
         Style           =   2  'Dropdown List
         TabIndex        =   7
         Top             =   360
         Width           =   4575
      End
      Begin VB.CommandButton Command1 
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         Caption         =   "Search"
         Height          =   255
         Left            =   2880
         TabIndex        =   8
         Top             =   720
         Width           =   855
      End
   End
   Begin VB.Frame Frame2 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      Caption         =   "Deep Sky Objects"
      ForeColor       =   &H80000008&
      Height          =   1215
      Left            =   120
      TabIndex        =   10
      Top             =   3000
      Width           =   4815
      Begin VB.CommandButton Command6 
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         Cancel          =   -1  'True
         Caption         =   "Cancel"
         Height          =   255
         Left            =   3840
         TabIndex        =   6
         Top             =   840
         Width           =   855
      End
      Begin VB.CommandButton Command5 
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         Caption         =   "Search"
         Height          =   255
         Left            =   2880
         TabIndex        =   5
         Top             =   840
         Width           =   855
      End
      Begin VB.TextBox txtDSO 
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
         Height          =   285
         Left            =   2160
         TabIndex        =   4
         Top             =   480
         Width           =   2535
      End
      Begin VB.Label Label3 
         Alignment       =   1  'Right Justify
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         Caption         =   "Enter Search Words:"
         ForeColor       =   &H80000008&
         Height          =   255
         Left            =   120
         TabIndex        =   14
         Top             =   480
         Width           =   1935
      End
   End
   Begin VB.Frame Frame1 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      Caption         =   "Stars"
      ForeColor       =   &H80000008&
      Height          =   2775
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   4815
      Begin VB.CommandButton Command4 
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         Caption         =   "Cancel"
         Height          =   255
         Left            =   3840
         TabIndex        =   3
         Top             =   840
         Width           =   855
      End
      Begin VB.CommandButton Command3 
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         Caption         =   "Search"
         Height          =   255
         Left            =   2880
         TabIndex        =   2
         Top             =   840
         Width           =   855
      End
      Begin VB.TextBox txtStar 
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
         Height          =   285
         Left            =   2160
         TabIndex        =   1
         Top             =   480
         Width           =   2535
      End
      Begin VB.Label Label2 
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         Caption         =   $"FIND.frx":0000
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   1335
         Left            =   240
         TabIndex        =   13
         Top             =   1200
         Width           =   4455
      End
      Begin VB.Label Label1 
         Alignment       =   1  'Right Justify
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         Caption         =   "Enter Search Words:"
         ForeColor       =   &H80000008&
         Height          =   255
         Left            =   120
         TabIndex        =   12
         Top             =   480
         Width           =   1935
      End
   End
End
Attribute VB_Name = "Find"
Attribute VB_Creatable = False
Attribute VB_Exposed = False
Dim OkayToPaint As Integer

Private Sub Command1_Click()

    Dim i As Integer
    i = 0

    Do

        If CLabels(i).RA = -99 Then
            Exit Do
        Else
            If CLabels(i).Label = txtConstellation.Text Then
                MyRA = CLabels(i).RA
                MyDec = CLabels(i).Dec
                MyFOV = 60
                Exit Do
            End If
        End If

        i = i + 1

    Loop

    OkayToPaint = 1
    Main.AutoRedraw = False
    Find.Hide

End Sub

Private Sub Command2_Click()

    OkayToPaint = 1
    Main.AutoRedraw = False
    Find.Hide

End Sub

Private Sub Command3_Click()

    Dim Star As StarDataIN
    Dim StarSup As StarSupData
    Dim FoundStar As Integer
    Dim WeAborted As Boolean

    Status "Searching..."
    MousePointer = 11
    FoundStar = 0
    
    Abort = False
    On Error GoTo QuitEarly
    
    Rem * SHALLOW SEARCH *
    For i = 1 To 20

        Open DataPath & Plates(i).FileName For Binary Access Read As #3
        
        Do While Not EOF(3)
                
            Get #3, , Star

            If Star.Mag > 6.5 Then
                Exit Do
            Else
                
                If InStr(UCase(Trim(Star.Label)), UCase(Trim(txtStar.Text))) > 0 Then
                    FoundStar = 1
                    MyRA = CDbl(Star.RA)
                    MyDec = CDbl(Star.Dec)
                    MyFOV = 20
                    Exit Do
                End If

            End If
            
            DoEvents
            If Abort = True Then GoTo QuitEarly
            
        Loop

        Close #3
        
        If FoundStar = 1 Then
            Exit For
        End If

    Next i
                            
    Rem * DEEP SEARCH *
    If FoundStar = 0 And WeAborted = False Then

        For i = 1 To 20
    
            Open DataPath & Plates(i).FileName For Binary Access Read As #3
            
            Do While Not EOF(3)
                    
                Get #3, , Star

                If InStr(UCase(Trim(Star.Label)), UCase(Trim(txtStar.Text))) > 0 Then
                    FoundStar = 1
                    MyRA = CDbl(Star.RA)
                    MyDec = CDbl(Star.Dec)
                    MyFOV = 20
                    Exit Do
                End If
                
                DoEvents
                If Abort = True Then GoTo QuitEarly
                
            Loop
    
            Close #3
    
            If FoundStar = 1 Then
                Exit For
            End If
    
        Next i

    End If

    MousePointer = 0

    If FoundStar = 0 Then
        Beep
        MsgBox "Could not locate that star."
    Else
        OkayToPaint = 1
        Main.AutoRedraw = False
        Find.Hide
    End If
    
    Exit Sub
    
QuitEarly:

    Abort = False
    Close
    OkayToPaint = 1
    Main.AutoRedraw = False
    Find.Hide
    Main.Refresh
    
End Sub

Private Sub Command4_Click()
    OkayToPaint = 1
    Main.AutoRedraw = False
    Find.Hide
End Sub

Private Sub Command5_Click()

    Dim DSO As DSOData
    Dim FoundDSO As Integer

    Status "Searching..."
    MousePointer = 11
    FoundDSO = 0

    Abort = False
    
    Open DataPath & "DSOS.DAT" For Binary Access Read As #3
    
    Do While Not EOF(3)
            
        Get #3, , DSO

        If UCase(Trim(DSO.Label)) = UCase(Trim(txtDSO.Text)) Then
            MyRA = DSO.RA
            MyDec = DSO.Dec
            MyFOV = 20
            FoundDSO = 1
            Exit Do
        End If
                
        DoEvents
        If Abort = True Then GoTo QuitEarly

    Loop

    Close #3
    
QuitEarly:

    Abort = False
    Close
    
    MousePointer = 0

    If FoundDSO = 0 Then
        Beep
        MsgBox "Could not locate that object."
    Else
        OkayToPaint = 1
        Main.AutoRedraw = False
        Find.Hide
    End If


End Sub

Private Sub Command6_Click()
    OkayToPaint = 1
    Main.AutoRedraw = False
    Find.Hide
End Sub

Private Sub Form_Load()
    
    OkayToPaint = 1
    
    Dim i As Integer
    i = 0

    Do
        
        If CLabels(i).RA = -99 Then
            Exit Do
        Else
            If Asc(Left(CLabels(i).Label, 1)) > 0 Then
                txtConstellation.AddItem CLabels(i).Label
            End If
        End If

        i = i + 1
    
    Loop

End Sub

Private Sub Form_Paint()

    Main.AutoRedraw = True
    
    If OkayToPaint = 1 Then
    
        txtStar = ""
        txtDSO = ""
        txtStar.SetFocus

        OkayToPaint = 0
        
    End If
    
End Sub

