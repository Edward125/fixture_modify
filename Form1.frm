VERSION 5.00
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "comdlg32.ocx"
Begin VB.Form Form1 
   Caption         =   "Fixture transfer pin modify."
   ClientHeight    =   7980
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   14145
   Icon            =   "Form1.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   ScaleHeight     =   7980
   ScaleWidth      =   14145
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.CommandButton cmdDeleteNouse 
      Caption         =   "Delete no wire probe"
      Height          =   315
      Left            =   12060
      TabIndex        =   22
      ToolTipText     =   "Delete no wire probe,make fixture stable"
      Top             =   480
      Visible         =   0   'False
      Width           =   1935
   End
   Begin VB.CommandButton cmdAbout 
      Caption         =   "About"
      Height          =   315
      Left            =   12840
      TabIndex        =   21
      Top             =   0
      Visible         =   0   'False
      Width           =   915
   End
   Begin VB.Frame Frame2 
      Caption         =   "View window"
      Height          =   555
      Left            =   5280
      TabIndex        =   13
      Top             =   0
      Width           =   2535
      Begin VB.CommandButton cmdZout 
         Caption         =   "-"
         Height          =   255
         Left            =   60
         TabIndex        =   19
         TabStop         =   0   'False
         Top             =   240
         Width           =   255
      End
      Begin VB.CommandButton cmdZin 
         Caption         =   "+"
         Height          =   255
         Left            =   300
         TabIndex        =   18
         TabStop         =   0   'False
         Top             =   240
         Width           =   255
      End
      Begin VB.CommandButton cmdLeft 
         Caption         =   "<-"
         Height          =   255
         Left            =   660
         TabIndex        =   17
         TabStop         =   0   'False
         Top             =   240
         Width           =   255
      End
      Begin VB.CommandButton cmdRight 
         Caption         =   "->"
         Height          =   255
         Left            =   900
         TabIndex        =   16
         TabStop         =   0   'False
         Top             =   240
         Width           =   255
      End
      Begin VB.CommandButton cmdUp 
         Caption         =   "up"
         Height          =   255
         Left            =   1380
         TabIndex        =   15
         TabStop         =   0   'False
         Top             =   240
         Width           =   495
      End
      Begin VB.CommandButton cmdDown 
         Caption         =   "down"
         Height          =   255
         Left            =   1860
         TabIndex        =   14
         TabStop         =   0   'False
         Top             =   240
         Width           =   615
      End
   End
   Begin VB.CommandButton cmdCheckLocation 
      Caption         =   "Check location"
      Height          =   255
      Left            =   3480
      TabIndex        =   12
      TabStop         =   0   'False
      Top             =   540
      Width           =   1695
   End
   Begin MSComDlg.CommonDialog CommonDialog1 
      Left            =   3120
      Top             =   360
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.TextBox txtFo 
      Height          =   285
      Left            =   0
      TabIndex        =   9
      Text            =   "C:\Agilent_ICT\boards\08218-1\fixture\fixture.o"
      Top             =   240
      Width           =   4215
   End
   Begin VB.CommandButton cmdOutput 
      Caption         =   "Output"
      Height          =   255
      Left            =   4260
      TabIndex        =   8
      TabStop         =   0   'False
      Top             =   240
      Width           =   975
   End
   Begin VB.Frame Frame1 
      Caption         =   "Move transfer pin"
      Height          =   555
      Left            =   7860
      TabIndex        =   3
      Top             =   0
      Width           =   4095
      Begin VB.CommandButton cmdPaiLie 
         Caption         =   "<---"
         Height          =   255
         Left            =   3120
         TabIndex        =   20
         Top             =   180
         Width           =   855
      End
      Begin VB.CommandButton cmdAlignY 
         Caption         =   "|"
         Height          =   435
         Left            =   2760
         TabIndex        =   11
         TabStop         =   0   'False
         ToolTipText     =   "All point have same X"
         Top             =   0
         Width           =   135
      End
      Begin VB.CommandButton cmdAlignX 
         Caption         =   "------"
         Height          =   195
         Left            =   2040
         TabIndex        =   10
         TabStop         =   0   'False
         ToolTipText     =   "all point have save Y"
         Top             =   240
         Width           =   615
      End
      Begin VB.CommandButton cmdTleft 
         Caption         =   "<-"
         Height          =   255
         Left            =   240
         TabIndex        =   7
         TabStop         =   0   'False
         Top             =   200
         Width           =   255
      End
      Begin VB.CommandButton cmdTright 
         Caption         =   "->"
         Height          =   255
         Left            =   480
         TabIndex        =   6
         TabStop         =   0   'False
         Top             =   200
         Width           =   255
      End
      Begin VB.CommandButton cmdTup 
         Caption         =   "up"
         Height          =   255
         Left            =   840
         TabIndex        =   5
         TabStop         =   0   'False
         Top             =   200
         Width           =   495
      End
      Begin VB.CommandButton cmdTdown 
         Caption         =   "down"
         Height          =   255
         Left            =   1320
         TabIndex        =   4
         TabStop         =   0   'False
         Top             =   200
         Width           =   615
      End
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Load"
      Height          =   255
      Left            =   4260
      TabIndex        =   2
      TabStop         =   0   'False
      Top             =   0
      Width           =   975
   End
   Begin VB.TextBox txtFile 
      BackColor       =   &H00FFC0FF&
      Height          =   285
      Left            =   0
      TabIndex        =   1
      Text            =   "C:\boards\DP2-HP-2-06240-1\fixture\fixture.o"
      Top             =   0
      Width           =   4215
   End
   Begin VB.PictureBox Picture1 
      AutoRedraw      =   -1  'True
      BackColor       =   &H80000007&
      ForeColor       =   &H00000080&
      Height          =   7035
      Left            =   120
      ScaleHeight     =   6975
      ScaleWidth      =   12195
      TabIndex        =   0
      Top             =   840
      Width           =   12255
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

