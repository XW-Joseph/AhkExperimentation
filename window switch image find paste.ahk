#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

^=::

Executecopy()

return

Executecopy(){

SetTitleMatchMode, 2
if WinExist("089273")
{   
    WinActivate 
   ; WinMaximize
   
   send ^c
   send {Down}
}
if WinExist("Untitled")
{
    WinActivate
    Sleep, 100
    ex:=0
    why:=0
    doimgsearch(ex, why)
    MouseMove, ex+100, why+30 
    rclickpaste()
}
}
rclickpaste(){
    send {RButton} {Down} {Down} {Down} {Enter}
}
doimgsearch(ByRef ex, ByRef why){
    
    ImageSearch, OutputVarX, OutputVarY,0 ,0 ,1000 ,1000 , C:\Users\Joseph\Desktop\ahktestfind.PNG
    if (ErrorLevel = 2)
    MsgBox Could not conduct the search.
    else if (ErrorLevel = 1)
    MsgBox Icon could not be found on the screen.
    else {
    ;MsgBox The icon was found at %OutputVarX%x%OutputVarY%.
    ex := OutputVarX
    why := OutputVarY
    }
    return
}

