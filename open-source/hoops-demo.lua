-- init
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/GreenDeno/Venyx-UI-Library/main/source.lua"))()
local venyx = library.new("Made by Dosage#9999", 5013109572)
print("Made by Dosage#9999")

local player = game:GetService("Players").LocalPlayer

if not game.PlaceId == 360589910 then
    player.Kick("Wrong Game")
end

-- first page
local page = venyx:addPage("Main", 5012544693)
local section1 = page:addSection("Aimbot")
local section2 = page:addSection("Misc")

section1:addKeybind("Aimbot Keybind", Enum.KeyCode.R, function()
game.ReplicatedStorage.Ball.StartShooting:FireServer()
wait(0.5)
game.ReplicatedStorage.Ball.EndShooting:InvokeServer(true, "Great")
end, function()
print("Changed Keybind")
end)

section1:addKeybind("Steal Aimbot Keybind", Enum.KeyCode.Q, function()
game.ReplicatedStorage.Steal:FireServer()
end, function()
print("Changed Keybind")
end)

section2:addButton("Kill GUI", function()
game.CoreGui["Made by Dosage#9999"]:Destroy()
end)


section2:addKeybind("Toggle GUI Keybind", Enum.KeyCode.RightShift, function()
print("Activated Keybind")
venyx:toggle()
end, function()
print("Changed Keybind")
end)