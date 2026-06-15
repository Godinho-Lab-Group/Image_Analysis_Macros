Attribute VB_Name = "Copy_Data"
Sub Copy_Data()
ActiveSheet.Name = "Main"
Sheets.Add After:=ActiveSheet
Sheets("Main").Select
Range("Q2:Q361").Copy
        Sheets("Sheet1").Select
    Range("A1").Select
    Selection.PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks _
        :=False, Transpose:=False
        Sheets("Main").Select
        Range("Q362:Q721").Copy
        Sheets("Sheet1").Select
    Range("B1").Select
    Selection.PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks _
        :=False, Transpose:=False
        Sheets("Main").Select
Range("Q722:Q1081").Copy
        Sheets("Sheet1").Select
    Range("C1").Select
    Selection.PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks _
        :=False, Transpose:=False
        Sheets("Main").Select
        Range("Q1082:Q1441").Copy
        Sheets("Sheet1").Select
    Range("D1").Select
    Selection.PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks _
        :=False, Transpose:=False
        Sheets("Main").Select
Range("Q1442:Q1801").Copy
        Sheets("Sheet1").Select
    Range("E1").Select
    Selection.PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks _
        :=False, Transpose:=False
        Sheets("Main").Select
        Range("Q1802:Q2161").Copy
        Sheets("Sheet1").Select
    Range("F1").Select
    Selection.PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks _
        :=False, Transpose:=False
        Sheets("Main").Select
Range("Q2162:Q2521").Copy
        Sheets("Sheet1").Select
    Range("G1").Select
    Selection.PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks _
        :=False, Transpose:=False
        Sheets("Main").Select
        Range("Q2522:Q2881").Copy
        Sheets("Sheet1").Select
    Range("H1").Select
    Selection.PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks _
        :=False, Transpose:=False
        Sheets("Main").Select
Range("Q2882:Q3241").Copy
        Sheets("Sheet1").Select
    Range("I1").Select
    Selection.PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks _
        :=False, Transpose:=False
        Sheets("Main").Select
        Range("Q3242:Q3601").Copy
        Sheets("Sheet1").Select
    Range("J1").Select
    Selection.PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks _
        :=False, Transpose:=False
        Sheets("Main").Select
Range("Q3602:Q3961").Copy
        Sheets("Sheet1").Select
    Range("K1").Select
    Selection.PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks _
        :=False, Transpose:=False
        Sheets("Main").Select
        Range("Q3962:Q4321").Copy
        Sheets("Sheet1").Select
    Range("L1").Select
    Selection.PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks _
        :=False, Transpose:=False
        Sheets("Main").Select
Range("Q4322:Q4681").Copy
        Sheets("Sheet1").Select
    Range("M1").Select
    Selection.PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks _
        :=False, Transpose:=False
        Sheets("Main").Select
        Range("Q4682:Q5041").Copy
        Sheets("Sheet1").Select
    Range("N1").Select
    Selection.PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks _
        :=False, Transpose:=False
        Sheets("Main").Select
Range("Q5042:Q5401").Copy
        Sheets("Sheet1").Select
    Range("O1").Select
    Selection.PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks _
        :=False, Transpose:=False
        Sheets("Main").Select
        Range("Q5402:Q5761").Copy
        Sheets("Sheet1").Select
    Range("P1").Select
    Selection.PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks _
        :=False, Transpose:=False
              Sheets("Main").Select
        Range("Q5762:Q6121").Copy
        Sheets("Sheet1").Select
    Range("Q1").Select
    Selection.PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks _
        :=False, Transpose:=False
        Sheets("Main").Select
Range("Q6122:Q6481").Copy
        Sheets("Sheet1").Select
    Range("R1").Select
    Selection.PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks _
        :=False, Transpose:=False
        Sheets("Main").Select
        Range("Q6482:Q6841").Copy
        Sheets("Sheet1").Select
    Range("S1").Select
    Selection.PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks _
        :=False, Transpose:=False
        Sheets("Main").Select
Range("Q6842:Q7201").Copy
        Sheets("Sheet1").Select
    Range("T1").Select
    Selection.PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks _
        :=False, Transpose:=False
        Sheets("Main").Select
Range("Q7202:Q7561").Copy
        Sheets("Sheet1").Select
    Range("U1").Select
    Selection.PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks _
        :=False, Transpose:=False
End Sub


