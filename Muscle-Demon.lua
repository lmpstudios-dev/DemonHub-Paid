-- ============================================================
--  DEMONHUB - PAID VERSION
--  Credits: ulisted
--  Discord: the.ulisted
-- ============================================================

-- ============================================================
--  KEY SYSTEM
-- ============================================================
local CORRECT_KEY  = "DemonOnTop"
local DISCORD_LINK = "el_b_muscle"
local keyAccepted  = false

local keyGui = Instance.new("ScreenGui")
keyGui.Name            = "DemonHub-KeySystem"
keyGui.ResetOnSpawn    = false
keyGui.ZIndexBehavior  = Enum.ZIndexBehavior.Sibling
keyGui.Parent          = game.CoreGui

-- Full black background
local bg = Instance.new("Frame", keyGui)
bg.Size                = UDim2.new(1,0,1,0)
bg.BackgroundColor3    = Color3.fromRGB(0,0,0)
bg.BorderSizePixel     = 0
bg.BackgroundTransparency = 1

-- White panel
local panel = Instance.new("Frame", bg)
panel.Size             = UDim2.new(0,440,0,330)
panel.Position         = UDim2.new(0.5,-220,0.5,-165)
panel.BackgroundColor3 = Color3.fromRGB(8,8,8)
panel.BorderColor3     = Color3.fromRGB(139,0,0)
panel.BorderSizePixel  = 2
Instance.new("UICorner", panel).CornerRadius = UDim.new(0,10)

-- White top bar
local topBar = Instance.new("Frame", panel)
topBar.Size            = UDim2.new(1,0,0,46)
topBar.BackgroundColor3= Color3.fromRGB(139,0,0)
topBar.BorderSizePixel = 0
local topCorner = Instance.new("UICorner", topBar)
topCorner.CornerRadius = UDim.new(0,10)
-- fix bottom corners of topbar
local topFix = Instance.new("Frame", topBar)
topFix.Size            = UDim2.new(1,0,0.5,0)
topFix.Position        = UDim2.new(0,0,0.5,0)
topFix.BackgroundColor3= Color3.fromRGB(255,255,255)
topFix.BorderSizePixel = 0

local titleLbl = Instance.new("TextLabel", topBar)
titleLbl.Size              = UDim2.new(1,0,1,0)
titleLbl.BackgroundTransparency = 1
titleLbl.Text              = "DEMONHUB  ·  KEY SYSTEM"
titleLbl.TextColor3        = Color3.fromRGB(0,0,0)
titleLbl.Font              = Enum.Font.GothamBold
titleLbl.TextSize          = 16

-- Credit line
local creditLbl = Instance.new("TextLabel", panel)
creditLbl.Size             = UDim2.new(0.9,0,0,22)
creditLbl.Position         = UDim2.new(0.05,0,0,52)
creditLbl.BackgroundTransparency = 1
creditLbl.Text             = "Script by  Ulisted  —  Paid Version"
creditLbl.TextColor3       = Color3.fromRGB(160,160,160)
creditLbl.Font             = Enum.Font.GothamBold
creditLbl.TextSize         = 12

-- TikTok info
local discInfo = Instance.new("TextLabel", panel)
discInfo.Size              = UDim2.new(0.9,0,0,22)
discInfo.Position          = UDim2.new(0.05,0,0,76)
discInfo.BackgroundTransparency = 1
discInfo.Text              = "Don't you know the key? Visit my TikTok (el_b_muscle)!"
discInfo.TextColor3        = Color3.fromRGB(200,200,200)
discInfo.Font              = Enum.Font.Gotham
discInfo.TextSize          = 12

-- TikTok button
local discBtn = Instance.new("TextButton", panel)
discBtn.Size               = UDim2.new(0.88,0,0,36)
discBtn.Position           = UDim2.new(0.06,0,0,102)
discBtn.BackgroundColor3   = Color3.fromRGB(139,0,0)
discBtn.TextColor3         = Color3.fromRGB(0,0,0)
discBtn.Font               = Enum.Font.GothamBold
discBtn.TextSize           = 12
discBtn.Text               = "Copy TikTok  —  el_b_muscle"
discBtn.BorderSizePixel    = 0
Instance.new("UICorner", discBtn).CornerRadius = UDim.new(0,6)

discBtn.MouseButton1Click:Connect(function()
    pcall(function() setclipboard(DISCORD_LINK) end)
    discBtn.Text = "✓  Copied! Visit & Get the Key!"
    task.wait(2.5)
    discBtn.Text = "Copy User  —  el_b_muscle"
end)

-- Separator
local sep = Instance.new("Frame", panel)
sep.Size               = UDim2.new(0.88,0,0,1)
sep.Position           = UDim2.new(0.06,0,0,150)
sep.BackgroundColor3   = Color3.fromRGB(50,50,50)
sep.BorderSizePixel    = 0

-- Enter key label
local keyLbl = Instance.new("TextLabel", panel)
keyLbl.Size            = UDim2.new(0.88,0,0,20)
keyLbl.Position        = UDim2.new(0.06,0,0,158)
keyLbl.BackgroundTransparency = 1
keyLbl.Text            = "Enter your key:"
keyLbl.TextColor3      = Color3.fromRGB(180,180,180)
keyLbl.Font            = Enum.Font.Gotham
keyLbl.TextSize        = 12
keyLbl.TextXAlignment  = Enum.TextXAlignment.Left

-- Key input
local keyBox = Instance.new("TextBox", panel)
keyBox.Size            = UDim2.new(0.88,0,0,40)
keyBox.Position        = UDim2.new(0.06,0,0,180)
keyBox.BackgroundColor3= Color3.fromRGB(18,18,18)
keyBox.BorderColor3    = Color3.fromRGB(70,70,70)
keyBox.BorderSizePixel = 1
keyBox.TextColor3      = Color3.fromRGB(255,255,255)
keyBox.Font            = Enum.Font.GothamBold
keyBox.TextSize        = 15
keyBox.PlaceholderText = "Type key here..."
keyBox.PlaceholderColor3 = Color3.fromRGB(70,70,70)
keyBox.Text            = ""
keyBox.ClearTextOnFocus= true
Instance.new("UICorner", keyBox).CornerRadius = UDim.new(0,6)

-- Status
local statusLbl = Instance.new("TextLabel", panel)
statusLbl.Size         = UDim2.new(0.88,0,0,20)
statusLbl.Position     = UDim2.new(0.06,0,0,226)
statusLbl.BackgroundTransparency = 1
statusLbl.Text         = ""
statusLbl.Font         = Enum.Font.Gotham
statusLbl.TextSize     = 12
statusLbl.TextXAlignment = Enum.TextXAlignment.Left