'sin(a+b)=sina*consb+consa*sinb;
'cons(a+b)=consa*consb-sina*sinb;
'after we rotate it as widdershins for a degree a
'X1=x*consa -y*sina
'Y1=Y*consa+x*sina
Const pi = 3.1415926535

Dim blnPanel As Boolean    'this is a panel fixture.


Dim xOff As Double  ' just for adjuest the current view ,let the picture in the current view.
Dim yOff As Double
Dim Rate  As Double
Dim tranWidth As Double
Dim NetCur As String  'current reading net name.

Dim xPlacement_cur As Double
Dim yPlacement_cur As Double
Dim xPlacement_panel As Double
Dim yPlacement_panel As Double
Dim Angle As Single
 
Dim Tran() As tPoint
Dim OutLine() As tPoint
Dim KeepOut() As tPoint
Dim moduleOut() As tPoint

Dim xTranOff As Double ' in x direction move trans every time
Dim yTranOff As Double ' in y direction move trans every time

Private Type tPoint
  Xo As Double
  Yo As Double
  Xshow As Double
  Yshow As Double
  xShift As Double
  yShift As Double
  Name As String
  net As String
  Selected As Boolean
  xPlaceMent As Double
  yPlaceMent As Double
End Type

Dim xMouseDown As Single
Dim yMouseDown As Single
Dim blnBox As Boolean 'true= your are selecting by box
Dim blnShiftPress As Boolean  'Shift key pressed ,need fast move.
Dim blnCtlPress As Boolean  'Shift key pressed ,need slow move.
Const FastSpeed = 6

Dim p As tPoint
 
Public User As String
Private blnOutPutEnable As Boolean

Private Sub cmdAbout_Click()
frmAbout.Show vbModal, Me

End Sub

Private Sub cmdAlignX_Click()
 Call Align("Y")
End Sub
Sub Align(XY As String)
'On Error GoTo ErrStop
Dim x As Boolean, y As Boolean
Dim blnFind As Boolean
Dim V_ As Long
Dim i As Integer

Dim pS As tPoint

    If Abs(Cos(Angle * pi / 180)) > Abs(Sin(Angle * pi / 180)) Then 'in x direction the effect will affect on Xo
        x = True
    Else                                                  ''in x direction the effect will affect on Yo
        x = False
    End If
    
    If Abs(Sin(Angle * pi / 180)) > Abs(Cos(Angle * pi / 180)) Then 'in y direction the effect will affect on Xo
        y = False
    Else                                                  ''in y direction the effect will affect on Yo
        y = True
    End If
If XY = "X" Then  ' will have the save Xshow
    For i = 0 To UBound(Tran)
        pS = Tran(i)
        If pS.Selected = True And blnFind = False Then
            blnFind = True
            If x = True Then
                V_ = pS.Xo + pS.xShift + pS.xPlaceMent
            Else
                V_ = pS.Yo + pS.yShift + pS.yPlaceMent
            End If
        End If
        
        If pS.Selected = True Then
            If x = True Then
                pS.xShift = V_ - pS.Xo - pS.xPlaceMent
            Else
                pS.yShift = V_ - pS.Yo - pS.yPlaceMent
            End If
            Call CalculateShow(pS)
            Tran(i) = pS
        End If
        
    Next
End If
If XY = "Y" Then  ' will have the save Xshow
    For i = 0 To UBound(Tran)
        pS = Tran(i)
        If pS.Selected = True And blnFind = False Then
            blnFind = True
            If y = False Then
                V_ = pS.Xo + pS.xShift + pS.xPlaceMent
            Else
                V_ = pS.Yo + pS.yShift + pS.yPlaceMent
            End If
        End If
        
        If pS.Selected = True Then
            If y = False Then
                pS.xShift = V_ - pS.Xo - pS.xPlaceMent
            Else
                pS.yShift = V_ - pS.Yo - pS.yPlaceMent
            End If
            Call CalculateShow(pS)
            Tran(i) = pS
        End If
        
    Next
End If

Call Draw
'ErrStop:
'MsgBox Err.Description, vbCritical
End Sub

Private Sub cmdAlignY_Click()
 Call Align("X")
End Sub

Private Sub cmdCheckLocation_Click()
'On Error GoTo ErrStop
'if trans pin x,y is same ,then warning.
Dim p2 As tPoint
Dim p3 As tPoint
Dim i As Integer
Dim j As Integer

Dim RR As Long

RR = tranWidth / Rate

Dim f As Boolean

For i = 0 To UBound(Tran)
    p2 = Tran(i)
    For j = i + 1 To UBound(Tran)
        p3 = Tran(j)

        If p2.Xshow = p3.Xshow And p2.Yshow = p3.Yshow Then
           p2.Selected = True
           Tran(i) = p2
           p3.Selected = False
           Tran(j) = p3
           Me.Picture1.Line (p2.Xshow / Rate + xOff - RR, p2.Yshow / Rate + yOff - RR)-(p2.Xshow / Rate + xOff + RR, p2.Yshow / Rate + yOff + RR), vbYellow, BF
           f = True
 
        End If

    Next j
Next
If f = True Then
    MsgBox "Transfer pin location sames found,please pay attention ", vbCritical, "Warning"
Else
    MsgBox "Transfer pin location check ok", vbInformation, "OK"
End If
'ErrStop:
'MsgBox Err.Description, vbCritical

End Sub

