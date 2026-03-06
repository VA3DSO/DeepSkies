VERSION 4.00
Begin VB.Form Info 
   Appearance      =   0  'Flat
   BackColor       =   &H80000005&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Information"
   ClientHeight    =   6255
   ClientLeft      =   4425
   ClientTop       =   2430
   ClientWidth     =   5175
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
   Height          =   6765
   Left            =   4365
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   6255
   ScaleWidth      =   5175
   Top             =   1980
   Width           =   5295
   Begin VB.TextBox txtPlate 
      Appearance      =   0  'Flat
      Height          =   285
      Left            =   840
      TabIndex        =   29
      Text            =   "Text2"
      Top             =   5880
      Visible         =   0   'False
      Width           =   615
   End
   Begin VB.TextBox txtRecord 
      Appearance      =   0  'Flat
      Height          =   285
      Left            =   120
      TabIndex        =   28
      Text            =   "Text1"
      Top             =   5880
      Visible         =   0   'False
      Width           =   615
   End
   Begin VB.CommandButton Command2 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      Cancel          =   -1  'True
      Caption         =   "Close"
      Height          =   255
      Left            =   4200
      TabIndex        =   15
      Top             =   5880
      Width           =   855
   End
   Begin VB.CommandButton Command1 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      Caption         =   "Save"
      Height          =   255
      Left            =   3240
      TabIndex        =   14
      Top             =   5880
      Width           =   855
   End
   Begin VB.Frame Frame2 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      Caption         =   "Notes"
      ForeColor       =   &H80000008&
      Height          =   2655
      Left            =   120
      TabIndex        =   16
      Top             =   3120
      Width           =   4935
      Begin VB.TextBox txtNotes 
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
         Height          =   2175
         Left            =   120
         MultiLine       =   -1  'True
         ScrollBars      =   2  'Vertical
         TabIndex        =   13
         Top             =   360
         Width           =   4695
      End
   End
   Begin VB.Frame Frame1 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      Caption         =   "About"
      ForeColor       =   &H80000008&
      Height          =   2895
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   4935
      Begin VB.TextBox txtF16 
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
         Left            =   960
         TabIndex        =   3
         Text            =   "F16"
         Top             =   1080
         Width           =   3855
      End
      Begin VB.TextBox txtF15 
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
         Left            =   960
         TabIndex        =   2
         Text            =   "F15"
         Top             =   720
         Width           =   3855
      End
      Begin VB.TextBox txtF14 
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
         Left            =   2880
         TabIndex        =   5
         Text            =   "F14"
         Top             =   1440
         Width           =   615
      End
      Begin VB.TextBox txtF9 
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
         Left            =   3600
         TabIndex        =   11
         Text            =   "F9"
         Top             =   2040
         Width           =   1215
      End
      Begin VB.TextBox txtF10 
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
         Left            =   3600
         TabIndex        =   12
         Text            =   "F10"
         Top             =   2400
         Width           =   1215
      End
      Begin VB.TextBox txtF13 
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
         Left            =   2280
         TabIndex        =   10
         Text            =   "F13"
         Top             =   2400
         Width           =   1215
      End
      Begin VB.TextBox txtF12 
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
         Left            =   2280
         TabIndex        =   9
         Text            =   "F12"
         Top             =   2040
         Width           =   1215
      End
      Begin VB.TextBox txtF4 
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
         Left            =   960
         TabIndex        =   4
         Text            =   "F4"
         Top             =   1440
         Width           =   1215
      End
      Begin VB.TextBox txtF8 
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
         Left            =   4200
         TabIndex        =   6
         Text            =   "F8"
         Top             =   1440
         Width           =   615
      End
      Begin VB.TextBox txtF7 
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
         Left            =   960
         TabIndex        =   8
         Text            =   "F7"
         Top             =   2400
         Width           =   1215
      End
      Begin VB.TextBox txtF6 
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
         Left            =   960
         TabIndex        =   7
         Text            =   "F6"
         Top             =   2040
         Width           =   1215
      End
      Begin VB.TextBox txtF2 
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
         Left            =   960
         TabIndex        =   1
         Text            =   "F2"
         Top             =   360
         Width           =   3855
      End
      Begin VB.TextBox txtF1 
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
         Left            =   1440
         TabIndex        =   17
         Text            =   "F1"
         Top             =   360
         Visible         =   0   'False
         Width           =   615
      End
      Begin VB.Label Label4 
         Alignment       =   1  'Right Justify
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         Caption         =   "Desc:"
         ForeColor       =   &H80000008&
         Height          =   255
         Left            =   120
         TabIndex        =   30
         Top             =   1080
         Width           =   735
      End
      Begin VB.Label Label3 
         Alignment       =   1  'Right Justify
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         Caption         =   "Other(s):"
         ForeColor       =   &H80000008&
         Height          =   255
         Left            =   120
         TabIndex        =   27
         Top             =   720
         Width           =   735
      End
      Begin VB.Label lblF14 
         Alignment       =   1  'Right Justify
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         Caption         =   "B-V:"
         ForeColor       =   &H80000008&
         Height          =   255
         Left            =   2280
         TabIndex        =   26
         Top             =   1440
         Width           =   495
      End
      Begin VB.Label lblAlt 
         Alignment       =   2  'Center
         BackColor       =   &H00FFFFFF&
         Caption         =   "Proper Motion"
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   3600
         TabIndex        =   25
         Top             =   1800
         Width           =   1215
      End
      Begin VB.Label Label2 
         Alignment       =   2  'Center
         BackColor       =   &H00FFFFFF&
         Caption         =   "JNow"
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   2280
         TabIndex        =   24
         Top             =   1800
         Width           =   1215
      End
      Begin VB.Label Label1 
         Alignment       =   2  'Center
         BackColor       =   &H00FFFFFF&
         Caption         =   "J2000"
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   960
         TabIndex        =   23
         Top             =   1800
         Width           =   1215
      End
      Begin VB.Label lblF4 
         Alignment       =   1  'Right Justify
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         Caption         =   "Class:"
         ForeColor       =   &H80000008&
         Height          =   255
         Left            =   120
         TabIndex        =   22
         Top             =   1440
         Width           =   735
      End
      Begin VB.Label lblF8 
         Alignment       =   1  'Right Justify
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         Caption         =   "Mag:"
         ForeColor       =   &H80000008&
         Height          =   255
         Left            =   3600
         TabIndex        =   21
         Top             =   1440
         Width           =   495
      End
      Begin VB.Label lblF7 
         Alignment       =   1  'Right Justify
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         Caption         =   "Dec:"
         ForeColor       =   &H80000008&
         Height          =   255
         Left            =   120
         TabIndex        =   20
         Top             =   2400
         Width           =   735
      End
      Begin VB.Label lblF6 
         Alignment       =   1  'Right Justify
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         Caption         =   "RA:"
         ForeColor       =   &H80000008&
         Height          =   255
         Left            =   120
         TabIndex        =   19
         Top             =   2040
         Width           =   735
      End
      Begin VB.Label lblF2 
         Alignment       =   1  'Right Justify
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         Caption         =   "Name:"
         ForeColor       =   &H80000008&
         Height          =   255
         Left            =   120
         TabIndex        =   18
         Top             =   360
         Width           =   735
      End
   End
