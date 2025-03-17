local function blockesp(player, setts)

    local bbname = '__blockespsettings.blockesp:'

    if player.Character and player.Character:FindFirstChild('HumanoidRootPart') then
        if player.Character:FindFirstChild(bbname) then
            player.Character:FindFirstChild(bbname):Destroy()
        end

        if player.Character:FindFirstChild('Humanoid') and player.Character:FindFirstChild('Humanoid').Health >= 1 then

            if player.Character:FindFirstChild(bbname) then
                player.Character:FindFirstChild(bbname):Destroy()
            end

            if player.Neutral and game.Players.LocalPlayer.Neutral then
                teamcheck_color = Color3.fromRGB(255,0,0)
            elseif player.TeamColor == game.Players.LocalPlayer.TeamColor then
                teamcheck_color = Color3.fromRGB(0,255,0)
            elseif player.TeamColor ~= game.Players.LocalPlayer.TeamColor then
                teamcheck_color = Color3.fromRGB(255,0,0)
            else
                teamcheck_color = Color3.fromRGB(255,0,0)
            end

            local billboardGui = Instance.new("BillboardGui")
            billboardGui.Name = bbname
            billboardGui.Size = UDim2.new(10, 0, 10, 0)
            billboardGui.StudsOffset = Vector3.new(0, 3, 0)
            billboardGui.AlwaysOnTop = true
            billboardGui.Parent = player.Character

            if setts[1] == true then
                if setts[5] == 'visible' then
                    if teamcheck_color == Color3.fromRGB(255,0,0) then
                        local textLabel = Instance.new("TextLabel")
                        textLabel.Size = UDim2.new(0.5, 0, 0.75, 0)
                        textLabel.Position = UDim2.new(0.25,0,-0.1,0)
                        textLabel.BackgroundTransparency = 1
                        textLabel.Text = player.Name 
                        textLabel.TextColor3 = Color3.fromRGB(0, 0, 0) 
                        textLabel.TextStrokeTransparency = 1
                        textLabel.TextScaled = true
                        textLabel.Font = Enum.Font.SourceSans
                        textLabel.Parent = billboardGui
                        textLabel.Name = 'name'
                    end
                else
                    local textLabel = Instance.new("TextLabel")
                    textLabel.Size = UDim2.new(0.5, 0, 0.75, 0)
                    textLabel.Position = UDim2.new(0.25,0,-0.1,0)
                    textLabel.BackgroundTransparency = 1
                    textLabel.Text = player.Name 
                    textLabel.TextColor3 = Color3.fromRGB(0, 0, 0) 
                    textLabel.TextStrokeTransparency = 1
                    textLabel.TextScaled = true
                    textLabel.Font = Enum.Font.SourceSans
                    textLabel.Parent = billboardGui
                    textLabel.Name = 'name'
                end
            end

            if setts[2] == true then
                if setts[5] == 'visible' then
                    if teamcheck_color == Color3.fromRGB(255,0,0) then
                        local box = Instance.new("Frame", billboardGui); local UIStroke = Instance.new('UIStroke', box)
                        box.BackgroundTransparency = 1
                        box.Size = UDim2.new(0.5,0,0.6,0)
                        box.Position = UDim2.new(0.25,0,0.5,0)
                        box.Name = 'box'
                    end
                else
                    local box = Instance.new("Frame", billboardGui); local UIStroke = Instance.new('UIStroke', box)
                    box.BackgroundTransparency = 1
                    box.Size = UDim2.new(0.5,0,0.6,0)
                    box.Position = UDim2.new(0.25,0,0.5,0)
                    box.Name = 'box'
                end
            end

            if setts[3] == true then
                if setts[5] == 'visible' then
                    if teamcheck_color == Color3.fromRGB(255,0,0) then
                        local hpbar = Instance.new('Frame',billboardGui); local UIStroke2 = Instance.new('UIStroke', hpbar)
                        hpbar.Name = 'HealthBar'
                        hpbar.BackgroundTransparency = 1
                        hpbar.Size = UDim2.new(0.01,0,0.6,0)
                        hpbar.Position = UDim2.new(0.78,0,0.5,0)

                        local health = Instance.new('Frame',hpbar)
                        health.Size = UDim2.new(1,0,player.Character.Humanoid.Health/100,0)
                        health.BackgroundColor3 = Color3.fromRGB(0,255,0)
                        
                        --[[
                        player.Character.Humanoid.Changed:Connect(function()
                            health.Size = UDim2.new(1,0,player.Character.Humanoid.Health/100,0)
                            if player.Character.Humanoid.Health >= 75 then
                                health.BackgroundColor3 = Color3.fromRGB(0,255,0)
                            elseif player.Character.Humanoid.Health >= 50 then
                                health.BackgroundColor3 = Color3.fromRGB(255,255,0)
                            elseif player.Character.Humanoid.Health >= 25 then
                                health.BackgroundColor3 = Color3.fromRGB(255,150,0)
                            elseif player.Character.Humanoid.Health >= 1 then
                                health.BackgroundColor3 = Color3.fromRGB(255,0,0)
                            end
                        end)
                        ]]
                        task.spawn(function()
                            while player.Character and task.wait() do
                                health.Size = UDim2.new(1,0,player.Character.Humanoid.Health/100,0)
                                if player.Character.Humanoid.Health >= 75 then
                                    health.BackgroundColor3 = Color3.fromRGB(0,255,0)
                                elseif player.Character.Humanoid.Health >= 50 then
                                    health.BackgroundColor3 = Color3.fromRGB(255,255,0)
                                elseif player.Character.Humanoid.Health >= 25 then
                                    health.BackgroundColor3 = Color3.fromRGB(255,150,0)
                                elseif player.Character.Humanoid.Health >= 1 then
                                    health.BackgroundColor3 = Color3.fromRGB(255,0,0)
                                end
                            end
                        end)
                    end
                else
                    local hpbar = Instance.new('Frame',billboardGui); local UIStroke2 = Instance.new('UIStroke', hpbar)
                    hpbar.Name = 'HealthBar'
                    hpbar.BackgroundTransparency = 1
                    hpbar.Size = UDim2.new(0.01,0,0.6,0)
                    hpbar.Position = UDim2.new(0.78,0,0.5,0)

                    local health = Instance.new('Frame',hpbar)
                    health.Size = UDim2.new(1,0,player.Character.Humanoid.Health/100,0)
                    health.BackgroundColor3 = Color3.fromRGB(0,255,0)
                    
                    task.spawn(function()
                        while player.Character and task.wait() do
                            health.Size = UDim2.new(1,0,player.Character.Humanoid.Health/100,0)
                            if player.Character.Humanoid.Health >= 75 then
                                health.BackgroundColor3 = Color3.fromRGB(0,255,0)
                            elseif player.Character.Humanoid.Health >= 50 then
                                health.BackgroundColor3 = Color3.fromRGB(255,255,0)
                            elseif player.Character.Humanoid.Health >= 25 then
                                health.BackgroundColor3 = Color3.fromRGB(255,150,0)
                            elseif player.Character.Humanoid.Health >= 1 then
                                health.BackgroundColor3 = Color3.fromRGB(255,0,0)
                            end
                        end
                    end)
                end
            end

            if setts[4] == true and setts[5] == 'color' then
                local teamcheck = Instance.new("Frame", billboardGui)
                teamcheck.BackgroundTransparency = 0.85
                teamcheck.Size = UDim2.new(0.5,0,0.6,0)
                teamcheck.Position = UDim2.new(0.25,0,0.5,0)
                teamcheck.Name = 'teamcheck'
                teamcheck.BackgroundColor3 = teamcheck_color
            end

            if setts[6] == true then
                if setts[4] == true then
                    chamscolor = teamcheck_color
                else
                    chamscolor = Color3.fromRGB(0,0,255)
                end

                local cham = Instance.new('Highlight', billboardGui)
                cham.Adornee = player.Character
                cham.Name = 'chams'
                cham.FillColor = chamscolor
                cham.FillTransparency = 0.75
                cham.OutlineTransparency = 0.5
                cham.OutlineColor = chamscolor
            end

        end 
    end
