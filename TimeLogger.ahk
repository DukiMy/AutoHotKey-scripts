#NoEnv
#Persistent
#SingleInstance, Force
#HotkeyInterval 1
#KeyHistory 0
#MaxHotkeysPerInterval 99999
#MaxThreadsPerHotkey 1
#UseHook
SetKeyDelay,-1
SetControlDelay,-1
SetMouseDelay,-1
SetWinDelay,-1
SendMode Input
SetWorkingDir %A_ScriptDir%
ListLines Off

::time::
Input, key, L1 T0.5
if (ErrorLevel = "Timeout") {
    FormatTime, CurrentDateTime,, yyyy-MM-ddTHH:mm:ss
    Send, %CurrentDateTime%
}
else if (key = "{Insert}") {
    FormatTime, CurrentDateTime,, yyyy-MM-ddTHH:mm:ss
    Send, %CurrentDateTime%
}
return