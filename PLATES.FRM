VERSION 4.00
Begin VB.Form ShowPlates 
   Appearance      =   0  'Flat
   BackColor       =   &H80000005&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Which Plates Are Loaded?"
   ClientHeight    =   5535
   ClientLeft      =   2550
   ClientTop       =   2280
   ClientWidth     =   9135
   ControlBox      =   0   'False
   Height          =   6045
   Left            =   2490
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   5535
   ScaleWidth      =   9135
   ShowInTaskbar   =   0   'False
   Top             =   1830
   Width           =   9255
   Begin VB.CommandButton Command1 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      Caption         =   "Close"
      Height          =   255
      Left            =   8160
      TabIndex        =   1
      Top             =   5160
      Width           =   855
   End
   Begin VB.TextBox txtPlates 
      Appearance      =   0  'Flat
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Lucida Console"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   4935
      Left            =   120
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   0
      Top             =   120
      Width           =   8895
   End
End
Attribute VB_Name = "ShowPlates"
Attribute VB_Creatable = False
Attribute VB_Exposed = False
Option Explicit

Private Sub Command1_Click()
    Main.AutoRedraw = False
    ShowPlates.Hide
End Sub


Private Sub Form_Paint()

    Dim Msg As String
    Dim t As Integer
    Dim Noun As String
    
    Main.AutoRedraw = True
    
    For t = 1 To 37
    
        If Plates(t).doLoad = True Then
        
            Msg = Msg & "Plate " & Trim(Str(t)) & "(" & Plates(t).MinRA & "," & _
                Plates(t).MaxRA & "," & Plates(t).MinDec & "," & Plates(t).MaxDec & _
                ") - Yes" & "     "
            
        Else
        
            Msg = Msg & "Plate " & Trim(Str(t)) & "(" & Plates(t).MinRA & "," & _
                Plates(t).MaxRA & "," & Plates(t).MinDec & "," & Plates(t).MaxDec & _
                ") - No" & "      "

        End If
        
        If Plates(t + 37).doLoad = True Then
        
            Msg = Msg & "Plate " & Trim(Str(t + 37)) & "(" & Plates(t + 37).MinRA & "," & _
                Plates(t + 37).MaxRA & "," & Plates(t + 37).MinDec & "," & Plates(t + 37).MaxDec & _
                ") - Yes" & vbCrLf
            
        Else
        
            Msg = Msg & "Plate " & Trim(Str(t + 37)) & "(" & Plates(t + 37).MinRA & "," & _
                Plates(t + 37).MaxRA & "," & Plates(t + 37).MinDec & "," & Plates(t + 37).MaxDec & _
                ") - No" & vbCrLf

        End If
        
    Next t
    
    ShowPlates.txtPlates.Text = Msg

End Sub


