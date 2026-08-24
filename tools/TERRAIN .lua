-- =========================================================
-- PANEL BRUSH V3
-- BY BAMZ
-- PROJECT 2026
-- + PAINT MODE (replace existing terrain material)
-- + SCROLLING FRAME
-- + LEAFY GRASS & PAVEMENT MATERIALS
-- + PART TO TERRAIN CONVERSION (click part, choose material)
-- + WIND SETTINGS IN GENERATED SCRIPT
-- =========================================================

local Players         = game:GetService("Players")
local TweenService    = game:GetService("TweenService")
local RunService      = game:GetService("RunService")
local TextService     = game:GetService("TextService")
local UserInputService= game:GetService("UserInputService")
local Terrain         = workspace.Terrain
local player          = Players.LocalPlayer
local playerGui       = player:WaitForChild("PlayerGui")
local mouse           = player:GetMouse()

-- =========================================================
-- DRAGGABLE
-- =========================================================
local function makeDraggable(frame)
    local dragging, dragStart, startPos = false, nil, nil
    frame.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1
            or input.UserInputType == Enum.UserInputType.Touch then
            dragging  = true
            dragStart = input.Position
            startPos  = frame.Position
            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then dragging = false end
            end)
        end
    end)
    frame.InputChanged:Connect(function(input)
        if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement
            or input.UserInputType == Enum.UserInputType.Touch) then
            local d = input.Position - dragStart
            TweenService:Create(frame, TweenInfo.new(0), {
                Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + d.X,
                startPos.Y.Scale, startPos.Y.Offset + d.Y)
            }):Play()
        end
    end)
end

-- =========================================================
-- COLORS
-- =========================================================
local C = {
    BG      = Color3.fromRGB(8,  8,  10),
    SURFACE = Color3.fromRGB(14, 14, 18),
    CARD    = Color3.fromRGB(20, 20, 26),
    CARD2   = Color3.fromRGB(26, 26, 34),
    BORDER  = Color3.fromRGB(36, 36, 48),
    BORDBRT = Color3.fromRGB(55, 55, 75),
    TEXT    = Color3.fromRGB(228, 228, 238),
    SUBTEXT = Color3.fromRGB(95,  95, 120),
    DIM     = Color3.fromRGB(52,  52,  68),
    RED     = Color3.fromRGB(205, 42,  55),
    GREEN   = Color3.fromRGB(30,  150, 80),
    BLUE    = Color3.fromRGB(60,  120, 255),
    YELLOW  = Color3.fromRGB(210, 165, 25),
    ORANGE  = Color3.fromRGB(210, 100, 20),
    ACCENT  = Color3.fromRGB(90,  90, 180),
    WHITE   = Color3.fromRGB(255, 255, 255),
    CYAN    = Color3.fromRGB(40,  200, 220),
    PURPLE  = Color3.fromRGB(160, 80, 220),
    LEAFY   = Color3.fromRGB(80, 140, 50),
    PAVEMENT= Color3.fromRGB(80, 80, 90),
}

-- =========================================================
-- HELPERS
-- =========================================================
local function mkCorner(r, p)
    local c = Instance.new("UICorner")
    c.CornerRadius = UDim.new(0, r)
    c.Parent = p
    return c
end
local function mkStroke(t, col, p)
    local s = Instance.new("UIStroke")
    s.Thickness = t
    s.Color = col
    s.Parent = p
    return s
end
local function mkPadding(top, bot, left, right, p)
    local pad = Instance.new("UIPadding")
    pad.PaddingTop    = UDim.new(0, top)
    pad.PaddingBottom = UDim.new(0, bot)
    pad.PaddingLeft   = UDim.new(0, left)
    pad.PaddingRight  = UDim.new(0, right)
    pad.Parent = p
    return pad
end

-- =========================================================
-- TERRAIN DATA
-- =========================================================
local terrainData = {}  -- Draw/Erase strokes
local paintData   = {}  -- Paint strokes (pos + size + material target)
local materialToNumber = {
    [Enum.Material.Grass]       = 1,  [Enum.Material.Rock]        = 2,
    [Enum.Material.Water]       = 3,  [Enum.Material.Ground]      = 4,
    [Enum.Material.Sand]        = 5,  [Enum.Material.Snow]        = 6,
    [Enum.Material.Ice]         = 7,  [Enum.Material.Mud]         = 8,
    [Enum.Material.Sandstone]   = 9,  [Enum.Material.Limestone]   = 10,
    [Enum.Material.Cobblestone] = 11, [Enum.Material.Basalt]      = 12,
    [Enum.Material.Concrete]    = 13, [Enum.Material.Salt]        = 14,
    [Enum.Material.LeafyGrass]  = 15, [Enum.Material.Pavement]    = 16,
}

-- =========================================================
-- SCREEN GUI
-- =========================================================
local screenGui = Instance.new("ScreenGui")
screenGui.Name           = "BamzBrushUI"
screenGui.ResetOnSpawn   = false
screenGui.IgnoreGuiInset = true
screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
screenGui.Parent         = playerGui

-- =========================================================
-- PANEL CONFIG
-- =========================================================
local PANEL_W = 218
local PANEL_H = 620

-- =========================================================
-- FLOAT TOGGLE BUTTON
-- =========================================================
local floatBtn = Instance.new("TextButton")
floatBtn.Size             = UDim2.new(0, 38, 0, 38)
floatBtn.Position         = UDim2.new(0, 180, 0, 14)
floatBtn.BackgroundColor3 = C.SURFACE
floatBtn.BorderSizePixel  = 0
floatBtn.Text             = "BM"
floatBtn.TextColor3       = C.TEXT
floatBtn.TextSize         = 13
floatBtn.Font             = Enum.Font.GothamBold
floatBtn.Parent           = screenGui
mkCorner(9, floatBtn)
mkStroke(1, C.BORDBRT, floatBtn)

-- =========================================================
-- MAIN PANEL
-- =========================================================
local mainPanel = Instance.new("Frame")
mainPanel.Name             = "MainPanel"
mainPanel.Size             = UDim2.new(0, 0, 0, 0)
mainPanel.Position         = UDim2.new(0, 14, 0, 60)
mainPanel.BackgroundColor3 = C.BG
mainPanel.BorderSizePixel  = 0
mainPanel.ClipsDescendants = true
mainPanel.Visible          = false
mainPanel.Parent           = screenGui
mkCorner(12, mainPanel)
mkStroke(1.5, C.WHITE, mainPanel)

local header = Instance.new("Frame")
header.Size             = UDim2.new(1, 0, 0, 34)
header.BackgroundColor3 = C.SURFACE
header.BorderSizePixel  = 0
header.Parent           = mainPanel
mkCorner(12, header)
makeDraggable(header)

local headerBottomFill = Instance.new("Frame")
headerBottomFill.Size             = UDim2.new(1, 0, 0, 12)
headerBottomFill.Position         = UDim2.new(0, 0, 1, -12)
headerBottomFill.BackgroundColor3 = C.SURFACE
headerBottomFill.BorderSizePixel  = 0
headerBottomFill.Parent           = header

local headerDivider = Instance.new("Frame")
headerDivider.Size             = UDim2.new(1, -16, 0, 1)
headerDivider.Position         = UDim2.new(0, 8, 1, -1)
headerDivider.BackgroundColor3 = C.BORDER
headerDivider.BorderSizePixel  = 0
headerDivider.Parent           = header

local headerTitle = Instance.new("TextLabel")
headerTitle.Size               = UDim2.new(0, 110, 1, 0)
headerTitle.Position           = UDim2.new(0, 10, 0, 0)
headerTitle.BackgroundTransparency = 1
headerTitle.Text               = "TERRAIN BRUSH BY BAMZ"
headerTitle.TextColor3         = C.TEXT
headerTitle.TextSize           = 10
headerTitle.Font               = Enum.Font.GothamBold
headerTitle.TextXAlignment     = Enum.TextXAlignment.Left
headerTitle.Parent             = header

local headerSub = Instance.new("TextLabel")
headerSub.Size               = UDim2.new(0, 42, 1, 0)
headerSub.Position           = UDim2.new(0, 122, 0, 0)
headerSub.BackgroundTransparency = 1
headerSub.Text               = "by bamz"
headerSub.TextColor3         = C.DIM
headerSub.TextSize           = 7
headerSub.Font               = Enum.Font.Gotham
headerSub.TextXAlignment     = Enum.TextXAlignment.Left
headerSub.Parent             = header

local brushEnabled = false
local onoffBtn = Instance.new("TextButton")
onoffBtn.Size             = UDim2.new(0, 38, 0, 20)
onoffBtn.Position         = UDim2.new(1, -44, 0.5, -10)
onoffBtn.BackgroundColor3 = C.RED
onoffBtn.BorderSizePixel  = 0
onoffBtn.Text             = "OFF"
onoffBtn.TextColor3       = C.TEXT
onoffBtn.TextSize         = 8
onoffBtn.Font             = Enum.Font.GothamBold
onoffBtn.Parent           = header
mkCorner(5, onoffBtn)