end


if game.CoreGui:FindFirstChild('hexagon-docs') then
	game.CoreGui:FindFirstChild('hexagon-docs'):Destroy()
end
local library = loadstring(game:HttpGet('https://raw.githubusercontent.com/vateq/UILIBrewrites/refs/heads/main/hexagonuilib'))()
library.settings = {
	guiname = "hexagon-docs",
	title = 'CandyHub - Counter Blox',
	modal = true,
	font = Enum.Font.SourceSans,
	textsize = 16,
	logo = "rbxassetid://4350178803",
	footer = ' - candyware.nil',
	textstroke = true,
}

local Window = library:CreateWindow(
	Vector2.new(400, 500), -- ui lib size
	Vector2.new((workspace.CurrentCamera.ViewportSize.X / 2) - 250, (workspace.CurrentCamera.ViewportSize.Y / 2) - 250) -- ui pointing (id what i just called it lol) just dont change it.
)

_G.blockespsettings = {
    blockesp = false,
    aimbot = false,
    nospread = false,
    fov = 60,
    smoothing = 1,
    bhop = false,
    name = true,
    boxs = true,
    hpbar = true,
    teamcheck = true,
    teamcheck_mode = 'color',
    chams = false,
    hbsize = 5,
    hitboxes = false,
    hbpart = "HeadHB",
}


