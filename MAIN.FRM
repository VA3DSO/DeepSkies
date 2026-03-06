VERSION 4.00
Begin VB.Form Main 
   Appearance      =   0  'Flat
   BackColor       =   &H00000000&
   Caption         =   "DeepSkies"
   ClientHeight    =   6630
   ClientLeft      =   1725
   ClientTop       =   2505
   ClientWidth     =   9600
   ClipControls    =   0   'False
   ForeColor       =   &H00FFFFFF&
   Height          =   7320
   Icon            =   "MAIN.frx":0000
   Left            =   1665
   LinkTopic       =   "Form1"
   ScaleHeight     =   6630
   ScaleWidth      =   9600
   Top             =   1875
   Width           =   9720
   Begin VB.Label StatusBar 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      Caption         =   "Status:"
      ForeColor       =   &H80000008&
      Height          =   215
      Left            =   0
      TabIndex        =   0
      Top             =   6960
      Width           =   10575
   End
   Begin VB.Menu menu_File 
      Caption         =   "&File"
      Begin VB.Menu menu_FileNew 
         Caption         =   "&New"
      End
      Begin VB.Menu menu_FileOpen 
         Caption         =   "&Open"
      End
      Begin VB.Menu menu_FileSave 
         Caption         =   "&Save"
      End
      Begin VB.Menu menu_FileSaveAs 
         Caption         =   "Save &As..."
      End
      Begin VB.Menu menu_FilePrint 
         Caption         =   "&Print"
      End
      Begin VB.Menu menu_FileSep1 
         Caption         =   "-"
      End
      Begin VB.Menu menu_Exit 
         Caption         =   "&Exit"
      End
   End
   Begin VB.Menu menu_Edit 
      Caption         =   "&Edit"
      Begin VB.Menu menu_EditGoTo 
         Caption         =   "&GoTo..."
         Shortcut        =   {F7}
      End
      Begin VB.Menu menu_EditSearch 
         Caption         =   "&Search..."
         Shortcut        =   {F3}
      End
   End
   Begin VB.Menu menu_View 
      Caption         =   "&View"
      Begin VB.Menu menu_ViewConstLines 
         Caption         =   "Constellation Lines"
         Checked         =   -1  'True
      End
      Begin VB.Menu menu_ViewConstLabels 
         Caption         =   "Constellation Labels"
         Checked         =   -1  'True
      End
      Begin VB.Menu menu_ViewConstBounds 
         Caption         =   "Constellation Boundaries"
         Checked         =   -1  'True
      End
      Begin VB.Menu menu_ViewGridlines 
         Caption         =   "Gridlines"
         Checked         =   -1  'True
      End
      Begin VB.Menu menu_GridlineLabels 
         Caption         =   "Gridline Labels"
         Checked         =   -1  'True
      End
      Begin VB.Menu menu_ViewStars 
         Caption         =   "Stars"
         Checked         =   -1  'True
      End
      Begin VB.Menu menu_ViewStarLabels 
         Caption         =   "Star Labels"
         Checked         =   -1  'True
      End
      Begin VB.Menu menu_ViewDimStarLabels 
         Caption         =   "Dim Star Labels"
      End
      Begin VB.Menu menu_ViewDSOs 
         Caption         =   "Deep Sky Objects"
         Checked         =   -1  'True
      End
      Begin VB.Menu menu_ViewDSOLabels 
         Caption         =   "Deep Sky Labels"
         Checked         =   -1  'True
      End
      Begin VB.Menu menu_ViewCustom 
         Caption         =   "Custom Objects"
         Checked         =   -1  'True
      End
      Begin VB.Menu menu_ViewCustomLabels 
         Caption         =   "Custom Object Labels"
         Checked         =   -1  'True
      End
      Begin VB.Menu menu_ViewAllOn 
         Caption         =   "All On"
      End
      Begin VB.Menu menu_ViewAllOff 
         Caption         =   "All Off"
      End
      Begin VB.Menu menu_ViewSep1 
         Caption         =   "-"
      End
      Begin VB.Menu menu_ViewEP 
         Caption         =   "Eyepiece FOV"
         Shortcut        =   {F8}
      End
   End
   Begin VB.Menu menu_Tools 
      Caption         =   "&Tools"
      Begin VB.Menu menu_ObservingLogs 
         Caption         =   "&Observing Logs"
         Shortcut        =   {F4}
      End
      Begin VB.Menu menu_ToolsCustom 
         Caption         =   "&Edit Custom Objects"
         Shortcut        =   {F5}
      End
      Begin VB.Menu menu_ToolsSep1 
         Caption         =   "-"
      End
      Begin VB.Menu menu_ToolsLoad 
         Caption         =   "&Load Defaults"
      End
      Begin VB.Menu menu_ToolsSave 
         Caption         =   "&Save Defaults"
      End
      Begin VB.Menu menu_ToolsPlates 
         Caption         =   "&Plates"
         Enabled         =   0   'False
         Shortcut        =   {F9}
         Visible         =   0   'False
      End
   End
   Begin VB.Menu menu_Help 
      Caption         =   "&Help"
      Begin VB.Menu menu_HelpInfo 
         Caption         =   "&Instructions"
         Shortcut        =   {F1}
      End
      Begin VB.Menu menu_HelpLegend 
         Caption         =   "&Legend"
         Shortcut        =   {F2}
      End
      Begin VB.Menu menu_HelpAbout 
         Caption         =   "&About DeepSkies"
      End
   End
