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
	Vector2.new(400, 525), -- ui lib size
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

    skinchanger = false,
    weapons = {
        ak47 = "Stock",
        m4a4 = "Stock",
        m4a1 = "Stock",
        deagle = "Stock",
        awp = "Stock",
        galil = "Stock",
        famas = "Stock",
        knife = "TKnife_Stock",
        gloves = "",
        scout = "Stock",
        glock = "Stock",
        usp = "Stock",
    },
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

local function UnlockSkins(skins)
    local LocalPlayer = game:GetService("Players").LocalPlayer
    local Client = getsenv(game.Players.LocalPlayer.PlayerGui.Client)
    local ReplicatedStorage = game:GetService("ReplicatedStorage")

    local allSkins = skins

    local isUnlocked
    local mt = getrawmetatable(game)
    local oldNamecall = mt.__namecall
    setreadonly(mt, false)
    local isUnlocked
    mt.__namecall =
    newcclosure(
    function(self, ...)
        local args = {...}
        if getnamecallmethod() == "InvokeServer" and tostring(self) == "Hugh" then
            return
        end
        if getnamecallmethod() == "FireServer" then
            if args[1] == LocalPlayer.UserId then
                return
            end
            if string.len(tostring(self)) == 38 then
                if not isUnlocked then
                    isUnlocked = true
                    for i, v in pairs(allSkins) do
                        local doSkip
                        for i2, v2 in pairs(args[1]) do
                            if v[1] == v2[1] then
                                doSkip = true
                            end
                        end
                        if not doSkip then
                            table.insert(args[1], v)
                        end
                    end
                end
                return
            end
            if tostring(self) == "DataEvent" and args[1][4] then
                local currentSkin = string.split(args[1][4][1], "_")[2]
                if args[1][2] == "Both" then
                    LocalPlayer["SkinFolder"]["CTFolder"][args[1][3]].Value = currentSkin
                    LocalPlayer["SkinFolder"]["TFolder"][args[1][3]].Value = currentSkin
                else
                    LocalPlayer["SkinFolder"][args[1][2] .. "Folder"][args[1][3]].Value = currentSkin
                end
            end
        end
        return oldNamecall(self, ...)
    end
    )
    setreadonly(mt, true)
    Client.CurrentInventory = skins
    local TClone, CTClone = LocalPlayer.SkinFolder.TFolder:Clone(), game.Players.LocalPlayer.SkinFolder.CTFolder:Clone()
    LocalPlayer.SkinFolder.TFolder:Destroy()
    LocalPlayer.SkinFolder.CTFolder:Destroy()
    TClone.Parent = LocalPlayer.SkinFolder
    CTClone.Parent = LocalPlayer.SkinFolder
end

local function EquipSkin(team,weapon,skin)
    local args = {
        [1] = {
            [1] = "EquipItem",
            [2] = team, -- "T", "CT", "Both"
            [3] = weapon, -- "Knife"
            [4] = {
                [1] = skin -- "Bayonet_Worn"
            }
        }
    }
    
    game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("DataEvent"):FireServer(unpack(args))    
end

-- EquipSkin("CT","Knife","CTKnife_Stock")
-- EquipSkin("T","Knife","TKnife_Stock")

local function GetAllSkins(skinslist)
    local skins = {}
    for i, skin in skinslist do
        table.insert(skins,skin)
    end
    return skins
end

local category205 = skinstab:AddCategory("Main",1,1)

category205:AddToggle('Skin Changer',_G.blockespsettings.skinchanger,'',function(v)
    task.spawn(function()
        _G.blockespsettings.skinchanger = v
        saveConfig(_G.blockespsettings)
        if _G.blockespsettings.skinchanger then
            UnlockSkins({
                {_G.blockespsettings.weapons.knife},
                {_G.blockespsettings.weapons.gloves},
                {_G.blockespsettings.weapons.ak47},
                {_G.blockespsettings.weapons.m4a4},
                {_G.blockespsettings.weapons.glock},
                {_G.blockespsettings.weapons.usp},
                {_G.blockespsettings.weapons.awp}
            })
            --UnlockSkins({{_G.blockespsettings.weapons.knife},{_G.blockespsettings.weapons.knife}})
            EquipSkin("Both","Knife",_G.blockespsettings.weapons.knife)
            EquipSkin("Both",'Glove',_G.blockespsettings.weapons.gloves)
            EquipSkin("T",'AK47',_G.blockespsettings.weapons.ak47)
            EquipSkin("CT",'M4A4',_G.blockespsettings.weapons.m4a4)
            EquipSkin("Both",'DesertEagle',_G.blockespsettings.weapons.deagle)
            EquipSkin("T",'Glock',_G.blockespsettings.weapons.glock)
            EquipSkin("CT",'USP',_G.blockespsettings.weapons.usp)
            EquipSkin("Both","AWP",_G.blockespsettings.weapons.awp)
        end
    end)
end)

