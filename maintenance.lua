-- Services
local TweenService = game:GetService("TweenService")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local PlayerGui = LocalPlayer:WaitForChild("PlayerGui")

-- Configuration
local CHANNEL_LINK = "https://whatsapp.com/channel/example" -- Ganti dengan link channel Anda

-- Prevent Duplicate GUI
if PlayerGui:FindFirstChild("MaintenanceGui") then
    PlayerGui.MaintenanceGui:Destroy()
end

-- 1. Create ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "MaintenanceGui"
screenGui.ResetOnSpawn = false
screenGui.Parent = PlayerGui

-- 2. Create Card Panel (Size: 0, 220, 0, 150)
local cardPanel = Instance.new("Frame")
cardPanel.Name = "CardPanel"
cardPanel.AnchorPoint = Vector2.new(0.5, 0.5)
cardPanel.Position = UDim2.new(0.5, 0, -0.3, 0) -- Posisi awal di atas layar
cardPanel.Size = UDim2.new(0, 220, 0, 140)
cardPanel.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
cardPanel.BorderSizePixel = 0
cardPanel.ClipsDescendants = true
cardPanel.Parent = screenGui

local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 10)
corner.Parent = cardPanel

local stroke = Instance.new("UIStroke")
stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
stroke.Color = Color3.fromRGB(0, 0, 0)
stroke.Transparency = 0.94
stroke.Thickness = 2
stroke.Parent = cardPanel

local cardGradient = Instance.new("UIGradient")
cardGradient.Color = ColorSequence.new({
    ColorSequenceKeypoint.new(0, Color3.fromRGB(25, 25, 25)),
    ColorSequenceKeypoint.new(0.5, Color3.fromRGB(10, 10, 10)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(2, 2, 2))
})
cardGradient.Rotation = 45
cardGradient.Parent = cardPanel

-- 3. Close Button
local closeBtn = Instance.new("ImageButton")
closeBtn.Name = "CloseButton"
closeBtn.Size = UDim2.new(0, 18, 0, 18)
closeBtn.Position = UDim2.new(1, -24, 0, 8)
closeBtn.BackgroundTransparency = 1
closeBtn.Image = "rbxassetid://75539660682193"
closeBtn.ImageColor3 = Color3.fromRGB(150, 150, 150)
closeBtn.Parent = cardPanel

closeBtn.MouseEnter:Connect(function()
    TweenService:Create(closeBtn, TweenInfo.new(0.2), {ImageColor3 = Color3.fromRGB(255, 255, 255)}):Play()
end)
closeBtn.MouseLeave:Connect(function()
    TweenService:Create(closeBtn, TweenInfo.new(0.2), {ImageColor3 = Color3.fromRGB(150, 150, 150)}):Play()
end)

-- 4. Title Text (Kelap-Kelip Animation)
local titleText = Instance.new("TextLabel")
titleText.Name = "TitleText"
titleText.Size = UDim2.new(1, -36, 0, 18)
titleText.Position = UDim2.new(0, 10, 0, 10)
titleText.BackgroundTransparency = 1
titleText.Text = "MAINTENANCE UPDATE PLUGIN"
titleText.TextColor3 = Color3.fromRGB(223, 230, 237)
titleText.TextSize = 11
titleText.Font = Enum.Font.GothamBold
titleText.TextXAlignment = Enum.TextXAlignment.Left
titleText.Parent = cardPanel

task.spawn(function()
    local tweenInfo = TweenInfo.new(1, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut, -1, true)
    local tween = TweenService:Create(titleText, tweenInfo, {TextTransparency = 0.6})
    tween:Play()
end)

-- 5. Description Text (Typewriter Animation)
local descText = Instance.new("TextLabel")
descText.Name = "DescText"
descText.Size = UDim2.new(1, -20, 0, 48)
descText.Position = UDim2.new(0, 10, 0, 30)
descText.BackgroundTransparency = 1
descText.Text = ""
descText.TextColor3 = Color3.fromRGB(170, 175, 180)
descText.TextSize = 8.5
descText.Font = Enum.Font.GothamMedium
descText.TextWrapped = true
descText.TextXAlignment = Enum.TextXAlignment.Left
descText.TextYAlignment = Enum.TextYAlignment.Top
descText.Parent = cardPanel

local fullText = "PLUGIN SEDANG DALAM TAHAP PEMELIHARAAN BERKALA.\nAKSES SEMENTARA DITUTUP UNTUK MENGHINDARI BUG.\nMOHON BERSABAR HINGGA PEMBARUAN SELESAI."

