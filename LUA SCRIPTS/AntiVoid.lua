getgenv().AntiVoid = true

-- // Services
local Players = game:GetService("Players")

-- // Vars
local LocalPlayer = Players.LocalPlayer

-- // Check if anyone has the same handle as you
local function toolMatch(Handle)
    local allPlayers = Players:GetPlayers()
    for i = 1, #allPlayers do
        -- // Vars
        local Player = allPlayers[i]
        if (Player == LocalPlayer) then continue end

        -- // Vars
        local Character = Player.Character
        local RightArm = Character:WaitForChild("Right Arm")
        local RightGrip = RightArm:FindFirstChild("RightGrip")

        -- // Check if they share the same Part1 Handle of the Grip
        if (RightGrip and RightGrip.Part1 == Handle) then
            return Player
        end
    end
end

-- // Manager
local function onCharacter(Character)
    local RightArm = Character:WaitForChild("Right Arm")

    -- // See when you equip something
    RightArm.ChildAdded:Connect(function(child)
        if (child:IsA("Weld") and child.Name == "RightGrip" and getgenv().AntiVoid) then
            -- // Vars
            local ConnectedHandle = child.Part1

            local matched = toolMatch(ConnectedHandle)

            if (matched) then
                ConnectedHandle.Parent:Destroy()
                print(matched, "just tried to void you lol!")
            end
        end
    end)
end

-- // Initialise the script
onCharacter(LocalPlayer.Character)
LocalPlayer.CharacterAdded:Connect(onCharacter)