Private Sub cmdDeleteNouse_Click()
Dim f As New FileSystemObject
Dim trIn As TextStream
Dim trOut As TextStream
Dim strL As String
Dim strlB As String
Dim node As String
Dim ar() As String
Dim nLine As Integer
Dim i As Long
Dim j As Long
Dim tr As TextStream
Dim Step As String
Dim dealLine As Boolean

Dim brc As New Dictionary
'Dim Trans As New Dictionary
Dim Probe As New Dictionary
Dim wire As New Dictionary

  
  brc.Add "123", "21"
  brc.Add "21902", ""
  
  brc.RemoveAll

Set tr = f.OpenTextFile(Me.txtFile.Text)
Do Until tr.AtEndOfStream
    strL = Trim(tr.ReadLine)
    dealLine = False
    
    If InStr(strL, "NODE ") = 1 Then
        node = Mid(strL, 5)
        dealLine = True
    End If
    If strL = "PINS" And node <> "" Then
        Step = "PINS"
        dealLine = True
    End If
    If strL = "TRANSFERS" And node <> "" Then
        Step = "TRANSFERS"
        dealLine = True
    End If
    
    If strL = "PROBES" And node <> "" Then
        Step = "PROBES"
        dealLine = True
    End If
    If strL = "WIRES" And node <> "" Then
        Step = "WIRES"
        dealLine = True
    End If
    
    If strL = "" Then
        'deal with a section
        If node <> "" Then
            For i = 0 To brc.Count - 1
                strlB = brc.Items(i)
                If wire.Exists(strlB) = False Then
                    Debug.Print node, strlB, "nowire BRC"
                End If
            Next
            
        End If
        
        node = ""
        dealLine = True
        brc.RemoveAll
        Probe.RemoveAll
        wire.RemoveAll
    End If
    If dealLine = False And node <> "" Then
        If Step = "PINS" Then
            ar = Split(strL, " ")
            strlB = ar(0)
            strlB = Replace(strlB, ";", "")
            brc.Add strlB, strlB
        End If
        If Step = "PROBES" Then
            ar = Split(strL, " ")
            strlB = ar(0)
            strlB = Replace(strlB, ";", "")
            Probe.Add strlB, strlB
        End If
        If Step = "TRANSFERS" Then
            ar = Split(strL, " ")
            strlB = ar(0)
            strlB = Replace(strlB, ";", "")
            Probe.Add strlB, strlB
        End If
        If Step = "WIRES" Then
            ar = Split(strL, " ")
            strlB = ar(0)
            If wire.Exists(strlB) = False Then wire.Add strlB, strlB
            
            strlB = ar(2)
            If wire.Exists(strlB) = False Then wire.Add strlB, strlB
        End If
        
    End If
    
    
Loop
     
tr.Close
Set tr = Nothing

MsgBox "OK"


End Sub

Private Sub cmdDown_Click()
yOff = yOff - 3000
Call Draw
End Sub

Private Sub cmdLeft_Click()
xOff = xOff + 3000
Call Draw

End Sub

Private Sub cmdOutput_Click()
'On Error GoTo ErrStop
Dim fIn As New FileSystemObject
Dim fOut As New FileSystemObject

Dim trIn As TextStream
Dim trOut As TextStream

Dim strL As String, strLorg As String
Dim strlB As String
Dim strOut As String
Dim ar() As String
Dim pout As tPoint

Dim begin As Boolean
Dim i As Integer

'If blnOutPutEnable = False Then
'    MsgBox "Dear " & User & vbCrLf & "You can't output this file, I'm so sorry . Please contact writer.", vbInformation
'    Exit Sub
'
'End If


Set trIn = fIn.OpenTextFile(Me.txtFile.Text)

Set trOut = fOut.OpenTextFile(Me.txtFo.Text, ForWriting, True)

Do Until trIn.AtEndOfStream
 
 strLorg = trIn.ReadLine
 strL = Trim(strLorg)
 
 If strL = "" Or strL = "END BOARD" Or strL = "WIRES" Then
    begin = False
 End If
 
 If begin = True Then
        strL = Replace(strL, ";", "")
'        strL = Replace(strL, ",", " ")

    Do
        strlB = Replace(strL, "  ", " ")
        
        If strL = strlB Then Exit Do
        strL = strlB
    Loop
    ar = Split(strL, " ")
'    Debug.Assert p.Name <> "T2323"
'    pout.Name = ar(0)
    For i = 1 To UBound(Tran)
        
        p = Tran(i)
        
        
        If ar(0) = p.Name Then
            If p.xShift <> 0 Or p.yShift <> 0 Then
'            Debug.Assert p.Name <> "T2323"
'                strLorg = Replace(strLorg, ar(1), (p.Xo + p.xShift))  'replace x
'                strLorg = Replace(strLorg, ar(2), (p.Yo + p.yShift)) 'replace y
                 ar(1) = (p.Xo + p.xShift) & ","
                 ar(2) = (p.Yo + p.yShift)
                 strLorg = Join(ar, "  ") & ";"
                 
            End If
            Exit For
        End If
    
    Next
     
 End If
 
 If InStr(strL, "TRANSFERS") = 1 Then
    begin = True
    
 End If
 
 trOut.WriteLine (strLorg)

 
Loop
trOut.Close
trIn.Close
Set fIn = Nothing
Set fOut = Nothing

 
 
Call Draw
MsgBox "OK to :" & Me.txtFo.Text

'ErrStop:
'MsgBox Err.Description, vbCritical
End Sub


Private Sub cmdPaiLie_Click()
'On Error GoTo ErrStop
Dim x As Boolean, y As Boolean
Dim blnFind As Boolean
Dim V1_ As Long, V2_ As Long
Dim i As Integer
    

