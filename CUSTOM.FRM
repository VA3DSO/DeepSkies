VERSION 4.00
Begin VB.Form Custom 
   Appearance      =   0  'Flat
   BackColor       =   &H80000005&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Custom Objects"
   ClientHeight    =   5655
   ClientLeft      =   2385
   ClientTop       =   3045
   ClientWidth     =   7455
   ControlBox      =   0   'False
   Height          =   6165
   Left            =   2325
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   5655
   ScaleWidth      =   7455
   Top             =   2595
   Width           =   7575
   Begin VB.CommandButton btnHelp 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      Caption         =   "Help"
      Height          =   255
      Left            =   4560
      TabIndex        =   233
      Top             =   5280
      Width           =   855
   End
   Begin VB.CommandButton btnSave 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      Caption         =   "Save"
      Height          =   255
      Left            =   5520
      TabIndex        =   232
      Top             =   5280
      Width           =   855
   End
   Begin VB.CommandButton btnClose 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      Caption         =   "Close"
      Height          =   255
      Left            =   6480
      TabIndex        =   231
      Top             =   5280
      Width           =   855
   End
   Begin VB.TextBox txtFlags 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   19
      Left            =   7080
      TabIndex        =   230
      Text            =   "Flags"
      Top             =   4920
      Width           =   255
   End
   Begin VB.TextBox txtFlags 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   18
      Left            =   7080
      TabIndex        =   229
      Text            =   "Flags"
      Top             =   4680
      Width           =   255
   End
   Begin VB.TextBox txtFlags 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   17
      Left            =   7080
      TabIndex        =   228
      Text            =   "Flags"
      Top             =   4440
      Width           =   255
   End
   Begin VB.TextBox txtFlags 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   16
      Left            =   7080
      TabIndex        =   227
      Text            =   "Flags"
      Top             =   4200
      Width           =   255
   End
   Begin VB.TextBox txtFlags 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   15
      Left            =   7080
      TabIndex        =   226
      Text            =   "Flags"
      Top             =   3960
      Width           =   255
   End
   Begin VB.TextBox txtFlags 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   14
      Left            =   7080
      TabIndex        =   225
      Text            =   "Flags"
      Top             =   3720
      Width           =   255
   End
   Begin VB.TextBox txtFlags 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   13
      Left            =   7080
      TabIndex        =   224
      Text            =   "Flags"
      Top             =   3480
      Width           =   255
   End
   Begin VB.TextBox txtFlags 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   12
      Left            =   7080
      TabIndex        =   223
      Text            =   "Flags"
      Top             =   3240
      Width           =   255
   End
   Begin VB.TextBox txtFlags 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   11
      Left            =   7080
      TabIndex        =   222
      Text            =   "Flags"
      Top             =   3000
      Width           =   255
   End
   Begin VB.TextBox txtFlags 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   10
      Left            =   7080
      TabIndex        =   221
      Text            =   "Flags"
      Top             =   2760
      Width           =   255
   End
   Begin VB.TextBox txtFlags 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   9
      Left            =   7080
      TabIndex        =   220
      Text            =   "Flags"
      Top             =   2520
      Width           =   255
   End
   Begin VB.TextBox txtFlags 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   8
      Left            =   7080
      TabIndex        =   219
      Text            =   "Flags"
      Top             =   2280
      Width           =   255
   End
   Begin VB.TextBox txtFlags 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   7
      Left            =   7080
      TabIndex        =   218
      Text            =   "Flags"
      Top             =   2040
      Width           =   255
   End
   Begin VB.TextBox txtFlags 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   6
      Left            =   7080
      TabIndex        =   217
      Text            =   "Flags"
      Top             =   1800
      Width           =   255
   End
   Begin VB.TextBox txtFlags 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   5
      Left            =   7080
      TabIndex        =   216
      Text            =   "Flags"
      Top             =   1560
      Width           =   255
   End
   Begin VB.TextBox txtFlags 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   4
      Left            =   7080
      TabIndex        =   215
      Text            =   "Flags"
      Top             =   1320
      Width           =   255
   End
   Begin VB.TextBox txtFlags 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   3
      Left            =   7080
      TabIndex        =   214
      Text            =   "Flags"
      Top             =   1080
      Width           =   255
   End
   Begin VB.TextBox txtFlags 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   2
      Left            =   7080
      TabIndex        =   213
      Text            =   "Flags"
      Top             =   840
      Width           =   255
   End
   Begin VB.TextBox txtFlags 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   1
      Left            =   7080
      TabIndex        =   212
      Text            =   "Flags"
      Top             =   600
      Width           =   255
   End
   Begin VB.TextBox txtClass 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   19
      Left            =   6600
      TabIndex        =   211
      Text            =   "Class"
      Top             =   4920
      Width           =   495
   End
   Begin VB.TextBox txtClass 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   18
      Left            =   6600
      TabIndex        =   210
      Text            =   "Class"
      Top             =   4680
      Width           =   495
   End
   Begin VB.TextBox txtClass 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   17
      Left            =   6600
      TabIndex        =   209
      Text            =   "Class"
      Top             =   4440
      Width           =   495
   End
   Begin VB.TextBox txtClass 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   16
      Left            =   6600
      TabIndex        =   208
      Text            =   "Class"
      Top             =   4200
      Width           =   495
   End
   Begin VB.TextBox txtClass 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   15
      Left            =   6600
      TabIndex        =   207
      Text            =   "Class"
      Top             =   3960
      Width           =   495
   End
   Begin VB.TextBox txtClass 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   14
      Left            =   6600
      TabIndex        =   206
      Text            =   "Class"
      Top             =   3720
      Width           =   495
   End
   Begin VB.TextBox txtClass 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   13
      Left            =   6600
      TabIndex        =   205
      Text            =   "Class"
      Top             =   3480
      Width           =   495
   End
   Begin VB.TextBox txtClass 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   12
      Left            =   6600
      TabIndex        =   204
      Text            =   "Class"
      Top             =   3240
      Width           =   495
   End
   Begin VB.TextBox txtClass 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   11
      Left            =   6600
      TabIndex        =   203
      Text            =   "Class"
      Top             =   3000
      Width           =   495
   End
   Begin VB.TextBox txtClass 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   10
      Left            =   6600
      TabIndex        =   202
      Text            =   "Class"
      Top             =   2760
      Width           =   495
   End
   Begin VB.TextBox txtClass 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   9
      Left            =   6600
      TabIndex        =   201
      Text            =   "Class"
      Top             =   2520
      Width           =   495
   End
   Begin VB.TextBox txtClass 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   8
      Left            =   6600
      TabIndex        =   200
      Text            =   "Class"
      Top             =   2280
      Width           =   495
   End
   Begin VB.TextBox txtClass 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   7
      Left            =   6600
      TabIndex        =   199
      Text            =   "Class"
      Top             =   2040
      Width           =   495
   End
   Begin VB.TextBox txtClass 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   6
      Left            =   6600
      TabIndex        =   198
      Text            =   "Class"
      Top             =   1800
      Width           =   495
   End
   Begin VB.TextBox txtClass 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   5
      Left            =   6600
      TabIndex        =   197
      Text            =   "Class"
      Top             =   1560
      Width           =   495
   End
   Begin VB.TextBox txtClass 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   4
      Left            =   6600
      TabIndex        =   196
      Text            =   "Class"
      Top             =   1320
      Width           =   495
   End
   Begin VB.TextBox txtClass 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   3
      Left            =   6600
      TabIndex        =   195
      Text            =   "Class"
      Top             =   1080
      Width           =   495
   End
   Begin VB.TextBox txtClass 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   2
      Left            =   6600
      TabIndex        =   194
      Text            =   "Class"
      Top             =   840
      Width           =   495
   End
   Begin VB.TextBox txtClass 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   1
      Left            =   6600
      TabIndex        =   193
      Text            =   "Class"
      Top             =   600
      Width           =   495
   End
   Begin VB.TextBox txtField3 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   19
      Left            =   6000
      TabIndex        =   192
      Text            =   "B-V"
      Top             =   4920
      Width           =   615
   End
   Begin VB.TextBox txtField3 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   18
      Left            =   6000
      TabIndex        =   191
      Text            =   "B-V"
      Top             =   4680
      Width           =   615
   End
   Begin VB.TextBox txtField3 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   17
      Left            =   6000
      TabIndex        =   190
      Text            =   "B-V"
      Top             =   4440
      Width           =   615
   End
   Begin VB.TextBox txtField3 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   16
      Left            =   6000
      TabIndex        =   189
      Text            =   "B-V"
      Top             =   4200
      Width           =   615
   End
   Begin VB.TextBox txtField3 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   15
      Left            =   6000
      TabIndex        =   188
      Text            =   "B-V"
      Top             =   3960
      Width           =   615
   End
   Begin VB.TextBox txtField3 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   14
      Left            =   6000
      TabIndex        =   187
      Text            =   "B-V"
      Top             =   3720
      Width           =   615
   End
   Begin VB.TextBox txtField3 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   13
      Left            =   6000
      TabIndex        =   186
      Text            =   "B-V"
      Top             =   3480
      Width           =   615
   End
   Begin VB.TextBox txtField3 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   12
      Left            =   6000
      TabIndex        =   185
      Text            =   "B-V"
      Top             =   3240
      Width           =   615
   End
   Begin VB.TextBox txtField3 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   11
      Left            =   6000
      TabIndex        =   184
      Text            =   "B-V"
      Top             =   3000
      Width           =   615
   End
   Begin VB.TextBox txtField3 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   10
      Left            =   6000
      TabIndex        =   183
      Text            =   "B-V"
      Top             =   2760
      Width           =   615
   End
   Begin VB.TextBox txtField3 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   9
      Left            =   6000
      TabIndex        =   182
      Text            =   "B-V"
      Top             =   2520
      Width           =   615
   End
   Begin VB.TextBox txtField3 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   8
      Left            =   6000
      TabIndex        =   181
      Text            =   "B-V"
      Top             =   2280
      Width           =   615
   End
   Begin VB.TextBox txtField3 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   7
      Left            =   6000
      TabIndex        =   180
      Text            =   "B-V"
      Top             =   2040
      Width           =   615
   End
   Begin VB.TextBox txtField3 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   6
      Left            =   6000
      TabIndex        =   179
      Text            =   "B-V"
      Top             =   1800
      Width           =   615
   End
   Begin VB.TextBox txtField3 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   5
      Left            =   6000
      TabIndex        =   178
      Text            =   "B-V"
      Top             =   1560
      Width           =   615
   End
   Begin VB.TextBox txtField3 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   4
      Left            =   6000
      TabIndex        =   177
      Text            =   "B-V"
      Top             =   1320
      Width           =   615
   End
   Begin VB.TextBox txtField3 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   3
      Left            =   6000
      TabIndex        =   176
      Text            =   "B-V"
      Top             =   1080
      Width           =   615
   End
   Begin VB.TextBox txtField3 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   2
      Left            =   6000
      TabIndex        =   175
      Text            =   "B-V"
      Top             =   840
      Width           =   615
   End
   Begin VB.TextBox txtField3 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   1
      Left            =   6000
      TabIndex        =   174
      Text            =   "B-V"
      Top             =   600
      Width           =   615
   End
   Begin VB.TextBox txtMag 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   19
      Left            =   5520
      TabIndex        =   173
      Text            =   "Mag"
      Top             =   4920
      Width           =   495
   End
   Begin VB.TextBox txtMag 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   18
      Left            =   5520
      TabIndex        =   172
      Text            =   "Mag"
      Top             =   4680
      Width           =   495
   End
   Begin VB.TextBox txtMag 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   17
      Left            =   5520
      TabIndex        =   171
      Text            =   "Mag"
      Top             =   4440
      Width           =   495
   End
   Begin VB.TextBox txtMag 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   16
      Left            =   5520
      TabIndex        =   170
      Text            =   "Mag"
      Top             =   4200
      Width           =   495
   End
   Begin VB.TextBox txtMag 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   15
      Left            =   5520
      TabIndex        =   169
      Text            =   "Mag"
      Top             =   3960
      Width           =   495
   End
   Begin VB.TextBox txtMag 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   14
      Left            =   5520
      TabIndex        =   168
      Text            =   "Mag"
      Top             =   3720
      Width           =   495
   End
   Begin VB.TextBox txtMag 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   13
      Left            =   5520
      TabIndex        =   167
      Text            =   "Mag"
      Top             =   3480
      Width           =   495
   End
   Begin VB.TextBox txtMag 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   12
      Left            =   5520
      TabIndex        =   166
      Text            =   "Mag"
      Top             =   3240
      Width           =   495
   End
   Begin VB.TextBox txtMag 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   11
      Left            =   5520
      TabIndex        =   165
      Text            =   "Mag"
      Top             =   3000
      Width           =   495
   End
   Begin VB.TextBox txtMag 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   10
      Left            =   5520
      TabIndex        =   164
      Text            =   "Mag"
      Top             =   2760
      Width           =   495
   End
   Begin VB.TextBox txtMag 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   9
      Left            =   5520
      TabIndex        =   163
      Text            =   "Mag"
      Top             =   2520
      Width           =   495
   End
   Begin VB.TextBox txtMag 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   8
      Left            =   5520
      TabIndex        =   162
      Text            =   "Mag"
      Top             =   2280
      Width           =   495
   End
   Begin VB.TextBox txtMag 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   7
      Left            =   5520
      TabIndex        =   161
      Text            =   "Mag"
      Top             =   2040
      Width           =   495
   End
   Begin VB.TextBox txtMag 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   6
      Left            =   5520
      TabIndex        =   160
      Text            =   "Mag"
      Top             =   1800
      Width           =   495
   End
   Begin VB.TextBox txtMag 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   5
      Left            =   5520
      TabIndex        =   159
      Text            =   "Mag"
      Top             =   1560
      Width           =   495
   End
   Begin VB.TextBox txtMag 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   4
      Left            =   5520
      TabIndex        =   158
      Text            =   "Mag"
      Top             =   1320
      Width           =   495
   End
   Begin VB.TextBox txtMag 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   3
      Left            =   5520
      TabIndex        =   157
      Text            =   "Mag"
      Top             =   1080
      Width           =   495
   End
   Begin VB.TextBox txtMag 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   2
      Left            =   5520
      TabIndex        =   156
      Text            =   "Mag"
      Top             =   840
      Width           =   495
   End
   Begin VB.TextBox txtMag 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   1
      Left            =   5520
      TabIndex        =   155
      Text            =   "Mag"
      Top             =   600
      Width           =   495
   End
   Begin VB.TextBox txtField2 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   19
      Left            =   4920
      TabIndex        =   154
      Text            =   "PMDec"
      Top             =   4920
      Width           =   615
   End
   Begin VB.TextBox txtField2 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   18
      Left            =   4920
      TabIndex        =   153
      Text            =   "PMDec"
      Top             =   4680
      Width           =   615
   End
   Begin VB.TextBox txtField2 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   17
      Left            =   4920
      TabIndex        =   152
      Text            =   "PMDec"
      Top             =   4440
      Width           =   615
   End
   Begin VB.TextBox txtField2 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   16
      Left            =   4920
      TabIndex        =   151
      Text            =   "PMDec"
      Top             =   4200
      Width           =   615
   End
   Begin VB.TextBox txtField2 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   15
      Left            =   4920
      TabIndex        =   150
      Text            =   "PMDec"
      Top             =   3960
      Width           =   615
   End
   Begin VB.TextBox txtField2 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   14
      Left            =   4920
      TabIndex        =   149
      Text            =   "PMDec"
      Top             =   3720
      Width           =   615
   End
   Begin VB.TextBox txtField2 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   13
      Left            =   4920
      TabIndex        =   148
      Text            =   "PMDec"
      Top             =   3480
      Width           =   615
   End
   Begin VB.TextBox txtField2 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   12
      Left            =   4920
      TabIndex        =   147
      Text            =   "PMDec"
      Top             =   3240
      Width           =   615
   End
   Begin VB.TextBox txtField2 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   11
      Left            =   4920
      TabIndex        =   146
      Text            =   "PMDec"
      Top             =   3000
      Width           =   615
   End
   Begin VB.TextBox txtField2 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   10
      Left            =   4920
      TabIndex        =   145
      Text            =   "PMDec"
      Top             =   2760
      Width           =   615
   End
   Begin VB.TextBox txtField2 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   9
      Left            =   4920
      TabIndex        =   144
      Text            =   "PMDec"
      Top             =   2520
      Width           =   615
   End
   Begin VB.TextBox txtField2 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   8
      Left            =   4920
      TabIndex        =   143
      Text            =   "PMDec"
      Top             =   2280
      Width           =   615
   End
   Begin VB.TextBox txtField2 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   7
      Left            =   4920
      TabIndex        =   142
      Text            =   "PMDec"
      Top             =   2040
      Width           =   615
   End
   Begin VB.TextBox txtField2 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   6
      Left            =   4920
      TabIndex        =   141
      Text            =   "PMDec"
      Top             =   1800
      Width           =   615
   End
   Begin VB.TextBox txtField2 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   5
      Left            =   4920
      TabIndex        =   140
      Text            =   "PMDec"
      Top             =   1560
      Width           =   615
   End
   Begin VB.TextBox txtField2 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   4
      Left            =   4920
      TabIndex        =   139
      Text            =   "PMDec"
      Top             =   1320
      Width           =   615
   End
   Begin VB.TextBox txtField2 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   3
      Left            =   4920
      TabIndex        =   138
      Text            =   "PMDec"
      Top             =   1080
      Width           =   615
   End
   Begin VB.TextBox txtField2 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   2
      Left            =   4920
      TabIndex        =   137
      Text            =   "PMDec"
      Top             =   840
      Width           =   615
   End
   Begin VB.TextBox txtField2 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   1
      Left            =   4920
      TabIndex        =   136
      Text            =   "PMDec"
      Top             =   600
      Width           =   615
   End
   Begin VB.TextBox txtField1 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   19
      Left            =   4320
      TabIndex        =   135
      Text            =   "PMRA"
      Top             =   4920
      Width           =   615
   End
   Begin VB.TextBox txtField1 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   18
      Left            =   4320
      TabIndex        =   134
      Text            =   "PMRA"
      Top             =   4680
      Width           =   615
   End
   Begin VB.TextBox txtField1 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   17
      Left            =   4320
      TabIndex        =   133
      Text            =   "PMRA"
      Top             =   4440
      Width           =   615
   End
   Begin VB.TextBox txtField1 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   16
      Left            =   4320
      TabIndex        =   132
      Text            =   "PMRA"
      Top             =   4200
      Width           =   615
   End
   Begin VB.TextBox txtField1 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   15
      Left            =   4320
      TabIndex        =   131
      Text            =   "PMRA"
      Top             =   3960
      Width           =   615
   End
   Begin VB.TextBox txtField1 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   14
      Left            =   4320
      TabIndex        =   130
      Text            =   "PMRA"
      Top             =   3720
      Width           =   615
   End
   Begin VB.TextBox txtField1 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   13
      Left            =   4320
      TabIndex        =   129
      Text            =   "PMRA"
      Top             =   3480
      Width           =   615
   End
   Begin VB.TextBox txtField1 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   12
      Left            =   4320
      TabIndex        =   128
      Text            =   "PMRA"
      Top             =   3240
      Width           =   615
   End
   Begin VB.TextBox txtField1 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   11
      Left            =   4320
      TabIndex        =   127
      Text            =   "PMRA"
      Top             =   3000
      Width           =   615
   End
   Begin VB.TextBox txtField1 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   10
      Left            =   4320
      TabIndex        =   126
      Text            =   "PMRA"
      Top             =   2760
      Width           =   615
   End
   Begin VB.TextBox txtField1 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   9
      Left            =   4320
      TabIndex        =   125
      Text            =   "PMRA"
      Top             =   2520
      Width           =   615
   End
   Begin VB.TextBox txtField1 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   8
      Left            =   4320
      TabIndex        =   124
      Text            =   "PMRA"
      Top             =   2280
      Width           =   615
   End
   Begin VB.TextBox txtField1 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   7
      Left            =   4320
      TabIndex        =   123
      Text            =   "PMRA"
      Top             =   2040
      Width           =   615
   End
   Begin VB.TextBox txtField1 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   6
      Left            =   4320
      TabIndex        =   122
      Text            =   "PMRA"
      Top             =   1800
      Width           =   615
   End
   Begin VB.TextBox txtField1 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   5
      Left            =   4320
      TabIndex        =   121
      Text            =   "PMRA"
      Top             =   1560
      Width           =   615
   End
   Begin VB.TextBox txtField1 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   4
      Left            =   4320
      TabIndex        =   120
      Text            =   "PMRA"
      Top             =   1320
      Width           =   615
   End
   Begin VB.TextBox txtField1 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   3
      Left            =   4320
      TabIndex        =   119
      Text            =   "PMRA"
      Top             =   1080
      Width           =   615
   End
   Begin VB.TextBox txtField1 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   2
      Left            =   4320
      TabIndex        =   118
      Text            =   "PMRA"
      Top             =   840
      Width           =   615
   End
   Begin VB.TextBox txtField1 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   1
      Left            =   4320
      TabIndex        =   117
      Text            =   "PMRA"
      Top             =   600
      Width           =   615
   End
   Begin VB.TextBox txtDec 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   19
      Left            =   3480
      TabIndex        =   116
      Text            =   "Dec"
      Top             =   4920
      Width           =   855
   End
   Begin VB.TextBox txtDec 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   18
      Left            =   3480
      TabIndex        =   115
      Text            =   "Dec"
      Top             =   4680
      Width           =   855
   End
   Begin VB.TextBox txtDec 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   17
      Left            =   3480
      TabIndex        =   114
      Text            =   "Dec"
      Top             =   4440
      Width           =   855
   End
   Begin VB.TextBox txtDec 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   16
      Left            =   3480
      TabIndex        =   113
      Text            =   "Dec"
      Top             =   4200
      Width           =   855
   End
   Begin VB.TextBox txtDec 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   15
      Left            =   3480
      TabIndex        =   112
      Text            =   "Dec"
      Top             =   3960
      Width           =   855
   End
   Begin VB.TextBox txtDec 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   14
      Left            =   3480
      TabIndex        =   111
      Text            =   "Dec"
      Top             =   3720
      Width           =   855
   End
   Begin VB.TextBox txtDec 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   13
      Left            =   3480
      TabIndex        =   110
      Text            =   "Dec"
      Top             =   3480
      Width           =   855
   End
   Begin VB.TextBox txtDec 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   12
      Left            =   3480
      TabIndex        =   109
      Text            =   "Dec"
      Top             =   3240
      Width           =   855
   End
   Begin VB.TextBox txtDec 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   11
      Left            =   3480
      TabIndex        =   108
      Text            =   "Dec"
      Top             =   3000
      Width           =   855
   End
   Begin VB.TextBox txtDec 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   10
      Left            =   3480
      TabIndex        =   107
      Text            =   "Dec"
      Top             =   2760
      Width           =   855
   End
   Begin VB.TextBox txtDec 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   9
      Left            =   3480
      TabIndex        =   106
      Text            =   "Dec"
      Top             =   2520
      Width           =   855
   End
   Begin VB.TextBox txtDec 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   8
      Left            =   3480
      TabIndex        =   105
      Text            =   "Dec"
      Top             =   2280
      Width           =   855
   End
   Begin VB.TextBox txtDec 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   7
      Left            =   3480
      TabIndex        =   104
      Text            =   "Dec"
      Top             =   2040
      Width           =   855
   End
   Begin VB.TextBox txtDec 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   6
      Left            =   3480
      TabIndex        =   103
      Text            =   "Dec"
      Top             =   1800
      Width           =   855
   End
   Begin VB.TextBox txtDec 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   5
      Left            =   3480
      TabIndex        =   102
      Text            =   "Dec"
      Top             =   1560
      Width           =   855
   End
   Begin VB.TextBox txtDec 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   4
      Left            =   3480
      TabIndex        =   101
      Text            =   "Dec"
      Top             =   1320
      Width           =   855
   End
   Begin VB.TextBox txtDec 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   3
      Left            =   3480
      TabIndex        =   100
      Text            =   "Dec"
      Top             =   1080
      Width           =   855
   End
   Begin VB.TextBox txtDec 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   2
      Left            =   3480
      TabIndex        =   99
      Text            =   "Dec"
      Top             =   840
      Width           =   855
   End
   Begin VB.TextBox txtDec 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   1
      Left            =   3480
      TabIndex        =   98
      Text            =   "Dec"
      Top             =   600
      Width           =   855
   End
   Begin VB.TextBox txtRA 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   19
      Left            =   2640
      TabIndex        =   97
      Text            =   "RA"
      Top             =   4920
      Width           =   855
   End
   Begin VB.TextBox txtRA 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   18
      Left            =   2640
      TabIndex        =   96
      Text            =   "RA"
      Top             =   4680
      Width           =   855
   End
   Begin VB.TextBox txtRA 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   17
      Left            =   2640
      TabIndex        =   95
      Text            =   "RA"
      Top             =   4440
      Width           =   855
   End
   Begin VB.TextBox txtRA 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   16
      Left            =   2640
      TabIndex        =   94
      Text            =   "RA"
      Top             =   4200
      Width           =   855
   End
   Begin VB.TextBox txtRA 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   15
      Left            =   2640
      TabIndex        =   93
      Text            =   "RA"
      Top             =   3960
      Width           =   855
   End
   Begin VB.TextBox txtRA 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   14
      Left            =   2640
      TabIndex        =   92
      Text            =   "RA"
      Top             =   3720
      Width           =   855
   End
   Begin VB.TextBox txtRA 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   13
      Left            =   2640
      TabIndex        =   91
      Text            =   "RA"
      Top             =   3480
      Width           =   855
   End
   Begin VB.TextBox txtRA 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   12
      Left            =   2640
      TabIndex        =   90
      Text            =   "RA"
      Top             =   3240
      Width           =   855
   End
   Begin VB.TextBox txtRA 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   11
      Left            =   2640
      TabIndex        =   89
      Text            =   "RA"
      Top             =   3000
      Width           =   855
   End
   Begin VB.TextBox txtRA 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   10
      Left            =   2640
      TabIndex        =   88
      Text            =   "RA"
      Top             =   2760
      Width           =   855
   End
   Begin VB.TextBox txtRA 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   9
      Left            =   2640
      TabIndex        =   87
      Text            =   "RA"
      Top             =   2520
      Width           =   855
   End
   Begin VB.TextBox txtRA 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   8
      Left            =   2640
      TabIndex        =   86
      Text            =   "RA"
      Top             =   2280
      Width           =   855
   End
   Begin VB.TextBox txtRA 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   7
      Left            =   2640
      TabIndex        =   85
      Text            =   "RA"
      Top             =   2040
      Width           =   855
   End
   Begin VB.TextBox txtRA 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   6
      Left            =   2640
      TabIndex        =   84
      Text            =   "RA"
      Top             =   1800
      Width           =   855
   End
   Begin VB.TextBox txtRA 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   5
      Left            =   2640
      TabIndex        =   83
      Text            =   "RA"
      Top             =   1560
      Width           =   855
   End
   Begin VB.TextBox txtRA 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   4
      Left            =   2640
      TabIndex        =   82
      Text            =   "RA"
      Top             =   1320
      Width           =   855
   End
   Begin VB.TextBox txtRA 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   3
      Left            =   2640
      TabIndex        =   81
      Text            =   "RA"
      Top             =   1080
      Width           =   855
   End
   Begin VB.TextBox txtRA 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   2
      Left            =   2640
      TabIndex        =   80
      Text            =   "RA"
      Top             =   840
      Width           =   855
   End
   Begin VB.TextBox txtRA 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   1
      Left            =   2640
      TabIndex        =   79
      Text            =   "RA"
      Top             =   600
      Width           =   855
   End
   Begin VB.TextBox txtDesc 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   19
      Left            =   1800
      TabIndex        =   78
      Text            =   "Desc"
      Top             =   4920
      Width           =   855
   End
   Begin VB.TextBox txtDesc 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   18
      Left            =   1800
      TabIndex        =   77
      Text            =   "Desc"
      Top             =   4680
      Width           =   855
   End
   Begin VB.TextBox txtDesc 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   17
      Left            =   1800
      TabIndex        =   76
      Text            =   "Desc"
      Top             =   4440
      Width           =   855
   End
   Begin VB.TextBox txtDesc 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   16
      Left            =   1800
      TabIndex        =   75
      Text            =   "Desc"
      Top             =   4200
      Width           =   855
   End
   Begin VB.TextBox txtDesc 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   15
      Left            =   1800
      TabIndex        =   74
      Text            =   "Desc"
      Top             =   3960
      Width           =   855
   End
   Begin VB.TextBox txtDesc 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   14
      Left            =   1800
      TabIndex        =   73
      Text            =   "Desc"
      Top             =   3720
      Width           =   855
   End
   Begin VB.TextBox txtDesc 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   13
      Left            =   1800
      TabIndex        =   72
      Text            =   "Desc"
      Top             =   3480
      Width           =   855
   End
   Begin VB.TextBox txtDesc 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   12
      Left            =   1800
      TabIndex        =   71
      Text            =   "Desc"
      Top             =   3240
      Width           =   855
   End
   Begin VB.TextBox txtDesc 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   11
      Left            =   1800
      TabIndex        =   70
      Text            =   "Desc"
      Top             =   3000
      Width           =   855
   End
   Begin VB.TextBox txtDesc 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   10
      Left            =   1800
      TabIndex        =   69
      Text            =   "Desc"
      Top             =   2760
      Width           =   855
   End
   Begin VB.TextBox txtDesc 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   9
      Left            =   1800
      TabIndex        =   68
      Text            =   "Desc"
      Top             =   2520
      Width           =   855
   End
   Begin VB.TextBox txtDesc 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   8
      Left            =   1800
      TabIndex        =   67
      Text            =   "Desc"
      Top             =   2280
      Width           =   855
   End
   Begin VB.TextBox txtDesc 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   7
      Left            =   1800
      TabIndex        =   66
      Text            =   "Desc"
      Top             =   2040
      Width           =   855
   End
   Begin VB.TextBox txtDesc 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   6
      Left            =   1800
      TabIndex        =   65
      Text            =   "Desc"
      Top             =   1800
      Width           =   855
   End
   Begin VB.TextBox txtDesc 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   5
      Left            =   1800
      TabIndex        =   64
      Text            =   "Desc"
      Top             =   1560
      Width           =   855
   End
   Begin VB.TextBox txtDesc 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   4
      Left            =   1800
      TabIndex        =   63
      Text            =   "Desc"
      Top             =   1320
      Width           =   855
   End
   Begin VB.TextBox txtDesc 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   3
      Left            =   1800
      TabIndex        =   62
      Text            =   "Desc"
      Top             =   1080
      Width           =   855
   End
   Begin VB.TextBox txtDesc 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   2
      Left            =   1800
      TabIndex        =   61
      Text            =   "Desc"
      Top             =   840
      Width           =   855
   End
   Begin VB.TextBox txtDesc 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   1
      Left            =   1800
      TabIndex        =   60
      Text            =   "Desc"
      Top             =   600
      Width           =   855
   End
   Begin VB.TextBox txtOther 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   19
      Left            =   960
      TabIndex        =   59
      Text            =   "Other"
      Top             =   4920
      Width           =   855
   End
   Begin VB.TextBox txtOther 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   18
      Left            =   960
      TabIndex        =   58
      Text            =   "Other"
      Top             =   4680
      Width           =   855
   End
   Begin VB.TextBox txtOther 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   17
      Left            =   960
      TabIndex        =   57
      Text            =   "Other"
      Top             =   4440
      Width           =   855
   End
   Begin VB.TextBox txtOther 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   16
      Left            =   960
      TabIndex        =   56
      Text            =   "Other"
      Top             =   4200
      Width           =   855
   End
   Begin VB.TextBox txtOther 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   15
      Left            =   960
      TabIndex        =   55
      Text            =   "Other"
      Top             =   3960
      Width           =   855
   End
   Begin VB.TextBox txtOther 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   14
      Left            =   960
      TabIndex        =   54
      Text            =   "Other"
      Top             =   3720
      Width           =   855
   End
   Begin VB.TextBox txtOther 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   13
      Left            =   960
      TabIndex        =   53
      Text            =   "Other"
      Top             =   3480
      Width           =   855
   End
   Begin VB.TextBox txtOther 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   12
      Left            =   960
      TabIndex        =   52
      Text            =   "Other"
      Top             =   3240
      Width           =   855
   End
   Begin VB.TextBox txtOther 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   11
      Left            =   960
      TabIndex        =   51
      Text            =   "Other"
      Top             =   3000
      Width           =   855
   End
   Begin VB.TextBox txtOther 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   10
      Left            =   960
      TabIndex        =   50
      Text            =   "Other"
      Top             =   2760
      Width           =   855
   End
   Begin VB.TextBox txtOther 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   9
      Left            =   960
      TabIndex        =   49
      Text            =   "Other"
      Top             =   2520
      Width           =   855
   End
   Begin VB.TextBox txtOther 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   8
      Left            =   960
      TabIndex        =   48
      Text            =   "Other"
      Top             =   2280
      Width           =   855
   End
   Begin VB.TextBox txtOther 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   7
      Left            =   960
      TabIndex        =   47
      Text            =   "Other"
      Top             =   2040
      Width           =   855
   End
   Begin VB.TextBox txtOther 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   6
      Left            =   960
      TabIndex        =   46
      Text            =   "Other"
      Top             =   1800
      Width           =   855
   End
   Begin VB.TextBox txtOther 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   5
      Left            =   960
      TabIndex        =   45
      Text            =   "Other"
      Top             =   1560
      Width           =   855
   End
   Begin VB.TextBox txtOther 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   4
      Left            =   960
      TabIndex        =   44
      Text            =   "Other"
      Top             =   1320
      Width           =   855
   End
   Begin VB.TextBox txtOther 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   3
      Left            =   960
      TabIndex        =   43
      Text            =   "Other"
      Top             =   1080
      Width           =   855
   End
   Begin VB.TextBox txtOther 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   2
      Left            =   960
      TabIndex        =   42
      Text            =   "Other"
      Top             =   840
      Width           =   855
   End
   Begin VB.TextBox txtOther 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   1
      Left            =   960
      TabIndex        =   41
      Text            =   "Other"
      Top             =   600
      Width           =   855
   End
   Begin VB.TextBox txtLabel 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   19
      Left            =   120
      TabIndex        =   40
      Text            =   "Label"
      Top             =   4920
      Width           =   855
   End
   Begin VB.TextBox txtLabel 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   18
      Left            =   120
      TabIndex        =   39
      Text            =   "Label"
      Top             =   4680
      Width           =   855
   End
   Begin VB.TextBox txtLabel 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   17
      Left            =   120
      TabIndex        =   38
      Text            =   "Label"
      Top             =   4440
      Width           =   855
   End
   Begin VB.TextBox txtLabel 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   16
      Left            =   120
      TabIndex        =   37
      Text            =   "Label"
      Top             =   4200
      Width           =   855
   End
   Begin VB.TextBox txtLabel 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   15
      Left            =   120
      TabIndex        =   36
      Text            =   "Label"
      Top             =   3960
      Width           =   855
   End
   Begin VB.TextBox txtLabel 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   14
      Left            =   120
      TabIndex        =   35
      Text            =   "Label"
      Top             =   3720
      Width           =   855
   End
   Begin VB.TextBox txtLabel 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   13
      Left            =   120
      TabIndex        =   34
      Text            =   "Label"
      Top             =   3480
      Width           =   855
   End
   Begin VB.TextBox txtLabel 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   12
      Left            =   120
      TabIndex        =   33
      Text            =   "Label"
      Top             =   3240
      Width           =   855
   End
   Begin VB.TextBox txtLabel 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   11
      Left            =   120
      TabIndex        =   32
      Text            =   "Label"
      Top             =   3000
      Width           =   855
   End
   Begin VB.TextBox txtLabel 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   10
      Left            =   120
      TabIndex        =   31
      Text            =   "Label"
      Top             =   2760
      Width           =   855
   End
   Begin VB.TextBox txtLabel 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   9
      Left            =   120
      TabIndex        =   30
      Text            =   "Label"
      Top             =   2520
      Width           =   855
   End
   Begin VB.TextBox txtLabel 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   8
      Left            =   120
      TabIndex        =   29
      Text            =   "Label"
      Top             =   2280
      Width           =   855
   End
   Begin VB.TextBox txtLabel 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   7
      Left            =   120
      TabIndex        =   28
      Text            =   "Label"
      Top             =   2040
      Width           =   855
   End
   Begin VB.TextBox txtLabel 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   6
      Left            =   120
      TabIndex        =   27
      Text            =   "Label"
      Top             =   1800
      Width           =   855
   End
   Begin VB.TextBox txtLabel 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   5
      Left            =   120
      TabIndex        =   26
      Text            =   "Label"
      Top             =   1560
      Width           =   855
   End
   Begin VB.TextBox txtLabel 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   4
      Left            =   120
      TabIndex        =   25
      Text            =   "Label"
      Top             =   1320
      Width           =   855
   End
   Begin VB.TextBox txtLabel 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   3
      Left            =   120
      TabIndex        =   24
      Text            =   "Label"
      Top             =   1080
      Width           =   855
   End
   Begin VB.TextBox txtLabel 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   2
      Left            =   120
      TabIndex        =   23
      Text            =   "Label"
      Top             =   840
      Width           =   855
   End
   Begin VB.TextBox txtLabel 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   1
      Left            =   120
      TabIndex        =   22
      Text            =   "Label"
      Top             =   600
      Width           =   855
   End
   Begin VB.TextBox txtFlags 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   0
      Left            =   7080
      TabIndex        =   21
      Text            =   "Flags"
      Top             =   360
      Width           =   255
   End
   Begin VB.TextBox txtClass 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   0
      Left            =   6600
      TabIndex        =   20
      Text            =   "Class"
      Top             =   360
      Width           =   495
   End
   Begin VB.TextBox txtField3 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   0
      Left            =   6000
      TabIndex        =   19
      Text            =   "B-V"
      Top             =   360
      Width           =   615
   End
   Begin VB.TextBox txtMag 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   0
      Left            =   5520
      TabIndex        =   18
      Text            =   "Mag"
      Top             =   360
      Width           =   495
   End
   Begin VB.TextBox txtField2 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   0
      Left            =   4920
      TabIndex        =   17
      Text            =   "PMDec"
      Top             =   360
      Width           =   615
   End
   Begin VB.TextBox txtField1 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   0
      Left            =   4320
      TabIndex        =   16
      Text            =   "PMRA"
      Top             =   360
      Width           =   615
   End
   Begin VB.TextBox txtDec 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   0
      Left            =   3480
      TabIndex        =   15
      Text            =   "Dec"
      Top             =   360
      Width           =   855
   End
   Begin VB.TextBox txtRA 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   0
      Left            =   2640
      TabIndex        =   14
      Text            =   "RA"
      Top             =   360
      Width           =   855
   End
   Begin VB.TextBox txtDesc 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   0
      Left            =   1800
      TabIndex        =   13
      Text            =   "Desc"
      Top             =   360
      Width           =   855
   End
   Begin VB.TextBox txtOther 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   0
      Left            =   960
      TabIndex        =   12
      Text            =   "Other"
      Top             =   360
      Width           =   855
   End
   Begin VB.TextBox txtLabel 
      Appearance      =   0  'Flat
      Height          =   285
      Index           =   0
      Left            =   120
      TabIndex        =   1
      Text            =   "Label"
      Top             =   360
      Width           =   855
   End
   Begin VB.Label Label11 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      Caption         =   "F"
      ForeColor       =   &H80000008&
      Height          =   255
      Left            =   7080
      TabIndex        =   11
      Top             =   120
      Width           =   255
   End
   Begin VB.Label Label10 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      Caption         =   "Class"
      ForeColor       =   &H80000008&
      Height          =   255
      Left            =   6600
      TabIndex        =   10
      Top             =   120
      Width           =   495
   End
   Begin VB.Label Label9 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      Caption         =   "BV/PA"
      ForeColor       =   &H80000008&
      Height          =   255
      Left            =   6000
      TabIndex        =   9
      Top             =   120
      Width           =   615
   End
   Begin VB.Label Label8 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      Caption         =   "Mag"
      ForeColor       =   &H80000008&
      Height          =   255
      Left            =   5520
      TabIndex        =   8
      Top             =   120
      Width           =   495
   End
   Begin VB.Label Label7 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      Caption         =   "PD/Mi"
      ForeColor       =   &H80000008&
      Height          =   255
      Left            =   4920
      TabIndex        =   7
      Top             =   120
      Width           =   615
   End
   Begin VB.Label Label6 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      Caption         =   "PR/Mx"
      ForeColor       =   &H80000008&
      Height          =   255
      Left            =   4320
      TabIndex        =   6
      Top             =   120
      Width           =   615
   End
   Begin VB.Label Label5 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      Caption         =   "Dec"
      ForeColor       =   &H80000008&
      Height          =   255
      Left            =   3480
      TabIndex        =   5
      Top             =   120
      Width           =   855
   End
   Begin VB.Label Label4 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      Caption         =   "RA"
      ForeColor       =   &H80000008&
      Height          =   255
      Left            =   2640
      TabIndex        =   4
      Top             =   120
      Width           =   855
   End
   Begin VB.Label Label3 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      Caption         =   "Desc"
      ForeColor       =   &H80000008&
      Height          =   255
      Left            =   1800
      TabIndex        =   3
      Top             =   120
      Width           =   855
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      Caption         =   "Other"
      ForeColor       =   &H80000008&
      Height          =   255
      Left            =   960
      TabIndex        =   2
      Top             =   120
      Width           =   855
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      Caption         =   "Label"
      ForeColor       =   &H80000008&
      Height          =   255
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   855
   End
