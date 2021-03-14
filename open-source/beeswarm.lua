-- init
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Stebulous/Venyx-UI-Library/main/source.lua"))()
local venyx = library.new("Made by Dosage#9999", 5013109572)
print("Made by Dosage#9999")

local player = game:GetService("Players").LocalPlayer

if syn then
       venyx:Notify("Notice", "This script is made for Synapse X. If it does not function properly due to your exploit, i am not going to fix it.")
end

if not game.PlaceId == 360589910 then
    player.Kick("Wrong Game")
end

-- first page
local page = venyx:addPage("Main", 5012544693)
local section1 = page:addSection("Aimbot")
local section2 = page:addSection("Misc")
local debounce = {
    state = false,
    time = 1
}

section1:addKeybind("Aimbot Keybind", Enum.KeyCode.R, function()
if debounce.state == false then
game.ReplicatedStorage.Ball.StartShooting:FireServer()
wait(0.5)
game.ReplicatedStorage.Ball.EndShooting:InvokeServer(true, "Great")
debounce.state = true
wait(debounce.time)
debounce.state = false
end
end, function()
print("Changed Keybind")
end)

section1:addToggle("Arm Stretch", nil, function(value)
    getgenv().arms = value
    while wait() do
        if getgenv().arms == true then
            player.Character["Left Arm"].Size = Vector3.new(16, 2, 1)
            player.Character["Right Arm"].Size = Vector3.new(16, 2, 1)
            else
            player.Character["Left Arm"].Size = Vector3.new(1, 2, 1)
            player.Character["Right Arm"].Size = Vector3.new(1, 2, 1)
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
