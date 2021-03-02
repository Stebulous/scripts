-- init
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local title = "Dosage#9999"
local Window = Library.CreateLib(title, "DarkTheme")

--page 1
local tab1 = Window:NewTab("Home")

local section1 = tab1:NewSection("Auto Farm")

section1:NewToggle("Toggle Gui", "ToggleInfo", function(state)
    if state then
        print("Toggle On")
    else
        print("Toggle Off")
    end
end)

--page 2
local tab2 = Window:NewTab("Options")
section2 = tab2:NewSection("GUI Options")

section2:NewButton("Destroy Gui", "ButtonInfo", function()
    game.CoreGui[title]:Destroy()
end)

section2:NewKeybind("Toggle Window", "KeybindInfo", Enum.KeyCode.RightShift, function()
	Window:toggle()
end)