End
Attribute VB_Name = "Main"
Attribute VB_Creatable = False
Attribute VB_Exposed = False
Dim OkayToPrint As Boolean

Private Sub Form_GotFocus()

    Main.AutoRedraw = False
    
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)

    OkayToPaint = True
    ProcessKeys KeyCode, Shift

End Sub

Private Sub Form_Load()

    Rem ********************************************************************************
    Rem *                      SOME SET UP AND INITIAL VALUES                          *
    Rem ********************************************************************************
    
    menu_ToolsLoad_Click
    InitializePlates
    InitializeConstellations
    togDimStarLabels = 0

    Rem *** EYEPIECE STUFF ***
    togFOV = 1
    epFL = 5
    epFOV = 55
    epTelFL = 714
    epLabel = "Orion 5mm"
    
    CurFile = "Untitled"
    Main.WindowState = 2    ' Maximized!
    PaintSky

End Sub

Private Sub Form_LostFocus()

    Main.AutoRedraw = True
    
End Sub

Private Sub Form_MouseDown(Button As Integer, Shift As Integer, mX As Single, mY As Single)

    Rem *** THIS SIGNALS TO THE PROGRAM TO ABORT WHATEVER IT IS CHEWING ON BECAUSE ***
    Rem *** THE USER HAS CLICKED THE MOUSE AND WE NEED TO MOVE ON TO THAT PROCESS. ***
    Abort = True

    If Button = 1 Then
        Rem * LEFT MOUSE BUTTON *
        xyConvert mX, mY
        MyRA = RA
        MyDec = Dec
        PaintSky
    End If

    If Button = 2 Then
        
        FindObjectAt mX, mY

    End If

End Sub

Private Sub Form_Paint()

    If FirstPaint = 0 Then
        FirstPaint = 1
        Cls
        PSet (1, 1), RGB(16, 16, 16)
        If Point(1, 1) = 0 Then
            Color16 = 1
        Else
            Color16 = 0
        End If
        InitializeColor
        PaintSky
    Else
        PaintSky
    End If

End Sub

Private Sub Form_Resize()

    If FirstPaint = 1 Then
        PaintSky
    End If

End Sub

Private Sub Form_Unload(Cancel As Integer)
    End
End Sub

Private Sub menu_EditGoTo_Click()

    Main.ScaleMode = Twips
    Go2.ScaleMode = Twips
    Go2.Top = Main.ScaleHeight / 2 - Go2.ScaleHeight / 2 - 50
    Go2.Left = Main.ScaleWidth / 2 - Go2.ScaleWidth / 2
    Go2.Show Modal

