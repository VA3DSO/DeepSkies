VERSION 4.00
Begin VB.Form About 
   Appearance      =   0  'Flat
   BackColor       =   &H80000005&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "About DeepSkies"
   ClientHeight    =   2850
   ClientLeft      =   2520
   ClientTop       =   2085
   ClientWidth     =   4590
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
   Height          =   3360
   Icon            =   "ABOUT.frx":0000
   Left            =   2460
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2850
   ScaleWidth      =   4590
   Top             =   1635
   Width           =   4710
   Begin VB.TextBox Text1 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BorderStyle     =   0  'None
      Height          =   495
      Left            =   600
      MultiLine       =   -1  'True
      TabIndex        =   4
      Text            =   "ABOUT.frx":030A
      Top             =   1920
      Width           =   3495
   End
   Begin VB.PictureBox Picture1 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      ForeColor       =   &H80000008&
      Height          =   510
      Left            =   2040
      Picture         =   "ABOUT.frx":033C
      ScaleHeight     =   32
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   32
      TabIndex        =   2
      Top             =   120
      Width           =   510
   End
   Begin VB.CommandButton Command1 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      Caption         =   "&OK"
      Height          =   255
      Left            =   1920
      TabIndex        =   0
      Top             =   2520
      Width           =   855
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      Caption         =   "by Rick Towns http://www.deepskies.com/"
      ForeColor       =   &H80000008&
      Height          =   495
      Left            =   1080
      TabIndex        =   3
      Top             =   1320
      Width           =   2415
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      Caption         =   "DeepSkies for Windows 32-Bit Version x.xx"
      ForeColor       =   &H80000008&
      Height          =   495
      Left            =   1080
      TabIndex        =   1
      Top             =   720
      Width           =   2415
   End
End
Attribute VB_Name = "About"
Attribute VB_Creatable = False
Attribute VB_Exposed = False
Private Sub Command1_Click()
    About.Hide
End Sub

Private Sub Form_Paint()

    Dim Star As StarDataIN
    Dim DSO As DSOData
    
    Dim cntDSOs As Long
    Dim cntStars As Long
    Dim i As Integer
    Dim FileName As String
    
    Label1.Caption = "DeepSkies for Windows 32-Bit Version " & Trim(Str(VersionNo))

    Rem * COUNT OBJECTS *
    Open DataPath & "DSOS.DAT" For Binary Access Read As #3
    cntDSOs = LOF(3) / Len(DSO)
    Close #3
    
    cntStars = 0
    
    For i = 1 To 74
    
        If i < 10 Then
            FileName = "PLATE0" & Trim(Str(i)) & ".DAT"
        Else
            FileName = "PLATE" & Trim(Str(i)) & ".DAT"
        End If
        
        Open DataPath & FileName For Binary Access Read As #3
        cntStars = cntStars + (LOF(3) / Len(Star))
        Close #3
        
    Next i
    
    Text1.Text = "Deep Sky Objects: " & Format(cntDSOs, "###,###,###") & vbCrLf & _
        "Stars Loaded: " & Format(cntStars, "###,###,###,###,###")
    
End Sub

Private Sub Label3_Click()

End Sub


