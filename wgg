local function Alive(player)
    if player.Character then
        if player.Character:FindFirstChild('HumanoidRootPart') then
            if player.Character:FindFirstChild('Humanoid') and player.Character:FindFirstChild('Humanoid').Health >= 1 then
                return true
            end
        end
    end
    return false
end

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
                            if Alive(player) then
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

        else
            if player.Character:FindFirstChild(bbname) then
                player.Character:FindFirstChild(bbname):Destroy()
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
	title = 'CandyHub - Weird Gun Game',
	modal = true,
	font = Enum.Font.SourceSans,
	textsize = 16,
	logo = "rbxassetid://4350178803",
	footer = ' - kill all nyggas',
	textstroke = true,
}

local Window = library:CreateWindow(
	Vector2.new(400, 525), -- ui lib size
	Vector2.new((workspace.CurrentCamera.ViewportSize.X / 2) - 250, (workspace.CurrentCamera.ViewportSize.Y / 2) - 250) -- ui pointing (id what i just called it lol) just dont change it.
)

local function GetLocalWeapon()
    if Alive(game.Players.LocalPlayer) then
        return game.Players.LocalPlayer.Character:FindFirstChildOfClass('Tool')
    else
        return nil
    end
end

_G.candyhub = {
    blockesp = false,

    aimbot = false,

    nospread = false,
    rapidfire = false,
    norecoil = false,
    infammo = false,
    infrange = false,
    rapidpower = 10000,

    wallbang = false,
    wallbang_cd = 0.25,
    killteamates = false,

    fov = 60,
    smoothing = 1,

    bhop = false,

    name = true,
    boxs = true,
    hpbar = true,
    teamcheck = true,
    teamcheck_mode = 'color',
    chams = false,

    spinbot = false,
    spinbot_power = 40,

    hbsize = 5,
    hitboxes = false,
    hbpart = "Head",

    speedhack = false,
    speed = 25,
}



local configFile = "wgg_cfg.json"

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
        _G.candyhub[i] = v
    end
end

local maintab = Window:CreateTab('Main')


local category1 = maintab:AddCategory("Aimbot",1,1)

category1:AddToggle('Aimbot',_G.candyhub.aimbot,'',function(v)
    _G.candyhub.aimbot = v
    saveConfig(_G.candyhub)
end)

category1:AddSlider('Aim Smooth', {1, 5, 1, 1, ""}, '', function(v)
    _G.candyhub.smoothing = v
    saveConfig(_G.candyhub)
end, false)

category1:AddSlider('Aim Fov', {1, 512, _G.candyhub.fov, 1, ""}, '', function(v)
    _G.candyhub.fov = v
    saveConfig(_G.candyhub)
end, false)


local category421 = maintab:AddCategory("Hitbox Expander",1,1)


category421:AddToggle('Hitboxes',_G.candyhub.hitboxes,'',function(v)
    task.spawn(function()
        _G.candyhub.hitboxes = v
        saveConfig(_G.candyhub)
        while _G.candyhub.hitboxes and task.wait() do
            for i, player in game.Players:GetChildren() do
                if player ~= game.Players.LocalPlayer then
                    if player.Character then
                        if player.Character:FindFirstChild('Head') then
                            player.Character:FindFirstChild('Head').CanCollide = false
                            player.Character:FindFirstChild('Head').Size = Vector3.new(_G.candyhub.hbsize, _G.candyhub.hbsize, _G.candyhub.hbsize)
                        end 
                    end
                end
            end
        end
    end)
end)


category421:AddSlider('Hitbox Size', {1, 40, _G.candyhub.hbsize, 1, ""}, '', function(v)
    _G.candyhub.hbsize = v
    saveConfig(_G.candyhub)
end, false)

local category = maintab:AddCategory("Esp",2,1)

