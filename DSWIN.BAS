Attribute VB_Name = "DSWIN1"
Rem ********************************************************************************
Rem *                       DEEPSKIES FOR WINDOWS VERSION 1.0                      *
Rem *                                 32-BIT VERSION                               *
Rem ********************************************************************************
Rem *  MAIN PROGRAM MODULE                                                         *
Rem *  By: Rick Towns                                                              *
Rem *  Date: May 13, 2012                                                          *
Rem ********************************************************************************

Rem ********************************************************************************
Rem *                            DEFINE DATA STRUCTURES                            *
Rem ********************************************************************************
Type StarDataIN
    ID As Long
    Label As String * 20
    RA As Single
    Dec As Single
    PMRA As Single
    PMDec As Single
    Mag As Single
    BV As Single
    Flags As String * 1
End Type

Type StarData
    ID As Long
    Label As String * 20
    RA As Double
    Dec As Double
    PMRA As Double
    PMDec As Double
    Mag As Double
    BV As Double
    Flags As String * 1
End Type

Type StarSupData
    ID As Long
    Other As String * 50
    Desc As String * 100
    Class As String * 20
End Type

Type DSOData
    ID As Long
    Label As String * 20
    Other As String * 50
    Desc As String * 100
    RA As Double
    Dec As Double
    MaxSz As Double
    MinSz As Double
    Mag As Double
    PA As Double
    Class As String * 20
    Flags As String * 1
End Type

Type CustomData
    ID As Long
    Label As String * 20
    Other As String * 50
    Desc As String * 100
    RA As Double
    Dec As Double
    Field1 As Double
    Field2 As Double
    Mag As Double
    Field3 As Double
    Class As String * 20
    Flags As String * 1
End Type
    
Type PlateData
    ID As Integer
    MinRA As Double
    MaxRA As Double
    MinDec As Double
    MaxDec As Double
    FileName As String
    doLoad As Integer
End Type

Type CLineData
    StartRA As Double
    StartDec As Double
    EndRA As Double
    EndDec As Double
End Type

Type CLabelData
    ID As Integer
    Label As String * 50
    RA As Double
    Dec As Double
End Type

Type CBndData
    FromRA As Double
    FromDec As Double
    ToRA As Double
    ToDec As Double
End Type

Type ColorData
    Gridline As Long
    GridlineLabel As Long
    CLine As Long
    CBnd As Long
    CLabel As Long
    DSOLabel As Long
    DSODKNEB As Long
    DSOEMNEB As Long
    DSOPLNEB As Long
    DSOGALXY As Long
    DSOOPNCL As Long
    DSOGLOCL As Long
    StarLabel As Long
    StarDefault As Long
    StarO As Long
    StarB As Long
    StarA As Long
    StarF As Long
    StarG As Long
    StarK As Long
    StarM As Long
    StarN As Long
    StarR As Long
    Stars As Long
    StarW As Long
    StarC As Long
End Type

Type LogData
    ID As Long
    Target As String * 100
    LDate As String * 10
    LTime As String * 10
    Flags As String * 1
End Type

Rem ********************************************************************************
Rem *                           DEFINE GLOBAL VARIABLES                            *
Rem ********************************************************************************
Global MyRA As Double
Global MyDec As Double
Global MyFOV As Double
Global MyMag As Double
Global MyROT As Double
Global MinRA As Double
Global MaxRA As Double
Global MinDec As Double
Global MaxDec As Double
Global RA As Double
Global Dec As Double
Global x As Long
Global Y As Long
Global FirstPaint As Integer
Global Plates(74) As PlateData
Global CLines(1000) As CLineData
Global CBnds(1000) As CBndData
Global CLabels(100) As CLabelData
Global Color16 As Integer
Global Color As ColorData
Global NiceGL As Integer
Global togStars As Integer
Global togStarLabels As Integer
Global togGridlines As Integer
Global togGridLabels As Integer
Global togConstLines As Integer
Global togConstLabels As Integer
Global togConstBoundaries As Integer
Global togDSOs As Integer
Global togDSOLabels As Integer
Global togCustom As Integer
Global togCustomLabels As Integer
Global togDimStarLabels As Integer
Global togFOV As Integer
Global epFL As Double
Global epFOV As Double
Global epTelFL As Double
Global epLabel As String
Global CurFile As String
Global CustomCount As Long
Global Abort As Boolean
Global OkayToWait As Boolean
Global NumLogs As Long

Rem ********************************************************************************
Rem *                           DEFINE GLOBAL CONSTANTS                            *
Rem ********************************************************************************

Rem *** DEVELOPMENT STUFF ***
Global Const DataPath = "C:\Docs\DSWIN32.A1\DATA\"
Global Const AppPath = "C:\Docs\DSWIN32.A1\"

Rem *** PRODUCTION STUFF ***
'Global Const DataPath = ".\DATA\"
'Global Const AppPath = ".\"
Global Const VersionNo = 1.02

Rem *** MATH STUFF ***
Global Const PI = 3.14159265359
Global Const TwoPI = PI * 2
Global Const PI2 = PI / 2
Global Const Rads = PI / 180

Rem *** GUI STUFF ***
Global Const Twips = 1
Global Const Pixels = 3
Global Const Modal = 1

Function BVColor(ByVal BV As Double) As Long

    Dim StarColor As Long
    
    Rem * COMPUTE STAR COLOR BASED ON BV *
    If BV <= -0.4 Then
        StarColor = &HFFB29B
    ElseIf BV > -0.4 And BV <= -0.35 Then
        StarColor = &HFFB59E
    ElseIf BV > -0.35 And BV <= -0.3 Then
        StarColor = &HFFB9A3
    ElseIf BV > -0.3 And BV <= -0.25 Then
        StarColor = &HFFBFAA
    ElseIf BV > -0.25 And BV <= -0.2 Then
        StarColor = &HFFC5B2
    ElseIf BV > -0.2 And BV <= -0.15 Then
        StarColor = &HFFCCBB
    ElseIf BV > -0.15 And BV <= -0.1 Then
        StarColor = &HFFD2C4
    ElseIf BV > -0.1 And BV <= -0.05 Then
        StarColor = &HFFD8CC
    ElseIf BV > -0.05 And BV <= 0 Then
        StarColor = &HFFDDD3
    ElseIf BV > 0 And BV <= 0.05 Then
        StarColor = &HFFD8CC
    ElseIf BV > 0.05 And BV <= 0.1 Then
        StarColor = &HFFE5DF
    ElseIf BV > 0.1 And BV <= 0.15 Then
        StarColor = &HFFE9E4
    ElseIf BV > 0.15 And BV <= 0.2 Then
        StarColor = &HFFECE9
    ElseIf BV > 0.2 And BV <= 0.25 Then
        StarColor = &HFFEFEE
    ElseIf BV > 0.25 And BV <= 0.3 Then
        StarColor = &HFFF2F3
    ElseIf BV > 0.3 And BV <= 0.35 Then
        StarColor = &HFFF6F8
    ElseIf BV > 0.35 And BV <= 0.4 Then
        StarColor = &HFFF9FE
    ElseIf BV > 0.4 And BV <= 0.45 Then
        StarColor = &HFBF9FF
    ElseIf BV > 0.45 And BV <= 0.5 Then
        StarColor = &HF5F7FF
    ElseIf BV > 0.5 And BV <= 0.55 Then
        StarColor = &HEFF5FF
    ElseIf BV > 0.55 And BV <= 0.6 Then
        StarColor = &HEAF3FF
    ElseIf BV > 0.6 And BV <= 0.65 Then
        StarColor = &HE5F1FF
    ElseIf BV > 0.65 And BV <= 0.7 Then
        StarColor = &HE0EFFF
    ElseIf BV > 0.7 And BV <= 0.75 Then
        StarColor = &HDBEDFF
    ElseIf BV > 0.75 And BV <= 0.8 Then
        StarColor = &HD6EBFF
    ElseIf BV > 0.8 And BV <= 0.85 Then
        StarColor = &HD2E9FF
    ElseIf BV > 0.85 And BV <= 0.9 Then
        StarColor = &HCEE8FF
    ElseIf BV > 0.9 And BV <= 0.95 Then
        StarColor = &HCAE6FF
    ElseIf BV > 0.95 And BV <= 1# Then
        StarColor = &HC6E5FF
    ElseIf BV > 1# And BV <= 1.05 Then
        StarColor = &HC3E3FF
    ElseIf BV > 1.05 And BV <= 1.1 Then
        StarColor = &HBFE2FF
    ElseIf BV > 1.1 And BV <= 1.15 Then
        StarColor = &HBBE0FF
    ElseIf BV > 1.15 And BV <= 1.2 Then
        StarColor = &HB8FDFF
    ElseIf BV > 1.2 And BV <= 1.25 Then
        StarColor = &HB4DDFF
    ElseIf BV > 1.25 And BV <= 1.3 Then
        StarColor = &HB0DBFF
    ElseIf BV > 1.3 And BV <= 1.35 Then
        StarColor = &HADDAFF
    ElseIf BV > 1.35 And BV <= 1.4 Then
        StarColor = &HA9D8FF
    ElseIf BV > 1.4 And BV <= 1.45 Then
        StarColor = &HA5D6FF
    ElseIf BV > 1.45 And BV <= 1.5 Then
        StarColor = &HA1D5FF
    ElseIf BV > 1.5 And BV <= 1.55 Then
        StarColor = &H9CD2FF
    ElseIf BV > 1.55 And BV <= 1.6 Then
        StarColor = &H96D0FF
    ElseIf BV > 1.6 And BV <= 1.65 Then
        StarColor = &H8FCCFF
    ElseIf BV > 1.65 And BV <= 1.7 Then
        StarColor = &H85C8FF
    ElseIf BV > 1.7 And BV <= 1.75 Then
        StarColor = &H78C1FF
    ElseIf BV > 1.75 And BV <= 1.8 Then
        StarColor = &H65B7FF
    ElseIf BV > 1.8 And BV <= 1.85 Then
        StarColor = &H4BA9FF
    ElseIf BV > 1.85 And BV <= 1.9 Then
        StarColor = &H2395FF
    ElseIf BV > 1.9 And BV <= 1.95 Then
        StarColor = &H7BFF
    ElseIf BV > 1.95 And BV <= 2# Then
        StarColor = &H52FF
    ElseIf BV > 2# Then
        StarColor = &H31FF
    End If
    
    BVColor = StarColor

End Function

