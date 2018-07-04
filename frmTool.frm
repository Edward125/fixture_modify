VERSION 5.00
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "comdlg32.ocx"
Begin VB.Form frmTool 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Fixture Angle"
   ClientHeight    =   2730
   ClientLeft      =   45
   ClientTop       =   585
   ClientWidth     =   8850
   BeginProperty Font 
      Name            =   "MS Sans Serif"
      Size            =   13.5
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   ScaleHeight     =   2730
   ScaleWidth      =   8850
   StartUpPosition =   2  'CenterScreen
   Begin MSComDlg.CommonDialog CommonDialog1 
      Left            =   360
      Top             =   2760
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.Frame Frame1 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   2535
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   8655
      Begin VB.CommandButton cmdGo 
         Caption         =   "Go-->>>"
         Height          =   1095
         Left            =   3600
         TabIndex        =   5
         Top             =   1200
         Width           =   4935
      End
      Begin VB.OptionButton Option2 
         Caption         =   "fixture_tmp.o  to fixture.o.txt"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   240
         TabIndex        =   4
         Top             =   1920
         Width           =   3375
      End
      Begin VB.OptionButton Option1 
         Caption         =   "fixture.o to fixture_tmp.o"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FF0000&
         Height          =   255
         Left            =   240
         TabIndex        =   3
         Top             =   1320
         Value           =   -1  'True
         Width           =   3255
      End
      Begin VB.TextBox txtFile 
         BackColor       =   &H00FFC0FF&
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   360
         Left            =   120
         TabIndex        =   2
         Text            =   "C:\boards\DP2-HP-2-06240-1\fixture\fixture.o"
         Top             =   240
         Width           =   8415
      End
      Begin VB.TextBox txtFo 
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   405
         Left            =   120
         Locked          =   -1  'True
         TabIndex        =   1
         Text            =   "C:\Agilent_ICT\boards\08218-1\fixture\fixture.o"
         Top             =   600
         Width           =   8415
      End
   End
End
Attribute VB_Name = "frmTool"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdGo_Click()

If Dir(txtFile.Text) = "" Then
   MsgBox "Please open fixture.o file!", vbCritical
   Exit Sub
End If
Frame1.Enabled = False
If Option1.Value = True Then
   Call Read_Fixture_File
End If
If Option2.Value = True Then
  Call Read_Fixture_File_2
End If
Frame1.Enabled = True
MsgBox "Fixture_tmp.o Creat OK!", vbInformation
End Sub

Private Sub Form_Load()
txtFile.Text = "Please open fixtrue.o file!(DblClick me open file!)"
End Sub

Private Sub txtFile_DblClick()
     On Error GoTo errH
    With Me.CommonDialog1
       .CancelError = True
    If Option1.Value = True Then
        .Filter = "*.o|*.o|*.*|*.*"
       .ShowOpen
       Me.txtFile.Text = .FileName
       
       Me.txtFo.Text = Me.txtFile.Text & "_tmp.o"
       Else
        .Filter = "*.txt|*.txt|*.*|*.*"
        .ShowOpen
        Me.txtFile.Text = .FileName
        Me.txtFo.Text = Me.txtFile.Text & "o.txt"
       
    End If
    End With
    txtFile.Text = Trim(txtFile.Text)
    txtFo.Text = Trim(txtFo.Text)
    If Dir(txtFile.Text) = "" Then
       MsgBox "Please open fixture.o file!", vbCritical
       Exit Sub
    End If
    Exit Sub
errH:
      MsgBox "Please open fixtrue.o file!", vbCritical
      txtFile.Text = "Please open fixtrue.o file!(DblClick me open file!)"
End Sub
Private Sub Read_Fixture_File()
 Dim strMy As String
  Dim strMy2 As String
Dim intI As Integer
Dim strFenPei() As String
Dim intDu As Integer
Dim bBoard As Boolean
Dim bPlaceMent As Boolean
Dim bTransfers As Boolean
Dim lonX As Long
Dim lonShiftX As Long
Dim lonShiftY As Long
Dim lonY As Long
Dim bOutPut As Boolean
intI = 0

