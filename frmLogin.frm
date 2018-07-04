VERSION 5.00
Begin VB.Form frmLogin 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Login"
   ClientHeight    =   1545
   ClientLeft      =   2835
   ClientTop       =   3480
   ClientWidth     =   3750
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   912.837
   ScaleMode       =   0  'User
   ScaleWidth      =   3521.047
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.TextBox txtUserName 
      Height          =   345
      Left            =   1290
      TabIndex        =   1
      Top             =   135
      Width           =   2325
   End
   Begin VB.CommandButton cmdOK 
      Caption         =   "OK"
      Default         =   -1  'True
      Height          =   390
      Left            =   495
      TabIndex        =   4
      Top             =   1020
      Width           =   1140
   End
   Begin VB.CommandButton cmdCancel 
      Cancel          =   -1  'True
      Caption         =   "Cancel"
      Height          =   390
      Left            =   2100
      TabIndex        =   5
      Top             =   1020
      Width           =   1140
   End
   Begin VB.TextBox txtPassword 
      Height          =   345
      IMEMode         =   3  'DISABLE
      Left            =   1290
      PasswordChar    =   "*"
      TabIndex        =   3
      Top             =   525
      Visible         =   0   'False
      Width           =   2325
   End
   Begin VB.Label lblLabels 
      Caption         =   "&User Name:"
      Height          =   270
      Index           =   0
      Left            =   105
      TabIndex        =   0
      Top             =   150
      Width           =   1080
   End
   Begin VB.Label lblLabels 
      Caption         =   "&Password:"
      Height          =   270
      Index           =   1
      Left            =   105
      TabIndex        =   2
      Top             =   540
      Visible         =   0   'False
      Width           =   1080
   End
End
Attribute VB_Name = "frmLogin"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Public LoginSucceeded As Boolean

Private Sub cmdCancel_Click()
    'set the global var to false
    'to denote a failed login
    LoginSucceeded = False
    Form1.Show
    Me.Hide
    Unload Me
    
End Sub

Private Sub cmdOK_Click()
    'check for correct password
    Dim p As String
    
    If Me.txtUserName = "" Then
        MsgBox "Please input user name!!!", vbCritical, "Login"
        Exit Sub
    End If
'    Form1.Passwd = Me.txtPassword.Text
    Form1.User = Me.txtUserName.Text
    
    p = Form1.createCode
    
    Clipboard.SetText p
    MsgBox "Welcome " & Me.txtUserName.Text & "  to use this software", vbInformation
    
    Clipboard.SetText ""
    Form1.Show
    Unload Me
     
'    If Form1.checkPWD = True Then
'        'place code to here to pass the
'        'success to the calling sub
'        'setting a global var is the easiest
'        Form1.Show
'        Me.Hide
'        Unload Me
'    Else
'        MsgBox "Invalid Password, try again!", , "Login"
'        txtPassword.SetFocus
'        SendKeys "{Home}+{End}"
'        End
'    End If
End Sub

Private Sub Form_Click()
Me.Circle (100, 100), 30
End Sub

