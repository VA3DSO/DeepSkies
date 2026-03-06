VERSION 4.00
Begin VB.Form Legend 
   Appearance      =   0  'Flat
   BackColor       =   &H00000000&
   BorderStyle     =   0  'None
   Caption         =   "Legend"
   ClientHeight    =   3840
   ClientLeft      =   4395
   ClientTop       =   2820
   ClientWidth     =   3135
   ClipControls    =   0   'False
   ControlBox      =   0   'False
   ForeColor       =   &H00FFFFFF&
   Height          =   4350
   Left            =   4335
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3840
   ScaleWidth      =   3135
   ShowInTaskbar   =   0   'False
   Top             =   2370
   Width           =   3255
   Begin VB.CommandButton Command1 
      Caption         =   "Close"
      Height          =   255
      Left            =   1080
      TabIndex        =   6
      Top             =   3480
      Width           =   855
   End
   Begin VB.Label Label7 
      Alignment       =   2  'Center
      BackColor       =   &H00000000&
      Caption         =   "Legend"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   375
      Left            =   240
      TabIndex        =   7
      Top             =   120
      Width           =   2655
   End
   Begin VB.Label Label6 
      Alignment       =   1  'Right Justify
      BackColor       =   &H00000000&
      Caption         =   "Dark Nebula:"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   120
      TabIndex        =   5
      Top             =   3000
      Width           =   1575
   End
   Begin VB.Label Label5 
      Alignment       =   1  'Right Justify
      BackColor       =   &H00000000&
      Caption         =   "Emmision Nebula:"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   120
      TabIndex        =   4
      Top             =   2520
      Width           =   1575
   End
   Begin VB.Label Label4 
      Alignment       =   1  'Right Justify
      BackColor       =   &H00000000&
      Caption         =   "Planetary Nebula:"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   120
      TabIndex        =   3
      Top             =   2040
      Width           =   1575
   End
   Begin VB.Label Label3 
      Alignment       =   1  'Right Justify
      BackColor       =   &H00000000&
      Caption         =   "Open Cluster:"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   120
      TabIndex        =   2
      Top             =   1560
      Width           =   1575
   End
   Begin VB.Label Label2 
      Alignment       =   1  'Right Justify
      BackColor       =   &H00000000&
      Caption         =   "Globular Cluster:"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   120
      TabIndex        =   1
      Top             =   1080
      Width           =   1575
   End
   Begin VB.Label Label1 
      Alignment       =   1  'Right Justify
      BackColor       =   &H00000000&
      Caption         =   "Galaxy:"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   120
      TabIndex        =   0
      Top             =   600
      Width           =   1575
   End
End
Attribute VB_Name = "Legend"
Attribute VB_Creatable = False
Attribute VB_Exposed = False
Private Sub Command1_Click()
    Main.AutoRedraw = False
    Legend.Hide
End Sub

Private Sub Form_Paint()

    Main.AutoRedraw = True
    
    Legend.Line (0, 0)-(Legend.ScaleWidth - 1, Legend.ScaleHeight - 1), QBColor(7), B
    
    Rem * PAINT SYMBOLS *
    x = 160
    Y = 46
    
    With Legend
    
        Rem * GALAXY *
        Circle (x, Y), 5, Color.DSOGALXY, , , 0.5
        Y = Y + 32
        
        Rem * GLOBULAR CLUSTER *
        Circle (x, Y), 3, Color.DSOGLOCL
        Line (x, Y - 2)-(x, Y + 3), Color.DSOGLOCL
        Line (x - 2, Y)-(x + 3, Y), Color.DSOGLOCL
        Y = Y + 32
        
        Rem * OPEN CLUSTER *
        Circle (x, Y), 3, Color.DSOOPNCL
        Y = Y + 32
        
        Rem * PLANETARY NEBULA *
        Circle (x, Y), 3, Color.DSOPLNEB
        Y = Y + 32
        
        Rem * EMMISION NEBULA *
        Circle (x, Y), 3, Color.DSOEMNEB
        Y = Y + 32
        
        Rem * DARK NEBULA *
        Line (x - 2, Y - 2)-(x + 2, Y + 2), Color.DSODKNEB, B
    End With
    
End Sub