local mainScroll = Instance.new("ScrollingFrame")
mainScroll.Size               = UDim2.new(1, -10, 1, -42)
mainScroll.Position           = UDim2.new(0, 5, 0, 38)
mainScroll.BackgroundTransparency = 1
mainScroll.BorderSizePixel        = 0
mainScroll.ScrollBarThickness     = 4
mainScroll.ScrollBarImageColor3   = C.BORDER
mainScroll.ScrollingDirection     = Enum.ScrollingDirection.Y
mainScroll.AutomaticCanvasSize    = Enum.AutomaticSize.Y
mainScroll.CanvasSize             = UDim2.new(0, 0, 0, 0)
mainScroll.ElasticBehavior        = Enum.ElasticBehavior.Never
mainScroll.Parent                 = mainPanel

local body = Instance.new("Frame")
body.Size               = UDim2.new(1, 0, 0, 0)
body.AutomaticSize      = Enum.AutomaticSize.Y
body.BackgroundTransparency = 1
body.Parent             = mainScroll

local bodyLayout = Instance.new("UIListLayout")
bodyLayout.Padding   = UDim.new(0, 5)
bodyLayout.SortOrder = Enum.SortOrder.LayoutOrder
bodyLayout.Parent    = body

local bodyPadding = Instance.new("UIPadding")
bodyPadding.PaddingTop    = UDim.new(0, 5)
bodyPadding.PaddingBottom = UDim.new(0, 5)
bodyPadding.PaddingLeft   = UDim.new(0, 5)
bodyPadding.PaddingRight  = UDim.new(0, 5)
bodyPadding.Parent        = body

local function secLabel(txt, lo)
    local wrap = Instance.new("Frame")
    wrap.Size               = UDim2.new(1, 0, 0, 12)
    wrap.BackgroundTransparency = 1
    wrap.LayoutOrder        = lo
    wrap.Parent             = body
    local line = Instance.new("Frame")
    line.Size             = UDim2.new(1, 0, 0, 1)
    line.Position         = UDim2.new(0, 0, 0.5, 0)
    line.BackgroundColor3 = C.BORDER
    line.BorderSizePixel  = 0
    line.Parent           = wrap
    local bg = Instance.new("Frame")
    bg.Size             = UDim2.new(0, 0, 1, 0)
    bg.BackgroundColor3 = C.BG
    bg.BorderSizePixel  = 0
    bg.AutomaticSize    = Enum.AutomaticSize.X
    bg.Parent           = wrap
    mkPadding(0, 0, 0, 6, bg)
    local l = Instance.new("TextLabel")
    l.Size               = UDim2.new(0, 0, 1, 0)
    l.AutomaticSize      = Enum.AutomaticSize.X
    l.BackgroundTransparency = 1
    l.Text               = txt
    l.TextColor3         = C.SUBTEXT
    l.TextSize           = 8
    l.Font               = Enum.Font.GothamBold
    l.TextXAlignment     = Enum.TextXAlignment.Left
    l.Parent             = bg
    return wrap
end

-- =========================================================
-- TERRAIN TYPE
-- =========================================================
secLabel("TERRAIN TYPE", 1)

local terrainGrid = Instance.new("Frame")
terrainGrid.Size               = UDim2.new(1, 0, 0, 98)
terrainGrid.BackgroundTransparency = 1
terrainGrid.LayoutOrder        = 2
terrainGrid.Parent             = body

local gLayout = Instance.new("UIGridLayout")
gLayout.CellSize    = UDim2.new(0, 23, 0, 32)
gLayout.CellPadding = UDim2.new(0, 3, 0, 3)
gLayout.Parent      = terrainGrid

local terrainTypes = {
    { name="Grass",  color=Color3.fromRGB(72, 160, 50),   mat=Enum.Material.Grass       },
    { name="Rock",   color=Color3.fromRGB(110,110,110),   mat=Enum.Material.Rock        },
    { name="Ground", color=Color3.fromRGB(140, 95, 30),   mat=Enum.Material.Ground      },
    { name="Sand",   color=Color3.fromRGB(200,180,120),   mat=Enum.Material.Sand        },
    { name="Mud",    color=Color3.fromRGB(90,  60, 25),   mat=Enum.Material.Mud         },
    { name="Sandst", color=Color3.fromRGB(210,170,100),   mat=Enum.Material.Sandstone   },
    { name="Limest", color=Color3.fromRGB(200,195,175),   mat=Enum.Material.Limestone   },
    { name="Cobble", color=Color3.fromRGB(130,120,110),   mat=Enum.Material.Cobblestone },
    { name="Basalt", color=Color3.fromRGB(50,  50, 55),   mat=Enum.Material.Basalt      },
    { name="Water",  color=Color3.fromRGB(20, 120,220),   mat=Enum.Material.Water       },
    { name="Concr",  color=Color3.fromRGB(150,150,150),   mat=Enum.Material.Concrete    },
    { name="Salt",   color=Color3.fromRGB(240,235,230),   mat=Enum.Material.Salt        },
    { name="Ice",    color=Color3.fromRGB(140,190,220),   mat=Enum.Material.Ice         },
    { name="Snow",   color=Color3.fromRGB(210,230,255),   mat=Enum.Material.Snow        },
    { name="Leafy",  color=Color3.fromRGB(80, 140, 50),   mat=Enum.Material.LeafyGrass  },
    { name="Pavemt", color=Color3.fromRGB(80, 80, 90),    mat=Enum.Material.Pavement    },
}

local selectedTerrain = Enum.Material.Grass
local terrainBtns = {}

for _, t in ipairs(terrainTypes) do
    local btn = Instance.new("TextButton")
    btn.Size             = UDim2.new(0, 23, 0, 32)
    btn.BackgroundColor3 = C.CARD
    btn.BorderSizePixel  = 0
    btn.Text             = ""
    btn.Name             = t.name
    btn.Parent           = terrainGrid
    mkCorner(5, btn)
    local dot = Instance.new("Frame")
    dot.Size             = UDim2.new(0, 8, 0, 8)
    dot.Position         = UDim2.new(0.5, -4, 0, 4)
    dot.BackgroundColor3 = t.color
    dot.BorderSizePixel  = 0
    dot.Parent           = btn
    mkCorner(2, dot)
    local lbl = Instance.new("TextLabel")
    lbl.Size               = UDim2.new(1, 0, 0, 10)
    lbl.Position           = UDim2.new(0, 0, 1, -11)
    lbl.BackgroundTransparency = 1
    lbl.Text               = t.name
    lbl.TextColor3         = C.SUBTEXT
    lbl.TextSize           = 4
    lbl.Font               = Enum.Font.GothamMedium
    lbl.Parent             = btn
    local s = mkStroke(1, C.BORDER, btn)
    terrainBtns[t.name] = { btn=btn, stroke=s, lbl=lbl, mat=t.mat }
    btn.MouseButton1Click:Connect(function()
        selectedTerrain = t.mat
        for _, e in pairs(terrainBtns) do
            e.stroke.Color     = C.BORDER
            e.stroke.Thickness = 1
            e.lbl.TextColor3   = C.SUBTEXT
        end
        s.Color     = C.TEXT
        s.Thickness = 1.5
        lbl.TextColor3 = C.TEXT
    end)
end
terrainBtns["Grass"].stroke.Color     = C.TEXT
terrainBtns["Grass"].stroke.Thickness = 1.5
terrainBtns["Grass"].lbl.TextColor3   = C.TEXT

-- =========================================================
-- SHAPE
-- =========================================================
secLabel("SHAPE", 3)
local shapeSection = Instance.new("Frame")
shapeSection.Size               = UDim2.new(1, 0, 0, 24)
shapeSection.BackgroundTransparency = 1
shapeSection.LayoutOrder        = 4
shapeSection.Parent             = body
local shapeLL = Instance.new("UIListLayout")
shapeLL.FillDirection = Enum.FillDirection.Horizontal
shapeLL.Padding       = UDim.new(0, 3)
shapeLL.Parent        = shapeSection
local shapes = {"Block","Cylinder","Ball"}
local selectedShape = "Block"
local shapeBtns = {}
for _, shape in ipairs(shapes) do
    local btn = Instance.new("TextButton")
    btn.Size             = UDim2.new(0, 62, 1, 0)
    btn.BackgroundColor3 = C.CARD
    btn.BorderSizePixel  = 0
    btn.Text             = shape
    btn.TextColor3       = C.SUBTEXT
    btn.TextSize         = 8
    btn.Font             = Enum.Font.GothamMedium
    btn.Parent           = shapeSection
    mkCorner(5, btn)
    local s = mkStroke(1, C.BORDER, btn)
    shapeBtns[shape] = { btn=btn, stroke=s }
    btn.MouseButton1Click:Connect(function()
        selectedShape = shape
        for _, e in pairs(shapeBtns) do
            e.stroke.Color   = C.BORDER
            e.btn.TextColor3 = C.SUBTEXT
        end
        s.Color        = C.TEXT
        btn.TextColor3 = C.TEXT
    end)
end
shapeBtns["Block"].stroke.Color   = C.TEXT
shapeBtns["Block"].btn.TextColor3 = C.TEXT