-- Submit button
local submitBtn = Instance.new("TextButton", panel)
submitBtn.Size         = UDim2.new(0.88,0,0,40)
submitBtn.Position     = UDim2.new(0.06,0,0,252)
submitBtn.BackgroundColor3 = Color3.fromRGB(139,0,0)
submitBtn.TextColor3   = Color3.fromRGB(0,0,0)
submitBtn.Font         = Enum.Font.GothamBold
submitBtn.TextSize     = 14
submitBtn.Text         = "Submit Key"
submitBtn.BorderSizePixel = 0
Instance.new("UICorner", submitBtn).CornerRadius = UDim.new(0,6)

local function trySubmit()
    if keyBox.Text == CORRECT_KEY then
        statusLbl.Text      = "✓ Correct! Loading DemonHub..."
        statusLbl.TextColor3= Color3.fromRGB(80,255,80)
        submitBtn.Text      = "✓ Access Granted"
        submitBtn.BackgroundColor3 = Color3.fromRGB(80,255,80)
        task.wait(1.2)
        keyGui:Destroy()
        keyAccepted = true
    else
        statusLbl.Text      = "✗  Incorrect. Visit my TikTok to get the key."
        statusLbl.TextColor3= Color3.fromRGB(255,70,70)
        keyBox.Text         = ""
        task.wait(2.5)
        statusLbl.Text      = ""
    end
end

submitBtn.MouseButton1Click:Connect(trySubmit)
keyBox.FocusLost:Connect(function(enter) if enter then trySubmit() end end)

repeat task.wait(0.1) until keyAccepted

-- ============================================================
--  SERVICES
-- ============================================================
local Players           = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local RunService        = game:GetService("RunService")
local LP                = Players.LocalPlayer

-- ============================================================
--  MAIN WINDOW
-- ============================================================
local hub = loadstring(game:HttpGet(
    "https://raw.githubusercontent.com/lkjhg969/cracked/refs/heads/main/scp/libcreck.luau", true
))():AddWindow("          DEMONHUB  |  By Ulisted", {
    main_color = Color3.fromRGB(0, 0, 0),
    min_size   = Vector2.new(600, 400),
    can_resize = false,
    scrollable = true,
})

-- ============================================================
--  TAB: INFO
-- ============================================================
local infoTab = hub:AddTab("INFO")
infoTab:AddLabel("WELCOME TO DEMONHUB ☆彡")
infoTab:AddLabel("Script by: Ulisted  |  Paid Version")

local rl = infoTab:AddLabel("         ★ Ulisted | Demon ★")
task.spawn(function()
    while true do
        rl.TextColor3 = Color3.fromHSV(tick() * 0.22 % 1, 0.8, 1)
        task.wait(0.02)
    end
end)

infoTab:AddLabel("════════════════════════════")
infoTab:AddLabel("Want the key? Visit my TikTok and get it!")
infoTab:AddButton("Copy TikTok User", function()
    pcall(function() setclipboard(DISCORD_LINK) end)
    game:GetService("StarterGui"):SetCore("SendNotification",
        { Title = "Copied!", Text = "TikTok user copied!", Duration = 3 })
end)

-- ============================================================
--  TAB: STATS
-- ============================================================
local statsTab = hub:AddTab(" STATS ")
statsTab:AddLabel("════════ SESSION ════════").TextSize = 20

local timerLbl = statsTab:AddLabel("Time in Server: 0d 0h 0m 0s")
local jt = os.time()
local function fmtT(s)
    return string.format("%dd %dh %dm %ds",
        math.floor(s/86400), math.floor((s%86400)/3600),
        math.floor((s%3600)/60), s%60)
end
task.spawn(function() while task.wait(1) do timerLbl.Text = "Time in Server: " .. fmtT(os.time()-jt) end end)

local baseReb    = LP.leaderstats.Rebirths.Value
local rebGainLbl = statsTab:AddLabel("Rebirths Gained: 0")
task.spawn(function()
    while task.wait(0.5) do
        rebGainLbl.Text = "Rebirths Gained: " .. (LP.leaderstats.Rebirths.Value - baseReb)
    end
end)

statsTab:AddLabel("════════ GAINED ════════").TextSize = 20

local gL = {
    Str  = statsTab:AddLabel("Strength gained: 0"),
    Dur  = statsTab:AddLabel("Durability gained: 0"),
    Agi  = statsTab:AddLabel("Agility gained: 0"),
    Kill = statsTab:AddLabel("Kills gained: 0"),
    Evil = statsTab:AddLabel("Evil Karma gained: 0"),
    Good = statsTab:AddLabel("Good Karma gained: 0"),
};

(function()
    local ls = LP:WaitForChild("leaderstats")
    local s  = ls:WaitForChild("Strength")
    local d  = LP:WaitForChild("Durability")
    local ag = LP:WaitForChild("Agility")
    local k  = ls:WaitForChild("Kills")
    local ev = LP:WaitForChild("evilKarma")
    local gd = LP:WaitForChild("goodKarma")
    local bs,bd,ba,bk,be,bg = s.Value,d.Value,ag.Value,k.Value,ev.Value,gd.Value
    local function fmt(n)
        if n>=1e9 then return string.format("%.1fB",n/1e9)
        elseif n>=1e6 then return string.format("%.1fM",n/1e6)
        elseif n>=1e3 then return string.format("%.1fK",n/1e3)
        else return tostring(n) end
    end
    local function upd()
        gL.Str.Text  = "Strength gained: "   .. fmt(s.Value-bs)
        gL.Dur.Text  = "Durability gained: " .. fmt(d.Value-bd)
        gL.Agi.Text  = "Agility gained: "    .. fmt(ag.Value-ba)
        gL.Kill.Text = "Kills gained: "      .. fmt(k.Value-bk)
        gL.Evil.Text = "Evil Karma gained: " .. fmt(ev.Value-be)
        gL.Good.Text = "Good Karma gained: " .. fmt(gd.Value-bg)
    end
    s.Changed:Connect(upd); d.Changed:Connect(upd); ag.Changed:Connect(upd)
    k.Changed:Connect(upd); ev.Changed:Connect(upd); gd.Changed:Connect(upd)
    upd()
end)()

statsTab:AddLabel("════════ CURRENT STATS ════════").TextSize = 20

local function fmtFull(v)
    if not v then return "N/A" end
    local function ab(n)
        if n>=1e15 then return string.format("%.1fQa",n/1e15)
        elseif n>=1e12 then return string.format("%.1fT",n/1e12)
        elseif n>=1e9  then return string.format("%.1fB",n/1e9)
        elseif n>=1e6  then return string.format("%.1fM",n/1e6)
        elseif n>=1e3  then return string.format("%.1fK",n/1e3)
        else return tostring(n) end
    end
    return ab(v) .. " / " .. tostring(v)
end

local cL = {
    Player     = statsTab:AddLabel("Player: " .. LP.Name),
    Rebirths   = statsTab:AddLabel("Rebirths: N/A"),
    Strength   = statsTab:AddLabel("Strength: N/A"),
    Durability = statsTab:AddLabel("Durability: N/A"),
    Agility    = statsTab:AddLabel("Agility: N/A"),
    Kills      = statsTab:AddLabel("Kills: N/A"),
    EvilKarma  = statsTab:AddLabel("Evil Karma: N/A"),
    GoodKarma  = statsTab:AddLabel("Good Karma: N/A"),
}

