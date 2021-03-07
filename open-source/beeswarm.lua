-- init
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/GreenDeno/Venyx-UI-Library/main/source.lua"))()
local venyx = library.new("Made by Dosage#9999", 5013109572)

local player = game:GetService("Players").LocalPlayer

if not syn then
       warn("This script is made for Synapse X. If it does not function properly due to your exploit, i am not going to fix it.")
end

-- first page
local page = venyx:addPage("Home", 5012544693)
local section1 = page:addSection("Auto Farm")
local section2 = page:addSection("Misc")

section1:addToggle("Auto Scooper", nil, function(value)
if value == true then

    while wait() do
      wait()
      if value == true then
        player.Character.Scooper.ClickEvent:FireServer()
        end
    end
end
print("Toggled", value)
end)

section2:addButton("Kill GUI", function()
game.CoreGui["Made by Dosage#9999"]:Destroy()
end)


section2:addKeybind("Toggle Keybind", Enum.KeyCode.RightShift, function()
print("Activated Keybind")
venyx:toggle()
end, function()
print("Changed Keybind")
end)

-- second page
local page2 = venyx:addPage("Teleports", null)

local section3 = page2:addSection("Flower Zones")

for _,v in pairs(game.Workspace.FlowerZones:GetChildren()) do
  section3:addButton(v.Name, function()
    player.Character.HumanoidRootPart.CFrame = v.CFrame
end)
end

-- load
venyx:SelectPage(venyx.pages[1], true)