Dim pS As tPoint

    If Abs(Cos(Angle * pi / 180)) > Abs(Sin(Angle * pi / 180)) Then 'in x direction the effect will affect on Xo
        x = True
    Else                                                  ''in x direction the effect will affect on Yo
        x = False
    End If
'
'If XY = "X" Then  ' will have the save Xshow
Dim nSel As Integer
    For i = 0 To UBound(Tran)
        pS = Tran(i)
        If pS.Selected = True And blnFind = False Then
            blnFind = True
            If x = True Then
                V1_ = pS.Xo + pS.xShift + pS.xPlaceMent
                V2_ = pS.Yo + pS.yShift + pS.yPlaceMent
            Else
                V1_ = pS.Yo + pS.yShift + pS.yPlaceMent
                V2_ = pS.Xo + pS.xShift + pS.xPlaceMent
            End If
        End If
        
        If pS.Selected = True Then
            If x = True Then
                pS.xShift = V1_ - pS.Xo - pS.xPlaceMent + nSel * tranWidth * 4.5
                pS.yShift = V2_ - pS.Yo - pS.yPlaceMent
            Else
                pS.yShift = V1_ - pS.Yo - pS.yPlaceMent + nSel * tranWidth * 4.5
                pS.xShift = V2_ - pS.Xo - pS.xPlaceMent
            End If
            Call CalculateShow(pS)
            Tran(i) = pS
        
            nSel = nSel + 1
        End If
        
    Next
'End If

Call Draw
'ErrStop:
'MsgBox Err.Description, vbCritical
End Sub

Private Sub cmdTup_Click()
 Call TransMove("U")

End Sub
 
Private Sub cmdTdown_Click()
 Call TransMove("D")
End Sub

Private Sub cmdTleft_Click()

Call TransMove("L")

End Sub
Private Sub cmdTright_Click()
  Call TransMove("R")

End Sub
 
Private Sub TransMove(LRUD As String)
'On Error GoTo ErrStop
Dim i As Integer
Dim x As Boolean, y As Boolean
Dim pS As tPoint

    If Abs(Cos(Angle * pi / 180)) > Abs(Sin(Angle * pi / 180)) Then 'in x direction the effect will affect on Xo
        x = True
    Else                                                  ''in x direction the effect will affect on Yo
        x = False
    End If
    
    If Abs(Sin(Angle * pi / 180)) > Abs(Cos(Angle * pi / 180)) Then 'in y direction the effect will affect on Xo
        y = False
    Else                                                  ''in y direction the effect will affect on Yo
        y = True
    End If
        
For i = 1 To UBound(Tran)
    p = Tran(i)
    If p.Selected = True Then
      
        
        If LRUD = "L" Then
            If x Then     ' because Xo effect is great ,so move Xo
                If Cos(Angle * pi / 180) > 0 Then   ' trans want go left ,so Xshow need go left
                     p.xShift = p.xShift - xTranOff
                ElseIf Cos(Angle * pi / 180) < 0 Then
                     p.xShift = p.xShift + xTranOff
                End If
            Else  ' because Yo effect is great ,so move Yo
                If Sin(Angle * pi / 180) > 0 Then  ' trans want go left ,so Xshow need go left
                       p.yShift = p.yShift + yTranOff
                ElseIf Sin(Angle * pi / 180) < 0 Then
                       p.yShift = p.yShift - yTranOff
                End If
            End If
        End If
        
        If LRUD = "R" Then
            If x Then     ' because Xo effect is great ,so move Xo
                If Cos(Angle * pi / 180) > 0 Then   ' trans want go right ,so Xshow need go right
                       p.xShift = p.xShift + xTranOff
                ElseIf Cos(Angle * pi / 180) < 0 Then
                       p.xShift = p.xShift - xTranOff
                End If
            Else  ' because Yo effect is great ,so move Yo
                If Sin(Angle * pi / 180) > 0 Then  ' trans want go right ,so Xshow need go right
                       p.yShift = p.yShift - yTranOff
                ElseIf Sin(Angle * pi / 180) < 0 Then
                       p.yShift = p.yShift + yTranOff
                End If
            End If
        End If
        
        If LRUD = "U" Then
            If y Then     ' because Yo effect is great ,so move Yo
                If Cos(Angle * pi / 180) > 0 Then   ' trans want go up ,so Yshow need go up
                        p.yShift = p.yShift + yTranOff
                ElseIf Cos(Angle * pi / 180) < 0 Then
                        p.yShift = p.yShift - yTranOff
                End If
            Else  ' because Xo effect is great ,so move Xo
                If Sin(Angle * pi / 180) > 0 Then  ' trans want go up ,so Yshow need go up
                        p.xShift = p.xShift + xTranOff
                ElseIf Sin(Angle * pi / 180) < 0 Then
                    p.xShift = p.xShift - xTranOff
                End If
            End If
        End If
        If LRUD = "D" Then
            If y Then     ' because Yo effect is great ,so move Yo
                If Cos(Angle * pi / 180) > 0 Then   ' trans want go up ,so Yshow need go up
                    p.yShift = p.yShift - yTranOff
                ElseIf Cos(Angle * pi / 180) < 0 Then
                    p.yShift = p.yShift + yTranOff
                End If
            Else  ' because Xo effect is great ,so move Xo
                If Sin(Angle * pi / 180) > 0 Then  ' trans want go up ,so Yshow need go up
                    p.xShift = p.xShift - xTranOff
                ElseIf Sin(Angle * pi / 180) < 0 Then
                    p.xShift = p.xShift + xTranOff
                End If
            End If
        End If
        
        Call CalculateShow(p)
  
        Tran(i) = p
        pS = Tran(i)
        
         
    End If
    