local configFile = "CounterBloxConfig.json"

-- Funkcja zapisu konfiguracji
local function saveConfig(config)
    local json = game:GetService("HttpService"):JSONEncode(config)
    writefile(configFile, json)
end

-- Funkcja ładowania konfiguracji
local function loadConfig()
    if isfile(configFile) then
        local json = readfile(configFile)
        return game:GetService("HttpService"):JSONDecode(json)
    end
    return nil
end

local loadedConfig = loadConfig()
if loadedConfig then
    for i, v in pairs(loadedConfig) do
        _G.blockespsettings[i] = v
    end
end

local maintab = Window:CreateTab('Main')


local category1 = maintab:AddCategory("Aimbot",1,1)

category1:AddToggle('Aimbot',_G.blockespsettings.aimbot,'',function(v)
    _G.blockespsettings.aimbot = v
    saveConfig(_G.blockespsettings)
end)

category1:AddSlider('Aim Smooth', {1, 5, 1, 1, ""}, '', function(v)
    _G.blockespsettings.smoothing = v
    saveConfig(_G.blockespsettings)
end, false)

category1:AddSlider('Aim Fov', {1, 512, _G.blockespsettings.fov, 1, ""}, '', function(v)
    _G.blockespsettings.fov = v
    saveConfig(_G.blockespsettings)
end, false)


local category421 = maintab:AddCategory("Hitbox Expander",1,1)


category421:AddToggle('Hitboxes',_G.blockespsettings.hitboxes,'',function(v)
    task.spawn(function()
        _G.blockespsettings.hitboxes = v
        saveConfig(_G.blockespsettings)
        while _G.blockespsettings.hitboxes and task.wait() do
            for i, player in game.Players:GetChildren() do
                if player ~= game.Players.LocalPlayer then
                    if player.Character then
                        if player.Character:FindFirstChild('HeadHB') then
                            player.Character:FindFirstChild('HeadHB').Size = Vector3.new(_G.blockespsettings.hbsize, _G.blockespsettings.hbsize, _G.blockespsettings.hbsize)
                        end 
                    end
                end
            end
        end
    end)
end)


category421:AddSlider('Hitbox Size', {1, 40, _G.blockespsettings.hbsize, 1, ""}, '', function(v)
    _G.blockespsettings.hbsize = v
    saveConfig(_G.blockespsettings)
end, false)


local category = maintab:AddCategory("Esp",2,1)

category:AddToggle('ENABLED',_G.blockespsettings.blockesp,'',function(v)
    task.spawn(function()
        _G.blockespsettings.blockesp = v
        saveConfig(_G.blockespsettings)
        while _G.blockespsettings.blockesp and task.wait(1) do
            for i, player in game.Players:GetChildren() do
                if player.Name ~= game.Players.LocalPlayer.Name then
                    if _G.blockespsettings.blockesp then
                        blockesp(player,{_G.blockespsettings.name,_G.blockespsettings.boxs,_G.blockespsettings.hpbar,_G.blockespsettings.teamcheck,_G.blockespsettings.teamcheck_mode,_G.blockespsettings.chams})
                    else
                        if player.Character then
                            if player.Character:FindFirstChild('__blockespsettings.blockesp:') then
                                player.Character:FindFirstChild('__blockespsettings.blockesp:'):Destroy()
                            end
                        end
                    end
                end
            end
        end
        if not _G.blockespsettings.blockesp then
            for i, player in game.Players:GetChildren() do
                if player.Character then
                    if player.Character:FindFirstChild('__blockespsettings.blockesp:') then
                        player.Character:FindFirstChild('__blockespsettings.blockesp:'):Destroy()
                    end
                end
            end
        end
    end)
end)