-- =========================================================
-- MODE
-- =========================================================
secLabel("MODE", 5)
local modeSection = Instance.new("Frame")
modeSection.Size               = UDim2.new(1, 0, 0, 32)
modeSection.BackgroundTransparency = 1
modeSection.LayoutOrder        = 6
modeSection.Parent             = body
local modeLL = Instance.new("UIListLayout")
modeLL.FillDirection = Enum.FillDirection.Horizontal
modeLL.Padding       = UDim.new(0, 3)
modeLL.Parent        = modeSection

local brushMode = "Draw"
local modeBtns  = {}

local modeList = {
    { name="Draw",  label="Draw",  col=C.BLUE   },
    { name="Erase", label="Erase", col=C.RED    },
    { name="Paint", label="🎨 Paint", col=C.PURPLE },
    { name="Convert", label="🔄 Convert", col=C.ORANGE },
}

for _, m in ipairs(modeList) do
    local btn = Instance.new("TextButton")
    btn.Size             = UDim2.new(0, 46, 1, 0)
    btn.BackgroundColor3 = C.CARD
    btn.BorderSizePixel  = 0
    btn.Text             = m.label
    btn.TextColor3       = C.SUBTEXT
    btn.TextSize         = 7
    btn.Font             = Enum.Font.GothamMedium
    btn.Parent           = modeSection
    mkCorner(5, btn)
    local s = mkStroke(1, C.BORDER, btn)
    modeBtns[m.name] = { btn=btn, stroke=s, col=m.col }
    btn.MouseButton1Click:Connect(function()
        brushMode = m.name
        for _, e in pairs(modeBtns) do
            e.stroke.Color   = C.BORDER
            e.btn.TextColor3 = C.SUBTEXT
        end
        s.Color        = m.col
        btn.TextColor3 = C.TEXT
    end)
end
modeBtns["Draw"].stroke.Color   = C.BLUE
modeBtns["Draw"].btn.TextColor3 = C.TEXT

-- =========================================================
-- BRUSH SIZE
-- =========================================================
secLabel("BRUSH SIZE", 8)
local sizeSection = Instance.new("Frame")
sizeSection.Size               = UDim2.new(1, 0, 0, 24)
sizeSection.BackgroundTransparency = 1
sizeSection.LayoutOrder        = 9
sizeSection.Parent             = body
local currentSize = 8
local minusBtn = Instance.new("TextButton")
minusBtn.Size             = UDim2.new(0, 24, 1, 0)
minusBtn.Position         = UDim2.new(0, 0, 0, 0)
minusBtn.BackgroundColor3 = C.CARD
minusBtn.BorderSizePixel  = 0
minusBtn.Text             = "−"
minusBtn.TextColor3       = C.TEXT
minusBtn.TextSize         = 14
minusBtn.Font             = Enum.Font.GothamBold
minusBtn.Parent           = sizeSection
mkCorner(5, minusBtn)
mkStroke(1, C.BORDER, minusBtn)
local sizeDisplay = Instance.new("TextLabel")
sizeDisplay.Size             = UDim2.new(1, -56, 1, 0)
sizeDisplay.Position         = UDim2.new(0, 28, 0, 0)
sizeDisplay.BackgroundColor3 = C.CARD2
sizeDisplay.BorderSizePixel  = 0
sizeDisplay.Text             = tostring(currentSize)
sizeDisplay.TextColor3       = C.TEXT
sizeDisplay.TextSize         = 10
sizeDisplay.Font             = Enum.Font.GothamBold
sizeDisplay.Parent           = sizeSection
mkCorner(5, sizeDisplay)
mkStroke(1, C.BORDER, sizeDisplay)
local plusBtn = Instance.new("TextButton")
plusBtn.Size             = UDim2.new(0, 24, 1, 0)
plusBtn.Position         = UDim2.new(1, -24, 0, 0)
plusBtn.BackgroundColor3 = C.CARD
plusBtn.BorderSizePixel  = 0
plusBtn.Text             = "+"
plusBtn.TextColor3       = C.TEXT
plusBtn.TextSize         = 13
plusBtn.Font             = Enum.Font.GothamBold
plusBtn.Parent           = sizeSection
mkCorner(5, plusBtn)
mkStroke(1, C.BORDER, plusBtn)
minusBtn.MouseButton1Click:Connect(function()
    if currentSize > 1 then
        currentSize = currentSize - 1
        sizeDisplay.Text = tostring(currentSize)
    end
end)
plusBtn.MouseButton1Click:Connect(function()
    if currentSize < 32 then
        currentSize = currentSize + 1
        sizeDisplay.Text = tostring(currentSize)
    end
end)

-- =========================================================
-- ACTIONS
-- =========================================================
secLabel("ACTIONS", 10)
local actionRow = Instance.new("Frame")
actionRow.Size               = UDim2.new(1, 0, 0, 24)
actionRow.BackgroundTransparency = 1
actionRow.LayoutOrder        = 11
actionRow.Parent             = body

local counterBg = Instance.new("Frame")
counterBg.Size             = UDim2.new(0, 80, 1, 0)
counterBg.BackgroundColor3 = C.CARD
counterBg.BorderSizePixel  = 0
counterBg.Parent           = actionRow
mkCorner(5, counterBg)
mkStroke(1, C.BORDER, counterBg)
local counterNum = Instance.new("TextLabel")
counterNum.Size               = UDim2.new(1, -8, 1, 0)
counterNum.Position           = UDim2.new(0, 6, 0, 0)
counterNum.BackgroundTransparency = 1
counterNum.Text               = "Placed: 0"
counterNum.TextColor3         = C.SUBTEXT
counterNum.TextSize           = 7
counterNum.Font               = Enum.Font.Gotham
counterNum.TextXAlignment     = Enum.TextXAlignment.Left
counterNum.Parent             = counterBg

local clearBtn = Instance.new("TextButton")
clearBtn.Size             = UDim2.new(0, 60, 1, 0)
clearBtn.Position         = UDim2.new(0, 84, 0, 0)
clearBtn.BackgroundColor3 = C.ORANGE
clearBtn.BorderSizePixel  = 0
clearBtn.Text             = "CLEAR ALL"
clearBtn.TextColor3       = C.TEXT
clearBtn.TextSize         = 7
clearBtn.Font             = Enum.Font.GothamBold
clearBtn.Parent           = actionRow
mkCorner(5, clearBtn)

local generateBtn = Instance.new("TextButton")
generateBtn.Size             = UDim2.new(1, -150, 1, 0)
generateBtn.Position         = UDim2.new(0, 148, 0, 0)
generateBtn.BackgroundColor3 = C.BLUE
generateBtn.BorderSizePixel  = 0
generateBtn.Text             = "GENERATE"
generateBtn.TextColor3       = C.TEXT
generateBtn.TextSize         = 7
generateBtn.Font             = Enum.Font.GothamBold
generateBtn.Parent           = actionRow
mkCorner(5, generateBtn)

local function updateCounter()
    counterNum.Text = "Placed: " .. #terrainData .. "  Paint: " .. #paintData
end

-- =========================================================
-- WIND SECTION
-- =========================================================
secLabel("WIND", 12)

local windSection = Instance.new("Frame")
windSection.Size               = UDim2.new(1, 0, 0, 80)
windSection.BackgroundTransparency = 1
windSection.LayoutOrder        = 13
windSection.Parent             = body

local windAngle    = 0
local windStrength = 20
local windEnabled  = false

local compassCard = Instance.new("Frame")
compassCard.Size             = UDim2.new(0, 56, 0, 56)
compassCard.Position         = UDim2.new(0, 0, 0, 0)
compassCard.BackgroundColor3 = C.CARD
compassCard.BorderSizePixel  = 0
compassCard.Parent           = windSection
mkCorner(28, compassCard)
mkStroke(1, C.BORDER, compassCard)

local compassDot = Instance.new("Frame")
compassDot.Size             = UDim2.new(0, 4, 0, 4)
compassDot.Position         = UDim2.new(0.5, -2, 0.5, -2)
compassDot.BackgroundColor3 = C.TEXT
compassDot.BorderSizePixel  = 0
compassDot.Parent           = compassCard
mkCorner(2, compassDot)

local needle = Instance.new("Frame")
needle.Size             = UDim2.new(0, 2, 0, 20)
needle.AnchorPoint      = Vector2.new(0.5, 1)
needle.Position         = UDim2.new(0.5, 0, 0.5, 0)
needle.BackgroundColor3 = C.CYAN
needle.BorderSizePixel  = 0
needle.Rotation         = windAngle
needle.Parent           = compassCard
mkCorner(1, needle)

local function windDirLabel(txt, x, y)
    local l = Instance.new("TextLabel")
    l.Size               = UDim2.new(0, 10, 0, 10)
    l.Position           = UDim2.new(x, -5, y, -5)
    l.BackgroundTransparency = 1
    l.Text               = txt
    l.TextColor3         = C.DIM
    l.TextSize           = 6
    l.Font               = Enum.Font.GothamBold
    l.Parent             = compassCard
end
windDirLabel("N", 0.5, 0)
windDirLabel("S", 0.5, 1)
windDirLabel("W", 0,   0.5)
windDirLabel("E", 1,   0.5)

local windControls = Instance.new("Frame")
windControls.Size               = UDim2.new(1, -62, 0, 56)
windControls.Position           = UDim2.new(0, 60, 0, 0)
windControls.BackgroundTransparency = 1
windControls.Parent             = windSection

