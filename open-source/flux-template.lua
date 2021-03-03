--[[

Flux Lib Template
by Dosage#9999

]]--

--init
local Flux = loadstring(game.HttpGet('https://raw.githubusercontent.com/Simak90/pfsetcetc/main/fluxsex.lua')())
local cred = "Made by Dosage#9999"

local name = "Game GUI"

local win = Flux:Window(name, cred, Color3.fromRGB(255, 110, 48), Enum.KeyCode.RightShift)
print(cred)
local player = game:GetService("Players").LocalPlayer

-- kick if wrong game
if not game.PlaceId == 1234 then
    player.Kick("Wrong Game")
end


--tab 1
local tab1 = win:Tab("Main", "http://www.roblox.com/asset/?id=6023426915")

tab1:Slider("Walkspeed", "Makes you faster.", 0, 100,16,function(t)
    while wait() do
        if t then
            player.Humanoid.Walkspeed = t
        end
    end
end)



--tab 2
local tab2 = win:Tab("Options", "http://www.roblox.com/asset/?id=6022668888")

tab2:Button("Kill GUI", "Destroys the GUI", function()
    game.CoreGui[name]:Destroy()
end)

tab2:Label("Toggle the GUI with RShift.")