Function DecDec(ByVal NeatDec As String) As Double

    Dim i As Integer
    Dim DecH As Double
    Dim DecM As Double
    Dim DecS As Double
    
    DecH = Val(Left(NeatDec, InStr(NeatDec, Chr(176)) - 1))
    DecM = Val(Mid(NeatDec, InStr(NeatDec, Chr(176)) + 2, InStr(NeatDec, "'") - InStr(NeatDec, Chr(176)) - 2))
    DecS = Val(Mid(NeatDec, InStr(NeatDec, "'") + 2, InStr(NeatDec, Chr(34)) - InStr(NeatDec, "'") - 2))
    
    DecDec = DecH + DecM / 60 + DecS / 3600
    
End Function

Function DecRA(ByVal NeatRA As String) As Double

    Dim i As Integer
    Dim RAh As Double
    Dim RAm As Double
    Dim RAs As Double
    
    RAh = Val(Left(NeatRA, InStr(NeatRA, "h") - 1))
    RAm = Val(Mid(NeatRA, InStr(NeatRA, "h") + 2, InStr(NeatRA, "m") - InStr(NeatRA, "h") - 2))
    RAs = Val(Mid(NeatRA, InStr(NeatRA, "m") + 2, InStr(NeatRA, "s") - InStr(NeatRA, "m") - 2))
    
    DecRA = (RAh + RAm / 60 + RAs / 3600) * 15
    
End Function

Function GetClass(BV As Double) As String

    Dim GuessClass As String
    
    If BV < -0.3 Then
        GuessClass = "O"
    ElseIf BV >= -0.3 And BV < 0 Then
        GuessClass = "B" & Trim(Str(Int(BV / ((0 - 0.3) / 10))))
    ElseIf BV >= 0 And BV < 0.31 Then
        GuessClass = "A" & Trim(Str(Int(BV / ((0.31 - 0) / 10))))
    ElseIf BV >= 0.31 And BV < 0.59 Then
        GuessClass = "F" & Trim(Str(Int(BV / ((0.59 - 0.31) / 10))))
    ElseIf BV >= 0.59 And BV < 0.82 Then
        GuessClass = "G" & Trim(Str(Int(BV / ((0.82 - 0.59) / 10))))
    ElseIf BV >= 0.82 And BV < 1.41 Then
        GuessClass = "K" & Trim(Str(Int(BV / ((1.41 - 0.82) / 10))))
    ElseIf BV >= 1.41 And BV < 1.81 Then
        GuessClass = "M" & Trim(Str(Int(BV / ((1.81 - 1.41) / 10))))
    Else
        GuessClass = "?"
    End If
    
    GetClass = GuessClass
    
End Function



Sub DrawGalaxy(ByVal pRA As Double, ByVal pDec As Double, ByVal pMaxSz As Double, ByVal pMinSz As Double, ByVal pPA As Double)

    Dim sin_angle As Double
    Dim cos_angle As Double
    Dim theta As Double
    Dim dtheta As Double
    Dim mX As Double     ' A point on the ellipse.
    Dim mY As Double
    Dim RX As Double    ' The point rotated.
    Dim RY As Double
    Dim pRX As Double   ' Keep track of previous points
    Dim pRY As Double

    Dim sub_angle As Double
    Dim sa_X1 As Double
    Dim sa_Y1 As Double
    Dim sa_X2 As Double
    Dim sa_Y2 As Double

    Main.ScaleMode = Pixels

    eqConvert pRA, pDec
    sa_X1 = x
    sa_Y1 = Y

    eqConvert pRA, pDec + pMaxSz
    
    sa_X2 = x
    sa_Y2 = Y

    sub_angle = Atn(Abs(sa_X2 - sa_X1) / Abs(sa_Y2 - sa_Y1)) / Rads

    If pDec < 0 Then
        sub_angle = sub_angle * -1
    End If

    If MyRA - pRA > 100 Then
        pPA = pPA - sub_angle + MyROT
    ElseIf MyRA >= pRA Then
        pPA = pPA + sub_angle + MyROT
    Else
        pPA = pPA - sub_angle + MyROT
    End If

    pPA = pPA * Rads
    sin_angle = Sin(pPA)
    cos_angle = Cos(pPA)
    pMaxSz = (Main.ScaleWidth / MyFOV) * pMaxSz / 2
    pMinSz = (Main.ScaleWidth / MyFOV) * pMinSz / 2

    theta = 0
    dtheta = TwoPI / 50

    ' Find the first point.
    mX = pMinSz * Cos(theta)
    mY = pMaxSz * Sin(theta)

    pRX = sa_X1 + mX * cos_angle + mY * sin_angle
    pRY = sa_Y1 - mX * sin_angle + mY * cos_angle

    Do While theta < 2 * PI

        theta = theta + dtheta
        mX = pMinSz * Cos(theta)
        mY = pMaxSz * Sin(theta)

        RX = sa_X1 + mX * cos_angle + mY * sin_angle
        RY = sa_Y1 - mX * sin_angle + mY * cos_angle

        Main.Line (pRX, pRY)-(RX, RY), Color.DSOGALXY

        pRX = RX
        pRY = RY

    Loop

End Sub

Sub eqConvert(ByVal pRA As Double, ByVal pDec As Double)

    Rem ********************************************************************************
    Rem *                           SUBROUTINE: eqConvert                              *
    Rem ********************************************************************************
    Rem *  PURPOSE: convert provided RA/Dec coordinates into X/Y screen pixels         *
    Rem *  MODIFIES: X & Y global variables                                            *
    Rem *  REQUIRES: RA and Dec to be provided in decimal degrees                      *
    Rem *  LAST MODIFIED: May 14, 2012 by Rick Towns                                   *
    Rem ********************************************************************************

    Dim Az As Double
    Dim Alt As Double
    Dim TempVal As Double
    Dim nz As Double
    Dim az2 As Double
    Dim tX As Double
    Dim tY As Double
    Dim xyScale As Double
    Dim RA_Field As Double
    Dim Dec_Field As Double
    Dim Field As Double
    Dim ROT As Double

    RA_Field = MyRA * Rads
    Dec_Field = MyDec * Rads
    Field = MyFOV * Rads
    ROT = MyROT * Rads

    pRA = pRA * Rads
    pDec = pDec * Rads

    Main.ScaleMode = Pixels

    Az = Atan2(Sin(RA_Field - pRA), Cos(RA_Field - pRA) * Sin(Dec_Field) - Tan(pDec) * Cos(Dec_Field))
    TempVal = Sin(Dec_Field) * Sin(pDec) + Cos(Dec_Field) * Cos(pDec) * Cos(RA_Field - pRA)

    If TempVal >= 1# Then
        Alt = PI2
    Else
        Alt = Asin(TempVal)
    End If

    nz = 1 - 2 * Alt / PI
    az2 = Az - PI2 + ROT
    tX = (nz * Cos(az2)) * PI / Field
    tY = -(nz * Sin(az2)) * PI / Field

    xyScale = (Main.ScaleWidth / Field) / (120 / MyFOV)

    x = (Main.ScaleWidth / 2) + (tX * xyScale)
    Y = (Main.ScaleHeight / 2) + (tY * xyScale)

End Sub

Sub eqMinMax()
    
    Rem ********************************************************************************
    Rem *                           SUBROUTINE: eqMinMax                               *
    Rem ********************************************************************************
    Rem *  PURPOSE: compute min/max RA/Dec for the current screen view                 *
    Rem *  MODIFIES: MinRA, MaxRA, MinDec & MaxDec global variables                    *
    Rem *  REQUIRES: nothing                                                           *
    Rem *  LAST MODIFIED: May 14, 2012 by Rick Towns                                   *
    Rem ********************************************************************************

    Dim mX As Integer
    Dim mY As Integer
    
    MaxRA = -1
    MinRA = 361
    MaxDec = -91
    MinDec = 91
    
    Main.ScaleMode = Pixels

    ' Across the top and bottom of screen
    For mX = 0 To Main.ScaleWidth Step 10

        ' Top of Screen
        xyConvert mX, 0
        
        'If RA < MinRA Then
        '    MinRA = RA
        'End If
        'If RA > MaxRA Then
        '    MaxRA = RA
        'End If
        'Ignore MinDec - it should never be at top of screen!
        'If Dec < MinDec Then
        '    MinDec = Dec
        'End If
        If Dec > MaxDec Then
            MaxDec = Dec
        End If
        
        ' Bottom of Screen
        xyConvert mX, CInt(Main.ScaleHeight)
        
        'If RA < MinRA Then
        '    MinRA = RA
        'End If
        'If RA > MaxRA Then
        '    MaxRA = RA
        'End If
        If Dec < MinDec Then
            MinDec = Dec
        End If
        'Ignore MaxDec - it should never be at bottom of screen!
        'If Dec > MaxDec Then
        '    MaxDec = Dec
        'End If

    Next mX
    
    ' Left and Right sides of screen
    For mY = 0 To Main.ScaleHeight Step 10
        
        ' Left side of screen
        xyConvert 0, mY
        
        'Ignore MinRA - it should never be at the left side of the screen!
        'If RA < MinRA Then
        '    MinRA = RA
        'End If
        If RA > MaxRA Then
            MaxRA = RA
        End If
        'If Dec < MinDec Then
        '    MinDec = Dec
        'End If
        'If Dec > MaxDec Then
        '    MaxDec = Dec
        'End If
        
        ' Right side of screen
        xyConvert CInt(Main.ScaleWidth), mY
        
        If RA < MinRA Then
            MinRA = RA
        End If
        'Ignore MaxRA - it should never be at the right side of the screen!
        'If RA > MaxRA Then
        '    MaxRA = RA
        'End If
        'If Dec < MinDec Then
        '    MinDec = Dec
        'End If
        'If Dec > MaxDec Then
        '    MaxDec = Dec
        'End If

    Next mY

    ' If MinRA is bigger than MaxRA then we are straddling the celestial meridian
    ' and we need to make MinRA negative so our loops will still work.
    If MinRA > MaxRA Then
        MinRA = MinRA - 360
    End If
    
    ' Finally, we we are close to either celestial pole, the numbers we get from
    ' this routine will be rubbish, so let's code it appropriately...
    
    If MyDec + (MyFOV / 2) >= 90 Then
        MinRA = 0
        MaxRA = 359
        MaxDec = 90
    End If
    
    If MyDec - (MyFOV / 2) <= -90 Then
        MinRA = 0
        MaxRA = 359
        MinDec = -90
    End If
    
