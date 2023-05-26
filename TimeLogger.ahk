#NoEnv
#Persistent
#SingleInstance, Force
SetWorkingDir %A_ScriptDir%
ListLines Off

#^t::
    FormatTime, CurrentDateTime,, yyyy-MM-ddTHH:mm:ss
    SendInput, %CurrentDateTime%
return