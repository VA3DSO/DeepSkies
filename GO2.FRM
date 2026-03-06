VERSION 4.00
Begin VB.Form Go2 
   Appearance      =   0  'Flat
   BackColor       =   &H80000005&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "GoTo..."
   ClientHeight    =   5655
   ClientLeft      =   1230
   ClientTop       =   1710
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
   Height          =   6165
   Left            =   1170
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   5655
   ScaleWidth      =   5055
   Top             =   1260
   Width           =   5175
   Begin VB.Frame Frame2 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      Caption         =   "Decimal Coordinates"
      ForeColor       =   &H80000008&
      Height          =   2655
      Left            =   120
      TabIndex        =   33
      Top             =   2880
      Width           =   4815
      Begin VB.CommandButton Command4 
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         Caption         =   "GoTo"
         Height          =   255
         Left            =   2880
         TabIndex        =   17
         Top             =   2280
         Width           =   855
      End
      Begin VB.TextBox txtRAdec 
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
         Left            =   1920
         TabIndex        =   13
         Top             =   360
         Width           =   2295
      End
      Begin VB.TextBox txtDecdec 
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
         Left            =   1920
         TabIndex        =   14
         Top             =   840
         Width           =   2295
      End
      Begin VB.CommandButton Command3 
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         Cancel          =   -1  'True
         Caption         =   "Cancel"
         Height          =   255
         Left            =   3840
         TabIndex        =   18
         Top             =   2280
         Width           =   855
      End
      Begin VB.TextBox txtFOVdec 
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
         Left            =   1920
         TabIndex        =   15
         Top             =   1320
         Width           =   2295
      End
      Begin VB.TextBox txtMagdec 
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
         Left            =   1920
         TabIndex        =   16
         Top             =   1800
         Width           =   495
      End
      Begin VB.Label Label28 
         Alignment       =   1  'Right Justify
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         Caption         =   "Right Ascension:"
         ForeColor       =   &H80000008&
         Height          =   255
         Left            =   240
         TabIndex        =   38
         Top             =   360
         Width           =   1575
      End
      Begin VB.Label Label27 
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         Caption         =   "h"
         ForeColor       =   &H80000008&
         Height          =   255
         Left            =   4320
         TabIndex        =   39
         Top             =   360
         Width           =   255
      End
      Begin VB.Label Label24 
         Alignment       =   1  'Right Justify
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         Caption         =   "Declination:"
         ForeColor       =   &H80000008&
         Height          =   255
         Left            =   240
         TabIndex        =   40
         Top             =   840
         Width           =   1575
      End
      Begin VB.Label Label23 
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         Caption         =   "d"
         ForeColor       =   &H80000008&
         Height          =   255
         Left            =   4320
         TabIndex        =   41
         Top             =   840
         Width           =   255
      End
      Begin VB.Label Label18 
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         Caption         =   "d"
         ForeColor       =   &H80000008&
         Height          =   255
         Left            =   4320
         TabIndex        =   37
         Top             =   1320
         Width           =   255
      End
      Begin VB.Label Label17 
         Alignment       =   1  'Right Justify
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         Caption         =   "Field of View:"
         ForeColor       =   &H80000008&
         Height          =   255
         Left            =   240
         TabIndex        =   36
         Top             =   1320
         Width           =   1575
      End
      Begin VB.Label Label16 
         Alignment       =   1  'Right Justify
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         Caption         =   "Limiting Magnitude:"
         ForeColor       =   &H80000008&
         Height          =   255
         Left            =   120
         TabIndex        =   35
         Top             =   1800
         Width           =   1695
      End
      Begin VB.Label Label15 
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         Caption         =   "mag"
         ForeColor       =   &H80000008&
         Height          =   255
         Left            =   2520
         TabIndex        =   34
         Top             =   1800
         Width           =   735
      End
   End
   Begin VB.CommandButton Command1 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      Caption         =   "GoTo"
      Default         =   -1  'True
      Height          =   255
      Left            =   3000
      TabIndex        =   11
      Top             =   2400
      Width           =   855
   End
   Begin VB.Frame Frame1 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      Caption         =   "Indexed Coordinates"
      ForeColor       =   &H80000008&
      Height          =   2655
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   4815
      Begin VB.TextBox txtMag 
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
         Left            =   1920
         TabIndex        =   10
         Top             =   1800
         Width           =   495
      End
      Begin VB.TextBox txtFOVD 
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
         Left            =   1920
         TabIndex        =   7
         Top             =   1320
         Width           =   495
      End
      Begin VB.TextBox txtFOVM 
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
         TabIndex        =   8
         Top             =   1320
         Width           =   495
      End
      Begin VB.TextBox txtFOVS 
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
         Left            =   3840
         TabIndex        =   9
         Top             =   1320
         Width           =   495
      End
      Begin VB.CommandButton Command2 
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         Caption         =   "Cancel"
         Height          =   255
         Left            =   3840
         TabIndex        =   12
         Top             =   2280
         Width           =   855
      End
      Begin VB.TextBox txtDecS 
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
         Left            =   3840
         TabIndex        =   6
         Top             =   840
         Width           =   495
      End
      Begin VB.TextBox txtDecM 
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
         Top             =   840
         Width           =   495
      End
      Begin VB.TextBox txtDecD 
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
         Left            =   1920
         TabIndex        =   4
         Top             =   840
         Width           =   495
      End
      Begin VB.TextBox txtRAs 
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
         Left            =   3840
         TabIndex        =   3
         Top             =   360
         Width           =   495
      End
      Begin VB.TextBox txtRAm 
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
         TabIndex        =   2
         Top             =   360
         Width           =   495
      End
      Begin VB.TextBox txtRAh 
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
         Left            =   1920
         TabIndex        =   1
         Top             =   360
         Width           =   495
      End
      Begin VB.Label Label14 
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         Caption         =   "mag"
         ForeColor       =   &H80000008&
         Height          =   255
         Left            =   2520
         TabIndex        =   32
         Top             =   1800
         Width           =   735
      End
      Begin VB.Label Label13 
         Alignment       =   1  'Right Justify
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         Caption         =   "Limiting Magnitude:"
         ForeColor       =   &H80000008&
         Height          =   255
         Left            =   120
         TabIndex        =   31
         Top             =   1800
         Width           =   1695
      End
      Begin VB.Label Label12 
         Alignment       =   1  'Right Justify
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         Caption         =   "Field of View:"
         ForeColor       =   &H80000008&
         Height          =   255
         Left            =   240
         TabIndex        =   30
         Top             =   1320
         Width           =   1575
      End
      Begin VB.Label Label11 
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         Caption         =   "d"
         ForeColor       =   &H80000008&
         Height          =   255
         Left            =   2520
         TabIndex        =   29
         Top             =   1320
         Width           =   255
      End
      Begin VB.Label Label10 
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         Caption         =   "'"
         ForeColor       =   &H80000008&
         Height          =   255
         Left            =   3480
         TabIndex        =   28
         Top             =   1320
         Width           =   255
      End
      Begin VB.Label Label1 
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         Caption         =   """"
         ForeColor       =   &H80000008&
         Height          =   255
         Left            =   4440
         TabIndex        =   27
         Top             =   1320
         Width           =   255
      End
      Begin VB.Label Label9 
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         Caption         =   """"
         ForeColor       =   &H80000008&
         Height          =   255
         Left            =   4440
         TabIndex        =   26
         Top             =   840
         Width           =   255
      End
      Begin VB.Label Label8 
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         Caption         =   "'"
         ForeColor       =   &H80000008&
         Height          =   255
         Left            =   3480
         TabIndex        =   25
         Top             =   840
         Width           =   255
      End
      Begin VB.Label Label7 
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         Caption         =   "d"
         ForeColor       =   &H80000008&
         Height          =   255
         Left            =   2520
         TabIndex        =   24
         Top             =   840
         Width           =   255
      End
      Begin VB.Label Label6 
         Alignment       =   1  'Right Justify
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         Caption         =   "Declination:"
         ForeColor       =   &H80000008&
         Height          =   255
         Left            =   240
         TabIndex        =   23
         Top             =   840
         Width           =   1575
      End
      Begin VB.Label Label5 
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         Caption         =   "s"
         ForeColor       =   &H80000008&
         Height          =   255
         Left            =   4440
         TabIndex        =   22
         Top             =   360
         Width           =   255
      End
      Begin VB.Label Label4 
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         Caption         =   "m"
         ForeColor       =   &H80000008&
         Height          =   255
         Left            =   3480
         TabIndex        =   21
         Top             =   360
         Width           =   255
      End
      Begin VB.Label Label3 
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         Caption         =   "h"
         ForeColor       =   &H80000008&
         Height          =   255
         Left            =   2520
         TabIndex        =   20
         Top             =   360
         Width           =   255
      End
      Begin VB.Label Label2 
         Alignment       =   1  'Right Justify
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         Caption         =   "Right Ascension:"
         ForeColor       =   &H80000008&
         Height          =   255
         Left            =   240
         TabIndex        =   19
         Top             =   360
         Width           =   1575
      End
   End