End Sub

Private Sub menu_EditSearch_Click()

    Main.ScaleMode = Twips
    Find.ScaleMode = Twips
    Find.Top = Main.ScaleHeight / 2 - Find.ScaleHeight / 2 - 50
    Find.Left = Main.ScaleWidth / 2 - Find.ScaleWidth / 2
    Find.Show Modal

End Sub

Private Sub menu_Exit_Click()
    End
End Sub

Private Sub menu_FileNew_Click()

    CurFile = "Untitled"
    MyRA = 0
    MyDec = 0
    MyMag = 6
    MyFOV = 100
    Main.Refresh
    
End Sub

Private Sub menu_FileOpen_Click()
    Main.ScaleMode = Twips
    FileDlg.ScaleMode = Twips
    FileDlg.Top = Main.ScaleHeight / 2 - FileDlg.ScaleHeight / 2 - 50
    FileDlg.Left = Main.ScaleWidth / 2 - FileDlg.ScaleWidth / 2
    FileDlg.Caption = "Open"
    FileDlg.Show Modal
End Sub

Private Sub menu_FilePrint_Click()
    
    Main.AutoRedraw = True
    StatusBar.Visible = False
    PaintSky
    
    On Error GoTo ErrorHandler
    Printer.Orientation = 2
    Main.PrintForm
    Printer.EndDoc
    On Error GoTo 0
    
    Main.AutoRedraw = False
    StatusBar.Visible = True
    Main.Refresh
    
    Exit Sub

ErrorHandler:
    MsgBox "The form can't be printed."
    Resume Next

End Sub

Private Sub menu_FileSave_Click()
        
    If CurFile <> "Untitled" Then
    
        Save CurFile
        MsgBox "File Saved!"
        
    Else
    
        FileDlg.Caption = "Save"
        Main.ScaleMode = Twips
        FileDlg.ScaleMode = Twips
        FileDlg.Top = Main.ScaleHeight / 2 - FileDlg.ScaleHeight / 2 - 50
        FileDlg.Left = Main.ScaleWidth / 2 - FileDlg.ScaleWidth / 2
        FileDlg.Show Modal
    
    End If
    
End Sub

Private Sub menu_FileSaveAs_Click()
    Main.ScaleMode = Twips
    FileDlg.ScaleMode = Twips
    FileDlg.Top = Main.ScaleHeight / 2 - FileDlg.ScaleHeight / 2 - 50
    FileDlg.Left = Main.ScaleWidth / 2 - FileDlg.ScaleWidth / 2
    FileDlg.Caption = "Save As..."
    FileDlg.Show Modal
End Sub

Private Sub menu_GridlineLabels_Click()

    If togGridLabels = 1 Then
        togGridLabels = 0
        menu_GridlineLabels.Checked = False
    Else
        togGridLabels = 1
        menu_GridlineLabels.Checked = True
    End If

    Main.Refresh

End Sub

Private Sub menu_HelpAbout_Click()
    Main.ScaleMode = Twips
    About.ScaleMode = Twips
    About.Top = Main.ScaleHeight / 2 - About.ScaleHeight / 2
    About.Left = Main.ScaleWidth / 2 - About.ScaleWidth / 2
    About.Show Modal
End Sub

Private Sub menu_HelpInfo_Click()
    Main.AutoRedraw = True
    Main.ScaleMode = Twips
    Help.ScaleMode = Twips
    Help.Top = Main.ScaleHeight / 2 - Help.ScaleHeight / 2 - 50
    Help.Left = Main.ScaleWidth / 2 - Help.ScaleWidth / 2
    Help.Show Modal
End Sub

Private Sub menu_HelpLegend_Click()
    
    Main.ScaleMode = Twips
    Legend.ScaleMode = Twips
    Legend.Top = Main.ScaleHeight / 2 - Legend.ScaleHeight / 2 - 50
    Legend.Left = Main.ScaleWidth / 2 - Legend.ScaleWidth / 2
    Legend.ScaleMode = Pixels
    Legend.Show Modal
    
