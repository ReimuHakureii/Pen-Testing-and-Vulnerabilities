--// Services

local Players = game:GetService("Players")

--// Variables

local Camera = workspace.CurrentCamera
local LocalPlayer = Players.LocalPlayer
local Character = LocalPlayer.Character
local Humanoid = Character:FindFirstChildWhichIsA("Humanoid")

local CConnection

--// Init

assert(Humanoid ~= nil and Humanoid.Health > 0, "Humanoid invalid")

local CamCF = Camera.CFrame
CConnection = Camera:GetPropertyChangedSignal("CFrame"):Connect(function()
    CConnection:Disconnect()
    Camera.CFrame = CamCF
end)
LocalPlayer.Character = nil
LocalPlayer.Character = Character

task.wait(Players.RespawnTime - 0.025)
local Pivot = LocalPlayer.Character:GetPivot()
Humanoid:ChangeState(Enum.HumanoidStateType.Dead)

LocalPlayer.CharacterAdded:Wait():WaitForChild("HumanoidRootPart").CFrame = Pivot
