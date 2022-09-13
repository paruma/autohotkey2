; cheet sheet
; +Shift, ^Ctrl, !Alt, #Win
; キーリスト: http://ahkwiki.net/KeyList
; アクティブウインドウ: https://blog.mamansoft.net/%E5%88%9D%E5%BF%83%E8%80%85%E3%81%AE%E3%81%9F%E3%82%81%E3%81%AEautohotkey%E8%AC%9B%E5%BA%A7-%E7%AC%AC4%E5%9B%9E/

; ImeOffの再定義（これがないとImeOffが機能しない）
sc1F1::
    send, {sc1F1}
return

; ImeOff + IJKL: 移動
sc1F1 & I::
    If (GetKeyState("Shift", "P")){
        If (GetKeyState("Ctrl", "P")){
            send, ^+{Home}
        }
        Else{
            send +{Up}
        }
    }
    Else{
        If (GetKeyState("Ctrl", "P")){
            send, ^{Home}
        }
        Else{
            send {Up}
        }
    }
return

sc1F1 & K::
    If (GetKeyState("Shift", "P")){
        If (GetKeyState("Ctrl", "P")){
            send, ^+{End}
        }
        Else{
            send +{Down}
        }
    }
    Else{
        If (GetKeyState("Ctrl", "P")){
            send, ^{End}
        }
        Else{
            send {Down}
        }
    }
return

sc1F1 & J::
    If (GetKeyState("Shift", "P")){
        If (GetKeyState("Ctrl", "P")){
            send, +{Home}
        }
        Else{
            send +{Left}
        }
    }
    Else{
        If (GetKeyState("Ctrl", "P")){
            send, {Home}
        }
        Else{
            send {Left}
        }
    }
return

sc1F1 & L::
    If (GetKeyState("Shift", "P")){
        If (GetKeyState("Ctrl", "P")){
            send, +{End}
        }
        Else{
            send +{Right}
        }
    }
    Else{
        If (GetKeyState("Ctrl", "P")){
            send, {End}
        }
        Else{
            send {Right}
        }
    }
return

sc1F1 & U::
    If (GetKeyState("Shift", "P")){
        send, +^{Left}
    }
    Else{
        send ^{Left}
    }
return

sc1F1 & O::
    If (GetKeyState("Shift", "P")){
        send, +^{Right}
    }
    Else{
        send ^{Right}
    }
return

sc1F1 & sc027::
    send, {Enter}
return

; Insertを削除
Insert::
return

sc1F1 & M::
    send {BackSpace}
return

sc1F1 & N::
    send {Delete}
return