End Sub

Sub FindObjectAt(mX As Single, mY As Single)

    Dim Star As StarData
    Dim StarIN As StarDataIN
    Dim StarSup As StarSupData
    Dim DSO As DSOData
    Dim CustomRec As CustomData
    Dim Found As Integer
    Dim RecNum As Long
    Dim DSOType As String
    Dim i As Integer
    
    Main.MousePointer = 11
    Status "Searching (Press Esc to Abort)..."
        
    Abort = False
    
    Found = 0

    Rem * SHALLOW STAR SEARCH *

    For i = 1 To 74

        Open DataPath & Plates(i).FileName For Binary Access Read As #3
        
        RecNum = 0
        
        Do While Not EOF(3)
                
            RecNum = RecNum + 1
            Get #3, , StarIN
            
            Star.ID = StarIN.ID
            Star.Label = StarIN.Label
            Star.RA = CDbl(StarIN.RA)
            Star.Dec = CDbl(StarIN.Dec)
            Star.PMRA = CDbl(StarIN.PMRA)
            Star.PMDec = CDbl(StarIN.PMDec)
            Star.Mag = CDbl(StarIN.Mag)
            Star.BV = CDbl(StarIN.BV)
            Star.Flags = StarIN.Flags
            

            If Star.Mag > 6.5 Then
                Exit Do
            Else
                
                JNow Star.RA, Star.Dec, Star.PMRA, Star.PMDec
                eqConvert RA, Dec

                If mX >= x - 3 And mX <= x + 3 And mY >= Y - 3 And mY <= Y + 3 Then
                
                    Rem * SEE IF THIS STAR HAS INFO IN SUPPLIMENTARY FILE *
                    Open DataPath & "STARS.SUP" For Binary Access Read As #5
                    
                    Get #5, , StarSup
                    
                    Do While Not EOF(5)
                    
                        If StarSup.ID = Star.ID Then
                            Exit Do
                        End If
                        
                        Get #5, , StarSup
                        
                    Loop
                    
                    Close #5
                    
                    Info.txtF1.Text = Trim(Str(Star.ID))
                    Info.txtF2.Text = Trim(Star.Label)
                    Info.txtF15.Text = Trim(StarSup.Other)
                    Info.txtF16.Text = Trim(StarSup.Desc)
                    If Len(Trim(StarSup.Class)) > 0 Then
                        Info.txtF4.Text = Trim(StarSup.Class)
                    Else
                        Info.txtF4.Text = GetClass(Star.BV)
                    End If
                    Info.txtF14.Text = Trim(Format(Star.BV, "#0.00"))
                    Info.txtF6.Text = NiceRA(Star.RA)
                    Info.txtF7.Text = NiceDec(Star.Dec)
                    JNow Star.RA, Star.Dec, Star.PMRA, Star.PMDec
                    Info.txtF12.Text = NiceRA(RA)
                    Info.txtF13.Text = NiceDec(Dec)
                    Info.lblAlt.Caption = "Proper Motion"
                    Info.txtF9.Text = Trim(Format(Star.PMRA, "#0.000")) + " mas/yr"
                    Info.txtF10.Text = Trim(Format(Star.PMDec, "#0.000")) + " mas/yr"
                    Info.txtF8.Text = NiceMag(Star.Mag)
                    Info.Frame1.Caption = "About " & Trim(Star.Label) & " (STAR)"
                    Info.txtRecord = RecNum
                    Info.txtPlate = i
                    Found = 1
                    Exit Do
                End If

            End If
            
            DoEvents
            If Abort = True Then GoTo QuitEarly

        Loop

        Close #3

        If Found = 1 Then
            Exit For
        End If

    Next i

    Rem * DSO SEARCH *
    If Found = 0 Then

        Open DataPath & "DSOS.DAT" For Binary Access Read As #3
        
        RecNum = 0
        
        Do While Not EOF(3)
                
            RecNum = RecNum + 1
            Get #3, , DSO
            
            If DSO.Mag > MyMag + 3 Then
                Exit Do
            Else
            
                JNow DSO.RA, DSO.Dec, 0, 0
                eqConvert RA, Dec
    
                If mX >= x - 6 And mX <= x + 6 And mY >= Y - 6 And mY <= Y + 6 Then
                    Info.txtF1.Text = Trim(Str(DSO.ID))
                    Info.txtF2.Text = Trim(DSO.Label)
                    Info.txtF15.Text = Trim(DSO.Other)
                    Info.txtF16.Text = DSO.Desc
                    Info.txtF4.Text = Trim(DSO.Class)
                    Info.lblF14.Caption = "PA:"
                    Info.txtF14.Text = Trim(Str(DSO.PA)) & Chr(176)
                    Info.txtF6.Text = NiceRA(DSO.RA)
                    Info.txtF7.Text = NiceDec(DSO.Dec)
                    JNow DSO.RA, DSO.Dec, 0, 0
                    Info.txtF12.Text = NiceRA(RA)
                    Info.txtF13.Text = NiceDec(Dec)
                    Info.lblAlt.Caption = "Angular Size"
                    If DSO.MaxSz > 0 Then
                        If DSO.MaxSz < 1 Then
                            Info.txtF9.Text = Trim(Str(DSO.MaxSz * 60)) + "'"
                        Else
                            Info.txtF9.Text = Trim(DSO.MaxSz) + Chr(176)
                        End If
                    Else
                        Info.txtF9.Text = "n/a"
                    End If
                    If DSO.MinSz > 0 Then
                        If DSO.MinSz < 1 Then
                            Info.txtF10.Text = Trim(Str(DSO.MinSz * 60)) + "'"
                        Else
                            Info.txtF10.Text = Trim(DSO.MinSz) + Chr(176)
                        End If
                    Else
                        Info.txtF10.Text = "n/a"
                    End If
                    Info.txtF8.Text = NiceMag(DSO.Mag)
                    Info.Frame1.Caption = "About " & Trim(DSO.Label) & " (DSO)"
                    Info.txtRecord = RecNum
                    Found = 1
                    Exit Do
                End If
            
            End If
            
            DoEvents
            If Abort = True Then GoTo QuitEarly
            
        Loop

        Close #3

    End If
    
    Rem * CUSTOM OBJECT SEARCH *
    
    If Found = 0 Then
    
        Open DataPath & "CUSTOM.DAT" For Binary Access Read As #3
        
        For i = 0 To 19
        
            Get #3, , CustomRec
            
            If CustomRec.Flags = "S" Then
            
                Rem *** TREAT LIKE A STAR ***
                JNow CustomRec.RA, CustomRec.Dec, CustomRec.Field1, CustomRec.Field2
                eqConvert RA, Dec

                If mX >= x - 3 And mX <= x + 3 And mY >= Y - 3 And mY <= Y + 3 Then
                
                    Info.txtF1.Text = Trim(Str(CustomRec.ID))
                    Info.txtF2.Text = Trim(CustomRec.Label)
                    Info.txtF15.Text = Trim(CustomRec.Other)
                    Info.txtF16.Text = Trim(CustomRec.Desc)
                    If Len(Trim(CustomRec.Class)) > 0 Then
                        Info.txtF4.Text = Trim(CustomRec.Class)
                    Else
                        Info.txtF4.Text = GetClass(CustomRec.Field3)
                    End If
                    Info.txtF14.Text = Trim(Format(CustomRec.Field3, "#0.00"))
                    Info.txtF6.Text = NiceRA(CustomRec.RA)
                    Info.txtF7.Text = NiceDec(CustomRec.Dec)
                    JNow CustomRec.RA, CustomRec.Dec, CustomRec.Field1, CustomRec.Field2
                    Info.txtF12.Text = NiceRA(RA)
                    Info.txtF13.Text = NiceDec(Dec)
                    Info.lblAlt.Caption = "Proper Motion"
                    Info.txtF9.Text = Trim(Format(CustomRec.Field1, "#0.000")) + " mas/yr"
                    Info.txtF10.Text = Trim(Format(CustomRec.Field2, "#0.000")) + " mas/yr"
                    Info.txtF8.Text = NiceMag(CustomRec.Mag)
                    Info.Frame1.Caption = "About " & Trim(CustomRec.Label) & " (CUSTOM)"
                    Found = 1
                    Exit For
                End If

                
            Else
            
                Rem *** TREAT LIKE A DSO ***
                JNow CustomRec.RA, CustomRec.Dec, 0, 0
                eqConvert RA, Dec
    
                If mX >= x - 6 And mX <= x + 6 And mY >= Y - 6 And mY <= Y + 6 Then
                    Info.txtF1.Text = Trim(Str(CustomRec.ID))
                    Info.txtF2.Text = Trim(CustomRec.Label)
                    Info.txtF15.Text = Trim(CustomRec.Other)
                    Select Case CustomRec.Flags
                        Case "A"
                            DSOType = "Asterism: "
                        Case "G"
                            DSOType = "Galaxy: "
                        Case "C"
                            DSOType = "Globular Cluster: "
                        Case "O"
                            DSOType = "Open Cluster: "
                        Case "P"
                            DSOType = "Planetary Nebula: "
                        Case "E"
                            DSOType = "Emmision Nebula: "
                        Case "D"
                            DSOType = "Dark Nebula: "
                        Case "Q"
                            DSOType = "Quasar: "
                        Case "S"
                            DSOType = "Super Nova Remnant: "
                        Case Else
                            DSOType = ""
                    End Select
                    Info.txtF16.Text = DSOType & CustomRec.Desc
                    Info.txtF4.Text = Trim(CustomRec.Class)
                    Info.lblF14.Caption = "PA:"
                    Info.txtF14.Text = Trim(Str(CustomRec.Field3)) & Chr(176)
                    Info.txtF6.Text = NiceRA(CustomRec.RA)
                    Info.txtF7.Text = NiceDec(CustomRec.Dec)
                    JNow CustomRec.RA, CustomRec.Dec, 0, 0
                    Info.txtF12.Text = NiceRA(RA)
                    Info.txtF13.Text = NiceDec(Dec)
                    Info.lblAlt.Caption = "Angular Size"
                    If CustomRec.Field1 > 0 Then
                        If CustomRec.Field1 < 1 Then
                            Info.txtF9.Text = Trim(Str(CustomRec.Field1 * 60)) + "'"
                        Else
                            Info.txtF9.Text = Trim(Str(CustomRec.Field1)) + Chr(176)
                        End If
                    Else
                        Info.txtF9.Text = "n/a"
                    End If
                    If CustomRec.Field2 > 0 Then
                        If CustomRec.Field2 < 1 Then
                            Info.txtF10.Text = Trim(Str(CustomRec.Field2 * 60)) + "'"
                        Else
                            Info.txtF10.Text = Trim(CustomRec.Field2) + Chr(176)
                        End If
                    Else
                        Info.txtF10.Text = "n/a"
                    End If
                    Info.txtF8.Text = NiceMag(CustomRec.Mag)
                    Info.Frame1.Caption = "About " & Trim(CustomRec.Label) & " (CUSTOM)"
                    Found = 1
                    Exit For
                End If
                
            End If
            
            DoEvents
            If Abort = True Then GoTo QuitEarly
        
        Next i
        
        Close #3
        
    End If

    Rem * DEEP STAR SEARCH *
    
    If Found = 0 Then
    
        For i = 1 To 74
    
            Open DataPath & Plates(i).FileName For Binary Access Read As #3
            
            RecNum = 0
            
            Do While Not EOF(3)
                    
                RecNum = RecNum + 1
                Get #3, , StarIN
    
                Star.ID = StarIN.ID
                Star.Label = StarIN.Label
                Star.RA = CDbl(StarIN.RA)
                Star.Dec = CDbl(StarIN.Dec)
                Star.PMRA = CDbl(StarIN.PMRA)
                Star.PMDec = CDbl(StarIN.PMDec)
                Star.Mag = CDbl(StarIN.Mag)
                Star.BV = CDbl(StarIN.BV)
                Star.Flags = StarIN.Flags
    
                If Star.Mag > MyMag Then
                    Exit Do
                Else
                    
                    JNow Star.RA, Star.Dec, Star.PMRA, Star.PMDec
                    eqConvert RA, Dec
    
                    If mX >= x - 3 And mX <= x + 3 And mY >= Y - 3 And mY <= Y + 3 Then
                        Info.txtF1.Text = Trim(Str(Star.ID))
                        Info.txtF2.Text = Trim(Star.Label)
                        Info.txtF15.Text = "n/a"
                        Info.txtF16.Text = "n/a"
                        Info.txtF4.Text = "n/a"
                        Info.txtF14.Text = Trim(Str(Star.BV))
                        Info.txtF6.Text = NiceRA(Star.RA) + " (J2000)"
                        Info.txtF7.Text = NiceDec(Star.Dec) + " (J2000)"
                        JNow Star.RA, Star.Dec, Star.PMRA, Star.PMDec
                        Info.txtF12.Text = NiceRA(RA) + " (JNow)"
                        Info.txtF13.Text = NiceDec(Dec) + " (JNow)"
                        Info.lblAlt.Caption = "Proper Motion"
                        Info.txtF9.Text = Trim(Str(Star.PMRA / 1000)) + " ""/yr"
                        Info.txtF10.Text = Trim(Str(Star.PMDec / 1000)) + " ""/yr"
                        Info.txtF8.Text = NiceMag(Star.Mag)
                        Info.Frame1.Caption = "About " & Trim(Star.Label) & " (STAR)"
                        Info.txtRecord = RecNum
                        Info.txtPlate = i
                        Found = 1
                        Exit Do
                    End If
    
                End If
    
                DoEvents
                If Abort = True Then GoTo QuitEarly
    
            Loop
    
            Close #3
    
            If Found = 1 Then
                Exit For
            End If
    
        Next i
    
    End If
    