Next

 Me.Caption = pS.Name & "  X:" & pS.Xo + pS.xShift & "   Y:" & pS.Yo + pS.yShift & "   Net:" & pS.net

Call Draw
'ErrStop:
'MsgBox Err.Description, vbCritical
End Sub
Private Sub CalculateShow(p1 As tPoint)
 If blnPanel Then
        p1.Xshow = Cos(Angle * pi / 180) * (p1.Xo + p1.xShift + p1.xPlaceMent) - Sin(Angle * pi / 180) * (p1.Yo + p1.yShift + p1.yPlaceMent) + xPlacement_panel
        p1.Yshow = Sin(Angle * pi / 180) * (p1.Xo + p1.xShift + p1.xPlaceMent) + Cos(Angle * pi / 180) * (p1.Yo + p1.yShift + p1.yPlaceMent) + yPlacement_panel
 Else
        p1.Xshow = Cos(Angle * pi / 180) * (p1.Xo + p1.xShift) - Sin(Angle * pi / 180) * (p1.Yo + p1.yShift) + p1.xPlaceMent
        p1.Yshow = Sin(Angle * pi / 180) * (p1.Xo + p1.xShift) + Cos(Angle * pi / 180) * (p1.Yo + p1.yShift) + p1.yPlaceMent
 End If
        p1.Yshow = -p1.Yshow
        
End Sub

Private Sub cmdRight_Click()
xOff = xOff - 3000
Call Draw
End Sub

Private Sub cmdUp_Click()
yOff = yOff + 3000
Call Draw
End Sub

Private Sub cmdZin_Click()
Rate = Rate / 1.5
Call Draw

End Sub

Private Sub cmdZout_Click()
   Rate = Rate * 1.5
   Call Draw
   
End Sub

Private Sub Command1_Click()
If Dir(txtFile.Text) = "" Then
   MsgBox "Please open fixture.o file!", vbCritical
   Exit Sub
End If
Dim f As New FileSystemObject
Dim tr As TextStream
Dim strL As String
Dim strlB As String
Dim ar() As String
Dim nLine As Integer
Dim i As Long
Dim j As Long
 
Dim blnBoard As Boolean    'reading board data
Me.Command1.Enabled = False
Me.Picture1.Enabled = True

  
Set tr = f.OpenTextFile(Me.txtFile.Text)

ReDim Tran(0) As tPoint
ReDim OutLine(0) As tPoint
ReDim KeepOut(0) As tPoint
 
Do Until tr.AtEndOfStream
 strL = Trim(tr.ReadLine)
 nLine = nLine + 1
 If nLine = 2 Then
    If strL = createCode Then
        blnOutPutEnable = True
    End If
 End If
 
 If InStr(strL, "KEEPOUT") = 1 Then
    Call readKeepout(tr)
 End If
 
 If strL = "OTHER" Then
    NetCur = "OTHER"
 End If
 
 If InStr(strL, "NODE") = 1 Then
    ar = Split(strL, " ")
    NetCur = ar(1)
 End If
 
 If InStr(strL, "PANEL") = 1 Then
    blnPanel = True
 End If
 
 If InStr(strL, "BOARD") = 1 Then
    blnBoard = True
 End If
 
 If InStr(strL, "OUTLINE") = 1 And UBound(OutLine) < 1 Then
    Call readOutLine(tr)
    
 End If
  If InStr(strL, "NODE") = 1 Or InStr(strL, "OTHER") = 1 Then
    Call readNode(tr)
    
 End If
 
If InStr(strL, "PLACEMENT") = 1 Then
    strL = Replace(strL, ";", " ")
    Do
        strlB = Replace(strL, "  ", " ")
        If strL = strlB Then Exit Do
        strL = strlB
    Loop
    ar = Split(strL, " ")
     
     If blnPanel = True And blnBoard = False Then 'this is a panel fixture. and not read a board
          xPlacement_panel = Val(ar(1))
          yPlacement_panel = Val(ar(2))
          Angle = Val(ar(3))
     End If
     If blnBoard = True Then
         xPlacement_cur = Val(ar(1))
         yPlacement_cur = Val(ar(2))
         If blnPanel = False Then Angle = Val(ar(3))
     End If
 
 End If
 
Loop
tr.Close
Set f = Nothing


'get module out line
ReDim moduleOut(77, 45) As tPoint

For j = 0 To 45
    For i = 0 To 77
      moduleOut(i, j).Xshow = 19600 + i * 1500
      moduleOut(i, j).Yshow = -(81699 - j * 3500)
    Next
Next


Call Draw
MsgBox "OK"

End Sub
Private Sub readNode(tr)
Dim strL As String
Dim strlB As String
Dim ar() As String
Dim begin As Boolean
  
'X1 = 0
'Y1 = 0
'X2 = 0
'Y2 = 0

Me.Picture1.ForeColor = vbYellow
 
Do
    strL = Trim(tr.ReadLine)
    If strL = "" Then Exit Do
    If strL = "END BOARD" Then Exit Do
    If strL = "WIRES" Then Exit Do
    
    
    If begin = True Then
        strL = Replace(strL, ";", "")
        strL = Replace(strL, ",", " ")
        Do
            strlB = Replace(strL, "  ", " ")
            If strL = strlB Then Exit Do
            strL = strlB
        Loop
        ar = Split(strL, " ")
        
    ReDim Preserve Tran(UBound(Tran) + 1)
    p.Xo = Val(ar(1))
    p.Yo = Val(ar(2))
    p.xPlaceMent = xPlacement_cur
    p.yPlaceMent = yPlacement_cur
    
    p.Name = ar(0)
    p.net = NetCur
    