End Sub

Private Sub menu_ObservingLogs_Click()
    Main.ScaleMode = Twips
    Logs.ScaleMode = Twips
    Logs.Top = Main.ScaleHeight / 2 - Logs.ScaleHeight / 2 - 50
    Logs.Left = Main.ScaleWidth / 2 - Logs.ScaleWidth / 2
    Logs.Show 1
End Sub

Private Sub menu_ToolsCustom_Click()
    Main.ScaleMode = Twips
    Custom.ScaleMode = Twips
    Custom.Top = Main.ScaleHeight / 2 - Custom.ScaleHeight / 2
    Custom.Left = Main.ScaleWidth / 2 - Custom.ScaleWidth / 2
    Custom.Show Modal
End Sub

Private Sub menu_ToolsList_Click()
    List.Show Modal
End Sub

Public Sub menu_ToolsLoad_Click()

    Dim Buffer As String
    Dim value As String
    
    On Error GoTo ErrorHandler
    Open AppPath + "DSWIN.INI" For Input As #2
    Close #2
    On Error GoTo 0
    
    Open AppPath + "DSWIN.INI" For Input As #2
    
    Do While Not EOF(2)
    
        Input #2, Buffer
        
        If LCase(Left(Buffer, Len("gridlines"))) = "gridlines" Then
            value = LCase(Trim(Right(Buffer, Len(Buffer) - InStr(Buffer, "="))))
            If value = "on" Then
                togGridlines = 1
                menu_ViewGridlines.Checked = True
            Else
                togGridlines = 0
                menu_ViewGridlines.Checked = False
            End If
        End If
        
        If LCase(Left(Buffer, Len("gridlinelabels"))) = "gridlinelabels" Then
            value = LCase(Trim(Right(Buffer, Len(Buffer) - InStr(Buffer, "="))))
            If value = "on" Then
                togGridLabels = 1
                menu_GridlineLabels.Checked = True
            Else
                togGridLabels = 0
                menu_GridlineLabels.Checked = False
            End If
        End If
        
        If LCase(Left(Buffer, Len("constlines"))) = "constlines" Then
            value = LCase(Trim(Right(Buffer, Len(Buffer) - InStr(Buffer, "="))))
            If value = "on" Then
                togConstLines = 1
                menu_ViewConstLines.Checked = True
            Else
                togConstLines = 0
                menu_ViewConstLines.Checked = False
            End If
        End If
        
        If LCase(Left(Buffer, Len("constlabels"))) = "constlabels" Then
            value = LCase(Trim(Right(Buffer, Len(Buffer) - InStr(Buffer, "="))))
            If value = "on" Then
                togConstLabels = 1
                menu_ViewConstLabels.Checked = True
            Else
                togConstLabels = 0
                menu_ViewConstLabels.Checked = False
            End If
        End If
        
        If LCase(Left(Buffer, Len("constboundaries"))) = "constboundaries" Then
            value = LCase(Trim(Right(Buffer, Len(Buffer) - InStr(Buffer, "="))))
            If value = "on" Then
                togConstBoundaries = 1
                menu_ViewConstBounds.Checked = True
            Else
                togConstBoundaries = 0
                menu_ViewConstBounds.Checked = False
            End If
        End If
        
        If LCase(Left(Buffer, Len("dsoobjects"))) = "dsoobjects" Then
            value = LCase(Trim(Right(Buffer, Len(Buffer) - InStr(Buffer, "="))))
            If value = "on" Then
                togDSOs = 1
                menu_ViewDSOs.Checked = True
            Else
                togDSOs = 0
                menu_ViewDSOs.Checked = False
            End If
        End If
        
        If LCase(Left(Buffer, Len("dsolabels"))) = "dsolabels" Then
            value = LCase(Trim(Right(Buffer, Len(Buffer) - InStr(Buffer, "="))))
            If value = "on" Then
                togDSOLabels = 1
                menu_ViewDSOLabels.Checked = True
            Else
                togDSOLabels = 0
                menu_ViewDSOLabels.Checked = False
            End If
        End If
        
        If LCase(Left(Buffer, Len("stars"))) = "stars" Then
            value = LCase(Trim(Right(Buffer, Len(Buffer) - InStr(Buffer, "="))))
            If value = "on" Then
                togStars = 1
                menu_ViewStars.Checked = True
            Else
                togStars = 0
                menu_ViewStars.Checked = False
            End If
        End If
        
        If LCase(Left(Buffer, Len("starlabels"))) = "starlabels" Then
            value = LCase(Trim(Right(Buffer, Len(Buffer) - InStr(Buffer, "="))))
            If value = "on" Then
                togStarLabels = 1
                menu_ViewStarLabels.Checked = True
            Else
                togStarLabels = 0
                menu_ViewStarLabels.Checked = False
            End If
        End If
        
        If LCase(Left(Buffer, Len("custom"))) = "custom" Then
            value = LCase(Trim(Right(Buffer, Len(Buffer) - InStr(Buffer, "="))))
            If value = "on" Then
                togCustom = 1
                menu_ViewCustom.Checked = True
            Else
                togCustom = 0
                menu_ViewCustom.Checked = False
            End If
        End If
        
        If LCase(Left(Buffer, Len("customlabels"))) = "customlabels" Then
            value = LCase(Trim(Right(Buffer, Len(Buffer) - InStr(Buffer, "="))))
            If value = "on" Then
                togCustomLabels = 1
                menu_ViewCustomLabels.Checked = True
            Else
                togCustomLabels = 0
                menu_ViewCustomLabels.Checked = False
            End If
        End If
        
        If LCase(Left(Buffer, Len("ra"))) = "ra" Then
            value = LCase(Trim(Right(Buffer, Len(Buffer) - InStr(Buffer, "="))))
            MyRA = Val(value)
        End If
        
        If LCase(Left(Buffer, Len("dec"))) = "dec" Then
            value = LCase(Trim(Right(Buffer, Len(Buffer) - InStr(Buffer, "="))))
            MyDec = Val(value)
        End If
        
        If LCase(Left(Buffer, Len("fov"))) = "fov" Then
            value = LCase(Trim(Right(Buffer, Len(Buffer) - InStr(Buffer, "="))))
            MyFOV = Val(value)
        End If
        
        If LCase(Left(Buffer, Len("mag"))) = "mag" Then
            value = LCase(Trim(Right(Buffer, Len(Buffer) - InStr(Buffer, "="))))
            MyMag = Val(value)
        End If
        
        If LCase(Left(Buffer, Len("rot"))) = "rot" Then
            value = LCase(Trim(Right(Buffer, Len(Buffer) - InStr(Buffer, "="))))
            MyROT = Val(value)
        End If
        
    Loop
    
    Close #2
    
    Main.Refresh
   
    Exit Sub
    
