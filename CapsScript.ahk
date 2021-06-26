#Persistent

SetCapsLockState, AlwaysOff

; Capslock + wasd (left, down, up, right)
Capslock & a::Send {Blind}{Left DownTemp}
Capslock & a up::Send {Blind}{Left Up}

Capslock & s::Send {Blind}{Down DownTemp}
Capslock & s up::Send {Blind}{Down Up}

Capslock & w::Send {Blind}{Up DownTemp}
Capslock & w up::Send {Blind}{Up Up}

Capslock & d::Send {Blind}{Right DownTemp}
Capslock & d up::Send {Blind}{Right Up}

; Capslock + ijkl (left, down, up, right)
Capslock & j::Send {Blind}{Left DownTemp}
Capslock & j up::Send {Blind}{Left Up}

Capslock & k::Send {Blind}{Down DownTemp}
Capslock & k up::Send {Blind}{Down Up}

Capslock & i::Send {Blind}{Up DownTemp}
Capslock & i up::Send {Blind}{Up Up}

Capslock & l::Send {Blind}{Right DownTemp}
Capslock & l up::Send {Blind}{Right Up}

; Make Win Key + Capslock work like Capslock (in case it's ever needed)
#Capslock::
if GetKeyState("CapsLock", "T") = 1 {
    SetCapsLockState, AlwaysOff
    return
} else {
    SetCapsLockState, AlwaysOn
    return
}
