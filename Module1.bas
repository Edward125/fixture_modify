Attribute VB_Name = "Module1"
 
Private Function checkTime() As Boolean
  Dim d As Date
  d = "2013/11/13" '''important
  
   checkTime = False
   
   Dim f As New FileSystemObject
   Dim s As String
   Dim fDir As Folder, fDir2 As Folder
   Dim fFile As File
   Dim fDriver As Drive
'   fDriver = f.GetDrive("c:")
  Set fDir = f.GetFolder("c:\")
  
'  For Each fDir2 In fDir.SubFolders
'
'    If fDir2.DateLastAccessed > d Then
'
'        checkTime = False
'        Exit Function
'    End If
'  Next
  
  For Each fFile In fDir.Files
    If fFile.DateLastAccessed > d Then
        checkTime = False
        Exit Function
    End If
  
  Next
  
  
  If Date > d Then
     checkTime = False
        Exit Function
  End If
   
 checkTime = True
   
End Function

Sub Main()
 If checkTime = True Then
     Form1.Show
 Else
    MsgBox "Memory can't be written &Hx032B98C01", vbCritical
    
 End If
 
End Sub