local function findPlr(q)
    q = tostring(q):lower()
    if #q == 0 then return LP end
    for _,v in ipairs(Players:GetPlayers()) do if v.Name:lower()==q then return v end end
    for _,v in ipairs(Players:GetPlayers()) do if v.DisplayName and v.DisplayName:lower()==q then return v end end
    for _,v in ipairs(Players:GetPlayers()) do if v.Name:lower():find(q,1,true) then return v end end
    for _,v in ipairs(Players:GetPlayers()) do if v.DisplayName and v.DisplayName:lower():find(q,1,true) then return v end end
    return nil
end

local function updateStats(p)
    if not p then for k,lbl in pairs(cL) do lbl.Text=(k~="Player")and k..": N/A" or "Player: Not Found" end; return end
    cL.Player.Text    = "Player: "..p.Name..(p.DisplayName~=p.Name and(" ("..p.DisplayName..")") or "")
    local ls = p:FindFirstChild("leaderstats")
    local function g(par,nm) local c=par and par:FindFirstChild(nm); return c and c.Value or nil end
    cL.Rebirths.Text   = "Rebirths: "   .. fmtFull(g(ls,"Rebirths"))
    cL.Strength.Text   = "Strength: "   .. fmtFull(g(ls,"Strength"))
    cL.Durability.Text = "Durability: " .. fmtFull(g(p,"Durability"))
    cL.Agility.Text    = "Agility: "    .. fmtFull(g(p,"Agility"))
    cL.Kills.Text      = "Kills: "      .. fmtFull(g(ls,"Kills"))
    cL.EvilKarma.Text  = "Evil Karma: " .. fmtFull(g(p,"evilKarma"))
    cL.GoodKarma.Text  = "Good Karma: " .. fmtFull(g(p,"goodKarma"))
end

local wConns = {}
local function watchPlr(p)
    for _,c in ipairs(wConns) do pcall(function() c:Disconnect() end) end; wConns={}
    if not p then return end
    local function sub(obj) if obj then table.insert(wConns, obj.Changed:Connect(function() updateStats(p) end)) end end
    local ls=p:FindFirstChild("leaderstats")
    if ls then sub(ls:FindFirstChild("Strength")); sub(ls:FindFirstChild("Rebirths")); sub(ls:FindFirstChild("Kills")) end
    sub(p:FindFirstChild("Durability")); sub(p:FindFirstChild("Agility"))
    sub(p:FindFirstChild("evilKarma")); sub(p:FindFirstChild("goodKarma"))
end

statsTab:AddTextBox("Search Player", function(inp)
    local p = findPlr(inp); updateStats(p); watchPlr(p)
end, { clear=false, placeholder="Username or display name..." })

updateStats(LP); watchPlr(LP)

-- ============================================================
--  TAB: MAIN
-- ============================================================
local mainTab = hub:AddTab("MAIN")

-- Auto Punch
local punchF = mainTab:AddFolder("Auto Punch")
punchF:AddSwitch("Auto Punch", function(state)
    if state then
        local bp = LP.Backpack:FindFirstChild("Punch")
        if bp and LP.Character then bp.Parent = LP.Character end
        _G.punchanim = true
        while _G.punchanim do
            local tool = LP.Character and LP.Character:FindFirstChild("Punch")
            if tool then tool:Activate(); task.wait() else _G.punchanim=false end
        end
    else _G.punchanim=false end
end)

punchF:AddSwitch("Fast Punch", function(state)
    local t=(LP.Character and LP.Character:FindFirstChild("Punch")) or LP.Backpack:FindFirstChild("Punch")
    if t and t:FindFirstChild("attackTime") then t.attackTime.Value = state and 0 or 0.35 end
end):Set(false)

mainTab:AddLabel("--- Jungle Machines ---")

local jungleF = mainTab:AddFolder("Jungle Machines")
local function makeJungle(tab, lbl, pos, machine)
    local on=false
    tab:AddSwitch(lbl, function(p)
        on=p; if not p then return end
        task.spawn(function()
            while on do
                local ch=LP.Character
                if ch and ch:FindFirstChild("HumanoidRootPart") then
                    ch:SetPrimaryPartCFrame(CFrame.new(pos))
                    pcall(function()
                        ReplicatedStorage.rEvents.machineInteractRemote:InvokeServer(
                            "useMachine", workspace.machinesFolder[machine].interactSeat)
                    end)
                end
                task.wait(0.1)
            end
        end)
    end)
end
makeJungle(jungleF,"Auto Jungle Bench",    Vector3.new(-8629.88,64.88,1855.03),  "Jungle Bench")
makeJungle(jungleF,"Auto Jungle Bar Lift", Vector3.new(-8678.05,14.50,2089.25),  "Jungle Bar Lift")
makeJungle(jungleF,"Auto Jungle Squat",    Vector3.new(-8374.25,34.59,2932.44),  "Jungle Squat")

mainTab:AddLabel("--- Auto Equip ---")
local equipF = mainTab:AddFolder("Auto Equip Tools")
local function makeEquip(tab, lbl, tool)
    local on=false
    tab:AddSwitch(lbl, function(p)
        on=p; if not p then return end
        task.spawn(function()
            while on do
                local t=LP.Backpack:FindFirstChild(tool)
                if t and LP.Character then t.Parent=LP.Character end
                task.wait(0.1)
            end
        end)
    end)
end
makeEquip(equipF,"Auto Equip Weight",    "Weight")
makeEquip(equipF,"Auto Equip Pushups",   "Pushups")
makeEquip(equipF,"Auto Equip Situps",    "Situps")
makeEquip(equipF,"Auto Equip Handstand", "Handstand")

local autoLiftOn=false
mainTab:AddSwitch("Auto Lift (Reps)", function(state)
    autoLiftOn=state
    if not state then return end
    coroutine.wrap(function()
        while autoLiftOn do
            task.wait(0.1)
            local bp=LP:FindFirstChild("Backpack"); local ch=LP.Character or LP.CharacterAdded:Wait()
            local t=bp and bp:FindFirstChild("Pushup"); if t then t.Parent=ch end
            pcall(function() LP.muscleEvent:FireServer("rep") end)
        end
    end)()
end)

-- ============================================================
--  TAB: REBIRTH
-- ============================================================
local rebTab = hub:AddTab("REBIRTH")

rebTab:AddLabel("══════ AUTO KING ══════")
rebTab:AddSwitch("Auto King", function(state)
    local cf=CFrame.new(-8865,430,-5749); local lp=LP
    if state then
        local ch=lp.Character or lp.CharacterAdded:Wait()
        if ch and ch:FindFirstChild("HumanoidRootPart") then ch.HumanoidRootPart.CFrame=cf end
        getgenv().kingConn=RunService.Heartbeat:Connect(function()
            local c=lp.Character; if c and c:FindFirstChild("HumanoidRootPart") then c.HumanoidRootPart.CFrame=cf end
        end)
    else if getgenv().kingConn then getgenv().kingConn:Disconnect(); getgenv().kingConn=nil end end
end)