local windCtrlLayout = Instance.new("UIListLayout")
windCtrlLayout.Padding   = UDim.new(0, 4)
windCtrlLayout.SortOrder = Enum.SortOrder.LayoutOrder
windCtrlLayout.Parent    = windControls

local windAngleRow = Instance.new("Frame")
windAngleRow.Size             = UDim2.new(1, 0, 0, 24)
windAngleRow.BackgroundTransparency = 1
windAngleRow.LayoutOrder      = 1
windAngleRow.Parent           = windControls

local windAngleMinus = Instance.new("TextButton")
windAngleMinus.Size             = UDim2.new(0, 24, 1, 0)
windAngleMinus.BackgroundColor3 = C.CARD
windAngleMinus.BorderSizePixel  = 0
windAngleMinus.Text             = "◀"
windAngleMinus.TextColor3       = C.TEXT
windAngleMinus.TextSize         = 10
windAngleMinus.Font             = Enum.Font.GothamBold
windAngleMinus.Parent           = windAngleRow
mkCorner(5, windAngleMinus)
mkStroke(1, C.BORDER, windAngleMinus)

local windAngleDisplay = Instance.new("TextLabel")
windAngleDisplay.Size             = UDim2.new(1, -56, 1, 0)
windAngleDisplay.Position         = UDim2.new(0, 28, 0, 0)
windAngleDisplay.BackgroundColor3 = C.CARD2
windAngleDisplay.BorderSizePixel  = 0
windAngleDisplay.Text             = "DIR: 0°"
windAngleDisplay.TextColor3       = C.CYAN
windAngleDisplay.TextSize         = 8
windAngleDisplay.Font             = Enum.Font.GothamBold
windAngleDisplay.Parent           = windAngleRow
mkCorner(5, windAngleDisplay)
mkStroke(1, C.BORDER, windAngleDisplay)

local windAnglePlus = Instance.new("TextButton")
windAnglePlus.Size             = UDim2.new(0, 24, 1, 0)
windAnglePlus.Position         = UDim2.new(1, -24, 0, 0)
windAnglePlus.BackgroundColor3 = C.CARD
windAnglePlus.BorderSizePixel  = 0
windAnglePlus.Text             = "▶"
windAnglePlus.TextColor3       = C.TEXT
windAnglePlus.TextSize         = 10
windAnglePlus.Font             = Enum.Font.GothamBold
windAnglePlus.Parent           = windAngleRow
mkCorner(5, windAnglePlus)
mkStroke(1, C.BORDER, windAnglePlus)

local windStrRow = Instance.new("Frame")
windStrRow.Size             = UDim2.new(1, 0, 0, 24)
windStrRow.BackgroundTransparency = 1
windStrRow.LayoutOrder      = 2
windStrRow.Parent           = windControls

local windStrMinus = Instance.new("TextButton")
windStrMinus.Size             = UDim2.new(0, 24, 1, 0)
windStrMinus.BackgroundColor3 = C.CARD
windStrMinus.BorderSizePixel  = 0
windStrMinus.Text             = "−"
windStrMinus.TextColor3       = C.TEXT
windStrMinus.TextSize         = 14
windStrMinus.Font             = Enum.Font.GothamBold
windStrMinus.Parent           = windStrRow
mkCorner(5, windStrMinus)
mkStroke(1, C.BORDER, windStrMinus)

local windStrDisplay = Instance.new("TextLabel")
windStrDisplay.Size             = UDim2.new(1, -56, 1, 0)
windStrDisplay.Position         = UDim2.new(0, 28, 0, 0)
windStrDisplay.BackgroundColor3 = C.CARD2
windStrDisplay.BorderSizePixel  = 0
windStrDisplay.Text             = "STR: 20"
windStrDisplay.TextColor3       = C.GREEN
windStrDisplay.TextSize         = 8
windStrDisplay.Font             = Enum.Font.GothamBold
windStrDisplay.Parent           = windStrRow
mkCorner(5, windStrDisplay)
mkStroke(1, C.BORDER, windStrDisplay)

local windStrPlus = Instance.new("TextButton")
windStrPlus.Size             = UDim2.new(0, 24, 1, 0)
windStrPlus.Position         = UDim2.new(1, -24, 0, 0)
windStrPlus.BackgroundColor3 = C.CARD
windStrPlus.BorderSizePixel  = 0
windStrPlus.Text             = "+"
windStrPlus.TextColor3       = C.TEXT
windStrPlus.TextSize         = 13
windStrPlus.Font             = Enum.Font.GothamBold
windStrPlus.Parent           = windStrRow
mkCorner(5, windStrPlus)
mkStroke(1, C.BORDER, windStrPlus)

local windBtnRow = Instance.new("Frame")
windBtnRow.Size               = UDim2.new(1, 0, 0, 20)
windBtnRow.Position           = UDim2.new(0, 0, 0, 60)
windBtnRow.BackgroundTransparency = 1
windBtnRow.Parent             = windSection

local windBtnLayout = Instance.new("UIListLayout")
windBtnLayout.FillDirection = Enum.FillDirection.Horizontal
windBtnLayout.Padding       = UDim.new(0, 3)
windBtnLayout.Parent        = windBtnRow

local windToggle = Instance.new("TextButton")
windToggle.Size             = UDim2.new(0, 46, 1, 0)
windToggle.BackgroundColor3 = C.RED
windToggle.BorderSizePixel  = 0
windToggle.Text             = "OFF"
windToggle.TextColor3       = C.TEXT
windToggle.TextSize         = 7
windToggle.Font             = Enum.Font.GothamBold
windToggle.Parent           = windBtnRow
mkCorner(5, windToggle)

local windPresets = {
    { label="N",  angle=0   },
    { label="E",  angle=90  },
    { label="S",  angle=180 },
    { label="W",  angle=270 },
    { label="NE", angle=45  },
    { label="SW", angle=225 },
}
for _, p in ipairs(windPresets) do
    local pb = Instance.new("TextButton")
    pb.Size             = UDim2.new(0, 24, 1, 0)
    pb.BackgroundColor3 = C.CARD
    pb.BorderSizePixel  = 0
    pb.Text             = p.label
    pb.TextColor3       = C.SUBTEXT
    pb.TextSize         = 6
    pb.Font             = Enum.Font.GothamBold
    pb.Parent           = windBtnRow
    mkCorner(4, pb)
    mkStroke(1, C.BORDER, pb)
    pb.MouseButton1Click:Connect(function()
        windAngle = p.angle
        applyWind()
    end)
end

local function applyWind()
    local rad = math.rad(windAngle)
    local dir = Vector3.new(math.sin(rad), 0, math.cos(rad))
    workspace.GlobalWind = dir * windStrength
    needle.Rotation = windAngle
    windAngleDisplay.Text = "DIR: " .. windAngle .. "°"
end

local function setWindAngle(a)
    windAngle = a % 360
    if windEnabled then applyWind() end
    needle.Rotation       = windAngle
    windAngleDisplay.Text = "DIR: " .. windAngle .. "°"
end

local function setWindStrength(s)
    windStrength = math.clamp(s, 0, 200)
    windStrDisplay.Text = "STR: " .. windStrength
    if windEnabled then applyWind() end
end

windAngleMinus.MouseButton1Click:Connect(function() setWindAngle(windAngle - 15) end)
windAnglePlus.MouseButton1Click:Connect(function()  setWindAngle(windAngle + 15) end)
windStrMinus.MouseButton1Click:Connect(function()   setWindStrength(windStrength - 5) end)
windStrPlus.MouseButton1Click:Connect(function()    setWindStrength(windStrength + 5) end)

windToggle.MouseButton1Click:Connect(function()
    windEnabled = not windEnabled
    if windEnabled then
        applyWind()
        windToggle.BackgroundColor3 = C.GREEN
        windToggle.Text             = "ON"
    else
        workspace.GlobalWind = Vector3.new(0, 0, 0)
        windToggle.BackgroundColor3 = C.RED
        windToggle.Text             = "OFF"
    end
end)

-- =========================================================
-- SCRIPT LIST LABEL
-- =========================================================
local scriptListLabel = Instance.new("TextLabel")
scriptListLabel.Size               = UDim2.new(1, 0, 0, 10)
scriptListLabel.BackgroundTransparency = 1
scriptListLabel.Text               = "GENERATED SCRIPTS  ▸"
scriptListLabel.TextColor3         = C.DIM
scriptListLabel.TextSize           = 8
scriptListLabel.Font               = Enum.Font.GothamMedium
scriptListLabel.TextXAlignment     = Enum.TextXAlignment.Left
scriptListLabel.LayoutOrder        = 14
scriptListLabel.Parent             = body

-- =========================================================
-- SCRIPT LIST PANEL
-- =========================================================
local listPanel = Instance.new("Frame")
listPanel.Name             = "ScriptListPanel"
listPanel.Size             = UDim2.new(0, 0, 0, 0)
listPanel.Position         = UDim2.new(0, 270, 0, 60)
listPanel.BackgroundColor3 = C.BG
listPanel.BorderSizePixel  = 0
listPanel.ClipsDescendants = true
listPanel.Visible          = false
listPanel.Parent           = screenGui
mkCorner(12, listPanel)
mkStroke(1, C.BORDER, listPanel)