local knifeskins = {"Banana_Stock","Bayonet_Aequalis","Bayonet_Banner","Bayonet_Candy Cane","Bayonet_Consumed","Bayonet_Cosmos","Bayonet_Crimson Tiger","Bayonet_Crow","Bayonet_Delinquent","Bayonet_Digital","Bayonet_Easy-Bake","Bayonet_Egg Shell","Bayonet_Festive","Bayonet_Frozen Dream","Bayonet_Geo Blade","Bayonet_Ghastly","Bayonet_Goo","Bayonet_Hallows","Bayonet_Intertwine","Bayonet_Marbleized","Bayonet_Mariposa","Bayonet_Naval","Bayonet_Neonic","Bayonet_RSL","Bayonet_Racer","Bayonet_Sapphire","Bayonet_Silent Night","Bayonet_Splattered","Bayonet_Stock","Bayonet_Topaz","Bayonet_Tropical","Bayonet_Twitch","Bayonet_UFO","Bayonet_Wetland","Bayonet_Worn","Bayonet_Wrapped","Butterfly Knife_Aurora","Butterfly Knife_Bloodwidow","Butterfly Knife_Consumed","Butterfly Knife_Cosmos","Butterfly Knife_Crimson Tiger","Butterfly Knife_Crippled Fade","Butterfly Knife_Digital","Butterfly Knife_Egg Shell","Butterfly Knife_Freedom","Butterfly Knife_Frozen Dream","Butterfly Knife_Goo","Butterfly Knife_Hallows","Butterfly Knife_Icicle","Butterfly Knife_Inversion","Butterfly Knife_Jade Dream","Butterfly Knife_Marbleized","Butterfly Knife_Naval","Butterfly Knife_Neonic","Butterfly Knife_Reaper","Butterfly Knife_Ruby","Butterfly Knife_Scapter","Butterfly Knife_Splattered","Butterfly Knife_Stock","Butterfly Knife_Topaz","Butterfly Knife_Tropical","Butterfly Knife_Twitch","Butterfly Knife_Wetland","Butterfly Knife_White Boss","Butterfly Knife_Worn","Butterfly Knife_Wrapped","Falchion Knife_Bloodwidow","Falchion Knife_Chosen","Falchion Knife_Coal","Falchion Knife_Consumed","Falchion Knife_Cosmos","Falchion Knife_Crimson Tiger","Falchion Knife_Crippled Fade","Falchion Knife_Digital","Falchion Knife_Egg Shell","Falchion Knife_Festive","Falchion Knife_Freedom","Falchion Knife_Frozen Dream","Falchion Knife_Goo","Falchion Knife_Hallows","Falchion Knife_Inversion","Falchion Knife_Late Night","Falchion Knife_Marbleized","Falchion Knife_Naval","Falchion Knife_Neonic","Falchion Knife_Racer","Falchion Knife_Ruby","Falchion Knife_Splattered","Falchion Knife_Stock","Falchion Knife_Topaz","Falchion Knife_Tropical","Falchion Knife_Wetland","Falchion Knife_Worn","Falchion Knife_Wrapped","Falchion Knife_Zombie","Gut Knife_Banner","Gut Knife_Bloodwidow","Gut Knife_Consumed","Gut Knife_Cosmos","Gut Knife_Crimson Tiger","Gut Knife_Crippled Fade","Gut Knife_Digital","Gut Knife_Egg Shell","Gut Knife_Frozen Dream","Gut Knife_Geo Blade","Gut Knife_Goo","Gut Knife_Hallows","Gut Knife_Lurker","Gut Knife_Marbleized","Gut Knife_Naval","Gut Knife_Neonic","Gut Knife_Present","Gut Knife_Ruby","Gut Knife_Rusty","Gut Knife_Splattered","Gut Knife_Topaz","Gut Knife_Tropical","Gut Knife_Wetland","Gut Knife_Worn","Gut Knife_Wrapped","Huntsman Knife_Aurora","Huntsman Knife_Bloodwidow","Huntsman Knife_Consumed","Huntsman Knife_Cosmos","Huntsman Knife_Cozy","Huntsman Knife_Crimson Tiger","Huntsman Knife_Crippled Fade","Huntsman Knife_Digital","Huntsman Knife_Egg Shell","Huntsman Knife_Frozen Dream","Huntsman Knife_Geo Blade","Huntsman Knife_Goo","Huntsman Knife_Hallows","Huntsman Knife_Honor Fade","Huntsman Knife_Marbleized","Huntsman Knife_Monster","Huntsman Knife_Naval","Huntsman Knife_Ruby","Huntsman Knife_Splattered","Huntsman Knife_Stock","Huntsman Knife_Tropical","Huntsman Knife_Twitch","Huntsman Knife_Wetland","Huntsman Knife_Worn","Huntsman Knife_Wrapped","Karambit_Bloodwidow","Karambit_Consumed","Karambit_Cosmos","Karambit_Crimson Tiger","Karambit_Crippled Fade","Karambit_Death Wish","Karambit_Digital","Karambit_Egg Shell","Karambit_Festive","Karambit_Frozen Dream","Karambit_Glossed","Karambit_Gold","Karambit_Goo","Karambit_Hallows","Karambit_Jade Dream","Karambit_Jester","Karambit_Lantern","Karambit_Liberty Camo","Karambit_Marbleized","Karambit_Naval","Karambit_Neonic","Karambit_Pizza","Karambit_Quicktime","Karambit_Racer","Karambit_Ruby","Karambit_Scapter","Karambit_Splattered","Karambit_Stock","Karambit_Topaz","Karambit_Tropical","Karambit_Twitch","Karambit_Wetland","Karambit_Worn","Cleaver_Spider","Cleaver_Splattered","Bearded Axe_Beast","Bearded Axe_Splattered"}
local ak47skins = {"AK47_Ace","AK47_Bloodboom","AK47_Clown","AK47_Code Orange","AK47_Eve","AK47_Gifted","AK47_Glo","AK47_Goddess","AK47_Hallows","AK47_Halo","AK47_Hypersonic","AK47_Inversion","AK47_Jester","AK47_Maker","AK47_Mean Green","AK47_Outlaws","AK47_Outrunner","AK47_Patch","AK47_Plated","AK47_Precision","AK47_Quantum","AK47_Quicktime","AK47_Scapter","AK47_Secret Santa","AK47_Shooting Star","AK47_Skin Committee","AK47_Survivor","AK47_Ugly Sweater","AK47_VAV","AK47_Variant Camo","AK47_Yltude"}
local awpskins = {"AWP_Abaddon","AWP_Autumness","AWP_Blastech","AWP_Bloodborne","AWP_Coffin Biter","AWP_Desert Camo","AWP_Difference","AWP_Dragon","AWP_Forever","AWP_Grepkin","AWP_Hika","AWP_Illusion","AWP_Instinct","AWP_JTF2","AWP_Lunar","AWP_Nerf","AWP_Northern Lights","AWP_Pear Tree","AWP_Pink Vision","AWP_Pinkie","AWP_Quicktime","AWP_Racer","AWP_Regina","AWP_Retroactive","AWP_Scapter","AWP_Silence","AWP_Venomus","AWP_Weeb",}
local uspskins = {"USP_Crimson","USP_Dizzy","USP_Frostbite","USP_Holiday","USP_Jade Dream","USP_Kraken","USP_Nighttown","USP_Paradise","USP_Racing","USP_Skull","USP_Unseen","USP_Worlds Away","USP_Yellowbelly",}
local deagleskins = {"DesertEagle_Cold Truth","DesertEagle_Cool Blue","DesertEagle_DropX","DesertEagle_Glittery","DesertEagle_Grim","DesertEagle_Heat","DesertEagle_Honor-bound","DesertEagle_Independence","DesertEagle_Krystallos","DesertEagle_Pumpkin Buster","DesertEagle_ROLVe","DesertEagle_Racer","DesertEagle_Scapter","DesertEagle_Skin Committee","DesertEagle_Survivor","DesertEagle_Weeb","DesertEagle_Xmas",}
local glockskins = {"Glock_Angler","Glock_Anubis","Glock_Biotrip","Glock_Day Dreamer","Glock_Desert Camo","Glock_Gravestomper","Glock_Midnight Tiger","Glock_Money Maker","Glock_RSL","Glock_Rush","Glock_Scapter","Glock_Spacedust","Glock_Tarnish","Glock_Underwater","Glock_Wetland","Glock_White Sauce",}
local m4a1skins = {"M4A1_Animatic","M4A1_Burning","M4A1_Desert Camo","M4A1_Heavens Gate","M4A1_Impulse","M4A1_Jester","M4A1_Lunar","M4A1_Necropolis","M4A1_Tecnician","M4A1_Toucan","M4A1_Wastelander",}
local m4a4skins= {"M4A4_BOT[S]","M4A4_Candyskull","M4A4_Delinquent","M4A4_Desert Camo","M4A4_Devil","M4A4_Endline","M4A4_Flashy Ride","M4A4_Ice Cap","M4A4_Jester","M4A4_King","M4A4_Mistletoe","M4A4_Pinkie","M4A4_Pinkvision","M4A4_Pondside","M4A4_Precision","M4A4_Quicktime","M4A4_Racer","M4A4_RayTrack","M4A4_Scapter","M4A4_Stardust","M4A4_Toy Soldier",}
local glovesskins = {"Handwraps_Wraps","Sports Glove_Hazard","Sports Glove_Hallows","Sports Glove_Majesty","Strapped Glove_Racer","trapped Glove_Grim","trapped Glove_Wisk","Fingerless Glove_Scapter","Fingerless Glove_Digital","Fingerless Glove_Patch","Handwraps_Guts","Handwraps_Wetland","trapped Glove_Molten","Fingerless_Crystal","Sports Glove_Royal","Strapped Glove_Kringle","Handwraps_MMA","Sports Glove_Weeb","Sports Glove_CottonTail","Sports Glove_RSL","Handwraps_Ghoul Hex","Handwraps_Phantom Hex","Handwraps_Spector Hex","Handwraps_Orange Hex","Handwraps_Purple Hex","Handwraps_Green Hex"}


