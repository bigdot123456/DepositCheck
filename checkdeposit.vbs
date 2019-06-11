Sub 检查账户()
'
' 检查账户 宏
'
' 快捷键: Ctrl+p
'


    Sheets(2).Select
    Range("K1:O2").Select
    Application.CutCopyMode = False
    Selection.Copy
    Sheets(Sheets.Count).Select
    Range("K1").Select
    ActiveSheet.Paste
    Range("K2:O2").Select
    Application.CutCopyMode = False
    Selection.Copy
    Application.Goto Reference:="R2C11:R1400C15"
    Selection.PasteSpecial Paste:=xlPasteFormulas, Operation:=xlNone, _
        SkipBlanks:=False, Transpose:=False
    
    Sheets(1).Select
    For x = 1 To Sheets.Count
        Cells(x + 1, 1) = Sheets(x).Name
        Cells(x + 1, 2) = Sheets(x).Range("m1").Value
    Next x
    Sheets(x - 1).Select
End Sub
