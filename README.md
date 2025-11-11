# 🖥️ Virtual Desktop Switcher (AHK v2)

Simple AHK v2 script to switch between Windows virtual desktops.  
A lightweight AutoHotkey v2 script to switch between Windows virtual desktops using hotkeys.  
Made by **ItsMeeKyoz**

---

## 🎮 Features
✅ Fast desktop switching (no lag)  
✅ Wrap-around navigation (loop between first & last desktop)  
✅ Tooltip indicator for visual feedback  
✅ Tray menu with desktop info  
✅ Auto exit hotkey  

---

## 🧠 Hotkeys

| Key | Action |
|-----|---------|
| **Alt + `** | Move the desktop |
| **Alt + Esc** | Stop the script (exit) |

---

## ⚙️ Requirements

- **AutoHotkey v2**  
- `VirtualDesktopAccessor.dll` (must be placed in the same path as below)

Example path used in script:
```
C:\Users\imson\OneDrive\Documents\AutoHotkey\VirtualDesktopAccessor.dll
```

If your path is different, edit this line in the script:
```ahk
dllPath := "C:\Your\Path\To\VirtualDesktopAccessor.dll"
```

---

## 🚀 How to Use

1. Make sure `VirtualDesktopAccessor.dll` is in the correct folder.  
2. Double-click the `.ahk` file to run it.  
3. Press **Alt + `** to move left between desktops.  
4. Press **Alt + Esc** to stop the script.  

When running, a tray icon (⚙️ AHK) appears on the system tray.

---

## 📜 Notes
- This script is fully compatible with **Windows 10 and 11**.  
- Make sure AutoHotkey v2 is installed.  
- If you want both left and right navigation, you can easily add another hotkey using `GoToDesktopRight()`.

---

## 🧑‍💻 Author
Made with ⚡ by **ItsMeeKyoz**
