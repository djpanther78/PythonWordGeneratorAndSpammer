Set objFSO = CreateObject("Scripting.FileSystemObject")
Set objFile = objFSO.OpenTextFile("PATH WHERE THE WORDLIST IS SAVED")
MsgBox ("De spam begint in 10 seconden, gebruik deze tijd om naar de inputbox te gaan!")
wscript.Sleep 10000
wordList = Split(objFile.ReadAll(), vbCrLf)
objFile.Close()

Set objShell = CreateObject("WScript.Shell")

Do
    Randomize
    randomIndex = Int((UBound(wordList) - LBound(wordList) + 1) * Rnd + LBound(wordList))
    randomWord = wordList(randomIndex)
    
    objShell.SendKeys randomWord
    objShell.SendKeys "{ENTER}"
    
    Randomize
    delay = Int((2000 - 800 + 1) * Rnd + 800)
    WScript.Sleep delay
Loop
