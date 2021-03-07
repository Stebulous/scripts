-- init
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/GreenDeno/Venyx-UI-Library/main/source.lua"))()
local venyx = library.new("Made by Dosage#9999", 5013109572)
print("Made by Dosage#9999")

local player = game:GetService("Players").LocalPlayer

if not syn then
       warn("This script is made for Synapse X. If it does not function properly due to your exploit, i am not going to fix it.")
end

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

section1:addToggle("Toggle Dunk Strength", nil, function(value)
    while wait() do
        wait()
        local strength = 1e7 --put what strength you want here
        local Plr = game:GetService("Players").LocalPlayer
        local descs = Plr.Character:GetDescendants()
        local desc = descs[i]

        if value == true then
    
            if Plr.Character then
                for i = 1, #descs do
                if desc:IsA"BasePart"then
                    desc.CustomPhysicalProperties = PhysicalProperties.new(100, 0.3, 0.5)
                end
            end
        end
      end
      
      if value == false or nil then
        if Plr.Character then
            for i = 1, #descs do
            if desc:IsA"BasePart"then
                desc.CustomPhysicalProperties = PhysicalProperties.new(0.699999988, 0.300000012, 0, 1, 100)
            end
        end
    end
  end
      end
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
