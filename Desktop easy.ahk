; ============================================
; AHK v2 - Virtual Desktop Switcher (Final Stable)
; by Lino
; --------------------------------------------
; Hotkeys:
;   Alt + `   → Switch to another desktop
;   Alt + Esc → Stop the script
; Features:
;   ✅ Wrap-around (loop desktop)
;   ✅ Tooltip visual feedback
;   ✅ Tray notifications on start/exit
; ============================================

#SingleInstance Force

; === Tray Notification (Startup) ===
TrayTip("Virtual Desktop Switcher", "Now running — by Lino", 2)

dllPath := "C:\Users\imson\OneDrive\Documents\AutoHotkey\VirtualDesktopAccessor.dll"

; === Check DLL existence ===
if !FileExist(dllPath) {
    TrayTip("Virtual Desktop Switcher", "❌ DLL not found!`n" dllPath, 3)
    ExitApp
}

; === Load DLL ===
hMod := DllCall("LoadLibrary", "Str", dllPath, "Ptr")
if (hMod = 0) {
    TrayTip("Virtual Desktop Switcher", "❌ Failed to load VirtualDesktopAccessor.dll", 3)
    ExitApp
}

; === Function bindings ===
GetDesktopCount() => DllCall(dllPath "\GetDesktopCount", "Int")
GetCurrentDesktopNumber() => DllCall(dllPath "\GetCurrentDesktopNumber", "Int")
GoToDesktopNumber(n) => DllCall(dllPath "\GoToDesktopNumber", "Int", n)
GoToDesktopLeft() => DllCall(dllPath "\GoToDesktopLeft")
GoToDesktopRight() => DllCall(dllPath "\GoToDesktopRight")

; === Hotkeys ===

!`:: {  ; Alt + `
    try GoToDesktopLeft()
    catch {
        count := GetDesktopCount()
        cur := GetCurrentDesktopNumber()
        new := cur - 1
        if (new < 0)
            new := count - 1  ; Wrap to the last desktop
        GoToDesktopNumber(new)
    }
    ToolTip "Switched to another desktop"
    SetTimer(RemoveToolTip, -600)
}
RemoveToolTip() => ToolTip()

; === ALT + ESC → Exit Script ===
!Esc:: {
    TrayTip("Virtual Desktop Switcher", "Script stopped.", 2)
    Sleep(700)
    ExitApp()
}