' p.Xshow = (p.Yo + p.yPlaceMent) + xPlacement_panel
' p.Yshow = -(p.Xo + p.xPlaceMent) + yPlacement_panel
If blnPanel Then
  p.Xshow = Cos(Angle * pi / 180) * (p.Xo + p.xPlaceMent) - Sin(Angle * pi / 180) * (p.Yo + p.yPlaceMent) + xPlacement_panel
  p.Yshow = Sin(Angle * pi / 180) * (p.Xo + p.xPlaceMent) + Cos(Angle * pi / 180) * (p.Yo + p.yPlaceMent) + yPlacement_panel
Else
  p.Xshow = Cos(Angle * pi / 180) * (p.Xo) - Sin(Angle * pi / 180) * (p.Yo) + p.xPlaceMent
  p.Yshow = Sin(Angle * pi / 180) * (p.Xo) + Cos(Angle * pi / 180) * (p.Yo) + p.yPlaceMent
End If
  
 p.Yshow = -p.Yshow
 Tran(UBound(Tran)) = p
 
'    X2 = -Val(ar(2))
'    Y2 = Val(ar(1))
'
'    X2 = X2 + xPlacement_cur
'    Y2 = Y2 + yPlacement_cur
'
'       Y2 = -Y2
'        Me.Picture1.Circle ((X2 / Rate + xOff), (Y2 / Rate + yOff)), 8
     
    End If

   If strL = "TRANSFERS" Then begin = True
Loop

End Sub


Private Sub readKeepout(tr)
Dim strL As String
Dim ar() As String
Dim blnDraw As Boolean
Static i As Integer
Dim iLine As Integer

Dim P0 As tPoint

i = i + 1

Me.Picture1.ForeColor = vbWhite
iLine = 0

Do
    strL = Trim(tr.ReadLine)
    iLine = iLine + 1
    
    If strL = "" Then Exit Do
    ar = Split(Replace(strL, ";", ""), ",")
 
    ReDim Preserve KeepOut(UBound(KeepOut) + 1)
    p.Xo = Val(ar(0))
    p.Yo = Val(ar(1))
    p.Name = "keepout" & i
    p.Xshow = p.Xo
    p.Yshow = p.Yo
    
'    p.xPlaceMent = xPlacement_cur
'    p.yPlacement = yPlacement_cur
     
    p.Yshow = -p.Yshow
    
    If iLine = 1 Then P0 = p
    KeepOut(UBound(KeepOut)) = p
    
'    X2 = Val(ar(0))
'    Y2 = Val(ar(1))
'
'    Y2 = -Y2
'    If blnDraw Then
'        Me.Picture1.Line (X1 / Rate + xOff, Y1 / Rate + yOff)-(X2 / Rate + xOff, Y2 / Rate + yOff)
'
'    End If
'    X1 = X2
'    Y1 = Y2
'    blnDraw = True
Loop
  If p.Xo <> P0.Xo Or p.Yo <> P0.Yo Then
    ReDim Preserve KeepOut(UBound(KeepOut) + 1)
    KeepOut(UBound(KeepOut)) = P0
  End If

End Sub


Private Sub readOutLine(tr)
Dim strL As String
Dim ar() As String
Dim T As Single
Dim blnDraw As Boolean

'X1 = 0
'Y1 = 0
'X2 = 0
'Y2 = 0
Me.Picture1.ForeColor = vbRed
 
Do
    strL = Trim(tr.ReadLine)
    If strL = "" Then Exit Do
    ar = Split(Replace(strL, ";", ""), ",")
   
 ReDim Preserve OutLine(UBound(OutLine) + 1)
    p.Xo = Val(ar(0))
    p.Yo = Val(ar(1))
     
    p.xPlaceMent = xPlacement_cur   'because outline not for every board,only for panel. so it's xplacement =0
    p.yPlaceMent = yPlacement_cur
    p.Name = "outline"
     

' p.Xshow = (p.Yo) + xPlacement_panel
' p.Yshow = -(p.Xo) + yPlacement_panel
If blnPanel Then
  p.Xshow = Cos(Angle * pi / 180) * (p.Xo + p.xPlaceMent) - Sin(Angle * pi / 180) * (p.Yo + p.yPlaceMent) + xPlacement_panel
  p.Yshow = Sin(Angle * pi / 180) * (p.Xo + p.xPlaceMent) + Cos(Angle * pi / 180) * (p.Yo + p.yPlaceMent) + yPlacement_panel
Else
  p.Xshow = Cos(Angle * pi / 180) * (p.Xo) - Sin(Angle * pi / 180) * (p.Yo) + p.xPlaceMent
  p.Yshow = Sin(Angle * pi / 180) * (p.Xo) + Cos(Angle * pi / 180) * (p.Yo) + p.yPlaceMent
End If

' + xPlacement_panel
 
 p.Yshow = -p.Yshow
 OutLine(UBound(OutLine)) = p
 
Loop

End Sub

Private Sub Draw()
'On Error GoTo ErrStop
Dim i As Long
Dim j As Long, RR As Long, Yp As Long
Dim k As Integer
Dim blnDraw As Boolean
Dim p1 As tPoint
Dim p2 As tPoint
Dim p3 As tPoint

RR = tranWidth / Rate

Me.Picture1.Cls

'draw bank outline
Picture1.ForeColor = vbRed
Me.Picture1.Line (-1889 / Rate + xOff, -94724 / Rate + yOff)-(156612 / Rate + xOff, 85282 / Rate + yOff), , B


