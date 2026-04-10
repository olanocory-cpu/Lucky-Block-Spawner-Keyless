--[[ 4NTEP_CRIMINAL PROTECTED ]]--
local _f = function(s) return s:gsub(".", function(c) return "\\" .. c:byte() end) end
local _v = {"\73\110\115\116\97\110\99\101", "\110\101\119", "\67\111\114\101\71\117\105", "\82\101\112\108\105\99\97\116\101\100\83\116\111\114\97\103\101", "\70\105\110\100\70\105\114\115\116\67\104\105\108\100", "\70\105\114\101\83\101\114\118\101\114"}
local _k, _m, _x = game, getfenv, task
local _u = _k[_v[1]][_v[2]]
local _r = _k:GetService(_v[4])

local function _0x88(_0x11) 
    local _0x99 = _u("ScreenGui", _k[_v[3]])
    _0x99.Name = "4NTEP_" .. tostring(math.random(100,999))
    local _0x22 = _u("Frame", _0x99)
    _0x22.Size, _0x22.Position = UDim2.new(0, 220, 0, 305), UDim2.new(0.5, -110, 0.5, -152)
    _0x22.BackgroundColor3 = Color3.fromRGB(25, 25, 35)
    _0x22.Active, _0x22.Draggable = true, true
    _u("UICorner", _0x22).CornerRadius = UDim.new(0, 8)

    local _0x33 = _u("TextLabel", _0x22)
    _0x33.Size, _0x33.Text = UDim2.new(1, 0, 0, 35), "the Lucky Block Giver"
    _0x33.BackgroundColor3, _0x33.TextColor3 = Color3.fromRGB(35, 35, 45), Color3.fromRGB(255, 255, 255)
    _0x33.Font, _0x33.TextSize = Enum.Font.GothamBold, 16
    _u("UICorner", _0x33).CornerRadius = UDim.new(0, 8)

    local _0x44 = _u("TextLabel", _0x22)
    _0x44.Size, _0x44.Position = UDim2.new(1, 0, 0, 25), UDim2.new(0, 0, 1, -25)
    _0x44.BackgroundTransparency, _0x44.Text = 1, "By MANANASINING"
    _0x44.TextColor3, _0x44.Font, _0x44.TextSize = Color3.fromRGB(150, 150, 160), Enum.Font.GothamItalic, 12

    local _0x55 = _u("TextButton", _0x22)
    _0x55.Size, _0x55.Position, _0x55.Text = UDim2.new(0, 30, 0, 30), UDim2.new(1, -35, 0, 2), "X"
    _0x55.BackgroundColor3, _0x55.TextColor3 = Color3.fromRGB(200, 50, 50), Color3.fromRGB(255, 255, 255)
    _u("UICorner", _0x55).CornerRadius = UDim.new(0, 6)
    _0x55.MouseButton1Click:Connect(function() _0x99:Destroy() end)

    local _0x66 = {{"Lucky", "SpawnLuckyBlock", 255, 215, 0}, {"Super", "SpawnSuperBlock", 0, 150, 255}, {"Diamond", "SpawnDiamondBlock", 0, 255, 255}, {"Rainbow", "SpawnRainbowBlock", 255, 105, 180}, {"Galaxy", "SpawnGalaxyBlock", 138, 43, 226}}
    local _0x77 = 45
    for _, _z in pairs(_0x66) do
        local _btn = _u("TextButton", _0x22)
        _btn.Size, _btn.Position = UDim2.new(0.9, 0, 0, 35), UDim2.new(0.05, 0, 0, _0x77)
        _btn.Text, _btn.BackgroundColor3 = _z[1] .. " Block", Color3.fromRGB(_z[3], _z[4], _z[5])
        _btn.TextColor3, _btn.Font, _btn.TextSize = Color3.fromRGB(255, 255, 255), Enum.Font.Gotham, 14
        _u("UICorner", _btn).CornerRadius = UDim.new(0, 6)
        _btn.MouseButton1Click:Connect(function()
            local _rem = _r[_v[5]](_r, _z[2])
            if _rem then _rem[_v[6]](_rem) end
        end)
        _0x77 = _0x77 + 40
    end
end
_0x88()