QuitEarly:

    Close
    
    Main.MousePointer = 0

    If Found = 1 Then
        Status "Search completed!"
        Main.ScaleMode = Twips
        Info.ScaleMode = Twips
        Info.Top = Main.ScaleHeight / 2 - Info.ScaleHeight / 2 - 50
        Info.Left = Main.ScaleWidth / 2 - Info.ScaleWidth / 2
        Info.Show Modal
    Else
        If Abort = True Then
            Status "Search aborted!"
        Else
            Status "Search failed!"
            MsgBox "Nothing located there!"
        End If
    End If

End Sub

Sub InitializeColor()

    If Color16 = 0 Then
        Color.Gridline = RGB(32, 32, 32)
        Color.GridlineLabel = RGB(64, 64, 64)
        Color.CLine = RGB(32, 64, 128)
        Color.CBnd = RGB(8, 16, 32)
        Color.CLabel = RGB(0, 128, 192)
        Color.DSOLabel = RGB(255, 160, 0)
        Color.DSODKNEB = RGB(64, 64, 64)
        Color.DSOEMNEB = RGB(0, 255, 0)
        Color.DSOPLNEB = RGB(0, 255, 0)
        Color.DSOGALXY = RGB(255, 0, 0)
        Color.DSOOPNCL = RGB(255, 255, 0)
        Color.DSOGLOCL = RGB(255, 255, 0)
        Color.StarLabel = RGB(255, 255, 255)
        Color.StarDefault = RGB(255, 255, 255)
        Color.StarO = RGB(153, 153, 255)
        Color.StarB = RGB(153, 204, 255)
        Color.StarA = RGB(255, 255, 255)
        Color.StarF = RGB(253, 255, 153)
        Color.StarG = RGB(255, 255, 0)
        Color.StarK = RGB(255, 153, 0)
        Color.StarM = RGB(255, 51, 0)
        Color.StarN = RGB(153, 0, 0)
        Color.StarR = RGB(255, 51, 0)
        Color.Stars = RGB(255, 0, 0)
        Color.StarW = RGB(51, 153, 255)
        Color.StarC = RGB(153, 0, 51)
    Else
        Color.Gridline = QBColor(8)
        Color.GridlineLabel = QBColor(8)
        Color.CLine = QBColor(3)
        Color.CBnd = QBColor(1)
        Color.CLabel = QBColor(9)
        Color.DSOLabel = QBColor(14)
        Color.DSODKNEB = QBColor(7)
        Color.DSOEMNEB = QBColor(10)
        Color.DSOPLNEB = QBColor(10)
        Color.DSOGALXY = QBColor(12)
        Color.DSOOPNCL = QBColor(14)
        Color.DSOGLOCL = QBColor(14)
        Color.StarLabel = QBColor(15)
        Color.StarDefault = QBColor(15)
        Color.StarO = QBColor(9)  'Blue
        Color.StarB = QBColor(9)  'Blue
        Color.StarA = QBColor(15) 'White
        Color.StarF = QBColor(14) 'Yellow
        Color.StarG = QBColor(14) 'Yellow
        Color.StarK = QBColor(12) 'Red
        Color.StarM = QBColor(12) 'Red
        Color.StarN = QBColor(12) 'Red
        Color.StarR = QBColor(12) 'Red
        Color.Stars = QBColor(12) 'Red
        Color.StarW = QBColor(9)  'Blue
        Color.StarC = QBColor(12) 'Red
    End If

End Sub

Sub InitializeConstellations()

    Dim i As Integer

    Rem * LOAD LABELS *
    Open DataPath & "CLABELS.DAT" For Binary Access Read As #3
    i = 1

    Do While Not EOF(3)
        
        Get #3, , CLabels(i)
        i = i + 1

    Loop

    CLabels(i).RA = -99

    Close #3

    Rem * LOAD LINES *
    Open DataPath & "CLINES.DAT" For Binary Access Read As #3
    i = 1

    Do While Not EOF(3)

        Get #3, , CLines(i)
        i = i + 1

    Loop

    CLines(i).StartRA = -99

    Close #3

    Rem * LOAD BOUNDARIES *
    Open DataPath & "CBNDS.DAT" For Binary Access Read As #3
    i = 1

    Do While Not EOF(3)

        Get #3, , CBnds(i)
        i = i + 1

    Loop

    CBnds(i).FromRA = -99

    Close #3

End Sub

Sub InitializePlates()

    Dim ThisPlate As String
    Dim D As Integer
    Dim R As Integer
    Dim P As Single
    Dim i As Integer
    
    Rem /* PLATE01 */
    i = 1
    Plates(i).ID = i
    Plates(i).MinRA = 0
    Plates(i).MaxRA = 360
    Plates(i).MinDec = 80
    Plates(i).MaxDec = 90
    Plates(i).FileName = "PLATE01.DAT"
    Plates(i).doLoad = False
    
    For D = 80 To -60 Step -20
    
        For R = 0 To 320 Step 40
        
            i = i + 1
            P = (((80 - D) / 20) * 9) + 2
            P = P + (R / 40)
            
            If P < 10 Then
                ThisPlate = "PLATE0" & Trim(Str(P)) & ".DAT"
            Else
                ThisPlate = "PLATE" & Trim(Str(P)) & ".DAT"
            End If
            
            Plates(i).ID = i
            Plates(i).MinRA = R
            Plates(i).MaxRA = R + 40
            Plates(i).MinDec = D - 20
            Plates(i).MaxDec = D
            Plates(i).FileName = ThisPlate
            Plates(i).doLoad = False
        
        Next R
        
    Next D
    
    i = i + 1
    Rem /* PLATE74 */
    Plates(i).ID = i
    Plates(i).MinRA = 0
    Plates(i).MaxRA = 360
    Plates(i).MinDec = -90
    Plates(i).MaxDec = -80
    Plates(i).FileName = "PLATE74.DAT"
    Plates(i).doLoad = False

End Sub

Sub JNow(ByVal pRA As Double, ByVal pDec As Double, ByVal pPMRA As Double, ByVal pPMDec As Double)

    Dim M As Double
    Dim N As Double
    Dim N2 As Double
    Dim Y2K As Double
    Dim DeltaRA As Double
    Dim DeltaDec As Double
    
    Y2K = DatePart("yyyy", Now) - 2000
    
    M = 3.075       ' sec/year
    N = 1.336       ' sec/year
    N2 = 20.043     ' arcsec/year
    
    RA = pRA + (pPMRA / 1000 / 3600 * Y2K)
    Dec = pDec + (pPMDec / 1000 / 3600 * Y2K)
    
    DeltaRA = (M + N * Sin(RA * Rads) * Tan(Dec * Rads)) * Y2K
    DeltaDec = (N2 * Cos(RA * Rads)) * Y2K
    
    RA = RA + (DeltaRA * 15 / 3600)
    Dec = Dec + (DeltaDec / 3600)
    
    If (RA < 0) Then
        RA = RA + 360
    End If
    
    If (RA > 360) Then
        RA = RA - 360
    End If

End Sub

