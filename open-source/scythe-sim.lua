-- init
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/GreenDeno/Venyx-UI-Library/main/source.lua"))()
local venyx = library.new("Made by Dosage#9999", 5013109572)

local player = game:GetService("Players").LocalPlayer

-- first page
local page = venyx:addPage("Home", 5012544693)
local section1 = page:addSection("Auto Farm")
local section2 = page:addSection("Misc")

local function getScythe()
       local items = game:GetService("Players").LocalPlayer.Character:GetChildren()
       for _,v in pairs(items) do
           if v:isA("Tool") then
               print("Scythe: "..v.Name)
               return v
           end
       end
end


section1:addToggle("Auto Scythe", nil, function(value)
local scythe = getScythe()
wait(0.5)
getgenv().AutoScythe = value
while AutoScythe do
wait(0.1)
game:GetService("ReplicatedStorage").ScytheEvent:FireServer(scythe.Name)
end
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

-- page 2
local page2 = venyx:addPage("Teleports", null)
local section3 = page2:addSection("Teleports")

for _,v in pairs(game.Workspace.WorldBoostAreas:GetChildren()) do
   section3:addButton("Boost: "..v.Name.."%", function()
       player.Character.HumanoidRootPart.CFrame = v.CFrame    
   end)
end


-- load
venyx:SelectPage(venyx.pages[1], true)