On Error Resume Next
Open txtFile.Text For Input As #2
Open txtFo.Text For Output As #3
     Do Until EOF(2)
        bOutPut = False
        Line Input #2, strMy
          strMy2 = strMy
          strMy = Trim(UCase(strMy))
          If strMy <> "" Then
             strMy = DelSpace(strMy)
             
             
              If Left(strMy, 9) = "END BOARD" Then
                 bPlaceMent = False
                 bBoard = False
                 bTransfers = False
                 lonX = 0
                 lonY = 0
                 intDu = 0
                 lonShiftX = 0
                 lonShiftY = 0
              End If
             
             
              If Left(strMy, 5) = "WIRES" Then
                 bTransfers = False

              End If
               If Left(strMy, 5) = "NODE " Then
                 bTransfers = False

              End If
             
              If bBoard = True Then
                 If Left(strMy, 10) = "PLACEMENT " Then
                    intDu = 0
                    bTransfers = False
                    bPlaceMent = True
                    strFenPei = Split(strMy, " ")
                    lonShiftX = Val(Trim(Replace(strFenPei(1), ",", "")))
                    lonShiftY = Val(Trim(Replace(strFenPei(2), ",", "")))
                    intDu = Val(Trim(Replace(strFenPei(3), ".0;", "")))
                    If intDu = -90 Then intDu = 270
                    Print #3, "      PLACEMENT     " & strFenPei(1) & "  " & strFenPei(2) & "  " & "0.0;    ! with respect to panel origin" & "  !" & intDu
                    Erase strFenPei
                    bOutPut = True
                 End If
              End If
              
              
              If bTransfers = True Then
                  strFenPei = Split(strMy, " ")
                   
                  Select Case intDu
                     Case 0
                         
                     Case 180
                       lonX = Val(Trim(Replace(strFenPei(1), ",", "")))
                       lonX = -lonX
                       lonY = Val(Trim(Replace(strFenPei(2), ";", "")))
                        lonY = -lonY
                       If Right(strFenPei(2), 1) = ";" Then
                          Print #3, "          " & strFenPei(0) & "    " & lonX & ",   " & lonY & ";"
                          Else
                          Print #3, "          " & strFenPei(0) & "    " & lonX & ",   " & lonY & " " & strFenPei(3)
                       End If
                         
                       
                       bOutPut = True

                     Case 90
                       lonX = Val(Trim(Replace(strFenPei(1), ",", "")))
                       lonX = lonX
                       lonY = Val(Trim(Replace(strFenPei(2), ";", "")))
                        lonY = -lonY
                       If Right(strFenPei(2), 1) = ";" Then
                          Print #3, "          " & strFenPei(0) & "    " & lonX & ",   " & lonY & ";"
                          Else
                          Print #3, "          " & strFenPei(0) & "    " & lonX & ",   " & lonY & " " & strFenPei(3)
                       End If
                        
                        
                       bOutPut = True
                     Case 270
                     
                        lonX = Val(Trim(Replace(strFenPei(1), ",", "")))
                       lonX = -lonX
                       lonY = Val(Trim(Replace(strFenPei(2), ";", "")))
                        lonY = lonY
                       If Right(strFenPei(2), 1) = ";" Then
                          Print #3, "          " & strFenPei(0) & "    " & lonX & ",   " & lonY & ";"
                          Else
                          Print #3, "          " & strFenPei(0) & "    " & lonX & ",   " & lonY & " " & strFenPei(3)
                       End If
                        
                       bOutPut = True
                     
                     
                  End Select
                  
                       lonX = 0
                       lonY = 0
                        Erase strFenPei
              End If
              
              
              If bPlaceMent = True Then
                 If Left(strMy, 9) = "TRANSFERS" Then
                     bTransfers = True
                 End If
              End If
              
              
              If Left(strMy, 6) = "BOARD " Then
                 bBoard = True
                 bTransfers = False
                 bPlaceMent = False
              End If
              
              
          End If
      DoEvents
        If bOutPut = False Then
           Print #3, strMy2
        End If
       i = i + 1
      Me.Caption = "Read File Line: " & i
     Loop
Close #2
Close #3
End Sub
Private Function DelSpace(strL As String)
        
        Do
            strlB = Replace(strL, "  ", " ")
            If strL = strlB Then Exit Do
            strL = strlB
        Loop
        DelSpace = strL
End Function
Private Sub Read_Fixture_File_2()
 Dim strMy As String
  Dim strMy2 As String
Dim intI As Integer
Dim strFenPei() As String
Dim strFenPei2() As String
Dim intDu As Integer
Dim bBoard As Boolean
Dim bPlaceMent As Boolean
Dim bTransfers As Boolean
Dim lonX As Long
Dim lonShiftX As Long
Dim lonShiftY As Long
Dim lonY As Long
Dim bOutPut As Boolean
intI = 0

