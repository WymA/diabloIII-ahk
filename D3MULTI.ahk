#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


Enable:=0

Labele: 
{ 
ControlSend ,,{e},Diablo III ; 
} 
Return

Labelw: 
{ 
ControlSend ,,{w},Diablo III ; 
} 
Return

Labelr: 
{ 
ControlSend ,,{r},Diablo III ;
} 
Return

Labelspace: 
{ 
ControlSend ,,{Space},Diablo III ;
} 
Return


Label0: 
{ 
ControlSend ,,{e},Diablo III ; 
Sleep 10
ControlSend ,,{r},Diablo III ; 
} 
Return

Label1: 
{ 
ControlSend ,,{w},Diablo III ; 
} 
Return

Label2: 
{ 
ControlSend ,,{Space},Diablo III ;
} 
Return

Label3:
{ 
MouseClick ,left ;
} 
Return

Label4:
{
MouseClick ,WheelDown ;
}
Return


~t::
Enable:=0
COM(Enable)
MULTI(Enable) 
ICE(Enable)
return

~m::
Enable:=0
COM(Enable)
MULTI(Enable)
ICE(Enable)
return

~i::
Enable:=0
COM(Enable)
MULTI(Enable)
ICE(Enable)
return

~Enter::
Enable:=0
COM(Enable)
MULTI(Enable)
ICE(Enable)
return


$F1::
Enable:=!Enable  
ICE(Enable)
Return 


;$F2::
;Enable:=!Enable  
;COM(Enable)
;Return 

ICE(e)
{
If (e=0) 
{
SetTimer, Labele, Off 
SetTimer, Labelr, Off 
SetTimer, Labelw, Off 
SetTimer, Labelspace, Off 
}
Else 
{
SetTimer, Labele, 500
SetTimer, Labelr, 1000
SetTimer, Labelw, 60
SetTimer, Labelspace, 5060
}
}


MULTI(e)
{
If (e=0) 
{
SetTimer, Label0, Off 
}
Else 
{
SetTimer, Label0, 50
}
}

COM(e)
{
If (e=0) 
{
SetTimer, Label0, Off 
SetTimer, Label1, Off 
SetTimer, Label2, Off 
SetTimer, Label3, Off 
SetTimer, Label4, Off 
}
Else 
{
SetTimer, Label0, 60
SetTimer, Label1, 625
SetTimer, Label2, 60
SetTimer, Label3, 80
SetTimer, Label4, 80
}

}



