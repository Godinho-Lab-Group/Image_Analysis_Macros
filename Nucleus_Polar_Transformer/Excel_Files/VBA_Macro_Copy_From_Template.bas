Attribute VB_Name = "Template_Copy"
Sub CopyValuesFromFormulaFile()

    Dim formulaWorkbook As Workbook
    Dim formulaWorksheet As Worksheet
    Dim currentWorkbook As Workbook
    Dim currentWorksheet As Worksheet
    Dim sourceRange As Range
    Dim destinationRange As Range
    Dim formulaFilePath As String
    Dim wb As Workbook
    Dim fileOpen As Boolean
    fileOpen = False

    ' Automatically set the current workbook and worksheet to the active workbook and sheet
    Set currentWorkbook = ActiveWorkbook
    Set currentWorksheet = ActiveSheet

    ' Change the path to your formula workbook's full path
    formulaFilePath = ""
    
    ' Check if the formula workbook is already open
    For Each wb In Application.Workbooks
        If wb.FullName = formulaFilePath Then
            Set formulaWorkbook = wb
            fileOpen = True
            Exit For
        End If
    Next wb
    
    ' If the workbook isn't open, open it
    If Not fileOpen Then
        Set formulaWorkbook = Workbooks.Open(formulaFilePath)
    End If
    
    ' Specify the worksheet and range you want to copy from the formula workbook
    Set formulaWorksheet = formulaWorkbook.Sheets("Sheet1") ' Change Sheet1 to the actual sheet name
    Set sourceRange = formulaWorksheet.Range("G2:T7561") ' Adjusted to exclude Row 1 (header row)
           
    ' Insert the first row (Row 1) from the formula worksheet as the first row in the current worksheet
    formulaWorkbook.Activate ' Activate the formula workbook
    formulaWorksheet.Rows("1:1").Copy
    currentWorkbook.Activate ' Switch back to the current workbook
    currentWorksheet.Rows("1:1").Insert Shift:=xlDown
    
    ' Turn off any previous cut/copy mode
    Application.CutCopyMode = False
    
    ' Apply filters to columns without clearing existing filters
    Range("A1:D18100").Sort Key1:=Range("C1"), Order1:=xlAscending, _
                         Key2:=Range("A1"), Order2:=xlAscending, _
                         Header:=xlYes
    
    ' Copy the formulas from the formula workbook to the current worksheet (starting from Row 2)
    formulaWorkbook.Activate ' Activate the formula workbook
    formulaWorksheet.Range("G2:T7561").Copy
    currentWorkbook.Activate ' Switch back to the current workbook
    currentWorksheet.Range("G2:T7561").PasteSpecial Paste:=xlPasteFormulas
    
    ' Turn off any previous cut/copy mode
    Application.CutCopyMode = False

End Sub