local listHeader = Instance.new("Frame")
listHeader.Size             = UDim2.new(1, 0, 0, 40)
listHeader.BackgroundColor3 = C.SURFACE
listHeader.BorderSizePixel  = 0
listHeader.Parent           = listPanel
mkCorner(12, listHeader)
makeDraggable(listHeader)

local listHeaderBottomFill = Instance.new("Frame")
listHeaderBottomFill.Size             = UDim2.new(1, 0, 0, 12)
listHeaderBottomFill.Position         = UDim2.new(0, 0, 1, -12)
listHeaderBottomFill.BackgroundColor3 = C.SURFACE
listHeaderBottomFill.BorderSizePixel  = 0
listHeaderBottomFill.Parent           = listHeader

local listDivider = Instance.new("Frame")
listDivider.Size             = UDim2.new(1, -16, 0, 1)
listDivider.Position         = UDim2.new(0, 8, 1, -1)
listDivider.BackgroundColor3 = C.BORDER
listDivider.BorderSizePixel  = 0
listDivider.Parent           = listHeader

local listHeaderTitle = Instance.new("TextLabel")
listHeaderTitle.Size               = UDim2.new(1, -50, 1, 0)
listHeaderTitle.Position           = UDim2.new(0, 12, 0, 0)
listHeaderTitle.BackgroundTransparency = 1
listHeaderTitle.Text               = "SCRIPT LIST"
listHeaderTitle.TextColor3         = C.TEXT
listHeaderTitle.TextSize           = 11
listHeaderTitle.Font               = Enum.Font.GothamBold
listHeaderTitle.TextXAlignment     = Enum.TextXAlignment.Left
listHeaderTitle.Parent             = listHeader

local listWater = Instance.new("TextLabel")
listWater.Size               = UDim2.new(1, -14, 1, 0)
listWater.BackgroundTransparency = 1
listWater.Text               = "by bamz"
listWater.TextColor3         = C.DIM
listWater.TextSize           = 8
listWater.Font               = Enum.Font.Gotham
listWater.TextXAlignment     = Enum.TextXAlignment.Right
listWater.Parent             = listHeader

local closeListBtn = Instance.new("TextButton")
closeListBtn.Size             = UDim2.new(0, 22, 0, 22)
closeListBtn.Position         = UDim2.new(1, -28, 0.5, -11)
closeListBtn.BackgroundColor3 = C.RED
closeListBtn.BorderSizePixel  = 0
closeListBtn.Text             = "✕"
closeListBtn.TextColor3       = C.TEXT
closeListBtn.TextSize         = 9
closeListBtn.Font             = Enum.Font.GothamBold
closeListBtn.Parent           = listHeader
mkCorner(5, closeListBtn)

local listScroll = Instance.new("ScrollingFrame")
listScroll.Size                   = UDim2.new(1, -10, 1, -48)
listScroll.Position               = UDim2.new(0, 5, 0, 44)
listScroll.BackgroundTransparency = 1
listScroll.BorderSizePixel        = 0
listScroll.ScrollBarThickness     = 3
listScroll.ScrollBarImageColor3   = Color3.fromRGB(70, 70, 90)
listScroll.ScrollingDirection     = Enum.ScrollingDirection.Y
listScroll.AutomaticCanvasSize    = Enum.AutomaticSize.Y
listScroll.CanvasSize             = UDim2.new(0, 0, 0, 0)
listScroll.ElasticBehavior        = Enum.ElasticBehavior.Never
listScroll.Parent                 = listPanel

local listContent = Instance.new("Frame")
listContent.Size               = UDim2.new(1, 0, 0, 0)
listContent.AutomaticSize      = Enum.AutomaticSize.Y
listContent.BackgroundTransparency = 1
listContent.Parent             = listScroll

local listLayout = Instance.new("UIListLayout")
listLayout.Padding   = UDim.new(0, 5)
listLayout.SortOrder = Enum.SortOrder.LayoutOrder
listLayout.Parent    = listContent

local listPad = Instance.new("UIPadding")
listPad.PaddingTop    = UDim.new(0, 3)
listPad.PaddingBottom = UDim.new(0, 6)
listPad.PaddingLeft   = UDim.new(0, 2)
listPad.PaddingRight  = UDim.new(0, 5)
listPad.Parent        = listContent

-- =========================================================
-- SCRIPT VIEWER
-- =========================================================
local function createScriptViewer(scriptName, scriptContent)
    local vPanel = Instance.new("Frame")
    vPanel.Size             = UDim2.new(0, 468, 0, 390)
    vPanel.Position         = UDim2.new(0.5, -234, 0.5, -195)
    vPanel.BackgroundColor3 = C.BG
    vPanel.BorderSizePixel  = 0
    vPanel.Parent           = screenGui
    mkCorner(12, vPanel)
    mkStroke(1, C.BORDER, vPanel)

    local vHeader = Instance.new("Frame")
    vHeader.Size             = UDim2.new(1, 0, 0, 40)
    vHeader.BackgroundColor3 = C.SURFACE
    vHeader.BorderSizePixel  = 0
    vHeader.Parent           = vPanel
    mkCorner(12, vHeader)
    makeDraggable(vPanel)

    local vHeaderFill = Instance.new("Frame")
    vHeaderFill.Size             = UDim2.new(1, 0, 0, 12)
    vHeaderFill.Position         = UDim2.new(0, 0, 1, -12)
    vHeaderFill.BackgroundColor3 = C.SURFACE
    vHeaderFill.BorderSizePixel  = 0
    vHeaderFill.Parent           = vHeader

    local vDivider = Instance.new("Frame")
    vDivider.Size             = UDim2.new(1, -16, 0, 1)
    vDivider.Position         = UDim2.new(0, 8, 1, -1)
    vDivider.BackgroundColor3 = C.BORDER
    vDivider.BorderSizePixel  = 0
    vDivider.Parent           = vHeader

    local vTitle = Instance.new("TextLabel")
    vTitle.Size               = UDim2.new(1, -55, 1, 0)
    vTitle.Position           = UDim2.new(0, 12, 0, 0)
    vTitle.BackgroundTransparency = 1
    vTitle.Text               = scriptName
    vTitle.TextColor3         = C.TEXT
    vTitle.TextSize           = 11
    vTitle.Font               = Enum.Font.GothamBold
    vTitle.TextXAlignment     = Enum.TextXAlignment.Left
    vTitle.TextTruncate       = Enum.TextTruncate.AtEnd
    vTitle.Parent             = vHeader

    local vWater = Instance.new("TextLabel")
    vWater.Size               = UDim2.new(1, -14, 1, 0)
    vWater.BackgroundTransparency = 1
    vWater.Text               = "by bamz"
    vWater.TextColor3         = C.DIM
    vWater.TextSize           = 8
    vWater.Font               = Enum.Font.Gotham
    vWater.TextXAlignment     = Enum.TextXAlignment.Right
    vWater.Parent             = vHeader

    local closeVBtn = Instance.new("TextButton")
    closeVBtn.Size             = UDim2.new(0, 22, 0, 22)
    closeVBtn.Position         = UDim2.new(1, -28, 0.5, -11)
    closeVBtn.BackgroundColor3 = C.RED
    closeVBtn.BorderSizePixel  = 0
    closeVBtn.Text             = "✕"
    closeVBtn.TextColor3       = C.TEXT
    closeVBtn.TextSize         = 9
    closeVBtn.Font             = Enum.Font.GothamBold
    closeVBtn.Parent           = vHeader
    mkCorner(5, closeVBtn)

    local vScroll = Instance.new("ScrollingFrame")
    vScroll.Size                   = UDim2.new(1, -16, 1, -90)
    vScroll.Position               = UDim2.new(0, 8, 0, 46)
    vScroll.BackgroundColor3       = C.SURFACE
    vScroll.BorderSizePixel        = 0
    vScroll.ScrollBarThickness     = 3
    vScroll.ScrollBarImageColor3   = C.BORDER
    vScroll.Parent                 = vPanel
    mkCorner(8, vScroll)
    mkStroke(1, C.BORDER, vScroll)

    local vBox = Instance.new("TextBox")
    vBox.Size               = UDim2.new(1, -12, 1, 0)
    vBox.Position           = UDim2.new(0, 6, 0, 5)
    vBox.BackgroundTransparency = 1
    vBox.Text               = scriptContent
    vBox.TextColor3         = Color3.fromRGB(180, 210, 255)
    vBox.TextSize           = 9
    vBox.Font               = Enum.Font.Code
    vBox.TextXAlignment     = Enum.TextXAlignment.Left
    vBox.TextYAlignment     = Enum.TextYAlignment.Top
    vBox.MultiLine          = true
    vBox.ClearTextOnFocus   = false
    vBox.TextWrapped        = true
    vBox.Parent             = vScroll

    local function resizeBox()
        local s = TextService:GetTextSize(vBox.Text, vBox.TextSize, vBox.Font,
            Vector2.new(vBox.AbsoluteSize.X, math.huge))
        vBox.Size = UDim2.new(1, -12, 0, math.max(s.Y + 14, vScroll.AbsoluteSize.Y))
        vScroll.CanvasSize = UDim2.new(0, 0, 0, vBox.AbsoluteSize.Y + 14)
    end
    vBox:GetPropertyChangedSignal("Text"):Connect(resizeBox)
    resizeBox()

    local bottomBar = Instance.new("Frame")
    bottomBar.Size               = UDim2.new(1, -16, 0, 32)
    bottomBar.Position           = UDim2.new(0, 8, 1, -40)
    bottomBar.BackgroundTransparency = 1
    bottomBar.Parent             = vPanel

    local bbLayout = Instance.new("UIListLayout")
    bbLayout.FillDirection = Enum.FillDirection.Horizontal
    bbLayout.Padding       = UDim.new(0, 6)
    bbLayout.Parent        = bottomBar

    local copyVBtn = Instance.new("TextButton")
    copyVBtn.Size             = UDim2.new(0.5, -3, 1, 0)
    copyVBtn.BackgroundColor3 = C.GREEN
    copyVBtn.BorderSizePixel  = 0
    copyVBtn.Text             = "COPY SCRIPT"
    copyVBtn.TextColor3       = C.TEXT
    copyVBtn.TextSize         = 9
    copyVBtn.Font             = Enum.Font.GothamBold
    copyVBtn.Parent           = bottomBar
    mkCorner(7, copyVBtn)

    local saveVBtn = Instance.new("TextButton")
    saveVBtn.Size             = UDim2.new(0.5, -3, 1, 0)
    saveVBtn.BackgroundColor3 = C.BLUE
    saveVBtn.BorderSizePixel  = 0
    saveVBtn.Text             = "SAVE CHANGES"
    saveVBtn.TextColor3       = C.TEXT
    saveVBtn.TextSize         = 9
    saveVBtn.Font             = Enum.Font.GothamBold
    saveVBtn.Parent           = bottomBar
    mkCorner(7, saveVBtn)

    closeVBtn.MouseButton1Click:Connect(function() vPanel:Destroy() end)
    copyVBtn.MouseButton1Click:Connect(function()
        setclipboard(vBox.Text)
        copyVBtn.Text = "COPIED!"
        copyVBtn.BackgroundColor3 = Color3.fromRGB(28, 120, 58)
        task.wait(2)
        copyVBtn.Text = "COPY SCRIPT"
        copyVBtn.BackgroundColor3 = C.GREEN
    end)
    saveVBtn.MouseButton1Click:Connect(function()
        saveVBtn.Text = "SAVED!"
        saveVBtn.BackgroundColor3 = C.GREEN
        task.wait(2)
        saveVBtn.Text = "SAVE CHANGES"
        saveVBtn.BackgroundColor3 = C.BLUE
    end)