End
Attribute VB_Name = "Go2"
Attribute VB_Creatable = False
Attribute VB_Exposed = False
Dim OkayToPaint As Integer

Private Sub Command1_Click()
    
    MyRA = (Val(txtRAh.Text) + Val(txtRAm.Text) / 60 + Val(txtRAs.Text) / 3600) * 15
    MyDec = Val(txtDecD.Text) + Val(txtDecM.Text) / 60 + Val(txtDecS.Text) / 3600
    MyFOV = Val(txtFOVD.Text) + Val(txtFOVM.Text) / 60 + Val(txtFOVS.Text) / 3600
    MyMag = Val(txtMag.Text)
    
    OkayToPaint = 1
    Main.AutoRedraw = False
    Go2.Hide

End Sub

Private Sub Command2_Click()
    OkayToPaint = 1
    Main.AutoRedraw = False
    Go2.Hide
End Sub

Private Sub Command3_Click()
    OkayToPaint = 1
    Main.AutoRedraw = False
    Go2.Hide
End Sub

Private Sub Command4_Click()
    
    MyRA = Val(txtRAdec.Text)
    MyDec = Val(txtDecdec.Text)
    MyFOV = Val(txtFOVdec.Text)
    MyMag = Val(txtMagdec.Text)
    
    OkayToPaint = 1
    Main.AutoRedraw = False
    Go2.Hide

