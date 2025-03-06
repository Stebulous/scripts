

if not game:IsLoaded() then repeat task.wait() until game:IsLoaded() end

-- // Dependancies
local utils = loadstring(game:HttpGetAsync('https://raw.githubusercontent.com/Vision-Software-LLC/scripts/main/utils/source.lua'))()
local Library = utils:LoadUrl('https://raw.githubusercontent.com/Vision-Software-LLC/Vision-UI/main/source')
local Island = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Vision-Software-LLC/Vision-UI/main/Island/source"))()

-- // Functions
local function mapZoom()

end

local Window = Library:CreateWindow({
    Title = "Taxi Boss",
    ToggleBind = "RightControl",
    Footer = true
})

local mainTab = Window:CreateTab({
    Text = "Visuals",
    Icon = utils.Icons.FluentIcons.Visuals,
    CanvasSize = 1,
    Default = true
})

mainTab:CreateToggle({
    Text = "Customer Radar",
    Default = false,
    Callback = function(t)
        utils.Player.PlayerGui.Scripts.radar.Value = t
    end
})

mainTab:CreateKeybind({
    Text = "Toggle Minimap Zoom",
    Default = "Z",
    Callback = function()
        local tweeninfo = TweenInfo.new(0.3, Enum.EasingStyle.Quad)
        if utils.Player.PlayerGui.MinimapGui.Camera.FieldOfView <= 50 then
            amount = 70
        elseif utils.Player.PlayerGui.MinimapGui.Camera.FieldOfView >= 70 then
            amount = 50
        end
        local tween = utils.TweenService:Create( utils.Player.PlayerGui.MinimapGui.Camera, tweeninfo, { FieldOfView = amount } )
        tween:Play()
    end
})


local playerTab = Window:CreateTab({
    Text = "Player",
    Icon = utils.Icons.FluentIcons.Player,
    CanvasSize = 1,
    Default = false
})

playerTab:CreateButton({
    Text = "Teleport To Current Vehicle",
    Callback = function()
        utils.ReplicatedStorage.Vehicles.EnterVehicleEvent:InvokeServer()
        Island:Notification({
            Text = "Teleported to current vehicle",
            IconLeft = utils.Icons.VisionLogo
        })
    end
})

playerTab:CreateButton({
    Text = "Fake Own All Cars",
    Callback = function()
        for _,v in pairs(utils.Player.Data.OwnedCars:GetChildren()) do
            if not v.Value then
                v.Value = true
            end
        end
    end
})

Island:Init({
    Intro = true,
    Keybind = "RightShift"
})