ErrorHandler:

    Open AppPath + "DSWIN.INI" For Output As #2
    
    Print #2, "[view options]"
    Print #2, "gridlines = on"
    Print #2, "gridlinelabels = on"
    Print #2, "constlines = on"
    Print #2, "constlabels = on"
    Print #2, "constboundaries = on"
    Print #2, "dsoobjects = on"
    Print #2, "dsolabels = on"
    Print #2, "stars = on"
    Print #2, "starlabels = on"
    Print #2, "custom = on"
    Print #2, "customlabels = on"
    Print #2, ""
    Print #2, "[startup]"
    Print #2, "ra = 302.0625"
    Print #2, "dec = 37.9695"
    Print #2, "fov = 60"
    Print #2, "mag = 6.5"
    Print #2, "rot = 0"

    Close #2
    
    Resume Next

End Sub

Private Sub menu_ToolsPlates_Click()
    Main.ScaleMode = Twips
    Info.ScaleMode = Twips
    ShowPlates.Top = Main.ScaleHeight / 2 - ShowPlates.ScaleHeight / 2 - 50
    ShowPlates.Left = Main.ScaleWidth / 2 - ShowPlates.ScaleWidth / 2
    ShowPlates.Show 1
End Sub

Private Sub menu_ToolsSave_Click()

    Open AppPath + "DSWIN.INI" For Output As #2
    
    Print #2, "[view options]"
    
    If togGridlines = 1 Then
        Print #2, "gridlines = on"
    Else
        Print #2, "gridlines = off"
    End If
    If togGridLabels = 1 Then
        Print #2, "gridlinelabels = on"
    Else
        Print #2, "gridlinelabels = off"
    End If
    If togConstLines = 1 Then
        Print #2, "constlines = on"
    Else
        Print #2, "constlines = off"
    End If
    If togConstLabels = 1 Then
        Print #2, "constlabels = on"
    Else
        Print #2, "constlabels = off"
    End If
    If togConstBoundaries = 1 Then
        Print #2, "constboundaries = on"
    Else
        Print #2, "constboundaries = off"
    End If
    If togDSOs = 1 Then
        Print #2, "dsoobjects = on"
    Else
        Print #2, "dsoobjects = off"
    End If
    If togDSOLabels = 1 Then
        Print #2, "dsolabels = on"
    Else
        Print #2, "dsolabels = off"
    End If
    If togStars = 1 Then
        Print #2, "stars = on"
    Else
        Print #2, "stars = off"
    End If
    If togStarLabels = 1 Then
        Print #2, "starlabels = on"
    Else
        Print #2, "starlabels = off"
    End If
    If togCustom = 1 Then
        Print #2, "custom = on"
    Else
        Print #2, "custom = off"
    End If
    If togCustomLabels = 1 Then
        Print #2, "customlabels = on"
    Else
        Print #2, "customlabels = off"
    End If
    
    Print #2, ""
    Print #2, "[startup]"
    Print #2, "ra =" + Str(MyRA)
    Print #2, "dec =" + Str(MyDec)
    Print #2, "fov =" + Str(MyFOV)
    Print #2, "mag =" + Str(MyMag)
    Print #2, "rot =" + Str(MyROT)

    Close #2
    
    Main.Refresh
    