-- 6. Join Channel Button (223, 230, 237 Background & Glossy Sweep Effect)
local joinBtn = Instance.new("TextButton")
joinBtn.Name = "JoinButton"
joinBtn.Size = UDim2.new(1, -20, 0, 28)
joinBtn.Position = UDim2.new(0, 10, 0, 86)
joinBtn.BackgroundColor3 = Color3.fromRGB(223, 230, 237)
joinBtn.BorderSizePixel = 0
joinBtn.Text = "JOIN CHANNEL"
joinBtn.TextColor3 = Color3.fromRGB(10, 10, 10)
joinBtn.TextSize = 10
joinBtn.Font = Enum.Font.GothamBold
joinBtn.ClipsDescendants = true
joinBtn.Parent = cardPanel

local btnCorner = Instance.new("UICorner")
btnCorner.CornerRadius = UDim.new(0, 6)
btnCorner.Parent = joinBtn

local btnIcon = Instance.new("ImageLabel")
btnIcon.Name = "BtnIcon"
btnIcon.Size = UDim2.new(0, 14, 0, 14)
btnIcon.Position = UDim2.new(0, 8, 0.5, -7)
btnIcon.BackgroundTransparency = 1
btnIcon.Image = "rbxassetid://86309956430067"
btnIcon.ImageColor3 = Color3.fromRGB(10, 10, 10)
btnIcon.Parent = joinBtn

-- Glossy Shine Frame (Efek Mengkilap Lewat)
local shineFrame = Instance.new("Frame")
shineFrame.Name = "ShineFrame"
shineFrame.Size = UDim2.new(0, 30, 1, 0)
shineFrame.Position = UDim2.new(-0.4, 0, 0, 0)
shineFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
shineFrame.BackgroundTransparency = 0.5
shineFrame.BorderSizePixel = 0
shineFrame.Rotation = 15
shineFrame.Parent = joinBtn

local shineGradient = Instance.new("UIGradient")
shineGradient.Transparency = NumberSequence.new({
    NumberSequenceKeypoint.new(0, 1),
    NumberSequenceKeypoint.new(0.5, 0.2),
    NumberSequenceKeypoint.new(1, 1)
})
shineGradient.Parent = shineFrame

-- Loop Animasi Mengkilap Lewat
task.spawn(function()
    while true do
        shineFrame.Position = UDim2.new(-0.4, 0, 0, 0)
        local shineTween = TweenService:Create(shineFrame, TweenInfo.new(1.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
            Position = UDim2.new(1.4, 0, 0, 0)
        })
        shineTween:Play()
        task.wait(3.5)
    end
end)

-- Copy Link Event
joinBtn.MouseButton1Click:Connect(function()
    if setclipboard then
        setclipboard(CHANNEL_LINK)
    end
    
    local originalText = joinBtn.Text
    joinBtn.Text = "LINK COPIED!"
    task.delay(1.5, function()
        joinBtn.Text = originalText
    end)
end)

-- 7. Source Info Tag
local sourceText = Instance.new("TextLabel")
sourceText.Name = "SourceText"
sourceText.Size = UDim2.new(1, -20, 0, 12)
sourceText.Position = UDim2.new(0, 10, 1, -16)
sourceText.BackgroundTransparency = 1
sourceText.Text = "SYSTEM BY: NARS ENDEAVOR"
sourceText.TextColor3 = Color3.fromRGB(90, 95, 100)
sourceText.TextSize = 7
sourceText.Font = Enum.Font.GothamBold
sourceText.TextXAlignment = Enum.TextXAlignment.Left
sourceText.Parent = cardPanel

-- ANIMASI OPENING (Bounce Fall Down)
task.spawn(function()
    task.wait(0.2)
    local targetPos = UDim2.new(0.5, 0, 0.5, 0)
    local openTweenInfo = TweenInfo.new(0.8, Enum.EasingStyle.Bounce, Enum.EasingDirection.Out)
    local openTween = TweenService:Create(cardPanel, openTweenInfo, {Position = targetPos})
    
    openTween:Play()

    openTween.Completed:Connect(function()
        task.spawn(function()
            for i = 1, #fullText do
                descText.Text = string.sub(fullText, 1, i)
                task.wait(0.04)
            end
        end)
    end)
end)

-- ANIMASI CLOSING (Shrink & Fly Up)
local isClosing = false
closeBtn.MouseButton1Click:Connect(function()
    if isClosing then return end
    isClosing = true
    
    local closeTweenInfo = TweenInfo.new(0.4, Enum.EasingStyle.Back, Enum.EasingDirection.In)
    local closeTween = TweenService:Create(cardPanel, closeTweenInfo, {
        Position = UDim2.new(0.5, 0, -0.3, 0),
        Size = UDim2.new(0, 0, 0, 0)
    })
    
    closeTween:Play()
    closeTween.Completed:Connect(function()
        screenGui:Destroy()
    end)
end)