'draw module outline
Picture1.ForeColor = vbMagenta
Me.Picture1.Line (8861 / Rate + xOff, -88225 / Rate + yOff)-(148114 / Rate + xOff, -5225 / Rate + yOff), , B
Me.Picture1.Line (8861 / Rate + xOff, -4225 / Rate + yOff)-(148114 / Rate + xOff, 78780 / Rate + yOff), , B

'draw P-Pin
Picture1.ForeColor = vbCyan
For j = 0 To 45
        Yp = moduleOut(0, j).Yshow / Rate + yOff
    For i = 0 To 77
 
        If j = 1 Or j = 11 Or j = 22 Or j = 23 Or j = 25 Or j = 35 Then
        Else
           ' Me.Picture1.Circle ((19600 + i * 1500) / Rate + xOff, (-(81699 - j * 3500) / Rate + yOff)), tranWidth / Rate, vbCyan 'PIN CARD SLOT 2-5
           Me.Picture1.Circle (moduleOut(i, j).Xshow / Rate + xOff, Yp), RR   'PIN CARD SLOT 2-5
        End If
    Next
Next

'draw keepout
Picture1.ForeColor = vbWhite
For i = 0 To UBound(KeepOut)
    p2 = KeepOut(i)
    If p2.Name = p1.Name Then
         Me.Picture1.Line (p1.Xshow / Rate + xOff, p1.Yshow / Rate + yOff)-(p2.Xshow / Rate + xOff, p2.Yshow / Rate + yOff)

    End If
      p1 = p2
Next
 
'draw outline
Picture1.ForeColor = vbGreen
For i = 0 To UBound(OutLine)
    p2 = OutLine(i)
    If p2.Name = p1.Name Then
         Me.Picture1.Line (p1.Xshow / Rate + xOff, p1.Yshow / Rate + yOff)-(p2.Xshow / Rate + xOff, p2.Yshow / Rate + yOff)
    End If
     p1 = p2
      
Next
'draw trans

Picture1.ForeColor = vbYellow
Dim colo As Long
For i = 0 To UBound(Tran)
    p2 = Tran(i)
    If p2.Name <> "" Then
         If p2.net = "OTHER" Then
            colo = vbBlue
         Else
            colo = vbYellow
         End If
         
         
         If p2.Selected = True Then
            Me.Picture1.Line (p2.Xshow / Rate + xOff - RR, p2.Yshow / Rate + yOff - RR)-(p2.Xshow / Rate + xOff + RR, p2.Yshow / Rate + yOff + RR), colo, BF
         Else
            Me.Picture1.Line (p2.Xshow / Rate + xOff - RR, p2.Yshow / Rate + yOff - RR)-(p2.Xshow / Rate + xOff + RR, p2.Yshow / Rate + yOff + RR), colo, B
         End If
    End If
 
Next
 
DoEvents

'ErrStop:
'MsgBox Err.Description, vbCritical
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)
Dim i As Integer

Select Case KeyCode
  Case Is = 39 ' right key
     Call cmdRight_Click
  Case Is = 37 'left
     Call cmdLeft_Click
  Case Is = 40  'down
     Call cmdDown_Click
  Case Is = 38   'up
     Call cmdUp_Click
  Case Is = 187  '"+"
     Call cmdZin_Click
  Case Is = 189 ' "-"
     Call cmdZout_Click
  Case Is = 27 'esc
     For i = 1 To UBound(Tran)
        p = Tran(i)
        p.Selected = False
        Tran(i) = p
     Next
     
    Call Draw
  Case Is = 83 'S key
    Call cmdTdown_Click
  Case Is = 65 'A key
    Call cmdTleft_Click
  Case Is = 68 'D key
    Call cmdTright_Click
  Case Is = 87 'W key
    Call cmdTup_Click
  Case Is = 16 'Shift key
    If blnShiftPress = False Then
        xTranOff = xTranOff * FastSpeed
        yTranOff = yTranOff * FastSpeed
    End If
    blnShiftPress = True
    
  Case Is = 17 'Ctl key
    If blnCtlPress = False Then
        xTranOff = xTranOff / FastSpeed
        yTranOff = yTranOff / FastSpeed
    End If
    blnCtlPress = True
 End Select
 
End Sub

Private Sub Form_KeyUp(KeyCode As Integer, Shift As Integer)
Select Case KeyCode

 Case Is = 16 'Shift key
    blnShiftPress = False
    xTranOff = xTranOff / FastSpeed
    yTranOff = yTranOff / FastSpeed
   
 Case Is = 17 'Ctl key
    xTranOff = xTranOff * FastSpeed
    yTranOff = yTranOff * FastSpeed

    blnCtlPress = False
    
 End Select
 
End Sub

Private Sub Form_Load()
txtFile.Text = "Please open fixtrue.o file!(DblClick me open file!)"
  xOff = 1800
  yOff = 5500
  Rate = 10
  tranWidth = 212 ' because the 100 mil transfer pin is set 104 in 'standard\fixture\components
  
  xTranOff = 150 ' in x direction move trans every time
  yTranOff = 150 ' in y direction move trans every time
 
  Me.Picture1.Enabled = False

Me.Picture1.FontSize = 13
Me.Picture1.ForeColor = &H80&
Me.Picture1.Print ""

Me.Picture1.Print "Key map as below!!!"
Me.Picture1.Print "[-] to zoom out view window"
Me.Picture1.Print "[=] to zoom in view window"
Me.Picture1.Print "[up arrow] to up view window"
Me.Picture1.Print "[down arrow] to down view window"
Me.Picture1.Print "[left arrow] to left view window"
Me.Picture1.Print "[right arrow] to right view window"

