--// Services

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

--// Variables

local LocalPlayer = Players.LocalPlayer

--// NetworkPreserver

local NetworkPreserver do
    NetworkPreserver = {}
    NetworkPreserver._velocity = Vector3.one * 14.4915 -- Magnitude = 25.1000142779
    NetworkPreserver._baseParts = {} -- Array<BasePart>
    NetworkPreserver._signal = Instance.new("BindableEvent")
    for _, signal in ipairs({ RunService.Stepped, RunService.Heartbeat }) do
        signal:Connect(function()
            NetworkPreserver._signal:Fire()
        end)
    end

    -- @param BasePart part
    function NetworkPreserver:AddBasePart(part)
        assert(typeof(part) == "Instance" and part:IsA("BasePart"), "<part> must be a BasePart")
        table.insert(self._baseParts, part)
    end

    -- @param Array<BasePart> part
    function NetworkPreserver:AddBaseParts(parts)
        for _, v in ipairs(parts) do
            if typeof(v) == "Instance" and v:IsA("BasePart") then
                self:AddBasePart(v)
            end
        end
    end

    --@param BasePart part
    --@return boolean
    function NetworkPreserver:RemoveBasePart(part)
        assert(typeof(part) == "Instance" and part:IsA("BasePart"), "<part> must be a BasePart")
        local index = table.find(self._baseParts, part)

        if index then
            table.remove(self._baseParts, index)
            return true
        end

        return false
    end

    --@param Vector3 velocity
    function NetworkPreserver:SetVelocity(velocity)
        assert(typeof(velocity) == "Vector3", "<velocity> must be a Vector3")
        self._velocity = velocity
    end

    --@return Vector3
    function NetworkPreserver:GetVelocity()
        return self._velocity
    end

    function NetworkPreserver:GetFastSignal()
        return self._signal.Event
    end

    function NetworkPreserver:Start()
        assert(type(sethiddenproperty) == "function", string.format("<%s> is not supported on your exploit", "sethiddenproperty"))
        assert(type(gethiddenproperty) == "function", string.format("<%s> is not supported on your exploit", "gethiddenproperty"))
        assert(type(isnetworkowner) == "function", string.format("<%s> is not supported on your exploit", "isnetworkowner"))
        
        local physicsService = settings().Physics
        self._connection = NetworkPreserver._signal.Event:Connect(function()
            physicsService.AllowSleep = false
            physicsService.PhysicsEnvironmentalThrottle = Enum.EnviromentalPhysicsThrottle.Disabled

            LocalPlayer.ReplicationFocus = workspace
            sethiddenproperty(LocalPlayer, "MaxSimulationRadius", math.huge)
            sethiddenproperty(LocalPlayer, "MaximumSimulationRadius", math.huge)
            sethiddenproperty(LocalPlayer, "SimulationRadius", gethiddenproperty(LocalPlayer, "MaximumSimulationRadius"))
            
            for _, basePart in ipairs(self._baseParts) do
                sethiddenproperty(basePart, "NetworkIsSleeping", not isnetworkowner(basePart))
                basePart.Velocity = self._velocity
            end
        end)
    end

    function NetworkPreserver:Stop()
        if not self._connection then
            return
        end
        self._connection:Disconnect()
        self._connection = nil
    end
end

--// Return

return NetworkPreserver