End
Attribute VB_Name = "Custom"
Attribute VB_Creatable = False
Attribute VB_Exposed = False
Option Explicit
Dim OkayToPaint As Integer


Private Sub btnClose_Click()
    OkayToPaint = 1
    Main.AutoRedraw = False
    Custom.Hide
End Sub


Private Sub btnHelp_Click()

    MsgBox "Up to 20 custom objects may be entered here. The Flags field has an 'S' for a stellar type object, otherwise it has DSO flags - G-galaxy, C-glob cluster, O-open cluster, E-em neb, P-plan neb, D-dark neb. PMRA and PMDec are in milliarc seconds per year. Min/Max Size are in decimal degrees. RA and Dec are in decimal degrees."
    
End Sub

Private Sub btnSave_Click()

    Dim CustomRec As CustomData
    Dim i As Integer
    
    On Error Resume Next
    Kill DataPath & "CUSTOM.DAT"
    On Error GoTo 0
    
    Open DataPath & "CUSTOM.DAT" For Binary Access Write As #3
    
    For i = 0 To 19
    
        CustomRec.ID = i + 1
        CustomRec.Label = Trim(txtLabel(i).Text)
        CustomRec.Other = Trim(txtOther(i).Text)
        CustomRec.Desc = Trim(txtDesc(i).Text)
        CustomRec.RA = Val(txtRA(i).Text)
        CustomRec.Dec = Val(txtDec(i).Text)
        CustomRec.Field1 = Val(txtField1(i).Text)
        CustomRec.Field2 = Val(txtField2(i).Text)
        CustomRec.Mag = Val(txtMag(i).Text)
        CustomRec.Field3 = Val(txtField3(i).Text)
        CustomRec.Class = Trim(txtClass(i).Text)
        CustomRec.Flags = Trim(txtFlags(i).Text)
            
        Put #3, , CustomRec
        
    Next i
    
    Close #3
    
    OkayToPaint = 1
    Main.AutoRedraw = False
    Custom.Hide
    