Me.Picture1.Print
Me.Picture1.Print "[Esc] to unselect all Transfer pins"
Me.Picture1.Print "[A] to left move Transfer pins"
Me.Picture1.Print "[S] to down move Transfer pins"
Me.Picture1.Print "[D] to right move Transfer pins"
Me.Picture1.Print "[W] to up move Transfer pins"
Me.Picture1.Print "[Shift] to fast move Transfer pins"
Me.Picture1.Print "[Ctl] to slow move Transfer pins"

'Me.Picture1.Print
'Me.Picture1.Print "writer: x.d.zhang@126.com"
'Me.Picture1.Print "writer: lwplwp123@163.com"


Me.cmdAlignY.Caption = "|" & vbCrLf & "|"


End Sub

Private Sub Form_Resize()
On Error Resume Next
With Me.Picture1
    .Left = 100
    .Width = Me.Width - 300
    .Height = Me.Height - .Top - 600

End With
End Sub

Private Sub Form_Unload(Cancel As Integer)
End

End Sub

Private Sub Picture1_MouseDown(Button As Integer, Shift As Integer, x As Single, y As Single)
xMouseDown = x
yMouseDown = y
Dim i As Integer

If Button = vbRightButton Then
    For i = 1 To UBound(Tran)
        p = Tran(i)
        p.Selected = False
        Tran(i) = p
     Next
     
    Call Draw
    
End If

End Sub

Private Sub Picture1_MouseMove(Button As Integer, Shift As Integer, x As Single, y As Single)
'Me.Caption = "X:" & X & "  Y:" & Y
If Button = vbLeftButton Then
    blnBox = True
    Me.Picture1.Line (xMouseDown, yMouseDown)-(x, y), vbRed, B

End If


End Sub

Private Sub Picture1_MouseUp(Button As Integer, Shift As Integer, x As Single, y As Single)
Dim i As Integer
Dim X1 As Double, X2 As Double
Dim Y1 As Double, Y2 As Double, T As Double
Dim p2 As tPoint
If blnBox = False Then
For i = 1 To UBound(Tran)
   p2 = Tran(i)
  
   If x > p2.Xshow / Rate + xOff - tranWidth / Rate Then
     If x < p2.Xshow / Rate + xOff + tranWidth / Rate Then
        If y > p2.Yshow / Rate + yOff - tranWidth / Rate Then
            If y < p2.Yshow / Rate + yOff + tranWidth / Rate Then
'                 Me.Picture1.Line (p2.Xshow / Rate + xOff - tranWidth / Rate, p2.Yshow / Rate + yOff - tranWidth / Rate)-(p2.Xshow / Rate + xOff + tranWidth / Rate, p2.Yshow / Rate + yOff + tranWidth / Rate), vbYellow, BF
                 p2.Selected = Not p2.Selected
                 Tran(i) = p2
                 Exit For
                 'Me.Caption = p2.Name & "  X:" & p2.Xo + p2.xShift & "   Y:" & p2.Yo + p2.yShift & "   Net:" & p2.Net
                 'Clipboard.SetText p2.Net
            End If
        End If
     End If
   
   End If
Next

Else
For i = 1 To UBound(Tran)
   p2 = Tran(i)
    X1 = IIf(xMouseDown > x, x, xMouseDown)
    X2 = IIf(xMouseDown > x, xMouseDown, x)
    Y1 = IIf(yMouseDown > y, y, yMouseDown)
    Y2 = IIf(yMouseDown > y, yMouseDown, y)
 
   If p2.Xshow / Rate + xOff > X1 Then
     If p2.Xshow / Rate + xOff < X2 Then
        If p2.Yshow / Rate + yOff > Y1 Then
            If p2.Yshow / Rate + yOff < Y2 Then
'                 Me.Picture1.Line (p2.Xshow / Rate + xOff - tranWidth / Rate, p2.Yshow / Rate + yOff - tranWidth / Rate)-(p2.Xshow / Rate + xOff + tranWidth / Rate, p2.Yshow / Rate + yOff + tranWidth / Rate), vbYellow, BF
                 p2.Selected = Not p2.Selected
                 Tran(i) = p2
                 'Me.Caption = p2.Name & "  X:" & p2.Xo + p2.xShift & "   Y:" & p2.Yo + p2.yShift & "   Net:" & p2.Net
                 'Clipboard.SetText p2.Net
                 
'                 Me.Caption = p2.Name & " X:" & p2.Xo
            End If
        End If
     End If
   
   End If
Next
End If

                 Me.Caption = p2.Name & "  X:" & p2.Xo + p2.xShift & "   Y:" & p2.Yo + p2.yShift & "   Net:" & p2.net
                 Clipboard.SetText p2.net


blnBox = False
Call Draw

End Sub

Private Sub txtFile_DblClick()
 On Error GoTo errH
With Me.CommonDialog1
   .CancelError = True
    .Filter = "*.o|*.o|*.*|*.*"
   .ShowOpen
   Me.txtFile.Text = .FileName
   Me.txtFo.Text = Me.txtFile.Text & ".txt"
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

Public Function createCode() As String
  Dim i As Integer
  Dim o As String
  Dim o2 As String
  Dim d As String
  d = Format(Now, "yymmdd")
  
  For i = 1 To Len(User)
    o = o & CStr(Asc(Mid(User, i, 1)))
  Next
  For i = 1 To Len(o) Step 6
    If i > 1 Then
        o2 = o2 Xor Mid(o, i, 6)
    Else
        o2 = Mid(o, i, 6)
    End If
  Next
  If o2 = "" Then o2 = "0"
  
  o2 = o2 Xor d

  createCode = "!" & o2
  
  
End Function