On Error Resume Next
Open txtFile.Text For Input As #2
Open txtFo.Text For Output As #3
     Do Until EOF(2)
        bOutPut = False
        Line Input #2, strMy
          strMy2 = strMy
          strMy = Trim(UCase(strMy))
          If strMy <> "" Then
             strMy = DelSpace(strMy)
             
             
              If Left(strMy, 9) = "END BOARD" Then
                 bPlaceMent = False
                 bBoard = False
                 bTransfers = False
                 lonX = 0
                 lonY = 0
                 intDu = 0
                 lonShiftX = 0
                 lonShiftY = 0
              End If
             
             
              If Left(strMy, 5) = "WIRES" Then
                 bTransfers = False

              End If
              If Left(strMy, 5) = "NODE " Then
                 bTransfers = False

              End If
             
              If bBoard = True Then
                 If Left(strMy, 10) = "PLACEMENT " Then
                    bTransfers = False
                    bPlaceMent = True
                    strFenPei = Split(strMy, "!")
                    strFenPei2 = Split(strMy, " ")
                    lonShiftX = Val(Trim(Replace(strFenPei2(1), ",", "")))
                    lonShiftY = Val(Trim(Replace(strFenPei2(2), ",", "")))
                    intDu = Val(Trim(strFenPei(UBound(strFenPei))))
                    Debug.Print intDu
                    Print #3, "      " & strFenPei2(0) & "  " & strFenPei2(1) & "  " & strFenPei2(2) & "  " & intDu & ".0;    ! with respect to panel origin" & "  !0"
                    Erase strFenPei
                    Erase strFenPei2
                    bOutPut = True
                 End If
              End If
              
              
              If bTransfers = True Then
                  strFenPei = Split(strMy, " ")
                  
                  Select Case intDu
                     Case 0
                        Debug.Print strMy
                     Case 180
                       lonX = Val(Trim(Replace(strFenPei(1), ",", "")))
                       lonX = -lonX
                       lonY = Val(Trim(Replace(strFenPei(2), ";", "")))
                        lonY = -lonY
                       If Right(strFenPei(2), 1) = ";" Then
                          Print #3, "          " & strFenPei(0) & "    " & lonX & ",   " & lonY & ";"
                          Else
                          Print #3, "          " & strFenPei(0) & "    " & lonX & ",   " & lonY & " " & strFenPei(3)
                       End If
                       
                       bOutPut = True

                     Case 90
                       lonX = Val(Trim(Replace(strFenPei(1), ",", "")))
                       lonX = lonX
                       lonY = Val(Trim(Replace(strFenPei(2), ";", "")))
                        lonY = -lonY
                       If Right(strFenPei(2), 1) = ";" Then
                          Print #3, "          " & strFenPei(0) & "    " & lonX & ",   " & lonY & ";"
                          Else
                          Print #3, "          " & strFenPei(0) & "    " & lonX & ",   " & lonY & " " & strFenPei(3)
                       End If
                        
                       bOutPut = True
                     Case 270
                     
                        lonX = Val(Trim(Replace(strFenPei(1), ",", "")))
                       lonX = -lonX
                       lonY = Val(Trim(Replace(strFenPei(2), ";", "")))
                        lonY = lonY
                       If Right(strFenPei(2), 1) = ";" Then
                          Print #3, "          " & strFenPei(0) & "    " & lonX & ",   " & lonY & ";"
                          Else
                          Print #3, "          " & strFenPei(0) & "    " & lonX & ",   " & lonY & " " & strFenPei(3)
                       End If
                       
                       bOutPut = True
                     
                     
                  End Select
                  
                       lonX = 0
                       lonY = 0
                        Erase strFenPei
              End If
              
              
              If bPlaceMent = True Then
                 If Left(strMy, 9) = "TRANSFERS" Then
                     bTransfers = True
                 End If
              End If
              
              
              If Left(strMy, 6) = "BOARD " Then
                 bBoard = True
                 bTransfers = False
                 bPlaceMent = False
              End If
              
              
          End If
      DoEvents
        If bOutPut = False Then
           Print #3, strMy2
        End If
       i = i + 1
      Me.Caption = "Read File Line: " & i
     Loop
Close #2
Close #3
End Sub