category205:AddDropdown('Knife', knifeskins,_G.blockespsettings.weapons.knife,'',function(choice)
	_G.blockespsettings.weapons.knife = choice
    saveConfig(_G.blockespsettings)
end, true)
--

category205:AddDropdown('Gloves', glovesskins,_G.blockespsettings.weapons.gloves,'',function(choice)
	_G.blockespsettings.weapons.gloves = choice
    saveConfig(_G.blockespsettings)
end, true)

--

category205:AddDropdown('AK 47', ak47skins,_G.blockespsettings.weapons.ak47,'',function(choice)
	_G.blockespsettings.weapons.ak47 = choice
    saveConfig(_G.blockespsettings)
end, true)

category205:AddDropdown('M4A4', m4a4skins,_G.blockespsettings.weapons.m4a4,'',function(choice)
	_G.blockespsettings.weapons.m4a4 = choice
    saveConfig(_G.blockespsettings)
end, true)

category205:AddDropdown('DesertEagle', deagleskins,_G.blockespsettings.weapons.deagle,'',function(choice)
	_G.blockespsettings.weapons.deagle = choice
    saveConfig(_G.blockespsettings)
end, true)

category205:AddDropdown('USP', uspskins,_G.blockespsettings.weapons.usp,'',function(choice)
	_G.blockespsettings.weapons.usp = choice
    saveConfig(_G.blockespsettings)
end, true)

category205:AddDropdown('Glock', glockskins,_G.blockespsettings.weapons.glock,'',function(choice)
	_G.blockespsettings.weapons.glock = choice
    saveConfig(_G.blockespsettings)
end, true)

category205:AddDropdown('AWP', awpskins,_G.blockespsettings.weapons.awp,'',function(choice)
	_G.blockespsettings.weapons.awp = choice
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
        FOVring.Visible = _G.blockespsettings.aimbot
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
