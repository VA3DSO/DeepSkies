VERSION 4.00
Begin VB.Form EyePiece 
   Appearance      =   0  'Flat
   BackColor       =   &H80000005&
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Eyepiece FOV"
   ClientHeight    =   3255
   ClientLeft      =   5700
   ClientTop       =   4410
   ClientWidth     =   4215
   ControlBox      =   0   'False
   Height          =   3765
   Left            =   5640
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3255
   ScaleWidth      =   4215
   ShowInTaskbar   =   0   'False
   Top             =   3960
   Width           =   4335
   Begin VB.TextBox txtEPLabel 
      Height          =   285
      Left            =   2160
      TabIndex        =   19
      Top             =   2160
      Width           =   1575
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Recalc"
      Height          =   255
      Left            =   1920
      TabIndex        =   7
      Top             =   2880
      Width           =   855
   End
   Begin VB.TextBox txtEPFOV 
      Height          =   285
      Left            =   2160
      TabIndex        =   2
      Top             =   480
      Width           =   1575
   End
   Begin VB.CommandButton Command1 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      Caption         =   "Close"
      Height          =   255
      Left            =   2880
      TabIndex        =   8
      Top             =   2880
      Width           =   855
   End
   Begin VB.CheckBox Check1 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      Caption         =   "Yes"
      ForeColor       =   &H80000008&
      Height          =   255
      Left            =   2160
      TabIndex        =   6
      Top             =   2520
      Width           =   1215
   End
   Begin VB.TextBox txtAFOV 
      Height          =   285
      Left            =   2160
      TabIndex        =   5
      Top             =   1680
      Width           =   1575
   End
   Begin VB.TextBox txtMag 
      Height          =   285
      Left            =   2160
      TabIndex        =   4
      Top             =   1320
      Width           =   1575
   End
   Begin VB.TextBox txtScopeFL 
      Height          =   285
      Left            =   2160
      TabIndex        =   3
      Top             =   840
      Width           =   1575
   End
   Begin VB.TextBox txtEPFL 
      Height          =   285
      Left            =   2160
      TabIndex        =   1
      Top             =   120
      Width           =   1575
   End
   Begin VB.Label Label12 
      Alignment       =   1  'Right Justify
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      Caption         =   "Eyepiece Label:"
      ForeColor       =   &H80000008&
      Height          =   255
      Left            =   120
      TabIndex        =   20
      Top             =   2160
      Width           =   1935
   End
   Begin VB.Label Label11 
      Alignment       =   1  'Right Justify
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      Caption         =   "Eyepiece Field of View:"
      ForeColor       =   &H80000008&
      Height          =   255
      Left            =   120
      TabIndex        =   18
      Top             =   480
      Width           =   1935
   End
   Begin VB.Label Label10 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      Caption         =   "°"
      ForeColor       =   &H80000008&
      Height          =   255
      Left            =   3840
      TabIndex        =   17
      Top             =   480
      Width           =   255
   End
   Begin VB.Line Line2 
      X1              =   2160
      X2              =   3720
      Y1              =   2040
      Y2              =   2040
   End
   Begin VB.Label Label9 
      Alignment       =   1  'Right Justify
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      Caption         =   "Display Eyepiece FOV?"
      ForeColor       =   &H80000008&
      Height          =   255
      Left            =   120
      TabIndex        =   16
      Top             =   2520
      Width           =   1935
   End
   Begin VB.Label Label8 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      Caption         =   "°"
      ForeColor       =   &H80000008&
      Height          =   255
      Left            =   3840
      TabIndex        =   15
      Top             =   1680
      Width           =   255
   End
   Begin VB.Label Label7 
      Alignment       =   1  'Right Justify
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      Caption         =   "= Actual Field of View:"
      ForeColor       =   &H80000008&
      Height          =   255
      Left            =   120
      TabIndex        =   14
      Top             =   1680
      Width           =   1935
   End
   Begin VB.Label Label6 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      Caption         =   "x"
      ForeColor       =   &H80000008&
      Height          =   255
      Left            =   3840
      TabIndex        =   13
      Top             =   1320
      Width           =   255
   End
   Begin VB.Label Label5 
      Alignment       =   1  'Right Justify
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      Caption         =   "= Magnification:"
      ForeColor       =   &H80000008&
      Height          =   255
      Left            =   120
      TabIndex        =   12
      Top             =   1320
      Width           =   1935
   End
   Begin VB.Line Line1 
      X1              =   2160
      X2              =   3720
      Y1              =   1200
      Y2              =   1200
   End
   Begin VB.Label Label4 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      Caption         =   "mm"
      ForeColor       =   &H80000008&
      Height          =   255
      Left            =   3840
      TabIndex        =   11
      Top             =   840
      Width           =   255
   End
   Begin VB.Label Label3 
      Alignment       =   1  'Right Justify
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      Caption         =   "Telescope Focal Length:"
      ForeColor       =   &H80000008&
      Height          =   255
      Left            =   120
      TabIndex        =   10
      Top             =   840
      Width           =   1935
   End
   Begin VB.Label Label2 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      Caption         =   "mm"
      ForeColor       =   &H80000008&
      Height          =   255
      Left            =   3840
      TabIndex        =   9
      Top             =   120
      Width           =   255
   End
   Begin VB.Label Label1 
      Alignment       =   1  'Right Justify
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      Caption         =   "Eyepiece Focal Length:"
      ForeColor       =   &H80000008&
      Height          =   255
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   1935
   End
End
Attribute VB_Name = "EyePiece"
Attribute VB_Creatable = False
Attribute VB_Exposed = False
Option Explicit

Private Sub Command1_Click()
    
    epFL = Val(txtEPFL.Text)
    epFOV = Val(txtEPFOV.Text)
    epTelFL = Val(txtScopeFL.Text)
    epLabel = Trim(txtEPLabel.Text)
    
    If togFOV = 0 And Check1.value = 1 Then
        togFOV = 1
    ElseIf togFOV = 1 And Check1.value = 0 Then
        togFOV = 0
    End If
    
    Main.AutoRedraw = False
    EyePiece.Hide

End Sub


Private Sub Command2_Click()

    Dim MyEPMag As Double
    Dim MyAFOV As Double
    
    MyEPMag = Val(txtScopeFL.Text) / Val(txtEPFL.Text)
    MyAFOV = Val(txtEPFOV.Text) / MyEPMag
    
    txtMag.Text = Format(MyEPMag, "##0.00")
    txtAFOV.Text = Format(MyAFOV, "##0.00")
    
End Sub

Private Sub Form_Paint()

    Dim MyEPMag As Double
    Dim MyAFOV As Double
    
    Main.AutoRedraw = True
    
    Rem *** POPULATE FIELDS ***
    Check1.value = togFOV
    txtEPFL.Text = Format(epFL, "##0.00")
    txtEPFOV.Text = Format(epFOV, "##0.00")
    txtScopeFL.Text = Format(epTelFL, "##0.00")
    txtEPLabel.Text = Trim(epLabel)
    
    MyEPMag = Val(epTelFL) / Val(epFL)
    MyAFOV = Val(epFOV) / MyEPMag
    
    txtMag.Text = Format(MyEPMag, "##0.00")
    txtAFOV.Text = Format(MyAFOV, "##0.00")
    
End Sub