Function JulianDate(Yr As Integer, Mo As Integer, Da As Integer) As Double

    Dim A As Double
    Dim B As Double
    Dim JD As Double

    If (Mo <= 2) Then
        Mo = Mo + 12
        Y = Y - 1
    End If

    A = Int(Yr / 100)
    B = 2 - A + Int(A / 4)

    JD = Int(365.25 * (Yr + 4716)) + Int(30.6001 * (Mo + 1))
    JD = JD + D + B - 1524.5

    JulianDate = JD

End Function

Function NiceDec(ByVal pDec As Double) As String

    Dim DegD As Double
    Dim DegM As Double
    Dim DegS As Double
    Dim DegDS As String
    Dim DegMS As String
    Dim DegSS As String

    DegD = pDec

    DegM = (DegD - Int(DegD)) * 60
    DegS = (DegM - Int(DegM)) * 60

    DegDS = LTrim$(Str$(Int(DegD)))
    DegMS = LTrim$(Str$(Int(DegM)))
    DegSS = LTrim$(Str$(Int(DegS * 10) / 10))

    If NiceGL = 0 Then
        NiceDec = DegDS + Chr(176) + " " + DegMS + "' " + DegSS + Chr(34)
    Else
        If DegM > 0 Then
            NiceDec = DegDS + Chr(176) + " " + DegMS + "'"
        Else
            NiceDec = DegDS + Chr(176)
        End If
    End If

End Function

Function NiceFOV(ByVal pFOV As Double) As String
        
    Dim DegD As Double
    Dim DegM As Double
    Dim DegS As Double
    Dim DegDS As String
    Dim DegMS As String
    Dim DegSS As String

    DegD = pFOV

    DegM = (DegD - Int(DegD)) * 60
    DegS = (DegM - Int(DegM)) * 60

    DegDS = LTrim$(Str$(Int(DegD)))
    DegMS = LTrim$(Str$(Int(DegM)))
    DegSS = LTrim$(Str$(Int(DegS * 10) / 10))

    NiceFOV = DegDS + Chr(176) + " " + DegMS + "' " + DegSS + Chr(34)

End Function

Function NiceMag(ByVal pMag As Double) As String

    pMag = Int(pMag * 10 + 0.5) / 10

    If pMag = Int(pMag) Then
        NiceMag = LTrim$(Str$(pMag)) + ".0"
    Else
        NiceMag = LTrim$(Str$(pMag))
    End If

End Function

Function NiceRA(ByVal pRA As Double) As String

    Dim RAh As Double
    Dim RAm As Double
    Dim RAs As Double
    Dim RAhS As String
    Dim RAmS As String
    Dim RAsS As String

    RAh = pRA
    If RAh < 0 Then
        RAh = RAh + 360
    End If

    RAh = RAh / 15

    RAm = (RAh - Int(RAh)) * 60
    RAs = (RAm - Int(RAm)) * 60
    RAhS = LTrim$(Str$(Int(RAh)))
    RAmS = LTrim$(Str$(Int(RAm)))
    RAsS = LTrim$(Str$(Int(RAs * 10) / 10))

    If NiceGL = 0 Then
        NiceRA = RAhS + "h " + RAmS + "m " + RAsS + "s"
    Else
        If RAm > 0 Then
            NiceRA = RAhS + "h " + RAmS + "m"
        Else
            NiceRA = RAhS + "h"
        End If
    End If

End Function

Function OkayToPlot(sX1 As Long, sY1 As Long, sX2 As Long, sY2 As Long) As Integer

    Dim diffX As Long
    Dim diffY As Long
    Dim OkieDokie As Integer

    OkieDokie = 1

    Main.ScaleMode = Pixels

    If sX1 > sX2 Then
        diffX = sX1 - sX2
    Else
        diffX = sX2 - sX1
    End If

    If sY1 > sY2 Then
        diffY = sY1 - sY2
    Else
        diffY = sY2 - sY1
    End If

    If diffX >= Main.ScaleWidth Then
        OkieDokie = 0
    End If

    If diffY >= Main.ScaleHeight Then
        OkieDokie = 0
    End If

    OkayToPlot = OkieDokie

End Function