category:AddToggle('Nametags',_G.blockespsettings.name,'',function(v)
    _G.blockespsettings.name = v
    saveConfig(_G.blockespsettings)
end)
category:AddToggle('Boxes',_G.blockespsettings.boxs,'',function(v)
    _G.blockespsettings.boxs = v
    saveConfig(_G)
end)
category:AddToggle('Health Bar',_G.blockespsettings.hpbar,'',function(v)
    _G.blockespsettings.hpbar = v
    saveConfig(_G.blockespsettings)
end)
category:AddToggle('TeamCheck',_G.blockespsettings.teamcheck,'',function(v)
    _G.blockespsettings.teamcheck = v
    saveConfig(_G.blockespsettings)
end)

category:AddDropdown('TeamCheck Mode: ', {'color','visible'},_G.blockespsettings.teamcheck_mode,'',function(choice)
	_G.blockespsettings.teamcheck_mode = choice
    saveConfig(_G.blockespsettings)
end, true)

category:AddToggle('Chams',_G.blockespsettings.chams,'',function(v)
    _G.blockespsettings.chams = v
    saveConfig(_G.blockespsettings)
end)

local category2 = maintab:AddCategory("Misc",1,1)

local function NoSpreadOn()
    for _, weapon in game:GetService('ReplicatedStorage'):FindFirstChild('Weapons'):GetChildren() do
        if weapon:FindFirstChild("Spread") then
            local spread = weapon:FindFirstChild("Spread")
            spread.Value = 0
            for _, child in ipairs(spread:GetChildren()) do
                child.Value = 0
            end
        end
    end
end

local function SaveSpread()
    if not game:FindFirstChild('NoSpreadSave') then
        local instance = game:GetService('ReplicatedStorage'):FindFirstChild('Weapons'):Clone()
        instance.Name = 'NoSpreadSave'
        instance.Parent = game
    end
end

local function SaveSpread2()
    if not game:FindFirstChild('NoSpreadSave') then
        local spreads = Instance.new('Folder',game)
        spreads.Name = 'NoSpreadSave'
        for _, weapon in game:GetService('ReplicatedStorage'):FindFirstChild('Weapons'):GetChildren() do
            local newweapon = Instance.new('Folder', spreads)
            newweapon.Name = weapon.Name
            if weapon:FindFirstChild("Spread") then
                local spread = weapon:FindFirstChild("Spread"):Clone()
                spread.Parent = newweapon
            end
        end
    end
end

local function NoSpreadOff2()
    for _, weapon in game:GetService('ReplicatedStorage'):FindFirstChild('Weapons'):GetChildren() do
        if weapon:FindFirstChild("Spread") then
            weapon:FindFirstChild("Spread"):Destroy()
            local oldrestore = game:FindFirstChild('NoSpreadSave'):FindFirstChild(weapon.Name):FindFirstChild('Spread'):Clone()
            oldrestore.Parent = weapon
        end
    end
end

local function NoSpreadOff()
    for _, item in game:GetService('ReplicatedStorage'):FindFirstChild('Weapons'):GetChildren() do
        item:Destroy()
    end
    for _, item in game:FindFirstChild('NoSpreadSave'):GetChildren() do
        item.Parent = game:GetService('ReplicatedStorage'):FindFirstChild('Weapons')
    end
end

category2:AddToggle('Bhop',_G.blockespsettings.bhop,'',function(v)
    task.spawn(function()
        _G.blockespsettings.bhop = v
        saveConfig(_G.blockespsettings)
        while _G.blockespsettings.bhop and wait() do
            if _G.HoldingSpace then
                if game.Players.LocalPlayer.Character then
                game.Players.LocalPlayer.Character.Humanoid.Jump = true
                end
            end
        end
    end)
end)