End Sub


Private Sub menu_ViewAllOff_Click()

    togStars = 0
    togStarLabels = 0
    togDimStarLabels = 0
    togGridlines = 0
    togGridLabels = 0
    togConstLines = 0
    togConstLabels = 0
    togConstBoundaries = 0
    togDSOs = 0
    togDSOLabels = 0
    togCustom = 0
    togCustomLabels = 0

    menu_ViewStars.Checked = False
    menu_ViewStarLabels.Checked = False
    menu_ViewDimStarLabels.Checked = False
    menu_ViewGridlines.Checked = False
    menu_GridlineLabels.Checked = False
    menu_ViewConstLines.Checked = False
    menu_ViewConstLabels.Checked = False
    menu_ViewConstBounds.Checked = False
    menu_ViewDSOs.Checked = False
    menu_ViewDSOLabels.Checked = False
    menu_ViewCustom.Checked = False
    menu_ViewCustomLabels.Checked = False
    
    Main.Refresh


End Sub

Private Sub menu_ViewAllOn_Click()

    togStars = 1
    togStarLabels = 1
    togDimStarLabels = 1
    togGridlines = 1
    togGridLabels = 1
    togConstLines = 1
    togConstLabels = 1
    togConstBoundaries = 1
    togDSOs = 1
    togDSOLabels = 1
    togCustom = 1
    togCustomLabels = 1

    menu_ViewStars.Checked = True
    menu_ViewStarLabels.Checked = True
    menu_ViewDimStarLabels.Checked = True
    menu_ViewGridlines.Checked = True
    menu_GridlineLabels.Checked = True
    menu_ViewConstLines.Checked = True
    menu_ViewConstLabels.Checked = True
    menu_ViewConstBounds.Checked = True
    menu_ViewDSOs.Checked = True
    menu_ViewDSOLabels.Checked = True
    menu_ViewCustom.Checked = True
    menu_ViewCustomLabels.Checked = True
    
    Main.Refresh