Sub PaintSky()

    Rem ********************************************************************************
    Rem *                           SUBROUTINE: PaintSky                               *
    Rem ********************************************************************************
    Rem *  PURPOSE: draw required astronomical elements onto the computer screen       *
    Rem *  MODIFIES: Status Bar and screen display                                     *
    Rem *  REQUIRES: nothing                                                           *
    Rem *  LAST MODIFIED: May 14, 2012 by Rick Towns                                   *
    Rem ********************************************************************************

    Rem *** All variables get declared at top! ***
    Dim gRA As Double
    Dim gDec As Double
    Dim gRAStep As Double
    Dim gDecStep As Double
    Dim gMinRA As Double
    Dim gMaxRA As Double
    Dim gMinDec As Double
    Dim gMaxDec As Double
    Dim X1 As Long
    Dim Y1 As Long
    Dim X2 As Long
    Dim Y2 As Long
    Dim cbRAStep As Double
    Dim cbDecStep As Double
    Dim cbRAToken As Double
    Dim cbDecToken As Double
    Dim t As Long
    Dim DSO As DSOData
    Dim myScale As Double
    Dim mySize As Double
    Dim Radius As Double
    Dim Star As StarData
    Dim StarIN As StarDataIN
    Dim StarSize As Long
    Dim StarColor As Long
    Dim CustomRec As CustomData
    Dim Elapsed As Double
    Dim MyEPMag As Double
    Dim MyAFOV As Double
    
    Rem *** Counter Variable - used throughout this subroutine ***
    Dim i As Long

    On Error Resume Next
    
    Abort = False
    OkayToWait = True
    
    Rem *** Get Screen Parameters ***
    eqMinMax
    Main.Cls
    Main.ScaleMode = Twips
    Main.StatusBar.Left = 0
    Main.StatusBar.Top = Main.ScaleHeight - 215
    Main.StatusBar.Width = Main.ScaleWidth
    Main.ScaleMode = Pixels
    Main.DrawWidth = 1
    Main.FillStyle = 1
    Main.FillColor = QBColor(0)
    Main.ForeColor = QBColor(15)

    Main.Caption = "DeepSkies - " & CurFile
    Status "Working (Press Esc To Stop)..."
    Main.MousePointer = 11
    Elapsed = Timer
    
    Rem ********************************************************************************
    Rem *                      COMPUTE EYEPIECE FIELD OF VIEW                          *
    Rem ********************************************************************************
    
    If togFOV = 1 Then
    
        Main.ScaleMode = 3
        
        MyEPMag = Val(epTelFL) / Val(epFL)
        MyAFOV = Val(epFOV) / MyEPMag
        
        myScale = Main.ScaleWidth / MyFOV
        mySize = MyAFOV / 2 * myScale
        
        x = Main.ScaleWidth / 2
        Y = Main.ScaleHeight / 2
        
        Main.Circle (x, Y), mySize, QBColor(11)
        
        If mySize > 40 Then
            Main.CurrentX = x - Len(epLabel) * 2.3
            Main.CurrentY = Y + mySize + 1
            Main.ForeColor = QBColor(11)
            Main.Print epLabel
        End If
        
    End If
    
    Rem ********************************************************************************
    Rem *                             COMPUTE GRIDLINES                                *
    Rem ********************************************************************************

    If togGridlines = 1 Then
        
        Rem * SET GRID STEP SIZE *
        If MyFOV >= 30 Then
            gRAStep = 15
            gDecStep = 10
        ElseIf MyFOV < 30 And MyFOV >= 10 Then
            gRAStep = 7.5
            gDecStep = 5
        ElseIf MyFOV < 10 And MyFOV >= 5 Then
            gRAStep = 3.75
            gDecStep = 2.5
        ElseIf MyFOV < 5 And MyFOV >= 2 Then
            gRAStep = 3.75 / 2
            gDecStep = 2.5 / 2
        ElseIf MyFOV < 2 Then
            gRAStep = 3.75 / 4
            gDecStep = 2.5 / 4
        End If
        
        Rem * FIGURE OUT MIN/MAX RA/DEC VALUES FOR GRIDLINES *
        gMinRA = Int(MinRA / gRAStep) * gRAStep - gRAStep
        gMaxRA = Int(MaxRA / gRAStep) * gRAStep + gRAStep
        gMinDec = Int(MinDec / gDecStep) * gDecStep - gDecStep
        gMaxDec = Int(MaxDec / gDecStep) * gDecStep + gDecStep
    
        If MyDec + (MyFOV / 2) > 90 Then
            gMaxDec = 80
        End If
    
        If MyDec - (MyFOV / 2) < -90 Then
            gMinDec = -80
        End If
    
    
        Rem * CROP OFF Min/Max VALUES OR CRAZY THINGS HAPPEN *
        If gMinDec < -80 Then
            gMinDec = -80
        End If
        If gMaxDec > 80 Then
            gMaxDec = 80
        End If
    
        Main.ForeColor = Color.GridlineLabel
        Main.FontName = "Arial"
        Main.FontSize = 8
    
        NiceGL = 1
    
        Rem * DO RIGHT ASCENSION GRID LINES *
        For gRA = gMinRA To gMaxRA - gRAStep Step gRAStep
    
            For gDec = gMinDec To gMaxDec - gDecStep / 10 Step gDecStep / 10
                eqConvert gRA, gDec
                X1 = x
                Y1 = Y
                eqConvert gRA, gDec + gDecStep / 10
                X2 = x
                Y2 = Y
                Main.Line (X1, Y1)-(X2, Y2), Color.Gridline
                
                If OkayToWait = True Then
                    OkayToWait = False
                    DoEvents
                    If Abort = True Then GoTo QuitEarly
                End If
                
            Next gDec
    
            Rem * ADJUST LABELS NEAR THE POLES *
            If MyDec > 80 Then
                eqConvert gRA, MyDec - 10
            ElseIf MyDec < -80 Then
                eqConvert gRA, MyDec + 10
            Else
                eqConvert gRA, MyDec
            End If
    
            Rem * PRINT RIGHT ASCENSION LABEL *
            If togGridLabels = 1 Then
                If x > 0 And x < Main.ScaleWidth And Y > 0 And Y < Main.ScaleHeight And gRA < 360 Then
                    Main.CurrentX = x - 6
                    Main.CurrentY = Y
                    Main.Print NiceRA(gRA)
                End If
            End If
    
        Next gRA
    
        Rem * DO DECLINATION GRID LINES *
        For gDec = gMinDec To gMaxDec + gDecStep Step gDecStep
    
            For gRA = gMinRA To gMaxRA - gRAStep / 10 Step gRAStep / 10
                eqConvert gRA, gDec
                X1 = x
                Y1 = Y
                eqConvert gRA + gRAStep / 10, gDec
                X2 = x
                Y2 = Y
                Main.Line (X1, Y1)-(X2, Y2), Color.Gridline
                If OkayToWait = True Then
                    OkayToWait = False
                    DoEvents
                    If Abort = True Then GoTo QuitEarly
                End If
            Next gRA
    
            eqConvert MyRA, gDec
    
            Rem * PRINT DECLINATION LABEL *
            If togGridLabels = 1 Then
                If x > 0 And x < Main.ScaleWidth And Y > 0 And Y < Main.ScaleHeight Then
                    Main.CurrentX = x
                    Main.CurrentY = Y - 6
                    Main.Print NiceDec(gDec)
                End If
            End If
    
        Next gDec
    
        NiceGL = 0

    End If

    Rem ********************************************************************************
    Rem *                       COMPUTE CONSTELLATION LINES                            *
    Rem ********************************************************************************
    
    If togConstLines = 1 Then

        i = 1
        
        Do
    
            If CLines(i).StartRA = -99 Then
                Exit Do
            Else
    
                eqConvert CLines(i).StartRA, CLines(i).StartDec
                X1 = x
                Y1 = Y
                eqConvert CLines(i).EndRA, CLines(i).EndDec
                X2 = x
                Y2 = Y
        
                If (X1 > 0 And X1 < Main.ScaleWidth) Or (X2 > 0 And X2 < Main.ScaleWidth) Or (Y1 > 0 And Y1 < Main.ScaleHeight) Or (Y2 > 0 And Y2 < Main.ScaleHeight) Then
                    If OkayToPlot(X1, Y1, X2, Y2) = 1 Then
                        
                        Rem * ADJUST FOR PROPER MOTION AND PRECESSION *
                        JNow CLines(i).StartRA, CLines(i).StartDec, 0, 0
                        eqConvert RA, Dec
                        X1 = x
                        Y1 = Y
                        JNow CLines(i).EndRA, CLines(i).EndDec, 0, 0
                        eqConvert RA, Dec
                        X2 = x
                        Y2 = Y
                        
                        Main.Line (X1, Y1)-(X2, Y2), Color.CLine
                    
                    End If
                End If
    
            End If
    
            i = i + 1
            If OkayToWait = True Then
                OkayToWait = False
                DoEvents
                If Abort = True Then GoTo QuitEarly
            End If
    
        Loop

    End If

    Rem ********************************************************************************
    Rem *                     COMPUTE CONSTELLATION BOUNDARIES                         *
    Rem ********************************************************************************
    
    If togConstBoundaries = 1 Then
    
        i = 1
    
        Do
            
            If CBnds(i).FromRA = -99 Then
                Exit Do
            Else
    
                eqConvert CBnds(i).FromRA, CBnds(i).FromDec
                X1 = x
                Y1 = Y
                eqConvert CBnds(i).ToRA, CBnds(i).ToDec
                X2 = x
                Y2 = Y
        
                If (X1 > 0 And X1 < Main.ScaleWidth) Or (X2 > 0 And X2 < Main.ScaleWidth) Or (Y1 > 0 And Y1 < Main.ScaleHeight) Or (Y2 > 0 And Y2 < Main.ScaleHeight) Then
                        
                    Rem * ADJUST FOR PROPER MOTION AND PRECESSION *
                    JNow CBnds(i).FromRA, CBnds(i).FromDec, 0, 0
                    eqConvert RA, Dec
                    X1 = x
                    Y1 = Y
                    JNow CBnds(i).ToRA, CBnds(i).ToDec, 0, 0
                    eqConvert RA, Dec
                    X2 = x
                    Y2 = Y
                        
                    If OkayToPlot(X1, Y1, X2, Y2) = 1 Then
                        Main.Line (X1, Y1)-(X2, Y2), Color.CBnd
                    End If
                        
                End If
    
            End If
    
            i = i + 1
            If OkayToWait = True Then
                OkayToWait = False
                DoEvents
                If Abort = True Then GoTo QuitEarly
            End If
    
        Loop

    End If

    Rem ********************************************************************************
    Rem *                       COMPUTE CONSTELLATION LABELS                           *
    Rem ********************************************************************************
    
    If togConstLabels = 1 Then
    
        Main.FontSize = 14
        Main.FontName = "Arial"
        Main.ForeColor = Color.CLabel
    
        i = 1
    
        Do
            
            If CLabels(i).RA = -99 Then
                Exit Do
            Else
    
                eqConvert CLabels(i).RA, CLabels(i).Dec
            
                If (x > 0 And x < Main.ScaleWidth) And (Y > 0 And Y < Main.ScaleHeight) And Asc(Left(CLabels(i).Label, 1)) > 0 Then
                    
                    Rem * ADJUST FOR PROPER MOTION AND PRECESSION *
                    JNow CLabels(i).RA, CLabels(i).Dec, 0, 0
                    eqConvert RA, Dec
    
                    Main.CurrentX = x
                    Main.CurrentY = Y
                    Main.Print Trim(CLabels(i).Label)
                End If
    
            End If
    
            i = i + 1
            If OkayToWait = True Then
                OkayToWait = False
                DoEvents
                If Abort = True Then GoTo QuitEarly
            End If
    
        Loop

    End If

    Rem ********************************************************************************
    Rem *                        COMPUTE DEEP SKY OBJECTS                              *
    Rem ********************************************************************************
    
    If togDSOs = 1 Then
    
        Main.FontSize = 8
        Main.FontName = "Arial"
        Main.ForeColor = Color.DSOLabel
    
        myScale = Main.ScaleWidth / MyFOV
    
        Open DataPath & "DSOS.DAT" For Binary Access Read As #3
    
        Do While Not EOF(3)
    
            Get #3, , DSO
    
            If DSO.Mag > MyMag + 3 Then
                Exit Do
            Else
    
                Rem * ADJUST FOR PROPER MOTION AND PRECESSION *
                JNow DSO.RA, DSO.Dec, 0, 0
                DSO.RA = RA
                DSO.Dec = Dec
                eqConvert DSO.RA, DSO.Dec
        
                If x > 0 And x < Main.ScaleWidth And Y > 0 And Y < Main.ScaleHeight Then
                    
                    mySize = DSO.MaxSz * myScale
    
                    If DSO.Mag <= MyMag + 3 Then
        
                        Select Case DSO.Flags
        
                            Case "D"
                                Main.Line (x - 2, Y - 2)-(x + 2, Y + 2), Color.DSODKNEB, B
                            Case "E"
                                If mySize > 10 Then
                                    Main.Circle (x, Y), mySize / 2, Color.DSOEMNEB
                                Else
                                    Main.Circle (x, Y), 3, Color.DSOEMNEB
                                End If
                            Case "P"
                                If mySize > 10 Then
                                    Main.Circle (x, Y), mySize / 2, Color.DSOPLNEB
                                Else
                                    Main.Circle (x, Y), 3, Color.DSOPLNEB
                                End If
                            Case "G"
                                If mySize > 10 And DSO.MaxSz > 0 Then
                                    If DSO.MinSz > 0 Then
                                        Rem
                                    Else
                                        DSO.MinSz = DSO.MaxSz / 2
                                    End If
                                    DrawGalaxy DSO.RA, DSO.Dec, DSO.MaxSz, DSO.MinSz, DSO.PA
                                    eqConvert DSO.RA, DSO.Dec
                                Else
                                    Main.Circle (x, Y), 5, Color.DSOGALXY, , , 0.5
                                End If
                            Case "O"
                                If mySize > 10 And Trim(DSO.Label) <> "Cr 285" Then
                                    Main.Circle (x, Y), mySize / 2, Color.DSOOPNCL
                                Else
                                    Main.Circle (x, Y), 3, Color.DSOOPNCL
                                End If
                            Case "C"
                                If mySize > 10 Then
                                    Main.Circle (x, Y), mySize / 2, Color.DSOGLOCL
                                    Main.Line (x, Y - mySize / 2)-(x, Y + mySize / 2), Color.DSOGLOCL
                                    Main.Line (x - mySize / 2, Y)-(x + mySize / 2, Y), Color.DSOGLOCL
                                Else
                                    Main.Circle (x, Y), 3, Color.DSOGLOCL
                                    Main.Line (x, Y - 2)-(x, Y + 3), Color.DSOGLOCL
                                    Main.Line (x - 2, Y)-(x + 3, Y), Color.DSOGLOCL
                                End If
                            Case Else
                                Main.Circle (x, Y), 3, Color.DSODKNEB
        
                        End Select
        
                        If DSO.Mag <= MyMag And togDSOLabels = 1 Then
                            Main.CurrentX = x + 6
                            Main.CurrentY = Y - 6
                            Main.Print Trim(DSO.Label)
                            Main.Line (x - 1, Y - 1)-(x + 1, Y + 1), Color.DSOLabel, B
                        End If
        
                    End If
    
                End If
        
            End If
            
            If OkayToWait = True Then
                OkayToWait = False
                DoEvents
                If Abort = True Then GoTo QuitEarly
            End If
    
        Loop
    
        Close #3

    End If

    If togStars = 1 Then
    
        Rem ********************************************************************************
        Rem *                      COMPUTE WHICH PLATES TO LOAD                            *
        Rem ********************************************************************************
        
        For i = 1 To 74
        
            Plates(i).doLoad = False
            
            ' The screen is completely contained in this plate. Turn it on!
            If Plates(i).MaxDec >= MaxDec And Plates(i).MinDec <= MinDec And Plates(i).MaxRA >= MaxRA And Plates(i).MinRA <= MinRA Then
                Plates(i).doLoad = True
            End If
            
            ' This plate is completely contained in the screen. Turn it on!
            If Plates(i).MaxDec <= MaxDec And Plates(i).MinDec >= MinDec And ((Plates(i).MaxRA <= MaxRA And Plates(i).MinRA >= MinRA) Or (Plates(i).MaxRA - 360 <= MaxRA And Plates(i).MinRA - 360 >= MinRA)) Then
                Plates(i).doLoad = True
            End If
            
            ' Upper Left
            If Plates(i).MaxDec >= MaxDec And Plates(i).MinDec <= MaxDec And Plates(i).MinRA <= MaxRA And Plates(i).MaxRA >= MaxRA Then
                Plates(i).doLoad = True
            End If
            
            ' Left Side
            If Plates(i).MaxDec <= MaxDec And Plates(i).MinDec >= MinDec And Plates(i).MinRA <= MaxRA And Plates(i).MaxRA >= MaxRA Then
                Plates(i).doLoad = True
            End If
            
            ' Lower Left
            If Plates(i).MaxDec >= MinDec And Plates(i).MinDec <= MinDec And Plates(i).MinRA <= MaxRA And Plates(i).MaxRA >= MaxRA Then
                Plates(i).doLoad = True
            End If
            
            ' Bottom
            If Plates(i).MaxDec >= MinDec And Plates(i).MinDec <= MinDec And ((Plates(i).MaxRA <= MaxRA And Plates(i).MinRA >= MinRA) Or (Plates(i).MaxRA - 360 <= MaxRA And Plates(i).MinRA - 360 >= MinRA)) Then
                Plates(i).doLoad = True
            End If
            
            ' Lower Right
            If Plates(i).MaxDec >= MinDec And Plates(i).MinDec <= MinDec And ((Plates(i).MaxRA >= MinRA And Plates(i).MinRA <= MinRA) Or (Plates(i).MaxRA - 360 >= MinRA And Plates(i).MinRA - 360 <= MinRA)) Then
                Plates(i).doLoad = True
            End If
                        
            ' Right Side
            If Plates(i).MaxDec <= MaxDec And Plates(i).MinDec >= MinDec And ((Plates(i).MaxRA >= MinRA And Plates(i).MinRA <= MinRA) Or (Plates(i).MaxRA - 360 >= MinRA And Plates(i).MinRA - 360 <= MinRA)) Then
                Plates(i).doLoad = True
            End If
            
            ' Upper Right
            If Plates(i).MaxDec >= MaxDec And Plates(i).MinDec <= MaxDec And ((Plates(i).MaxRA >= MinRA And Plates(i).MinRA <= MinRA) Or (Plates(i).MaxRA - 360 >= MinRA And Plates(i).MinRA - 360 <= MinRA)) Then
                Plates(i).doLoad = True
            End If
            
            ' Top
            If Plates(i).MaxDec >= MaxDec And Plates(i).MinDec <= MaxDec And ((Plates(i).MaxRA <= MaxRA And Plates(i).MinRA >= MinRA) Or (Plates(i).MaxRA - 360 <= MaxRA And Plates(i).MinRA - 360 >= MinRA)) Then
                Plates(i).doLoad = True
            End If
            
            ' South Polar Halo Plates
            If MaxRA - MinRA > 100 And MyDec - (MyFOV / 2) <= -90 Then
                
                If Plates(i).MinDec >= MinDec And Plates(i).MaxDec <= MaxDec And i > 64 Then
                    Plates(i).doLoad = True
                End If
                                
                If Plates(i).MinDec <= MinDec And Plates(i).MaxDec <= MaxDec And i > 64 Then
                    Plates(i).doLoad = True
                End If
                
                If Plates(i).MinDec <= MinDec And Plates(i).MaxDec >= MaxDec And i > 64 Then
                    Plates(i).doLoad = True
                End If
                
                If Plates(i).MinDec >= MinDec And Plates(i).MaxDec >= MaxDec And i > 64 Then
                    Plates(i).doLoad = True
                End If
                
            End If
            
            ' North Polar Halo Plates
            If MaxRA - MinRA > 100 And MyDec + (MyFOV / 2) >= 90 Then
                
                If Plates(i).MinDec >= MinDec And Plates(i).MaxDec <= MaxDec And i < 10 Then
                    Plates(i).doLoad = True
                End If
                                
                If Plates(i).MinDec <= MinDec And Plates(i).MaxDec <= MaxDec And i < 10 Then
                    Plates(i).doLoad = True
                End If
                
                If Plates(i).MinDec <= MinDec And Plates(i).MaxDec >= MaxDec And i < 10 Then
                    Plates(i).doLoad = True
                End If
                
                If Plates(i).MinDec >= MinDec And Plates(i).MaxDec >= MaxDec And i < 10 Then
                    Plates(i).doLoad = True
                End If
                
            End If
            
        Next i
        
        ' North Polar Plate
        If MyDec + (MyFOV / 2) > 90 Then
            Plates(1).doLoad = True
        End If
        
        ' South Polar Plate
        If MyDec - (MyFOV / 2) < -90 Then
            Plates(74).doLoad = True
        End If
        
        Rem ********************************************************************************
        Rem *                          PLOT STARS ON SCREEN                                *
        Rem ********************************************************************************
        Main.ForeColor = Color.StarLabel
        Main.FontSize = 8
        Main.FontName = "Arial"
        Main.FillStyle = 0          'Solid
        
        For i = 1 To 74
    
            If Plates(i).doLoad = True Then
    
                Open DataPath & Plates(i).FileName For Binary Access Read As #3
            
                Do While Not EOF(3)
                    
                    Get #3, , StarIN
                    
                    Star.ID = StarIN.ID
                    Star.Label = StarIN.Label
                    Star.RA = CDbl(StarIN.RA)
                    Star.Dec = CDbl(StarIN.Dec)
                    Star.PMRA = CDbl(StarIN.PMRA)
                    Star.PMDec = CDbl(StarIN.PMDec)
                    Star.Mag = CDbl(StarIN.Mag)
                    Star.BV = CDbl(StarIN.BV)
                    Star.Flags = StarIN.Flags
                    
                    If Star.Mag <= MyMag Then
                        
                        Rem * ADJUST FOR PROPER MOTION AND PRECESSION *
                        JNow Star.RA, Star.Dec, Star.PMRA, Star.PMDec
                        eqConvert RA, Dec
                        
                        If x > 0 And x < Main.ScaleWidth And Y > 0 And Y < Main.ScaleHeight Then
                                
                            Rem * COMPUTE STAR SIZE *
                            If MyMag <= 15 Then
                                StarSize = CInt(MyMag - Star.Mag + 0.5)
                            Else
                                StarSize = CInt(15 - Star.Mag + 0.5)
                            End If
                            If StarSize < 1 Then
                                StarSize = 1
                            End If
                            If StarSize > 4 Then
                                StarSize = 4
                            End If
        
                            Rem * COMPUTE STAR COLOR BASED ON BV *
                            StarColor = BVColor(Star.BV)
                            
                            If StarSize <= 3 Then
                                Main.DrawWidth = StarSize
                                Main.PSet (x, Y), StarColor
                            Else
                                Main.FillColor = StarColor
                                Main.Circle (x, Y), StarSize / 2, StarColor
                            End If
    
                            If Star.Mag <= MyMag - 2.5 And togStarLabels = 1 Then
                                If togDimStarLabels = 0 And (Left(Star.Label, 4) = "HIP-" Or Left(Star.Label, 4) = "TYC-" Or Left(Star.Label, 4) = "GSC-") Then
                                    Rem
                                Else
                                    Main.CurrentX = x + 6
                                    Main.CurrentY = Y - 6
                                    Main.Print Star.Label
                                End If
                            End If
                        
                        End If
                    Else
                        Exit Do
                    End If
                
                    If OkayToWait = True Then
                        OkayToWait = False
                        DoEvents
                        If Abort = True Then GoTo QuitEarly
                    End If
                
                Loop
            
                Close #3
    
            End If
    
        Next i
        
        Main.FillStyle = 1          'Transparent
        Main.FillColor = QBColor(0)
        
    End If
    
    Main.DrawWidth = 1
    
    If togCustom = 1 Then
    
        Rem ********************************************************************************
        Rem *                           PLOT CUSTOM OBJECTS                                *
        Rem ********************************************************************************
    
        Open DataPath & "CUSTOM.DAT" For Binary Access Read As #3
        
        For i = 0 To 19
        
            Get #3, , CustomRec
            
            If Len(Trim(CustomRec.Label)) > 0 Then
            
                eqConvert CustomRec.RA, CustomRec.Dec
                
                If x > 0 And x < Main.ScaleWidth And Y > 0 And Y < Main.ScaleHeight Then
                                        
                    If CustomRec.Flags = "S" Then
                    
                        Rem *** THIS IS A STELLAR OBJECT ***
                        
                        If CustomRec.Mag <= MyMag Then
                            
                            Main.ForeColor = Color.StarLabel
                            Main.FontSize = 8
                            Main.FontName = "Arial"
                            
                            Rem * COMPUTE OBJECT SIZE *
                            StarSize = CInt(MyMag - CustomRec.Mag + 0.5)
                            If StarSize < 1 Then
                                StarSize = 1
                            End If
                            
                            Rem * COMPUTE STAR SIZE *
                            If StarSize > 6 Then
                                StarSize = 6
                            End If
        
                            Rem * COMPUTE STAR COLOR BASED ON BV *
                            StarColor = BVColor(CustomRec.Field3)
                            
                            Rem * ADJUST FOR PROPER MOTION AND PRECESSION *
                            JNow CustomRec.RA, CustomRec.Dec, CustomRec.Field1, CustomRec.Field2
                            eqConvert RA, Dec

                            Main.DrawWidth = StarSize
                            
                            Main.PSet (x, Y), StarColor
                            
                            Main.CurrentX = x + 6
                            Main.CurrentY = Y - 6
                            
                            If togCustomLabels = 1 And CustomRec.Mag <= MyMag - 2.5 Then
                                Main.CurrentX = x + 6
                                Main.CurrentY = Y - 6
                                Main.Print Trim(CustomRec.Label)
                            End If
                            
                        End If
                            
                    Else
                    
                        Rem *** THIS IS A DEEP SKY OBJECT ***
                        
                        If CustomRec.Mag <= MyMag + 3 Then
                        
                            Main.FontSize = 8
                            Main.FontName = "Arial"
                            Main.ForeColor = Color.DSOLabel
                            myScale = Main.ScaleWidth / MyFOV
                            mySize = CustomRec.Field1 / 2 * myScale
                            
                            Rem * ADJUST FOR PROPER MOTION AND PRECESSION *
                            JNow CustomRec.RA, CustomRec.Dec, 0, 0
                            CustomRec.RA = RA
                            CustomRec.Dec = Dec
                            eqConvert CustomRec.RA, CustomRec.Dec
                        
                            Select Case CustomRec.Flags
            
                                Case "D"
                                    Main.Line (x - 2, Y - 2)-(x + 2, Y + 2), Color.DSODKNEB, B
                                Case "E"
                                    If mySize > 10 Then
                                        Main.Circle (x, Y), mySize / 2, Color.DSOEMNEB
                                    Else
                                        Main.Circle (x, Y), 3, Color.DSOEMNEB
                                    End If
                                Case "P"
                                    If mySize > 10 Then
                                        Main.Circle (x, Y), mySize / 2, Color.DSOPLNEB
                                    Else
                                        Main.Circle (x, Y), 3, Color.DSOPLNEB
                                    End If
                                Case "G"
                                    If mySize > 10 And CustomRec.Field1 > 0 Then
                                        If CustomRec.Field2 > 0 Then
                                            Rem
                                        Else
                                            CustomRec.Field2 = CustomRec.Field1 / 2
                                        End If
                                        DrawGalaxy CustomRec.RA, CustomRec.Dec, CustomRec.Field1, CustomRec.Field2, CustomRec.Field3
                                        eqConvert CustomRec.RA, CustomRec.Dec
                                    Else
                                        Main.Circle (x, Y), 5, Color.DSOGALXY, , , 0.5
                                    End If
                                Case "O"
                                    If mySize > 10 And Trim(DSO.Label) <> "Cr 285" Then
                                        Main.Circle (x, Y), mySize / 2, Color.DSOOPNCL
                                    Else
                                        Main.Circle (x, Y), 3, Color.DSOOPNCL
                                    End If
                                Case "C"
                                    If mySize > 10 Then
                                        Main.Circle (x, Y), mySize / 2, Color.DSOGLOCL
                                        Main.Line (x, Y - mySize / 2)-(x, Y + mySize / 2), Color.DSOGLOCL
                                        Main.Line (x - mySize / 2, Y)-(x + mySize / 2, Y), Color.DSOGLOCL
                                    Else
                                        Main.Circle (x, Y), 3, Color.DSOGLOCL
                                        Main.Line (x, Y - 2)-(x, Y + 3), Color.DSOGLOCL
                                        Main.Line (x - 2, Y)-(x + 3, Y), Color.DSOGLOCL
                                    End If
                                Case Else
                                    Main.Circle (x, Y), 3, Color.DSODKNEB
            
                            End Select
                    
                            If togCustomLabels = 1 And CustomRec.Mag <= MyMag Then
                                Main.CurrentX = x + 6
                                Main.CurrentY = Y - 6
                                Main.Print Trim(CustomRec.Label)
                                Main.Line (x - 1, Y - 1)-(x + 1, Y + 1), Color.DSOLabel, B
                            End If
                        
                        End If
    
                    End If
                
                End If
                
            End If
            
            If OkayToWait = True Then
                OkayToWait = False
                DoEvents
                If Abort = True Then GoTo QuitEarly
            End If
            
        Next i
        
        Close #3
    
    End If
    
    Main.DrawWidth = 1
    