category2:AddToggle('No Spread',_G.blockespsettings.nospread,'',function(v)
    task.spawn(function()
        _G.blockespsettings.nospread = v
        saveConfig(_G.blockespsettings)
        if _G.blockespsettings.nospread then
            SaveSpread2()
            NoSpreadOn()
        else
            NoSpreadOff2()
        end
    end)
end)

local skinstab = Window:CreateTab('SkinChanger')

local category205 = maintab:AddCategory("Main",1,1)

category205:AddToggle('Enabled',_G.blockespsettings.bhop,'',function(v)
    task.spawn(function()
        _G.blockespsettings.bhop = v
        saveConfig(_G.blockespsettings)
        while _G.blockespsettings.bhop and wait() do
            if _G.HoldingSpace then
                if game.Players.LocalPlayer.Character then
                game.Players.LocalPlayer.Character.Humanoid.Jump = true
                end
            end
        end
    end)
end)


category205:AddDropdown('Knife', {'color','visible'},_G.blockespsettings.teamcheck_mode,'',function(choice)
	_G.blockespsettings.teamcheck_mode = choice
    saveConfig(_G.blockespsettings)
end, true)








--[[
local settings = {
    name = setts[1] or true,
    boxs = setts[2] or true,
    hpbar = setts[3] or true,
    teamcheck = setts[4] or true,
    teamcheck_mode = setts[5] or 'visible',
    chams = setts[6] or false,
}
]]

--blockesp(game.Players.LocalPlayer, {true,true,true,true,true})


local FOVring = Drawing.new("Circle")
FOVring.Visible = true
FOVring.Thickness = 1.5
FOVring.Transparency = 1
FOVring.Radius = _G.blockespsettings.fov
FOVring.Color = Color3.fromRGB(255, 255, 255)

local function getClosest(cframe)
    local ray = Ray.new(cframe.Position, cframe.LookVector).Unit

    local target = nil
    local mag = math.huge

    for i, v in pairs(game.Players:GetPlayers()) do
        if
            v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("Head") and
                v.Character:FindFirstChild("HumanoidRootPart") and
                v.Team ~= game.Players.LocalPlayer.Team
         then
            local magBuf = (v.Character.Head.Position - ray:ClosestPoint(v.Character.Head.Position)).Magnitude

            if magBuf < mag then
                mag = magBuf
                target = v
            end
        end
    end

    return target
end

local function updateFOVring()
    FOVring.Position = workspace.CurrentCamera.ViewportSize / 2
    FOVring.Radius = _G.blockespsettings.fov
end

local loop
loop = game:GetService('RunService').Heartbeat:Connect(
    function()
        local pressed = game:GetService('UserInputService'):IsMouseButtonPressed(Enum.UserInputType.MouseButton2) -- Right mouse button pressed
        local cam = workspace.CurrentCamera
        local zz = cam.ViewportSize / 2

        if pressed and _G.blockespsettings.aimbot then
            local curTar = getClosest(cam.CFrame)
            local ssHeadPoint = cam:WorldToScreenPoint(curTar.Character.Head.Position)
            ssHeadPoint = Vector2.new(ssHeadPoint.X, ssHeadPoint.Y)
            if (ssHeadPoint - zz).Magnitude < _G.blockespsettings.fov then
                cam.CFrame = cam.CFrame:Lerp(CFrame.new(cam.CFrame.Position, curTar.Character.Head.Position), _G.blockespsettings.smoothing)
            end
        end

        updateFOVring() -- Update FOV ring
        if game:GetService('UserInputService'):IsKeyDown(Enum.KeyCode.Delete) then
            loop:Disconnect()
            FOVring:Remove()
        end
    end
)

game:GetService('UserInputService').InputBegan:Connect(function(input)
    if input.KeyCode == Enum.KeyCode.Space then
        _G.HoldingSpace = true
    end
end)

game:GetService('UserInputService').InputEnded:Connect(function(input)
    if input.KeyCode == Enum.KeyCode.Space then
        _G.HoldingSpace = false
    end
end)