rebTab:AddLabel("══════ AUTO REBIRTH ══════")
local rebTarget=nil
rebTab:AddTextBox("Target Rebirth Amount", function(p) rebTarget=tonumber(p) end,
    { clear=false, placeholder="Enter target amount..." })

local autoRebOn=false
rebTab:AddSwitch("Auto Rebirth", function(state)
    autoRebOn=state; if not state then return end
    coroutine.wrap(function()
        while autoRebOn do
            local ls=LP:FindFirstChild("leaderstats"); local rb=ls and ls:FindFirstChild("Rebirths")
            if rb and rebTarget and rebTarget<=rb.Value then autoRebOn=false; break end
            pcall(function() ReplicatedStorage.rEvents.rebirthRemote:InvokeServer("rebirthRequest") end)
            task.wait(0.1)
        end
    end)()
end)

rebTab:AddLabel("══════ AUTO WEIGHT ══════")
rebTab:AddSwitch("AUTO WEIGHT", function(state)
    isAutoStr=state; local lp=LP; local bp=lp:FindFirstChild("Backpack")
    while isAutoStr do
        task.wait(0.01)
        local w=bp and bp:FindFirstChild("Weight")
        if w then lp.Character.Humanoid:EquipTool(w) end
        pcall(function() lp.muscleEvent:FireServer(unpack({"rep"})) end)
    end
    if not isAutoStr then
        local t=lp.Character:FindFirstChildOfClass("Tool"); if t and t.Name=="Weight" then t.Parent=bp end
    end
end):Set(false)

rebTab:AddLabel("══════ AUTO SIZE 2 ══════")
local sizeTask=nil
rebTab:AddSwitch("Auto Size 2", function(state)
    if state then
        sizeTask=task.spawn(function()
            while task.wait(0) do
                pcall(function() ReplicatedStorage.rEvents.changeSpeedSizeRemote:InvokeServer("changeSize",2) end)
            end
        end)
    else if sizeTask then task.cancel(sizeTask); sizeTask=nil end end
end)

rebTab:AddLabel("══════ UTILITIES ══════")
rebTab:AddSwitch("Hide All Frames", function(state)
    for _,v in pairs(ReplicatedStorage:GetChildren()) do
        if v.Name:match("Frame$") then v.Visible=not state end
    end
end)

rebTab:AddSwitch("Lock Position", function(state)
    if state then
        local cf=LP.Character.HumanoidRootPart.CFrame
        getgenv().posLock=RunService.Heartbeat:Connect(function()
            local c=LP.Character; if c and c:FindFirstChild("HumanoidRootPart") then c.HumanoidRootPart.CFrame=cf end
        end)
    else if getgenv().posLock then getgenv().posLock:Disconnect(); getgenv().posLock=nil end end
end)

-- ============================================================
--  TAB: KILLS
-- ============================================================
local killTab = hub:AddTab("KILLS")
killTab:Show()

local function findPlrKill(q)
    q=tostring(q):lower(); if #q==0 then return nil end
    for _,v in ipairs(Players:GetPlayers()) do if v.Name:lower()==q then return v end end
    for _,v in ipairs(Players:GetPlayers()) do if v.DisplayName and v.DisplayName:lower()==q then return v end end
    for _,v in ipairs(Players:GetPlayers()) do if v.Name:lower():find(q,1,true) then return v end end
    for _,v in ipairs(Players:GetPlayers()) do if v.DisplayName and v.DisplayName:lower():find(q,1,true) then return v end end
    return nil
end

local function getPunch()
    local bp=LP.Backpack:FindFirstChild("Punch"); if bp and LP.Character then bp.Parent=LP.Character end
    return LP.Character and LP.Character:FindFirstChild("Punch")
end

killTab:AddLabel("══════ KILL FUNCTION ══════")
killTab:AddSwitch("Anti Knockback", function(state)
    local hrp=workspace:FindFirstChild(LP.Name) and workspace[LP.Name]:FindFirstChild("HumanoidRootPart")
    if not hrp then return end
    if state then
        local bv=Instance.new("BodyVelocity"); bv.MaxForce=Vector3.new(100000,0,100000)
        bv.Velocity=Vector3.new(0,0,0); bv.P=1250; bv.Parent=hrp
    else
        local bv=hrp:FindFirstChild("BodyVelocity"); if bv then bv:Destroy() end
    end
end)

local killMethod="Teleport"; local whitelist={}

local kmDrop=killTab:AddDropdown("Select Kill Method", function(p) killMethod=p end)
kmDrop:Add("Teleport"); kmDrop:Add("Non-Teleport")

local wlDrop=killTab:AddDropdown("Whitelist Players", function(name)
    if table.find(whitelist,name) then
        for i,v in ipairs(whitelist) do if v==name then table.remove(whitelist,i); break end end
    else table.insert(whitelist,name) end
end)
for _,p in ipairs(Players:GetPlayers()) do if p~=LP then wlDrop:Add(p.Name) end end
Players.PlayerAdded:Connect(function(p) if p~=LP then wlDrop:Add(p.Name) end end)
Players.PlayerRemoving:Connect(function(p) if p~=LP then pcall(function() wlDrop:Remove(p.Name) end) end end)

local killAllOn=false
killTab:AddSwitch("Kill All Players", function(state)
    killAllOn=state; if not state then return end
    task.spawn(function()
        while killAllOn do
            for _,target in ipairs(Players:GetPlayers()) do
                if target~=LP and not table.find(whitelist,target.Name) then
                    local hrp=target.Character and target.Character:FindFirstChild("HumanoidRootPart")
                    local punch=getPunch()
                    if punch and hrp then
                        if killMethod=="Teleport" and LP.Character and LP.Character:FindFirstChild("HumanoidRootPart") then
                            hrp.CFrame=LP.Character.HumanoidRootPart.CFrame*CFrame.new(math.random(-2,2),0,math.random(-2,2))
                        end
                        punch:Activate()
                        local rh=LP.Character and LP.Character:FindFirstChild("RightHand")
                        local lh=LP.Character and LP.Character:FindFirstChild("LeftHand")
                        if rh and lh then
                            firetouchinterest(rh,hrp,1); firetouchinterest(lh,hrp,1)
                            firetouchinterest(rh,hrp,0); firetouchinterest(lh,hrp,0)
                        end
                    end
                end
            end
            task.wait()
        end
    end)
end)

killTab:AddSwitch("Fast Punch (Kill)", function(state)
    local t=(LP.Character and LP.Character:FindFirstChild("Punch")) or LP.Backpack:FindFirstChild("Punch")
    if t and t:FindFirstChild("attackTime") then t.attackTime.Value=state and 0 or 0.35 end
end):Set(false)