QuitEarly:

    Close
    
    Abort = False
    
    Status "Ready."
    
    Main.MousePointer = ccDefault
    Elapsed = Timer - Elapsed
    If Elapsed > 60 Then
        Beep
    End If

    On Error GoTo 0
    
End Sub

Sub ProcessKeys(ByVal KeyCode As Integer, ByVal Shift As Integer)

    Rem ********************************************************************************
    Rem *                          SUBROUTINE: ProcessKeys                             *
    Rem ********************************************************************************
    Rem *  PURPOSE: compute program reaction to provided user input                    *
    Rem *  MODIFIES: MyRA, MyDec, MyFOV & MyMag global variables                       *
    Rem *  REQUIRES: KeyCode and Shift values provided by a form's KeyDown event       *
    Rem *  LAST MODIFIED: May 14, 2012 by Rick Towns                                   *
    Rem ********************************************************************************

    Dim Speed As Double
    
    If Shift = 1 Then
        Speed = MyFOV / 10
    Else
        Speed = MyFOV / 4
    End If
    
    Rem *** THIS SIGNALS TO THE PROGRAM TO ABORT WHATEVER IT IS CHEWING ON BECAUSE ***
    Rem *** THE USER HAS PRESSED A KEY AND WE NEED TO MOVE ON TO THAT PROCESS.     ***
    Abort = True

    Select Case KeyCode
        
        Case 82
            Rem * R KEY - RESET *
            Main.menu_ToolsLoad_Click

        Case 81
            Rem * Q KEY - QUIT *
            End

        Case 40
            Rem * ARROW DOWN *
            MyDec = MyDec - Speed
            If MyDec < -89 Then
                MyDec = -89
            End If
            Main.Refresh

        Case 38
            Rem * ARROW UP *
            MyDec = MyDec + Speed
            If MyDec > 89 Then
                MyDec = 89
            End If
            Main.Refresh

        Case 37
            Rem * ARROW LEFT *
            MyRA = MyRA + Speed
            If MyRA > 360 Then
                MyRA = MyRA - 360
            End If
            Main.Refresh

        Case 39
            Rem * ARROW RIGHT *
            MyRA = MyRA - Speed
            If MyRA < 0 Then
                MyRA = MyRA + 360
            End If
            Main.Refresh

        Case 36
            Rem * HOME KEY *
            If MyFOV >= 10 Then
                MyFOV = MyFOV + 10
            ElseIf MyFOV >= 1 Then
                MyFOV = MyFOV + 1
            Else
                MyFOV = MyFOV + 0.1
            End If
            If MyFOV > 100 Then
                MyFOV = 100
            End If
            Main.Refresh

        Case 35
            Rem * END KEY *
            If MyFOV >= 20 Then
                MyFOV = MyFOV - 10
            ElseIf MyFOV >= 2 Then
                MyFOV = MyFOV - 1
            Else
                MyFOV = MyFOV - 0.1
            End If
            If MyFOV < 0.1 Then
                MyFOV = 0.1000001
            End If
            Main.Refresh

        Case 45
            Rem * INSERT KEY *
            MyMag = MyMag + 0.5
            If MyMag > 21 Then
                MyMag = 21
            End If
            Main.Refresh

        Case 46
            Rem * DELETE KEY *
            MyMag = MyMag - 0.5
            If MyMag < 0 Then
                MyMag = 0
            End If
            Main.Refresh
    
    End Select
    
