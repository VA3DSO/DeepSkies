Attribute VB_Name = "MATH"
Rem ********************************************************************************
Rem *                       DEEPSKIES FOR WINDOWS VERSION 1.0                      *
Rem *                                 MATH LIBRARY                                 *
Rem ********************************************************************************
Rem *  MATH FUNCTIONS LIBRARY                                                      *
Rem *  By: Rick Towns                                                              *
Rem *  Date: May 13, 2012                                                          *
Rem ********************************************************************************
Rem *  FUNCTIONS:                                                                  *
Rem *  - Atan2: arc tangent - 2 parameters                                         *
Rem *  - Asin: arc sine                                                            *
Rem *  - Acos: arc cosine                                                          *
Rem *  - Acot: arc cotangent                                                       *
Rem *  - Asec: arc secant                                                          *
Rem *  - Acsc: arc cosecant                                                        *
Rem *  - NormalizeZeroTwoPI: normalize value to be between 0 and 2*PI              *
Rem ********************************************************************************

Function Acos(ByVal Value As Double) As Double

    If Abs(Value) <> 1 Then
        Acos = PI2 - Atn(Value / Sqr(1 - Value * Value))
    ElseIf Value = -1 Then
        Acos = PI
    ElseIf Value = 1 Then
        Acos = 0
    End If

End Function


Function Acot(ByVal Value As Double) As Double

    Acot = Atn(1 / Value)

End Function


Function Acsc(ByVal Value As Double) As Double

    If Abs(Value) <> 1 Then
        Acsc = Atn((1 / Value) / Sqr(1 - 1 / (Value * Value)))
    Else
        Acsc = PI2 * Sgn(Value)
    End If

End Function

Function Asec(ByVal Value As Double) As Double

    If Abs(Value) <> 1 Then
        Asec = PI2 - Atn((1 / Value) / Sqr(1 - 1 / (Value * Value)))
    Else
        Asec = PI * Sgn(Value)
    End If

End Function


Function Asin(ByVal Value As Double) As Double

    If Abs(Value) <> 1 Then
        Asin = Atn(Value / Sqr(1 - Value * Value))
    Else
        Asin = PI2 * Sgn(Value)
    End If

End Function


Function Atan2(ByVal pY As Double, ByVal pX As Double) As Double

    Dim arctan As Double

    If pX <> 0 Then arctan = Atn(pY / pX)

    If pX > 0 Then
        Atan2 = arctan
    ElseIf pY >= 0 And pX < 0 Then
        Atan2 = PI + arctan
    ElseIf pY < 0 And pX < 0 Then
        Atan2 = arctan - PI
    ElseIf pY > 0 And pX = 0 Then
        Atan2 = PI / 2#
    ElseIf pY < 0 And pX = 0 Then
        Atan2 = PI / -2#
    End If

End Function


Function NormalizeZeroTwoPI(ByVal Value As Double) As Double

    Dim tmpVal As Double
    tmpVal = Value

    Do While tmpVal >= TwoPI
        tmpVal = tmpVal - TwoPI
    Loop

    Do While tmpVal < 0#
        tmpVal = tmpVal + TwoPI
    Loop

    NormalizeZeroTwoPI = tmpVal

End Function