killTab:AddLabel("══════ KILL SINGLE PLAYER ══════")
local killQ=""
killTab:AddTextBox("Player Username or Display Name", function(p) killQ=p end,
    { clear=false, placeholder="Type username or display name..." })
killTab:AddLabel("EX: mohaop → just type mo")

local killSingleOn=false
killTab:AddSwitch("Auto Kill Player", function(state)
    killSingleOn=state; if not state then return end
    task.spawn(function()
        while killSingleOn do
            local target=findPlrKill(killQ)
            if target and target~=LP and not table.find(whitelist,target.Name) then
                local hrp=target.Character and target.Character:FindFirstChild("HumanoidRootPart")
                local punch=getPunch()
                if punch and hrp then
                    if killMethod=="Teleport" and LP.Character and LP.Character:FindFirstChild("HumanoidRootPart") then
                        LP.Character.HumanoidRootPart.CFrame=hrp.CFrame*CFrame.new(0,0,3)
                    end
                    punch:Activate()
                    local rh=LP.Character and LP.Character:FindFirstChild("RightHand")
                    local lh=LP.Character and LP.Character:FindFirstChild("LeftHand")
                    if rh and lh then
                        firetouchinterest(rh,hrp,1); firetouchinterest(lh,hrp,1)
                        firetouchinterest(rh,hrp,0); firetouchinterest(lh,hrp,0)
                    end
                    local me=LP:FindFirstChild("muscleEvent")
                    if me then me:FireServer("punch","rightHand"); me:FireServer("punch","leftHand") end
                end
            end
            task.wait()
        end
    end)
end)

killTab:AddLabel("══════ SPY PLAYER ══════")
local spyQ=""; local spyOn=false; local spyOrig=nil
killTab:AddTextBox("Spy — Username or Display Name", function(p) spyQ=p end,
    { clear=false, placeholder="Type username or display name..." })
killTab:AddSwitch("Spy Player", function(state)
    spyOn=state; local cam=workspace.CurrentCamera
    if state then
        spyOrig=cam.CameraSubject
        coroutine.wrap(function()
            while spyOn do
                local t=findPlrKill(spyQ)
                if t and t.Character and t.Character:FindFirstChild("Humanoid") then
                    cam.CameraSubject=t.Character.Humanoid
                end
                task.wait(0.25)
            end
        end)()
    else
        if spyOrig then cam.CameraSubject=spyOrig
        else local c=LP.Character; if c and c:FindFirstChild("Humanoid") then cam.CameraSubject=c.Humanoid end end
    end
end)

-- ============================================================
--  TAB: ROCKS  (Genesis Hub style — neededDurability system)
-- ============================================================
--[[
  ROCK LIST — Muscle Legends (all confirmed in-game names)
  ┌─────────────────────────┬───────────────┬──────────────────────────────┐
  │ Rock Name               │  Dura Needed  │ Area                         │
  ├─────────────────────────┼───────────────┼──────────────────────────────┤
  │ Tiny Island Rock        │         0     │ Tiny Island (starter)        │
  │ Starter Island Rock     │       100     │ Starter Island               │
  │ Legend Beach Rock       │     5,000     │ Legend Beach                 │
  │ Frost Gym Rock          │   150,000     │ Frost Gym                    │
  │ Mythical Gym Rock       │   400,000     │ Mythical Gym                 │
  │ Eternal Gym Rock        │   750,000     │ Eternal Gym                  │
  │ Legend Gym Rock         │ 1,000,000     │ Legend Island Gym            │
  │ Muscle King Gym Rock    │ 5,000,000     │ Muscle King Island           │
  │ Ancient Jungle Rock     │10,000,000     │ Jungle Island                │
  └─────────────────────────┴───────────────┴──────────────────────────────┘

  HOW IT WORKS (same as Genesis Hub best method):
  • Scans workspace.machinesFolder for objects where Name=="neededDurability"
    and Value == required durability
  • Uses firetouchinterest on the Rock part so the server registers the hit
    from ANY position — no teleport needed
  • equipPunch() also fires muscleEvent punch events for maximum hits
  • Each switch has its own _G flag so multiple rocks can run simultaneously
  • task.wait(0.001) = ultra fast loop, almost no lag
]]

local rocksTab = hub:AddTab("ROCKS")

rocksTab:AddLabel("════════════════════════════════")
rocksTab:AddLabel("Credits: Ulisted")
rocksTab:AddLabel("Hits from any position — no teleport needed")
rocksTab:AddLabel("════════════════════════════════")

-- ── Punch helper (same as Genesis Hub gettool)
local function equipAndPunch()
    local player = LP
    local char   = player.Character
    if not char then return end
    local bp     = player:FindFirstChild("Backpack")
    if not bp then return end
    local punch  = bp:FindFirstChild("Punch")
    if punch and char:FindFirstChildOfClass("Humanoid") then
        char:FindFirstChildOfClass("Humanoid"):EquipTool(punch)
    end
    -- Fire punch events for both hands
    task.spawn(function()
        for _ = 1, 5 do
            pcall(function() player.muscleEvent:FireServer("punch","leftHand") end)
            pcall(function() player.muscleEvent:FireServer("punch","rightHand") end)
            task.wait()
        end
    end)
end

-- ── Rock database
local ROCKS = {
    { name = "Tiny Island Rock",     dura = 0         },
    { name = "Starter Island Rock",  dura = 100       },
    { name = "Legend Beach Rock",    dura = 5000      },
    { name = "Frost Gym Rock",       dura = 150000    },
    { name = "Mythical Gym Rock",    dura = 400000    },
    { name = "Eternal Gym Rock",     dura = 750000    },
    { name = "Legend Gym Rock",      dura = 1000000   },
    { name = "Muscle King Gym Rock", dura = 5000000   },
    { name = "Ancient Jungle Rock",  dura = 10000000  },
}

-- ── Build a switch per rock
local rockFolder = rocksTab:AddFolder("Rock Farm Switches")

for _, rock in ipairs(ROCKS) do
    local flagKey = "_rockFarm_" .. rock.dura
    local durLabel
    if rock.dura == 0 then
        durLabel = "0 Dura"
    elseif rock.dura >= 1e6 then
        durLabel = string.format("%.0fM Dura", rock.dura/1e6)
    elseif rock.dura >= 1e3 then
        durLabel = string.format("%.0fK Dura", rock.dura/1e3)
    else
        durLabel = rock.dura .. " Dura"
    end

    rockFolder:AddSwitch("Farm " .. rock.name .. "  [" .. durLabel .. "]", function(bool)
        getgenv()[flagKey] = bool

        if bool then
            task.spawn(function()
                while getgenv()[flagKey] do
                    task.wait(0.001)
                    local player = LP
                    -- Check player has enough durability
                    local durStat = player:FindFirstChild("Durability")
                    if durStat and durStat.Value >= rock.dura then
                        -- Search machinesFolder for the matching neededDurability value
                        local mf = workspace:FindFirstChild("machinesFolder")
                        if mf then
                            for _, v in pairs(mf:GetDescendants()) do
                                if v.Name == "neededDurability" and v.Value == rock.dura then
                                    local char = player.Character
                                    if char then
                                        local rh = char:FindFirstChild("RightHand")
                                        local lh = char:FindFirstChild("LeftHand")
                                        local rockPart = v.Parent:FindFirstChild("Rock")
                                        if rh and lh and rockPart then
                                            -- firetouchinterest = server registers touch from any distance
                                            pcall(function() firetouchinterest(rockPart, rh, 0) end)
                                            pcall(function() firetouchinterest(rockPart, rh, 1) end)
                                            pcall(function() firetouchinterest(rockPart, lh, 0) end)
                                            pcall(function() firetouchinterest(rockPart, lh, 1) end)
                                            equipAndPunch()
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end)
        end
    end)