end

-- =========================================================
-- ADD SCRIPT TO LIST
-- =========================================================
local function addScriptToList(scriptName, scriptContent)
    local item = Instance.new("Frame")
    item.Size             = UDim2.new(1, -4, 0, 56)
    item.BackgroundColor3 = C.CARD
    item.BorderSizePixel  = 0
    item.Parent           = listContent
    mkCorner(8, item)
    mkStroke(1, C.BORDER, item)

    local nameLbl = Instance.new("TextLabel")
    nameLbl.Size               = UDim2.new(1, -12, 0, 18)
    nameLbl.Position           = UDim2.new(0, 8, 0, 5)
    nameLbl.BackgroundTransparency = 1
    nameLbl.Text               = scriptName
    nameLbl.TextColor3         = C.TEXT
    nameLbl.TextSize           = 9
    nameLbl.Font               = Enum.Font.GothamBold
    nameLbl.TextXAlignment     = Enum.TextXAlignment.Left
    nameLbl.TextTruncate       = Enum.TextTruncate.AtEnd
    nameLbl.Parent             = item

    local btnRow = Instance.new("Frame")
    btnRow.Size               = UDim2.new(1, -10, 0, 24)
    btnRow.Position           = UDim2.new(0, 5, 0, 26)
    btnRow.BackgroundTransparency = 1
    btnRow.Parent             = item

    local bRowLayout = Instance.new("UIListLayout")
    bRowLayout.FillDirection = Enum.FillDirection.Horizontal
    bRowLayout.Padding       = UDim.new(0, 4)
    bRowLayout.Parent        = btnRow

    local viewBtn = Instance.new("TextButton")
    viewBtn.Size             = UDim2.new(0.5, -2, 1, 0)
    viewBtn.BackgroundColor3 = C.BLUE
    viewBtn.BorderSizePixel  = 0
    viewBtn.Text             = "View / Edit"
    viewBtn.TextColor3       = C.TEXT
    viewBtn.TextSize         = 8
    viewBtn.Font             = Enum.Font.GothamMedium
    viewBtn.Parent           = btnRow
    mkCorner(5, viewBtn)

    local copyBtn = Instance.new("TextButton")
    copyBtn.Size             = UDim2.new(0.5, -2, 1, 0)
    copyBtn.BackgroundColor3 = C.GREEN
    copyBtn.BorderSizePixel  = 0
    copyBtn.Text             = "Copy"
    copyBtn.TextColor3       = C.TEXT
    copyBtn.TextSize         = 8
    copyBtn.Font             = Enum.Font.GothamMedium
    copyBtn.Parent           = btnRow
    mkCorner(5, copyBtn)

    viewBtn.MouseButton1Click:Connect(function()
        createScriptViewer(scriptName, scriptContent)
    end)
    copyBtn.MouseButton1Click:Connect(function()
        setclipboard(scriptContent)
        copyBtn.Text = "Copied!"
        copyBtn.BackgroundColor3 = Color3.fromRGB(28, 120, 58)
        task.wait(2)
        copyBtn.Text = "Copy"
        copyBtn.BackgroundColor3 = C.GREEN
    end)
end

-- =========================================================
-- MATERIAL SELECTOR POPUP
-- =========================================================
local materialPopup = nil

