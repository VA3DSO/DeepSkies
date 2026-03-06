VERSION 4.00
Begin VB.Form AltList 
   Appearance      =   0  'Flat
   BackColor       =   &H80000005&
   Caption         =   "Observing List"
   ClientHeight    =   9225
   ClientLeft      =   1680
   ClientTop       =   1800
   ClientWidth     =   10230
   Height          =   9630
   Left            =   1620
   LinkTopic       =   "Form1"
   ScaleHeight     =   9225
   ScaleWidth      =   10230
   Top             =   1455
   Width           =   10350
   Begin VB.OLE OLE1 
      Appearance      =   0  'Flat
      Class           =   "Excel.Sheet.8"
      Height          =   18525
      Left            =   240
      OleObjectBlob   =   "ALTLIST.frx":0000
      SizeMode        =   3  'Zoom
      SourceDoc       =   "D:\PROGRAMS\DSWIN32\DATA\LIST.XLS"
      TabIndex        =   0
      Top             =   240
      Width           =   11070
   End
End
Attribute VB_Name = "AltList"
Attribute VB_Creatable = False
Attribute VB_Exposed = False
Option Explicit