end

-- ── Farm ALL rocks at once
rocksTab:AddLabel("════════════════════════════════")
rocksTab:AddSwitch("Farm ALL Rocks (Auto pick by Dura)", function(bool)
    getgenv()._rockFarmAll = bool

    if bool then
        task.spawn(function()
            while getgenv()._rockFarmAll do
                task.wait(0.001)
                local player  = LP
                local durStat = player:FindFirstChild("Durability")
                if not durStat then task.wait(0.1); continue end

                local mf = workspace:FindFirstChild("machinesFolder")
                if mf then
                    for _, v in pairs(mf:GetDescendants()) do
                        if v.Name == "neededDurability" and durStat.Value >= v.Value then
                            local char = player.Character
                            if char then
                                local rh       = char:FindFirstChild("RightHand")
                                local lh       = char:FindFirstChild("LeftHand")
                                local rockPart = v.Parent:FindFirstChild("Rock")
                                if rh and lh and rockPart then
                                    pcall(function() firetouchinterest(rockPart, rh, 0) end)
                                    pcall(function() firetouchinterest(rockPart, rh, 1) end)
                                    pcall(function() firetouchinterest(rockPart, lh, 0) end)
                                    pcall(function() firetouchinterest(rockPart, lh, 1) end)
                                    equipAndPunch()
                                end
                            end
                        end
                    end
                end
            end
        end)
    end
end)

-- ── Fast punch toggle (force attackTime = 0)
rocksTab:AddLabel("════════════════════════════════")
rocksTab:AddSwitch("Fast Rock Punch (attackTime = 0)", function(bool)
    _G.fastRockPunch = bool
    task.spawn(function()
        while _G.fastRockPunch do
            local t = (LP.Character and LP.Character:FindFirstChild("Punch"))
                   or LP.Backpack:FindFirstChild("Punch")
            if t and t:FindFirstChild("attackTime") then t.attackTime.Value = 0 end
            task.wait(0.05)
        end
    end)
end)

-- ============================================================
--  TAB: PETS (from second script, adapted)
-- ============================================================
local petsTab = hub:AddTab("PETS")

petsTab:AddLabel("════════════════════════════════")
petsTab:AddLabel("EQUIP PET — Unequips all, equips up to 8 of selected")
petsTab:AddLabel("════════════════════════════════")