local function createMaterialSelector(part, callback)
    if materialPopup then materialPopup:Destroy() end
    
    local popup = Instance.new("Frame")
    popup.Size = UDim2.new(0, 160, 0, 260)
    popup.Position = UDim2.new(0.5, -80, 0.5, -130)
    popup.BackgroundColor3 = C.BG
    popup.BorderSizePixel = 0
    popup.Parent = screenGui
    mkCorner(12, popup)
    mkStroke(1.5, C.BORDER, popup)
    
    local popHeader = Instance.new("Frame")
    popHeader.Size = UDim2.new(1, 0, 0, 32)
    popHeader.BackgroundColor3 = C.SURFACE
    popHeader.BorderSizePixel = 0
    popHeader.Parent = popup
    mkCorner(12, popHeader)
    
    local popTitle = Instance.new("TextLabel")
    popTitle.Size = UDim2.new(1, -12, 1, 0)
    popTitle.Position = UDim2.new(0, 8, 0, 0)
    popTitle.BackgroundTransparency = 1
    popTitle.Text = "SELECT MATERIAL"
    popTitle.TextColor3 = C.TEXT
    popTitle.TextSize = 10
    popTitle.Font = Enum.Font.GothamBold
    popTitle.TextXAlignment = Enum.TextXAlignment.Left
    popTitle.Parent = popHeader
    
    local closePopup = Instance.new("TextButton")
    closePopup.Size = UDim2.new(0, 22, 0, 22)
    closePopup.Position = UDim2.new(1, -28, 0.5, -11)
    closePopup.BackgroundColor3 = C.RED
    closePopup.BorderSizePixel = 0
    closePopup.Text = "✕"
    closePopup.TextColor3 = C.TEXT
    closePopup.TextSize = 9
    closePopup.Font = Enum.Font.GothamBold
    closePopup.Parent = popHeader
    mkCorner(5, closePopup)
    
    local popScroll = Instance.new("ScrollingFrame")
    popScroll.Size = UDim2.new(1, -12, 1, -44)
    popScroll.Position = UDim2.new(0, 6, 0, 38)
    popScroll.BackgroundTransparency = 1
    popScroll.BorderSizePixel = 0
    popScroll.ScrollBarThickness = 3
    popScroll.ScrollBarImageColor3 = C.BORDER
    popScroll.Parent = popup
    
    local popContent = Instance.new("Frame")
    popContent.Size = UDim2.new(1, 0, 0, 0)
    popContent.AutomaticSize = Enum.AutomaticSize.Y
    popContent.BackgroundTransparency = 1
    popContent.Parent = popScroll
    
    local popLayout = Instance.new("UIListLayout")
    popLayout.Padding = UDim.new(0, 4)
    popLayout.SortOrder = Enum.SortOrder.LayoutOrder
    popLayout.Parent = popContent
    
    local matList = {
        "Grass", "Rock", "Ground", "Sand", "Mud", "Sandstone", 
        "Limestone", "Cobblestone", "Basalt", "Water", "Concrete", 
        "Salt", "Ice", "Snow", "Leafy", "Pavemt"
    }
    
    for i, matName in ipairs(matList) do
        local matData = nil
        for _, t in ipairs(terrainTypes) do
            if t.name == matName then
                matData = t
                break
            end
        end
        if matData then
            local matBtn = Instance.new("TextButton")
            matBtn.Size = UDim2.new(1, 0, 0, 36)
            matBtn.BackgroundColor3 = C.CARD
            matBtn.BorderSizePixel = 0
            matBtn.Text = ""
            matBtn.LayoutOrder = i
            matBtn.Parent = popContent
            mkCorner(6, matBtn)
            
            local colorDot = Instance.new("Frame")
            colorDot.Size = UDim2.new(0, 20, 0, 20)
            colorDot.Position = UDim2.new(0, 8, 0.5, -10)
            colorDot.BackgroundColor3 = matData.color
            colorDot.BorderSizePixel = 0
            colorDot.Parent = matBtn
            mkCorner(4, colorDot)
            
            local matLabel = Instance.new("TextLabel")
            matLabel.Size = UDim2.new(1, -40, 1, 0)
            matLabel.Position = UDim2.new(0, 34, 0, 0)
            matLabel.BackgroundTransparency = 1
            matLabel.Text = matName
            matLabel.TextColor3 = C.TEXT
            matLabel.TextSize = 9
            matLabel.Font = Enum.Font.GothamMedium
            matLabel.TextXAlignment = Enum.TextXAlignment.Left
            matLabel.Parent = matBtn
            
            mkStroke(1, C.BORDER, matBtn)
            
            matBtn.MouseButton1Click:Connect(function()
                callback(matData.mat)
                popup:Destroy()
                materialPopup = nil
            end)
        end
    end
    
    closePopup.MouseButton1Click:Connect(function()
        popup:Destroy()
        materialPopup = nil
    end)
    
    local function onOutsideClick(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            local pos = input.Position
            local popupAbs = popup.AbsolutePosition
            local popupSize = popup.AbsoluteSize
            if pos.X < popupAbs.X or pos.X > popupAbs.X + popupSize.X or
               pos.Y < popupAbs.Y or pos.Y > popupAbs.Y + popupSize.Y then
                popup:Destroy()
                materialPopup = nil
                connection:Disconnect()
            end
        end
    end
    
    local connection = UserInputService.InputBegan:Connect(onOutsideClick)
    materialPopup = popup
end

-- =========================================================
-- PART TO TERRAIN CONVERSION
-- =========================================================
local VOXEL_RES = 4

local function convertPartToTerrain(part, targetMaterial)
    if not part or not part:IsA("BasePart") then return false end
    
    local cframe = part.CFrame
    local size = part.Size
    
    local minX = cframe.Position.X - size.X/2
    local minY = cframe.Position.Y - size.Y/2
    local minZ = cframe.Position.Z - size.Z/2
    local maxX = cframe.Position.X + size.X/2
    local maxY = cframe.Position.Y + size.Y/2
    local maxZ = cframe.Position.Z + size.Z/2
    
    local function snap(v)
        return math.floor(v / VOXEL_RES) * VOXEL_RES
    end
    
    local region = Region3.new(
        Vector3.new(snap(minX), snap(minY), snap(minZ)),
        Vector3.new(snap(maxX) + VOXEL_RES, snap(maxY) + VOXEL_RES, snap(maxZ) + VOXEL_RES)
    )
    
    local voxelSize = VOXEL_RES
    local mats, occs = Terrain:ReadVoxels(region, voxelSize)
    local sx, sy, sz = mats.Size.X, mats.Size.Y, mats.Size.Z
    
    local newMats = {}
    local newOccs = {}
    
    for x = 1, sx do
        newMats[x] = {}
        newOccs[x] = {}
        for y = 1, sy do
            newMats[x][y] = {}
            newOccs[x][y] = {}
            for z = 1, sz do
                local worldPos = region.Min + Vector3.new(
                    (x - 0.5) * voxelSize,
                    (y - 0.5) * voxelSize,
                    (z - 0.5) * voxelSize
                )
                
                local localPos = cframe:PointToObjectSpace(worldPos)
                if math.abs(localPos.X) <= size.X/2 and 
                   math.abs(localPos.Y) <= size.Y/2 and 
                   math.abs(localPos.Z) <= size.Z/2 then
                    newMats[x][y][z] = targetMaterial
                    newOccs[x][y][z] = 1
                else
                    newMats[x][y][z] = mats[x][y][z]
                    newOccs[x][y][z] = occs[x][y][z]
                end
            end
        end
    end
    
    Terrain:WriteVoxels(region, voxelSize, newMats, newOccs)
    
    table.insert(terrainData, { 
        pos = cframe.Position, 
        size = math.max(size.X, size.Y, size.Z), 
        material = targetMaterial, 
        shape = "Block" 
    })
    updateCounter()
    
    part:Destroy()
    return true
end

-- =========================================================
-- SCRIPT GENERATOR (WITH WIND SETTINGS)
-- =========================================================
local function generateScript()
    if #terrainData == 0 and #paintData == 0 then return nil end
    local lines = {
        "-- ============================================",
        "-- TERRAIN SCRIPT",
        "-- BY BAMZ",
        "-- Date    : " .. os.date("%Y-%m-%d"),
        "-- Time    : " .. os.date("%H:%M:%S"),
        "-- Draw    : " .. #terrainData,
        "-- Paint   : " .. #paintData,
        "-- ============================================",
        "",
        "local Terrain = workspace.Terrain",
        "local VOXEL_RES = 4",
        "",
        "local materials = {",
        "    [1]=Enum.Material.Grass,       [2]=Enum.Material.Rock,",
        "    [3]=Enum.Material.Water,       [4]=Enum.Material.Ground,",
        "    [5]=Enum.Material.Sand,        [6]=Enum.Material.Snow,",
        "    [7]=Enum.Material.Ice,         [8]=Enum.Material.Mud,",
        "    [9]=Enum.Material.Sandstone,   [10]=Enum.Material.Limestone,",
        "    [11]=Enum.Material.Cobblestone,[12]=Enum.Material.Basalt,",
        "    [13]=Enum.Material.Concrete,   [14]=Enum.Material.Salt,",
        "    [15]=Enum.Material.LeafyGrass, [16]=Enum.Material.Pavement,",
        "}",
        "",
    }
    
    -- Add WIND section if wind was enabled when generating
    if windEnabled then
        table.insert(lines, "-- ============================================")
        table.insert(lines, "-- WIND SETTINGS")
        table.insert(lines, "-- ============================================")
        table.insert(lines, "local windAngle = " .. windAngle)
        table.insert(lines, "local windStrength = " .. windStrength)
        table.insert(lines, "")
        table.insert(lines, "local function applyWind()")
        table.insert(lines, "    local rad = math.rad(windAngle)")
        table.insert(lines, "    local dir = Vector3.new(math.sin(rad), 0, math.cos(rad))")
        table.insert(lines, "    workspace.GlobalWind = dir * windStrength")
        table.insert(lines, "end")
        table.insert(lines, "")
        table.insert(lines, "applyWind()")
        table.insert(lines, "")
    end

    if #terrainData > 0 then
        table.insert(lines, "-- === DRAW DATA ===")
        table.insert(lines, "local drawData = {")
        for i, e in ipairs(terrainData) do
            local matNum = materialToNumber[e.material] or 1
            local shapeNum = 1
            if e.shape == "Ball"     then shapeNum = 2 end
            if e.shape == "Cylinder" then shapeNum = 3 end
            local comma = i < #terrainData and "," or ""
            table.insert(lines, string.format(
                "    {pos=Vector3.new(%.2f,%.2f,%.2f),size=%.2f,mat=%d,shape=%d}%s",
                e.pos.X, e.pos.Y, e.pos.Z, e.size, matNum, shapeNum, comma
            ))
        end
        table.insert(lines, "}")
        table.insert(lines, "")
        table.insert(lines, "for i, d in ipairs(drawData) do")
        table.insert(lines, "    local m = materials[d.mat]")
        table.insert(lines, "    local s = d.size")
        table.insert(lines, "    if d.shape == 2 then")
        table.insert(lines, "        Terrain:FillBall(d.pos, s/2, m)")
        table.insert(lines, "    else")
        table.insert(lines, "        Terrain:FillBlock(CFrame.new(d.pos), Vector3.new(s,s,s), m)")
        table.insert(lines, "    end")
        table.insert(lines, "    if i % 20 == 0 then task.wait() end")
        table.insert(lines, "end")
        table.insert(lines, "")
    end

    if #paintData > 0 then
        table.insert(lines, "-- === PAINT DATA ===")
        table.insert(lines, "local function applyPaint(centerPos, brushSize, targetMat)")
        table.insert(lines, "    local function snap(v)")
        table.insert(lines, "        return math.floor(v / VOXEL_RES) * VOXEL_RES")
        table.insert(lines, "    end")
        table.insert(lines, "    local half = math.max(brushSize, VOXEL_RES)")
        table.insert(lines, "    local minP = Vector3.new(snap(centerPos.X-half), snap(centerPos.Y-half), snap(centerPos.Z-half))")
        table.insert(lines, "    local maxP = Vector3.new(snap(centerPos.X+half)+VOXEL_RES, snap(centerPos.Y+half)+VOXEL_RES, snap(centerPos.Z+half)+VOXEL_RES)")
        table.insert(lines, "    local region = Region3.new(minP, maxP):ExpandToGrid(VOXEL_RES)")
        table.insert(lines, "    local mats, occs = Terrain:ReadVoxels(region, VOXEL_RES)")
        table.insert(lines, "    local sx, sy, sz = mats.Size.X, mats.Size.Y, mats.Size.Z")
        table.insert(lines, "    local nm, no = {}, {}")
        table.insert(lines, "    for x=1,sx do nm[x]={} no[x]={}")
        table.insert(lines, "        for y=1,sy do nm[x][y]={} no[x][y]={}")
        table.insert(lines, "            for z=1,sz do")
        table.insert(lines, "                local m,o = mats[x][y][z], occs[x][y][z]")
        table.insert(lines, "                if o>0 and m~=Enum.Material.Air then nm[x][y][z]=targetMat no[x][y][z]=o")
        table.insert(lines, "                else nm[x][y][z]=m no[x][y][z]=o end")
        table.insert(lines, "            end")
        table.insert(lines, "        end")
        table.insert(lines, "    end")
        table.insert(lines, "    Terrain:WriteVoxels(region, VOXEL_RES, nm, no)")
        table.insert(lines, "end")
        table.insert(lines, "")
        table.insert(lines, "local paintData = {")
        for i, e in ipairs(paintData) do
            local matNum = materialToNumber[e.material] or 1
            local comma = i < #paintData and "," or ""
            table.insert(lines, string.format(
                "    {pos=Vector3.new(%.2f,%.2f,%.2f),size=%.2f,mat=%d}%s",
                e.pos.X, e.pos.Y, e.pos.Z, e.size, matNum, comma
            ))
        end
        table.insert(lines, "}")
        table.insert(lines, "")
        table.insert(lines, "for i, d in ipairs(paintData) do")
        table.insert(lines, "    applyPaint(d.pos, d.size, materials[d.mat])")
        table.insert(lines, "    if i % 10 == 0 then task.wait() end")
        table.insert(lines, "end")
    end

    return table.concat(lines, "\n")
end

-- =========================================================
-- PANEL OPEN / CLOSE
-- =========================================================
local panelOpen = false
local listOpen  = false

local function openPanel(frame, w, h)
    frame.Visible = true
    TweenService:Create(frame, TweenInfo.new(0.22, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
        Size = UDim2.new(0, w, 0, h)
    }):Play()
end

local function closePanel(frame, cb)
    local t = TweenService:Create(frame, TweenInfo.new(0.18, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {
        Size = UDim2.new(0, 0, 0, 0)
    })
    t:Play()
    t.Completed:Connect(function()
        frame.Visible = false
        if cb then cb() end
    end)
end

floatBtn.MouseButton1Click:Connect(function()
    panelOpen = not panelOpen
    if panelOpen then
        openPanel(mainPanel, PANEL_W, PANEL_H)
    else
        closePanel(mainPanel)
    end
end)

onoffBtn.MouseButton1Click:Connect(function()
    brushEnabled = not brushEnabled
    onoffBtn.BackgroundColor3 = brushEnabled and C.GREEN or C.RED
    onoffBtn.Text             = brushEnabled and "ON" or "OFF"
end)

scriptListLabel.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        listOpen = not listOpen
        if listOpen then openPanel(listPanel, 234, 270)
        else closePanel(listPanel) end
    end
end)

closeListBtn.MouseButton1Click:Connect(function()
    listOpen = false
    closePanel(listPanel)
end)

-- =========================================================
-- CLEAR ALL
-- =========================================================
clearBtn.MouseButton1Click:Connect(function()
    if #terrainData == 0 then return end
    for _, e in ipairs(terrainData) do
        pcall(function()
            if e.shape == "Ball" then
                Terrain:FillBall(e.pos, e.size / 2, Enum.Material.Air)
            else
                Terrain:FillBlock(CFrame.new(e.pos), Vector3.new(e.size, e.size, e.size), Enum.Material.Air)
            end
        end)
    end
    terrainData = {}
    paintData   = {}
    updateCounter()
    clearBtn.Text             = "CLEARED!"
    clearBtn.BackgroundColor3 = Color3.fromRGB(170, 60, 10)
    task.wait(1.5)
    clearBtn.Text             = "CLEAR ALL"
    clearBtn.BackgroundColor3 = C.ORANGE
end)

-- =========================================================
-- ERASE HELPER
-- =========================================================
local function eraseNearby(pos, radius)
    for i = #terrainData, 1, -1 do
        local e = terrainData[i]
        local dx, dy, dz = e.pos.X-pos.X, e.pos.Y-pos.Y, e.pos.Z-pos.Z
        if math.sqrt(dx*dx+dy*dy+dz*dz) <= radius then
            table.remove(terrainData, i)
        end
    end
end

-- =========================================================
-- PAINT HELPER
-- =========================================================
local function paintTerrain(centerPos, brushSize, targetMat)
    local function snap(v)
        return math.floor(v / VOXEL_RES) * VOXEL_RES
    end
    local half = math.max(brushSize, VOXEL_RES)
    local minP = Vector3.new(
        snap(centerPos.X - half),
        snap(centerPos.Y - half),
        snap(centerPos.Z - half)
    )
    local maxP = Vector3.new(
        snap(centerPos.X + half) + VOXEL_RES,
        snap(centerPos.Y + half) + VOXEL_RES,
        snap(centerPos.Z + half) + VOXEL_RES
    )
    local region = Region3.new(minP, maxP):ExpandToGrid(VOXEL_RES)
    local mats, occs = Terrain:ReadVoxels(region, VOXEL_RES)
    local sx, sy, sz = mats.Size.X, mats.Size.Y, mats.Size.Z
    local newMats = {}
    local newOccs = {}
    for x = 1, sx do
        newMats[x] = {}
        newOccs[x] = {}
        for y = 1, sy do
            newMats[x][y] = {}
            newOccs[x][y] = {}
            for z = 1, sz do
                local m = mats[x][y][z]
                local o = occs[x][y][z]
                if o > 0 and m ~= Enum.Material.Air then
                    newMats[x][y][z] = targetMat
                    newOccs[x][y][z] = o
                else
                    newMats[x][y][z] = m
                    newOccs[x][y][z] = o
                end
            end
        end
    end
    Terrain:WriteVoxels(region, VOXEL_RES, newMats, newOccs)
end

-- =========================================================
-- PAINTING / ERASING / CONVERTING
-- =========================================================
local painting  = false
local lastPaint = 0
local DELAY     = 0.05

local pendingPart = nil

mouse.Button1Down:Connect(function() 
    if brushEnabled then painting = true end
end)

mouse.Button1Up:Connect(function() 
    painting = false 
end)

mouse.Button1Up:Connect(function()
    if not brushEnabled or brushMode ~= "Convert" then return end
    local target = mouse.Target
    if target and target:IsA("BasePart") and target.Parent then
        pendingPart = target
        createMaterialSelector(target, function(selectedMaterial)
            if pendingPart and pendingPart.Parent then
                convertPartToTerrain(pendingPart, selectedMaterial)
                pendingPart = nil
            end
        end)
    end
end)

RunService.Heartbeat:Connect(function()
    if not painting or not brushEnabled then return end
    if (tick() - lastPaint) < DELAY then return end
    local target = mouse.Target
    if not target or not target.Parent then return end
    local pos  = mouse.Hit.Position
    local size = math.clamp(currentSize, 1, 32)

    if brushMode == "Draw" then
        pcall(function()
            if selectedShape == "Ball" then
                Terrain:FillBall(pos, size/2, selectedTerrain)
            else
                Terrain:FillBlock(CFrame.new(pos), Vector3.new(size,size,size), selectedTerrain)
            end
        end)
        table.insert(terrainData, { pos=pos, size=size, material=selectedTerrain, shape=selectedShape })
        updateCounter()

    elseif brushMode == "Erase" then
        pcall(function()
            if selectedShape == "Ball" then
                Terrain:FillBall(pos, size/2, Enum.Material.Air)
            else
                Terrain:FillBlock(CFrame.new(pos), Vector3.new(size,size,size), Enum.Material.Air)
            end
        end)
        eraseNearby(pos, size)
        updateCounter()

    elseif brushMode == "Paint" then
        pcall(function()
            paintTerrain(pos, size, selectedTerrain)
        end)
        table.insert(paintData, { pos=pos, size=size, material=selectedTerrain })
        updateCounter()
    end

    lastPaint = tick()
end)

-- =========================================================
-- GENERATE SCRIPT
-- =========================================================
generateBtn.MouseButton1Click:Connect(function()
    if #terrainData == 0 and #paintData == 0 then return end
    generateBtn.Text             = "GENERATING..."
    generateBtn.BackgroundColor3 = C.YELLOW
    task.wait(0.4)
    local sc = generateScript()
    if sc then
        local name = "Terrain_" .. os.date("%H%M%S")
        addScriptToList(name, sc)
        generateBtn.Text             = "DONE!"
        generateBtn.BackgroundColor3 = C.GREEN
        if not listOpen then
            listOpen = true
            openPanel(listPanel, 234, 270)
        end
        task.wait(2)
        generateBtn.Text             = "GENERATE"
        generateBtn.BackgroundColor3 = C.BLUE
    end
end)