veryLongWaitTime := 800000
longWaitTime := 70000
intermediaryWaitTime := 10000

errorCorrection := 1.25

refreshX := 631 * errorCorrection
refreshY := 100 * errorCorrection

publishX := 1020 * errorCorrection
publishY := 100 * errorCorrection

savePageX := 310 * errorCorrection 
savePageY := 132 * errorCorrection

workSpaceSelectionX := 267 * errorCorrection
workSpaceSelectionY := 285 * errorCorrection

selectWorkSpaceX := 469 * errorCorrection
selectWorkSpaceY := 446 * errorCorrection

replaceReportX := 329 * errorCorrection
replaceReportY := 245 * errorCorrection

closeSuccessPageX := 439 * errorCorrection
closeSuccessPageY := 256 * errorCorrection

global loopFlag := 1 ; Initialize loop control flag

^Space:: ; Start the hotkey action with Ctrl+Space

Loop ; Start of infinite loop
{
    MouseMove, %refreshX%, %refreshY%
    Click
    Sleep, %longWaitTime%
    
    MouseMove, %publishX%, %publishY%
    Click
    Sleep, %intermediaryWaitTime%

    MouseMove, %savePageX%, %savePageY%
    Click
    Sleep, %intermediaryWaitTime%

    MouseMove, %workSpaceSelectionX%, %workSpaceSelectionY%
    Click, 100, WheelDown ; Scrolls down 100 notches
    Sleep, %intermediaryWaitTime%

    MouseMove, %selectWorkSpaceX%, %selectWorkSpaceY%
    Click
    Sleep, %intermediaryWaitTime%

    MouseMove, %replaceReportX%, %replaceReportY%
    Click
    Sleep, %longWaitTime%

    if (WinExist("ahk_exe msedge.exe"))
    {
        WinClose, ahk_exe msedge.exe
        ; OR use WinClose, ahk_exe msedge.exe to close it
    }

    if (loopFlag = 0) ; Check the flag's value
        break ; If flag is 0, break out of the loop

    MouseMove, %closeSuccessPageX%, %closeSuccessPageY%
    Click
    Sleep, %intermediaryWaitTime%

    Send, !Tab ;

} ; End of infinite loop

Return ; Ends the hotkey action

^Esc:: ; Ctrl+Esc to stop the loop
loopFlag := 0 ; Set the loop control flag to 0
Return