End
Attribute VB_Name = "Info"
Attribute VB_Creatable = False
Attribute VB_Exposed = False
Dim OkayToPaint As Integer

Private Sub Command1_Click()

    Dim FName As String
    Dim RecNum As Long
    Dim RecSup As Long
    Dim PlateNum As Integer
    Dim MyStar As StarDataIN
    Dim MyDSO As DSOData
    Dim MySup As StarSupData
    Dim PlateFile As String
    
    Rem * UPDATE STAR DATA *
    If Right(Info.Frame1.Caption, 6) = "(STAR)" Then
        RecNum = Val(Info.txtRecord.Text)
        PlateNum = Val(Info.txtPlate.Text)
        If RecNum > 0 And PlateNum > 0 Then
            
            PlateFile = Plates(PlateNum).FileName
            
            Open DataPath & PlateFile For Binary Access Read As #3
            Get #3, (RecNum - 1) * Len(MyStar) + 1, MyStar
            Close #3
            
            MyStar.Label = Trim(txtF2.Text)
            MyStar.BV = Val(txtF14.Text)
            MyStar.Mag = Val(txtF8.Text)
            MyStar.PMRA = Val(txtF9.Text)
            MyStar.PMDec = Val(txtF10.Text)
            MyStar.RA = DecRA(txtF6.Text)
            MyStar.Dec = DecDec(txtF7.Text)
            
            Open DataPath & PlateFile For Binary Access Write As #3
            Put #3, (RecNum - 1) * Len(MyStar) + 1, MyStar
            Close #3
            
            If MyStar.Mag < 6.5 Then
            
                Rem * SAVE SUPPLEMENTAL DATA *
                
                Open DataPath & "STARS.SUP" For Binary Access Read Write As #3
                
                RecSup = 1
                Get #3, , MySup
                
                Do While Not EOF(3)
                
                    If MySup.ID = MyStar.ID Then
                        MySup.Other = Trim(txtF15.Text)
                        MySup.Desc = Trim(txtF16.Text)
                        MySup.Class = Trim(txtF4.Text)
                        Put #3, (RecSup - 1) * Len(MySup) + 1, MySup
                        Exit Do
                    Else
                        RecSup = RecSup + 1
                        Get #3, , MySup
                    End If
                    
                Loop
                
                Close #3
                        
            End If
            
        End If
        
    ElseIf Right(Info.Frame1.Caption, 5) = "(DSO)" Then
    
        RecNum = Val(Info.txtRecord.Text)
        If RecNum > 0 Then
        
            Open DataPath & "DSOS.DAT" For Binary Access Read As #3
            Get #3, (RecNum - 1) * Len(MyDSO) + 1, MyDSO
            Close #3
            
            MyDSO.Label = Trim(txtF2.Text)
            MyDSO.Other = Trim(txtF15.Text)
            MyDSO.Desc = Trim(txtF16.Text)
            MyDSO.Class = Trim(txtF4.Text)
            MyDSO.PA = Val(txtF14.Text)
            MyDSO.Mag = Val(txtF8.Text)
            If Right(Trim(txtF9.Text), 1) = Chr(176) Then
                MyDSO.MaxSz = Val(txtF9.Text)
            ElseIf Right(Trim(txtF9.Text), 1) = "'" Then
                MyDSO.MaxSz = Val(txtF9.Text) / 60
            Else
                MyDSO.MaxSz = Val(txtF9.Text) / 3600
            End If
            If Right(Trim(txtF10.Text), 1) = Chr(176) Then
                MyDSO.MinSz = Val(txtF10.Text)
            ElseIf Right(Trim(txtF10.Text), 1) = "'" Then
                MyDSO.MinSz = Val(txtF10.Text) / 60
            Else
                MyDSO.MinSz = Val(txtF10.Text) / 3600
            End If
            MyDSO.RA = DecRA(txtF6.Text)
            MyDSO.Dec = DecDec(txtF7.Text)
            
            Open DataPath & "DSOS.DAT" For Binary Access Write As #3
            Put #3, (RecNum - 1) * Len(MyDSO) + 1, MyDSO
            Close #3
            
        End If
        
    End If
            
    Rem * SAVE NOTES *

    If Right(Info.Frame1.Caption, 6) = "(STAR)" Then
        FName = "S" + Trim(Info.txtF1.Text) + ".txt"
    ElseIf Right(Info.Frame1.Caption, 5) = "(DSO)" Then
        FName = "D" + Trim(Info.txtF1.Text) + ".txt"
    ElseIf Right(Info.Frame1.Caption, 8) = "(CUSTOM)" Then
        FName = "C" + Trim(Info.txtF1.Text) + ".txt"
    End If

    Open DataPath & FName For Output Access Write As #3

    Print #3, txtNotes.Text

    Close #3

    OkayToPaint = 1
    Main.AutoRedraw = False
    Info.Hide
    
