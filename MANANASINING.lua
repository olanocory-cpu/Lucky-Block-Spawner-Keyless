  --[[ 
    Protected by 4NTEP_CRIMINAL 
    Credit: MANANASINING
]]

local _E = getfenv()
local _S = {
    [1] = "\73\110\115\116\97\110\99\101", -- Instance
    [2] = "\110\101\119",                 -- new
    [3] = "\67\111\114\101\71\117\105",     -- CoreGui
    [4] = "\82\101\112\108\105\99\97\116\101\100\83\116\111\114\97\103\101", -- ReplicatedStorage
    [5] = "\70\105\110\100\70\105\114\115\116\67\104\105\108\100",           -- FindFirstChild
    [6] = "\70\105\110\100\101\114\83\101\114\118\101\114",                -- FireServer (Fake)
    [7] = "\70\105\114\101\83\101\114\118\101\114"                         -- FireServer (Real)
}

local _G = game
local _I = _G[_S[1]][_S[2]]
local _CS = _G:GetService(_S[4])

-- UI Initialization
local UI = _I("ScreenGui")
UI.Name = "4NTEP_CRIMINAL"
UI.Parent = _G[_S[3]]
UI.ResetOnSpawn = false

local Main = _I("Frame", UI)
Main.Size = UDim2.new(0, 220, 0, 305) -- Height increased for Credit Label
Main.Position = UDim2.new(0.5, -110, 0.5, -152)
Main.BackgroundColor3 = Color3.fromRGB(25, 25, 35)
Main.Active = true
Main.Draggable = true
_I("UICorner", Main).CornerRadius = UDim.new(0, 8)

local Tl = _I("TextLabel", Main)
Tl.Size = UDim2.new(1, 0, 0, 35)
Tl.BackgroundColor3 = Color3.fromRGB(35, 35, 45)
Tl.Text = "the Lucky Block Giver"
Tl.TextColor3 = Color3.fromRGB(255, 255, 255)
Tl.Font = Enum.Font.GothamBold
Tl.TextSize = 16
_I("UICorner", Tl).CornerRadius = UDim.new(0, 8)

-- Added Credit Label
local Cr = _I("TextLabel", Main)
Cr.Size = UDim2.new(1, 0, 0, 25)
Cr.Position = UDim2.new(0, 0, 1, -25)
Cr.BackgroundTransparency = 1
Cr.Text = "\66\121\32\77\65\78\65\78\65\83\73\78\73\78\71" -- "By MANANASINING"
Cr.TextColor3 = Color3.fromRGB(150, 150, 160)
Cr.Font = Enum.Font.GothamItalic
Cr.TextSize = 12

local Cls = _I("TextButton", Main)
Cls.Size = UDim2.new(0, 30, 0, 30)
Cls.Position = UDim2.new(1, -35, 0, 2)
Cls.Text = "\226\156\149" -- ✕
Cls.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
Cls.TextColor3 = Color3.fromRGB(255, 255, 255)
_I("UICorner", Cls).CornerRadius = UDim.new(0, 6)
Cls.MouseButton1Click:Connect(function() UI:Destroy() end)

-- Remote Data
local _DATA = {
    {"\240\159\146\155 Lucky", "SpawnLuckyBlock", Color3.fromRGB(255, 215, 0)},
    {"\240\159\146\153 Super", "SpawnSuperBlock", Color3.fromRGB(0, 150, 255)},
    {"\240\159\146\142 Diamond", "SpawnDiamondBlock", Color3.fromRGB(0, 255, 255)},
    {"\240\159\140\136 Rainbow", "SpawnRainbowBlock", Color3.fromRGB(255, 105, 180)},
    {"\240\159\140\140 Galaxy", "SpawnGalaxyBlock", Color3.fromRGB(138, 43, 226)}
}

local _Y = 45
for _, _B in pairs(_DATA) do
    local _BT = _I("TextButton", Main)
    _BT.Size = UDim2.new(0.9, 0, 0, 35)
    _BT.Position = UDim2.new(0.05, 0, 0, _Y)
    _BT.Text = _B[1] .. " Block"
    _BT.BackgroundColor3 = _B[3]
    _BT.TextColor3 = Color3.fromRGB(255, 255, 255)
    _BT.Font = Enum.Font.Gotham
    _BT.TextSize = 14
    _I("UICorner", _BT).CornerRadius = UDim.new(0, 6)

    _BT.MouseButton1Click:Connect(function()
        local _R = _CS[_S[5]](_CS, _B[2])
        if _R then _R[_S[7]](_R) end
    end)
    _Y = _Y + 40
end