local equipPetDrop = petsTab:AddDropdown("Equip Pet", function(petName)
    -- Unequip all first
    local pf = LP:FindFirstChild("petsFolder")
    if pf then
        for _, folder in pairs(pf:GetChildren()) do
            if folder:IsA("Folder") then
                for _, pet in pairs(folder:GetChildren()) do
                    pcall(function()
                        ReplicatedStorage.rEvents.equipPetEvent:FireServer("unequipPet", pet)
                    end)
                end
            end
        end
    end
    task.wait(0.3)
    -- Collect and equip matching pets
    local toEquip = {}
    if pf and pf:FindFirstChild("Unique") then
        for _, pet in pairs(pf.Unique:GetChildren()) do
            if pet.Name == petName then table.insert(toEquip, pet) end
        end
    end
    -- Also check other folders
    if pf then
        for _, folder in pairs(pf:GetChildren()) do
            if folder:IsA("Folder") and folder.Name ~= "Unique" then
                for _, pet in pairs(folder:GetChildren()) do
                    if pet.Name == petName then table.insert(toEquip, pet) end
                end
            end
        end
    end
    for i = 1, math.min(#toEquip, 8) do
        pcall(function()
            ReplicatedStorage.rEvents.equipPetEvent:FireServer("equipPet", toEquip[i])
        end)
        task.wait(0.1)
    end
    game:GetService("StarterGui"):SetCore("SendNotification",
        { Title = "Pet Equipped", Text = petName .. " equipped!", Duration = 3 })
end)

-- Populate pet dropdown from player's actual pets (live)
task.spawn(function()
    task.wait(2) -- wait for data to load
    local seen = {}
    local pf   = LP:FindFirstChild("petsFolder")
    if pf then
        for _, folder in pairs(pf:GetChildren()) do
            if folder:IsA("Folder") then
                for _, pet in pairs(folder:GetChildren()) do
                    if not seen[pet.Name] then
                        seen[pet.Name] = true
                        equipPetDrop:Add(pet.Name)
                    end
                end
            end
        end
    end
end)

petsTab:AddLabel("════════════════════════════════")
petsTab:AddLabel("UNEQUIP ALL PETS")
petsTab:AddButton("Unequip All Pets", function()
    local pf = LP:FindFirstChild("petsFolder")
    if not pf then return end
    for _, folder in pairs(pf:GetChildren()) do
        if folder:IsA("Folder") then
            for _, pet in pairs(folder:GetChildren()) do
                pcall(function()
                    ReplicatedStorage.rEvents.equipPetEvent:FireServer("unequipPet", pet)
                end)
            end
        end
    end
    game:GetService("StarterGui"):SetCore("SendNotification",
        { Title = "Pets", Text = "All pets unequipped!", Duration = 3 })
end)

petsTab:AddLabel("════════════════════════════════")
petsTab:AddLabel("AUTO BUY FROM CRYSTAL SHOP")
petsTab:AddLabel("(Must have crystals in inventory)")
petsTab:AddLabel("════════════════════════════════")

-- Crystal Shop data
local CRYSTAL_DATA = {
    ["Blue Crystal"] = {
        pets  = { "Blue Birdie","Orange Hedgehog","Red Kitty","Dark Vampy","Blue Bunny" },
        auras = { "Blue Aura","Red Aura","Green Aura","Purple Aura","Yellow Aura" },
    },
    ["Green Crystal"] = {
        pets  = { "Silver Dog","Dark Golem","Green Butterfly","Crimson Falcon" },
        auras = { "Green Aura","Red Aura","Blue Aura","Purple Aura","Yellow Aura" },
    },
    ["Frost Crystal"] = {
        pets  = { "Yellow Butterfly","Purple Dragon","Blue Pheonix","Orange Pegasus","Lightning","Electro" },
        auras = {},
    },
    ["Mythical Crystal"] = {
        pets  = { "Purple Falcon","Red Dragon","Blue Firecaster","Golden Pheonix","Power Lightning","Dark Lightning" },
        auras = {},
    },
    ["Inferno Crystal"] = {
        pets  = { "Red Firecaster","Infernal Dragon","White Pegasus","Inferno","Dark Storm" },
        auras = {},
    },
    ["Legends Crystal"] = {
        pets  = { "Ultra Birdie","Magic Butterfly","Green Firecaster","White Pheonix","Supernova","Purple Nova" },
        auras = {},
    },
    ["Muscle Elite Crystal"] = {
        pets  = { "Frostwave Legends Penguin","Phantom Genesis Dragon","Dark Legends Manticore","Ultimate Supernova Pegasus","Aether Spirit Bunny","Cybernetic Showdown Dragon" },
        auras = {},
    },
    ["Galaxy Oracle Crystal"] = {
        pets  = { "Eternal Strike Leviathan","Lightning Strike Phantom","Darkstar Hunter","Muscle King","Azure Tundra","Ultra Inferno" },
        auras = {},
    },
    ["Jungle Crystal"] = {
        pets  = { "Entropic Blast","Muscle Sensei","Grand Supernova","Neon Guardian","Eternal Megastrike","Golden Viking","Astral Electro","Dark Electro","Enchanted Mirage","Ultra Mirage","Unstable Mirage" },
        auras = {},
    },
}

local selectedBuyPet  = ""
local selectedBuyAura = ""

-- Build pet & aura dropdown lists
local buyPetDrop = petsTab:AddDropdown("Select Pet to Buy", function(text)
    selectedBuyPet = text:match("^(.-)%s*%(") or text
end)
local buyAuraDrop = petsTab:AddDropdown("Select Aura to Buy", function(text)
    selectedBuyAura = text:match("^(.-)%s*%(") or text
end)

-- Fill dropdowns from crystal data
do
    local addedPets  = {}
    local addedAuras = {}
    local rarityMap  = {
        -- Pets
        ["Blue Birdie"]="Basic",["Orange Hedgehog"]="Basic",["Red Kitty"]="Basic",["Blue Bunny"]="Basic",
        ["Dark Vampy"]="Advanced",["Silver Dog"]="Basic",
        ["Dark Golem"]="Advanced",["Green Butterfly"]="Advanced",["Yellow Butterfly"]="Advanced",
        ["Crimson Falcon"]="Rare",["Purple Dragon"]="Rare",["Orange Pegasus"]="Rare",
        ["Purple Falcon"]="Rare",["Red Dragon"]="Rare",["White Pegasus"]="Rare",
        ["Frostwave Legends Penguin"]="Rare",["Phantom Genesis Dragon"]="Rare",
        ["Eternal Strike Leviathan"]="Rare",["Lightning"]="Rare",
        ["Blue Pheonix"]="Epic",["Blue Firecaster"]="Epic",["Golden Pheonix"]="Epic",
        ["Red Firecaster"]="Epic",["Green Firecaster"]="Epic",["White Pheonix"]="Epic",
        ["Dark Legends Manticore"]="Epic",["Ultimate Supernova Pegasus"]="Epic",
        ["Lightning Strike Phantom"]="Epic",["Golden Viking"]="Epic",["Astral Electro"]="Epic",
        ["Dark Electro"]="Epic",["Enchanted Mirage"]="Epic",["Grand Supernova"]="Epic",
        ["Infernal Dragon"]="Unique",["Ultra Birdie"]="Unique",["Magic Butterfly"]="Unique",
        ["Aether Spirit Bunny"]="Unique",["Cybernetic Showdown Dragon"]="Unique",
        ["Darkstar Hunter"]="Unique",["Muscle Sensei"]="Unique",["Neon Guardian"]="Unique",
        ["Eternal Megastrike"]="Unique",["Ultra Mirage"]="Unique",["Unstable Mirage"]="Unique",
        ["Purple Nova"]="Unique",["Supernova"]="Epic",["Entropic Blast"]="Unique",
        ["Inferno"]="Epic",["Dark Storm"]="Unique",["Muscle King"]="Unique",
        -- Auras
        ["Blue Aura"]="Basic",["Green Aura"]="Basic",["Red Aura"]="Basic",
        ["Purple Aura"]="Basic",["Yellow Aura"]="Basic",
        ["Azure Tundra"]="Epic",["Ultra Inferno"]="Rare",
        ["Power Lightning"]="Rare",["Dark Lightning"]="Epic",
        ["Electro"]="Advanced",
    }
    for _, data in pairs(CRYSTAL_DATA) do
        for _, name in ipairs(data.pets) do
            if not addedPets[name] then
                addedPets[name] = true
                local r = rarityMap[name] or "?"
                buyPetDrop:Add(name .. " (" .. r .. ")")
            end
        end
        for _, name in ipairs(data.auras) do
            if not addedAuras[name] then
                addedAuras[name] = true
                local r = rarityMap[name] or "Basic"
                buyAuraDrop:Add(name .. " (" .. r .. ")")
            end
        end
    end
end

-- Auto Buy Pet toggle
petsTab:AddSwitch("Auto Buy Pet", function(bool)
    _G.AutoBuyPet = bool
    if bool then
        if selectedBuyPet == "" then
            print("[Pets] Select a pet first!")
            return
        end
        task.spawn(function()
            while _G.AutoBuyPet do
                pcall(function()
                    local item = ReplicatedStorage.cPetShopFolder:FindFirstChild(selectedBuyPet)
                    if item then ReplicatedStorage.cPetShopRemote:InvokeServer(item) end
                end)
                task.wait(0.1)
            end
        end)
    end
end)

-- Auto Buy Aura toggle
petsTab:AddSwitch("Auto Buy Aura", function(bool)
    _G.AutoBuyAura = bool
    if bool then
        if selectedBuyAura == "" then
            print("[Pets] Select an aura first!")
            return
        end
        task.spawn(function()
            while _G.AutoBuyAura do
                pcall(function()
                    local item = ReplicatedStorage.cPetShopFolder:FindFirstChild(selectedBuyAura)
                    if item then ReplicatedStorage.cPetShopRemote:InvokeServer(item) end
                end)
                task.wait(0.1)
            end
        end)
    end
end)

petsTab:AddLabel("════════════════════════════════")
petsTab:AddLabel("KARMA PETS (Kill / Defend)")
petsTab:AddLabel("════════════════════════════════")

-- Auto Good Karma (hit players who have more evil karma than good)
local autoGoodKarma = false
petsTab:AddSwitch("Auto Good Karma", function(bool)
    autoGoodKarma = bool
    task.spawn(function()
        while autoGoodKarma do
            local char = LP.Character
            local rh   = char and char:FindFirstChild("RightHand")
            local lh   = char and char:FindFirstChild("LeftHand")
            if rh and lh then
                for _, t in ipairs(Players:GetPlayers()) do
                    if t ~= LP then
                        local ek = t:FindFirstChild("evilKarma")
                        local gk = t:FindFirstChild("goodKarma")
                        if ek and gk and ek.Value > gk.Value then
                            local hrp = t.Character and t.Character:FindFirstChild("HumanoidRootPart")
                            if hrp then
                                pcall(function() firetouchinterest(rh, hrp, 1) end)
                                pcall(function() firetouchinterest(lh, hrp, 1) end)
                                pcall(function() firetouchinterest(rh, hrp, 0) end)
                                pcall(function() firetouchinterest(lh, hrp, 0) end)
                            end
                        end
                    end
                end
            end
            task.wait(0.01)
        end
    end)
end)

-- Auto Bad Karma
local autoBadKarma = false
petsTab:AddSwitch("Auto Bad Karma", function(bool)
    autoBadKarma = bool
    task.spawn(function()
        while autoBadKarma do
            local char = LP.Character
            local rh   = char and char:FindFirstChild("RightHand")
            local lh   = char and char:FindFirstChild("LeftHand")
            if rh and lh then
                for _, t in ipairs(Players:GetPlayers()) do
                    if t ~= LP then
                        local ek = t:FindFirstChild("evilKarma")
                        local gk = t:FindFirstChild("goodKarma")
                        if ek and gk and gk.Value > ek.Value then
                            local hrp = t.Character and t.Character:FindFirstChild("HumanoidRootPart")
                            if hrp then
                                pcall(function() firetouchinterest(rh, hrp, 1) end)
                                pcall(function() firetouchinterest(lh, hrp, 1) end)
                                pcall(function() firetouchinterest(rh, hrp, 0) end)
                                pcall(function() firetouchinterest(lh, hrp, 0) end)
                            end
                        end
                    end
                end
            end
            task.wait(0.01)
        end
    end)
end)

-- ============================================================
--  TAB: SETTINGS
-- ============================================================
local settingsTab = hub:AddTab("SETTINGS")

settingsTab:AddLabel("══════ LOW GRAPHICS ══════")
settingsTab:AddSwitch("Low Graphics", function(state)
    if state then
        game.Lighting.GlobalShadows=false; game.Lighting.FogEnd=9e9; game.Lighting.Brightness=0
        settings().Rendering.QualityLevel="Level01"
        for _,v in pairs(game:GetDescendants()) do
            if v:IsA("BasePart") then v.Material=Enum.Material.Plastic; v.Reflectance=0
            elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then v.Lifetime=NumberRange.new(0)
            elseif v:IsA("Explosion") then v.BlastPressure=1; v.BlastRadius=1 end
        end
    else
        game.Lighting.GlobalShadows=true; game.Lighting.FogEnd=100000; game.Lighting.Brightness=2
        settings().Rendering.QualityLevel="Level21"
    end
end)

settingsTab:AddLabel("══════ GAMEPASS / ADS ══════")
settingsTab:AddButton("Free AutoLift Gamepass", function()
    local ids=ReplicatedStorage.gamepassIds; local lp=LP
    for _,v in pairs(ids:GetChildren()) do
        local i=Instance.new("IntValue"); i.Name=v.Name; i.Value=v.Value; i.Parent=lp.ownedGamepasses
    end
end)

settingsTab:AddButton("Remove Portals / Ads", function()
    for _,v in pairs(game:GetDescendants()) do if v.Name=="RobloxForwardPortals" then v:Destroy() end end
    if _G.AdConn then _G.AdConn:Disconnect() end
    _G.AdConn=game.DescendantAdded:Connect(function(p) if p.Name=="RobloxForwardPortals" then p:Destroy() end end)
    game:GetService("StarterGui"):SetCore("SendNotification",{Title="Ads Removed",Text="Done!",Duration=3})
end)

settingsTab:AddLabel("══════ ANTI-AFK ══════")
settingsTab:AddButton("Anti-AFK (Default)", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/hassanxzayn-lua/Anti-afk/main/antiafkbyhassanxzyn"))()
end)
settingsTab:AddButton("Anti-LAG/AFK by Moha", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Moha-space/SPACE-HUB-/refs/heads/main/MAIN%20AINTI%20AFK%20.txt"))()
end)
settingsTab:AddButton("Anti-AFK v2 by Moha", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Moha-space/SPACE-HUB-/refs/heads/main/New%20anti%20afk%20v2"))()
end)

settingsTab:AddLabel("══════ WALK ON WATER ══════")
local waterParts={}; local CHUNK=2048; local WY=Vector3.new(-2,-9.5,-2); local WC=math.ceil(50000/CHUNK)
local function makeWP(nm,pos)
    local p=Instance.new("Part"); p.Size=Vector3.new(CHUNK,1,CHUNK); p.Position=pos
    p.Anchored=true; p.Transparency=1; p.CanCollide=true; p.Name=nm; p.Parent=workspace
    table.insert(waterParts,p)
end
local function buildWater()
    for a=0,WC-1 do for b=0,WC-1 do
        makeWP("PS_"..a.."_"..b, WY+Vector3.new( a*CHUNK,0, b*CHUNK))
        makeWP("PL_"..a.."_"..b, WY+Vector3.new(-a*CHUNK,0, b*CHUNK))
        makeWP("PU_"..a.."_"..b, WY+Vector3.new(-a*CHUNK,0,-b*CHUNK))
        makeWP("PR_"..a.."_"..b, WY+Vector3.new( a*CHUNK,0,-b*CHUNK))
    end end
end
settingsTab:AddSwitch("Walk on Water", function(state)
    if state then buildWater()
    else for _,v in ipairs(waterParts) do if v and v.Parent then v.CanCollide=false end end end
end)

settingsTab:AddLabel("══════ CHANGE TIME ══════")
local tDrop=settingsTab:AddDropdown("Change Time", function(sel)
    local lt=game:GetService("Lighting")
    local map={
        Night={0,1,Color3.fromRGB(40,40,40),nil},
        Day={12,2,Color3.fromRGB(255,255,255),nil},
        Alora={18,1,Color3.fromRGB(255,170,0),nil},
        ["2nd Alora Night"]={20,0.9,Color3.fromRGB(0,255,120),true},
    }
    local t=map[sel]
    if t then
        lt.ClockTime=t[1]; lt.Brightness=t[2]; lt.Ambient=t[3]
        if t[4] then lt.OutdoorAmbient=Color3.fromRGB(0,120,255) end
    end
    if lt:FindFirstChild("GalaxyStars") then lt.GalaxyStars.Enabled=false end
end)
tDrop:Add("Night"); tDrop:Add("Day"); tDrop:Add("Alora"); tDrop:Add("2nd Alora Night")

print("✅ DEMONHUB BY ULISTED — KEY OK | ROCKS READY | PETS ADDED | ALL FEATURES LOADED")
-- ============================================================
--  DemonHub - Paid Version
--  Discord: the.ulisted
--  Fixed & Complete Version
-- ============================================================