End Sub

Private Sub menu_ViewConstBounds_Click()

    If togConstBoundaries = 1 Then
        togConstBoundaries = 0
        menu_ViewConstBounds.Checked = False
    Else
        togConstBoundaries = 1
        menu_ViewConstBounds.Checked = True
    End If

    Main.Refresh

End Sub

Private Sub menu_ViewConstLabels_Click()

    If togConstLabels = 1 Then
        togConstLabels = 0
        menu_ViewConstLabels.Checked = False
    Else
        togConstLabels = 1
        menu_ViewConstLabels.Checked = True
    End If

    Main.Refresh

End Sub

Private Sub menu_ViewConstLines_Click()

    If togConstLines = 1 Then
        togConstLines = 0
        menu_ViewConstLines.Checked = False
    Else
        togConstLines = 1
        menu_ViewConstLines.Checked = True
    End If

    Main.Refresh

End Sub

Private Sub menu_ViewCustom_Click()

    If togCustom = 1 Then
        togCustom = 0
        menu_ViewCustom.Checked = False
    Else
        togCustom = 1
        menu_ViewCustom.Checked = True
    End If

    Main.Refresh

End Sub

Private Sub menu_ViewCustomLabels_Click()

    If togCustomLabels = 1 Then
        togCustomLabels = 0
        menu_ViewCustomLabels.Checked = False
    Else
        togCustomLabels = 1
        menu_ViewCustomLabels.Checked = True
    End If

    Main.Refresh

End Sub

Private Sub menu_ViewDimStarLabels_Click()

    If togDimStarLabels = 1 Then
        togDimStarLabels = 0
        menu_ViewDimStarLabels.Checked = False
    Else
        togDimStarLabels = 1
        menu_ViewDimStarLabels.Checked = True
    End If
    
    Main.Refresh
    
End Sub

Private Sub menu_ViewDSOLabels_Click()

    If togDSOLabels = 1 Then
        togDSOLabels = 0
        menu_ViewDSOLabels.Checked = False
    Else
        togDSOLabels = 1
        menu_ViewDSOLabels.Checked = True
    End If

    Main.Refresh

End Sub

Private Sub menu_ViewDSOs_Click()

    If togDSOs = 1 Then
        togDSOs = 0
        menu_ViewDSOs.Checked = False
    Else
        togDSOs = 1
        menu_ViewDSOs.Checked = True
    End If

    Main.Refresh

End Sub

Private Sub menu_ViewEP_Click()
    Main.ScaleMode = Twips
    EyePiece.ScaleMode = Twips
    EyePiece.Top = Main.ScaleHeight / 2 - EyePiece.ScaleHeight / 2 - 50
    EyePiece.Left = Main.ScaleWidth / 2 - EyePiece.ScaleWidth / 2
    EyePiece.Show 1
End Sub

Private Sub menu_ViewGridlines_Click()

    If togGridlines = 1 Then
        togGridlines = 0
        menu_ViewGridlines.Checked = False
    Else
        togGridlines = 1
        menu_ViewGridlines.Checked = True
    End If

    Main.Refresh

End Sub


Private Sub menu_ViewStarLabels_Click()

    If togStarLabels = 1 Then
        togStarLabels = 0
        menu_ViewStarLabels.Checked = False
    Else
        togStarLabels = 1
        menu_ViewStarLabels.Checked = True
    End If

    Main.Refresh

End Sub

Private Sub menu_ViewStars_Click()
    
    If togStars = 1 Then
        togStars = 0
        menu_ViewStars.Checked = False
    Else
        togStars = 1
        menu_ViewStars.Checked = True
    End If

    Main.Refresh

End Sub