category:AddToggle('ENABLED',_G.candyhub.blockesp,'',function(v)
    task.spawn(function()
        _G.candyhub.blockesp = v
        saveConfig(_G.candyhub)
        while _G.candyhub.blockesp and task.wait(1) do
            for i, player in game.Players:GetChildren() do
                if player.Name ~= game.Players.LocalPlayer.Name then
                    if _G.candyhub.blockesp then
                        blockesp(player,{_G.candyhub.name,_G.candyhub.boxs,_G.candyhub.hpbar,_G.candyhub.teamcheck,_G.candyhub.teamcheck_mode,_G.candyhub.chams})
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
        if not _G.candyhub.blockesp then
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

category:AddToggle('Nametags',_G.candyhub.name,'',function(v)
    _G.candyhub.name = v
    saveConfig(_G.candyhub)
end)
category:AddToggle('Boxes',_G.candyhub.boxs,'',function(v)
    _G.candyhub.boxs = v
    saveConfig(_G)
end)
category:AddToggle('Health Bar',_G.candyhub.hpbar,'',function(v)
    _G.candyhub.hpbar = v
    saveConfig(_G.candyhub)
end)
category:AddToggle('TeamCheck',_G.candyhub.teamcheck,'',function(v)
    _G.candyhub.teamcheck = v
    saveConfig(_G.candyhub)
end)

category:AddDropdown('TeamCheck Mode: ', {'color','visible'},_G.candyhub.teamcheck_mode,'',function(choice)
	_G.candyhub.teamcheck_mode = choice
    saveConfig(_G.candyhub)
end, true)

category:AddToggle('Chams',_G.candyhub.chams,'',function(v)
    _G.candyhub.chams = v
    saveConfig(_G.candyhub)
end)








local misctab = Window:CreateTab('Misc')

local category523 = misctab:AddCategory("Movement",1,1)

category523:AddToggle('Bhop',_G.candyhub.bhop,'',function(v)
    task.spawn(function()
        _G.candyhub.bhop = v
        saveConfig(_G.candyhub)
        while _G.candyhub.bhop and wait() do
            if _G.HoldingSpace then
                if game.Players.LocalPlayer.Character then
                game.Players.LocalPlayer.Character.Humanoid.Jump = true
                end
            end
        end
    end)
end)

category523:AddToggle('Bhop Speeding',_G.candyhub.speedhack,'',function(v)
    task.spawn(function()
        _G.candyhub.speedhack = v
        saveConfig(_G.candyhub)
        while _G.candyhub.speedhack and task.wait() do
            if Alive(game.Players.LocalPlayer) then
                game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = _G.candyhub.speed
            end
        end
    end)
end)

category523:AddSlider('Speed', {1, 100, _G.candyhub.speed, 1, ""}, '', function(v)
    _G.candyhub.speed = v
    saveConfig(_G.candyhub)
end, false)

category523:AddToggle('Spinbot',_G.candyhub.spinbot,'',function(v)
    task.spawn(function()
        _G.candyhub.spinbot = v
        saveConfig(_G.candyhub)
        if Alive(game.Players.LocalPlayer) then game.Players.LocalPlayer.Character.Humanoid.AutoRotate = not _G.candyhub.spinbot end
        while _G.candyhub.spinbot and wait() do
            if Alive(game.Players.LocalPlayer) then
            game.Players.LocalPlayer.Character.Humanoid.AutoRotate = not _G.candyhub.spinbot
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.Angles(0, math.rad(_G.candyhub.spinbot_power), 0)
            end
        end
        if Alive(game.Players.LocalPlayer) then game.Players.LocalPlayer.Character.Humanoid.AutoRotate = not _G.candyhub.spinbot end
    end)
end)

category523:AddSlider('Spinbot Power', {1, 100, _G.candyhub.spinbot_power, 1, ""}, '', function(v)
    _G.candyhub.spinbot_power = v
    saveConfig(_G.candyhub)
end, false)

category523:AddToggle('Third Person',_G.candyhub.thirdperson,'',function(v)
    task.spawn(function()
        _G.candyhub.thirdperson = v
        saveConfig(_G.candyhub)
        if _G.candyhub.thirdperson then
            game.Players.LocalPlayer.CameraMaxZoomDistance = 60
            game.Players.LocalPlayer.CameraMinZoomDistance = 60
            game.Players.LocalPlayer.CameraMode = Enum.CameraMode.Classic
        else
            game.Players.LocalPlayer.CameraMaxZoomDistance = 128
            game.Players.LocalPlayer.CameraMinZoomDistance = 0.5
            game.Players.LocalPlayer.CameraMode = Enum.CameraMode.LockFirstPerson
        end
    end)
end)

local category2523 = misctab:AddCategory("Xtras",1,1)

category2523:AddToggle('Wall Bang',_G.candyhub.wallbang,'',function(v)
    task.spawn(function()
        _G.candyhub.wallbang = v
        saveConfig(_G.candyhub)
    end)
end)

category2523:AddSlider('WallBang recd', {1, 200, _G.candyhub.wallbang_cd, 1, ""}, '', function(v)
    _G.candyhub.wallbang_cd = v
    saveConfig(_G.candyhub)
end, false)

local category2 = misctab:AddCategory("Weapons",2,1)

category2:AddToggle('Infinite Ammo',_G.candyhub.infammo,'',function(v)
    task.spawn(function()
        _G.candyhub.infammo = v
        saveConfig(_G.candyhub)
        while _G.candyhub.infammo and task.wait() do
            if GetLocalWeapon() ~= nil then
                local weapon = GetLocalWeapon()
                weapon:SetAttribute("reloadTime", 0)
                weapon:SetAttribute("magazineSize", 9999999)
            end
        end
    end)
end)

category2:AddToggle('No Spread',_G.candyhub.nospread,'',function(v)
    task.spawn(function()
        _G.candyhub.nospread = v
        saveConfig(_G.candyhub)
        while _G.candyhub.nospread and task.wait() do
            if GetLocalWeapon() ~= nil then
                local weapon = GetLocalWeapon()
                weapon:SetAttribute("spread", 0)
                weapon:SetAttribute("spreadADS",0)
            end
        end
    end)
end)


category2:AddToggle('No Recoil',_G.candyhub.norecoil,'',function(v)
    task.spawn(function()
        _G.candyhub.norecoil = v
        saveConfig(_G.candyhub)
        while _G.candyhub.norecoil and task.wait() do
            if GetLocalWeapon() ~= nil then
                local weapon = GetLocalWeapon()
                weapon:SetAttribute("recoilAimReduction", Vector2.new(0,0))
                weapon:SetAttribute("recoilMax", Vector2.new(0,0))
                weapon:SetAttribute("recoilMin", Vector2.new(0,0))
            end
        end
    end)
end)

category2:AddToggle('Rapid Fire',_G.candyhub.rapidfire,'',function(v)
    task.spawn(function()
        _G.candyhub.rapidfire = v
        saveConfig(_G.candyhub)
        while _G.candyhub.rapidfire and task.wait() do
            if GetLocalWeapon() ~= nil then
                local weapon = GetLocalWeapon()
                weapon:SetAttribute("rateOfFire", _G.candyhub.rapidpower*100)
            end
        end
    end)
end)

category2:AddSlider('Rapidness', {1, 10000, _G.candyhub.rapidpower, 1, ""}, '', function(v)
    _G.candyhub.rapidpower = v
    saveConfig(_G.candyhub)
end, false)


category2:AddToggle('Inf Range',_G.candyhub.infrange,'',function(v)
    task.spawn(function()
        _G.candyhub.infrange = v
        saveConfig(_G.candyhub)
        while _G.candyhub.infrange and task.wait() do
            if GetLocalWeapon() ~= nil then
                local weapon = GetLocalWeapon()
                weapon:SetAttribute("range", 5000)
            end
        end
    end)
end)




















local mouse = game.Players.LocalPlayer:GetMouse()

local function PartsFolder()
    local partsFolder
    if not game.Players.LocalPlayer:FindFirstChild('wallbang_parts') then
        partsFolder = Instance.new("Folder")
    else
		partsFolder = game.Players.LocalPlayer:FindFirstChild('wallbang_parts')
	end
    partsFolder.Name = "wallbang_parts"
    partsFolder.Parent = game.Players.LocalPlayer
    return partsFolder
end

local function isPressed()
    return game:GetService("UserInputService"):IsMouseButtonPressed(Enum.UserInputType.MouseButton1)
end

local function HasHumanoid(instance)
	if instance.Parent:FindFirstChild("Humanoid") then
		return true
	elseif instance.Parent.Parent:FindFirstChild("Humanoid") then
		return true
	elseif instance.Parent.Parent.Parent:FindFirstChild("Humanoid") then
		return true
	else 
		return false 
	end
end

local previoustarget

mouse.Button1Down:Connect(function()
    if _G.candyhub.wallbang then
        while isPressed() and _G.candyhub.wallbang and task.wait() do
            if _G.candyhub.wallbang then
                task.spawn(function()
                    if mouse.Target and not HasHumanoid(mouse.Target) then
                        local target = mouse.Target
                        local originalParent = target.Parent
                        
                        if originalParent then
                            target.Parent = PartsFolder()
                            task.wait(_G.candyhub.wallbang_cd/100)
                            target.Parent = originalParent
                        end
                    end
                end)
            end
        end
        --for i = 1,20 do
        --    if _G.candyhub.wallbang then
        --        task.spawn(function()
        --            if mouse.Target and not HasHumanoid(mouse.Target) then
        --                local target = mouse.Target
        --                local originalParent = target.Parent
        --                
        --                if originalParent then
        --                    target.Parent = PartsFolder()
        --                    task.wait(_G.candyhub.wallbang_cd/100)
        --                    target.Parent = originalParent
        --                end
        --            end
        --        end)
        --    end
        --end
    end
end)



















local FOVring = Drawing.new("Circle")
FOVring.Visible = true
FOVring.Thickness = 1.5
FOVring.Transparency = 1
FOVring.Radius = _G.candyhub.fov
FOVring.Color = Color3.fromRGB(255, 255, 255)

local function getClosest(cframe)
    local ray = Ray.new(cframe.Position, cframe.LookVector).Unit

    local target = nil
    local mag = math.huge

    for i, v in pairs(game.Players:GetPlayers()) do
        if
            v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("Head") and
                v.Character:FindFirstChild("HumanoidRootPart") and
                v.Team ~= game.Players.LocalPlayer.Team and
                v.Character:FindFirstChild("Humanoid") and
                v.Character:FindFirstChild("Humanoid").Health >= 1
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
    FOVring.Radius = _G.candyhub.fov
end

local loop
loop = game:GetService('RunService').Heartbeat:Connect(
    function()
        FOVring.Visible = _G.candyhub.aimbot
        local pressed = game:GetService('UserInputService'):IsMouseButtonPressed(Enum.UserInputType.MouseButton2) -- Right mouse button pressed
        local cam = workspace.CurrentCamera
        local zz = cam.ViewportSize / 2

        if pressed and _G.candyhub.aimbot then
            local curTar = getClosest(cam.CFrame)
            local ssHeadPoint = cam:WorldToScreenPoint(curTar.Character.Head.Position)
            ssHeadPoint = Vector2.new(ssHeadPoint.X, ssHeadPoint.Y)
            if (ssHeadPoint - zz).Magnitude < _G.candyhub.fov then
                cam.CFrame = cam.CFrame:Lerp(CFrame.new(cam.CFrame.Position, curTar.Character.Head.Position), _G.candyhub.smoothing)
            end
        end

        updateFOVring() -- Update FOV ring
        --if game:GetService('UserInputService'):IsKeyDown(Enum.KeyCode.Delete) then
        --    loop:Disconnect()
        --    FOVring:Remove()
        --end
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