End Sub

Private Sub Form_Load()

    OkayToPaint = 1
    
End Sub


Private Sub Form_Paint()

    Dim i As Integer
    Dim TabIdx As Integer
    Dim CustomRec As CustomData
    
    Main.AutoRedraw = True
    
    TabIdx = 1
    
    If OkayToPaint = 1 Then
    
        OkayToPaint = 0
        
        Open DataPath & "CUSTOM.DAT" For Binary Access Read As #3
            
        For i = 0 To 19
                        
            Get #3, , CustomRec
            
            txtLabel(i).TabIndex = TabIdx
            txtLabel(i).Text = Trim(CustomRec.Label)
            TabIdx = TabIdx + 1
            txtOther(i).TabIndex = TabIdx
            txtOther(i).Text = Trim(CustomRec.Other)
            TabIdx = TabIdx + 1
            txtDesc(i).TabIndex = TabIdx
            txtDesc(i).Text = Trim(CustomRec.Desc)
            TabIdx = TabIdx + 1
            txtRA(i).TabIndex = TabIdx
            txtRA(i).Text = Val(CustomRec.RA)
            TabIdx = TabIdx + 1
            txtDec(i).TabIndex = TabIdx
            txtDec(i).Text = Val(CustomRec.Dec)
            TabIdx = TabIdx + 1
            txtField1(i).TabIndex = TabIdx
            txtField1(i).Text = Val(CustomRec.Field1)
            TabIdx = TabIdx + 1
            txtField2(i).TabIndex = TabIdx
            txtField2(i).Text = Val(CustomRec.Field2)
            TabIdx = TabIdx + 1
            txtMag(i).TabIndex = TabIdx
            txtMag(i).Text = Val(CustomRec.Mag)
            TabIdx = TabIdx + 1
            txtField3(i).TabIndex = TabIdx
            txtField3(i).Text = Val(CustomRec.Field3)
            TabIdx = TabIdx + 1
            txtClass(i).TabIndex = TabIdx
            txtClass(i).Text = Trim(CustomRec.Class)
            TabIdx = TabIdx + 1
            txtFlags(i).TabIndex = TabIdx
            txtFlags(i).Text = Trim(CustomRec.Flags)
            TabIdx = TabIdx + 1
        Next i
        
        Close #3
        
    End If
            
        
End Sub