End Sub

Sub Save(FileName As String)

    Open FileName For Binary Access Write As #3
    
    Put #3, , MyRA
    Put #3, , MyDec
    Put #3, , MyFOV
    Put #3, , MyMag
    
    Close #3

End Sub

Sub Load(FileName As String)

    Dim OldRA As Double
    OldRA = MyRA
    
    Open FileName For Binary Access Read As #3
    
    Get #3, , MyRA
    
    If EOF(3) Then
        MsgBox "File does not exist!"
        Close #3
        Kill FileName
        CurFile = "Untitled"
        MyRA = OldRA
    Else
        
        Get #3, , MyDec
        Get #3, , MyFOV
        Get #3, , MyMag
        Close #3
    End If
        
End Sub

Sub Status(ByVal Message As String)

    Rem ********************************************************************************
    Rem *                           SUBROUTINE: eqConvert                              *
    Rem ********************************************************************************
    Rem *  PURPOSE: update status bar information at bottom of program screen          *
    Rem *  MODIFIES: status indicators for RA, Dec, FOV, Mag and status message        *
    Rem *  REQUIRES: valid message string to populate Status indicator                 *
    Rem *  LAST MODIFIED: May 14, 2012 by Rick Towns                                   *
    Rem ********************************************************************************

    Dim s As String

    s = "RA: " & NiceRA(MyRA) & "  |  "
    s = s & "Dec: " & NiceDec(MyDec) & "  |  "
    s = s & "FOV: " & NiceFOV(MyFOV) & "  |  "
    s = s & "Mag: " & NiceMag(MyMag) & "  |  "
    s = s & "Status: " & Message

    Main.StatusBar.Caption = s
    Main.StatusBar.Refresh

End Sub

Sub xyConvert(ByVal pX As Integer, ByVal pY As Integer)

    Rem ********************************************************************************
    Rem *                           SUBROUTINE: xyConvert                              *
    Rem ********************************************************************************
    Rem *  PURPOSE: convert provided X/Y screen pixels into RA/Dec coordinates         *
    Rem *  MODIFIES: RA & Dec global variables                                         *
    Rem *  REQUIRES: X and Y screen pixel coordinates                                  *
    Rem *  LAST MODIFIED: May 14, 2012 by Rick Towns                                   *
    Rem ********************************************************************************

    Dim RA_Field As Double
    Dim Dec_Field As Double
    Dim Field As Double
    Dim ROT As Double
    Dim Az As Double
    Dim Alt As Double
    Dim tX As Double
    Dim tY As Double
    Dim xyScale As Double
    Dim X1 As Double
    Dim Y1 As Double
    Dim cosH As Double
    Dim H As Double

    RA_Field = MyRA * Rads
    Dec_Field = MyDec * Rads
    Field = MyFOV * Rads
    ROT = MyROT * Rads

    Main.ScaleMode = Pixels

    Rem /* STEP 1 - Convert from pixels X,Y to virtual X,Y... */
    xyScale = (Main.ScaleWidth / Field) / (120 / MyFOV)
    tX = -(pX - (Main.ScaleWidth / 2)) / xyScale
    tY = (pY - (Main.ScaleHeight / 2)) / xyScale

    Rem /* STEP 2 - Convert from virtual X,Y to virtual horizon coordinates... */
    X1 = (tX * Field) / PI
    Y1 = (tY * Field) / PI
    Alt = PI2 * (1 - Sqr(X1 * X1 + Y1 * Y1))
    Az = NormalizeZeroTwoPI(Atan2(Y1, X1) + PI2 - ROT)

    Rem /* STEP 3 - Convert from virtual horizon coordinates to RA/Dec... */
    Dec = Asin(Sin(Dec_Field) * Sin(Alt) + Cos(Dec_Field) * Cos(Alt) * Cos(Az))
    cosH = (Sin(Alt) - Sin(Dec_Field) * Sin(Dec)) / (Cos(Dec_Field) * Cos(Dec))

    If cosH > 1 Then
        H = 0
    ElseIf cosH < -1 Then
        H = PI
    Else
        H = Acos(cosH)
    End If

    If Sin(Az) > 0 Then
        H = TwoPI - H
    End If

    RA = NormalizeZeroTwoPI(RA_Field - H)

    Rem /* STEP 4 - Convert back from radians... */
    RA = RA / Rads
    Dec = Dec / Rads

End Sub