End Sub

Private Sub Command2_Click()
    OkayToPaint = 1
    Main.AutoRedraw = False
    Info.Hide
End Sub


Private Sub Form_Load()
    OkayToPaint = 1
End Sub

Private Sub Form_Paint()

    Main.AutoRedraw = True
    
    If OkayToPaint = 1 Then
    
        Dim FName As String
        Dim Buffer As String * 1
        Dim Result As Integer
        Dim FileExists As Integer
        
        Rem * GRAB NOTES IF THEY EXIST *
    
        txtNotes.Text = ""
    
        If Right(Info.Frame1.Caption, 6) = "(STAR)" Then
            FName = "S" + Trim(Info.txtF1.Text) + ".txt"
        ElseIf Right(Info.Frame1.Caption, 5) = "(DSO)" Then
            FName = "D" + Trim(Info.txtF1.Text) + ".txt"
        ElseIf Right(Info.Frame1.Caption, 8) = "(CUSTOM)" Then
            FName = "C" + Trim(Info.txtF1.Text) + ".txt"
        End If
    
        FileExists = 1
        
        On Error GoTo ErrorHandler
        Result = GetAttr(DataPath & FName)
        On Error GoTo 0
        
        If FileExists = 1 Then
        
            Open DataPath & FName For Binary Access Read As #3
        
            Do While Not EOF(3)
        
                Get #3, , Buffer
                If Asc(Buffer) = 13 Then
                    txtNotes.Text = txtNotes.Text + Chr(13) + Chr(10)
                ElseIf Asc(Buffer) <> 10 Then
                    txtNotes.Text = txtNotes.Text + Buffer
                End If
        
            Loop
        
            Close #3
            
        End If
        
        txtNotes.SetFocus

        OkayToPaint = 0
        
    End If
    
    Exit Sub
    
ErrorHandler:

    FileExists = 0
    Resume Next

End Sub

