#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


;;====================== Minecraft Script ==========================
;; Auther: nalleyer

;; functions
; reload
reload() {
  Send {Space Up}
  Send {Shift Up}
  lu()
  ru()
  Reload
}

;- basic
rd() {
  Click, down, right
}
ru() {
  Click, up,   right
}
ld() {
  Click, down
}
lu() {
  Click, up
}
s() {
  Sleep, 20
}
sm() {
  Sleep, 100
}
sl() {
  Sleep, 200
}
r() {
  rd()
  ru()
}
l() {
  ld()
  lu()
}

;- right click
rightClick() {
  Loop {
    r()
    s()
  }
}

leftClick() {
    Loop {
        l()
        s()
    }
}

hit() {
  Loop {
    l()
    sl()
  }
}

; cut ender men to get exp
cut() {
    rd()
    Loop {
        l()
        Sleep, 2500
    }
}


; trading with farmer
tradeFarmer() {
    ;MouseGetPos, xpos, ypos 
    ;Msgbox, The cursor is at X%xpos% Y%ypos%. 
    ; sources
    X1 := 823
    Y1 := 574
    X2 := 862
    Y2 := 574
    ; farmer left
    XL := 884
    YL := 509
    ; farmer right
    XR := 1044
    YR := 514

    flag := false
    Loop {
        ; open gui
        MouseClick, right
        sl()
        XS := 0
        YS := 0
        ; get source
        if (flag) {
            XS := X1
            YS := Y1
        }
        else {
            XS := X2
            YS := Y2
        }
        MouseClick, left, XS, YS
        s()
        MouseClick, left, XS, YS
        flag := !flag
        s()

        MouseClick, left, XL, YL
        s()

        
        ; loop trading
        Loop, 4 {
            ; 3 hit get
            Loop, 3 {
                MouseClick, left, XL, YL
                sl()
            }
            Send {LShift Down}
            sl()
            MouseClick, left, XR, YR
            sl()
            Send {LShift Up}
            sl()
        }
        MouseClick, left, XL, YL
        sl()
        MouseClick, left, XS, YS
        sl()

        Send, {Esc}
        Sleep, 2500
    }
}

;;back and put
backPut() {
    Send {LShift down}
    rd()
    SendInput {s down}
}


;; main
^!r::
  reload()
  return

^!c::
  cut()
  return

^!d::
  rd()
  return  

^!h::
  hit()
  return

^!l::
  ld()
  return

^!m::
  rightClick()
  ;leftClick()
  return

^!n::
  leftClick()
  return

^!u::
  rd()
  Send {Shift Down}
  Send {Space Down}
  return

^!f::
  tradeFarmer()
  return

^!s::
  Send {Shift Down}
  return

^!p::
  backPut()
  return