End Sub

Private Sub Form_Load()

    OkayToPaint = 1
    
End Sub

Private Sub Form_Paint()

    Main.AutoRedraw = True
    
    If OkayToPaint = 1 Then
        Dim thisRAh As Double
        Dim thisRAm As Double
        Dim thisRAs As Double
        Dim thisDecD As Double
        Dim thisDecM As Double
        Dim thisDecS As Double
        Dim thisMag As Double
    
        Label7.Caption = Chr(176)
        Label11.Caption = Chr(176)
    
        Rem * POPULATE FIELDS *
        thisRAh = MyRA / 15
        thisRAm = (thisRAh - Int(thisRAh)) * 60
        thisRAs = (thisRAm - Int(thisRAm)) * 60
        txtRAh = Trim(Str(Int(thisRAh)))
        txtRAm = Trim(Str(Int(thisRAm)))
        txtRAs = Trim(Str(Int(thisRAs * 10) / 10))
        thisDegD = MyDec
        thisDegM = (thisDegD - Int(thisDegD)) * 60
        thisDegS = (thisDegM - Int(thisDegM)) * 60
        txtDecD = Trim(Str(Int(thisDegD)))
        txtDecM = Trim(Str(Int(thisDegM)))
        txtDecS = Trim(Str(Int(thisDegS * 10) / 10))
        thisDegD = MyFOV
        thisDegM = (thisDegD - Int(thisDegD)) * 60
        thisDegS = (thisDegM - Int(thisDegM)) * 60
        txtFOVD = Trim(Str(Int(thisDegD)))
        txtFOVM = Trim(Str(Int(thisDegM)))
        txtFOVS = Trim(Str(Int(thisDegS * 10) / 10))
        thisMag = Int(MyMag * 10 + 0.5) / 10
        If thisMag = Int(thisMag) Then
            txtMag = Trim(Str(thisMag)) & ".0"
        Else
            txtMag = Trim(Str(thisMag))
        End If
        txtRAdec = Trim(Str(MyRA))
        txtDecdec = Trim(Str(MyDec))
        txtFOVdec = Trim(Str(MyFOV))
        txtMagdec = txtMag.Text
    
        txtRAm.SetFocus
        txtRAh.SetFocus
    
        OkayToPaint = 0
        
    End If

End Sub

Private Sub txtDecD_GotFocus()

    txtDecD.SelStart = 0
    txtDecD.SelLength = Len(txtDecD.Text)

End Sub

Private Sub txtDecdec_GotFocus()

    txtDecdec.SelStart = 0
    txtDecdec.SelLength = Len(txtDecdec.Text)

End Sub

Private Sub txtDecM_GotFocus()

    txtDecM.SelStart = 0
    txtDecM.SelLength = Len(txtDecM.Text)

End Sub

Private Sub txtDecS_GotFocus()

    txtDecS.SelStart = 0
    txtDecS.SelLength = Len(txtDecS.Text)

End Sub

Private Sub txtFOVD_GotFocus()

    txtFOVD.SelStart = 0
    txtFOVD.SelLength = Len(txtFOVD.Text)

End Sub

Private Sub txtFOVdec_GotFocus()

    txtFOVdec.SelStart = 0
    txtFOVdec.SelLength = Len(txtFOVdec.Text)

End Sub

Private Sub txtFOVM_GotFocus()

    txtFOVM.SelStart = 0
    txtFOVM.SelLength = Len(txtFOVM.Text)

End Sub

Private Sub txtFOVS_GotFocus()

    txtFOVS.SelStart = 0
    txtFOVS.SelLength = Len(txtFOVS.Text)

End Sub

Private Sub txtMag_GotFocus()

    txtMag.SelStart = 0
    txtMag.SelLength = Len(txtMag.Text)

End Sub

Private Sub txtMagdec_GotFocus()

    txtMagdec.SelStart = 0
    txtMagdec.SelLength = Len(txtMagdec.Text)

End Sub

Private Sub txtRAdec_GotFocus()

    txtRAdec.SelStart = 0
    txtRAdec.SelLength = Len(txtRAdec.Text)

End Sub

Private Sub txtRAh_GotFocus()

    txtRAh.SelStart = 0
    txtRAh.SelLength = Len(txtRAh.Text)

End Sub

Private Sub txtRAm_GotFocus()

    txtRAm.SelStart = 0
    txtRAm.SelLength = Len(txtRAm.Text)

End Sub

Private Sub txtRAs_GotFocus()

    txtRAs.SelStart = 0
    txtRAs.SelLength = Len(txtRAs.Text)

End Sub

