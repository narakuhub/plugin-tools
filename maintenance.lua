local TweenService = game:GetService("TweenService")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local PlayerGui = LocalPlayer:WaitForChild("PlayerGui")

if PlayerGui:FindFirstChild("MaintenanceGui") then
    PlayerGui.MaintenanceGui:Destroy()
end

local screenGui = Instance.new("ScreenGui")
screenGui.Name = "MaintenanceGui"
screenGui.ResetOnSpawn = false
screenGui.Parent = PlayerGui

local cardPanel = Instance.new("Frame")
cardPanel.Name = "CardPanel"
cardPanel.AnchorPoint = Vector2.new(0.5, 0.5)
-- Posisi awal di atas layar untuk animasi jatuh
cardPanel.Position = UDim2.new(0.5, 0, -0.2, 0)
cardPanel.Size = UDim2.new(0, 220, 0, 100)
cardPanel.BackgroundColor3 = Color3.fromRGB(10, 10, 10) -- Hitam Pekat Elegan
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
stroke.Thickness = 1.5
stroke.Parent = cardPanel

local cardGradient = Instance.new("UIGradient")
cardGradient.Color = ColorSequence.new({
    ColorSequenceKeypoint.new(0, Color3.fromRGB(25, 25, 25)),
    ColorSequenceKeypoint.new(0.5, Color3.fromRGB(10, 10, 10)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(2, 2, 2))
})
cardGradient.Rotation = 45
cardGradient.Parent = cardPanel

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
                task.wait(0.070)
            end
        end)
    end)
end)

local isClosing = false
closeBtn.MouseButton1Click:Connect(function()
    if isClosing then return end
    isClosing = true
    
    local closeTweenInfo = TweenInfo.new(0.4, Enum.EasingStyle.Back, Enum.EasingDirection.In)
    local closeTween = TweenService:Create(cardPanel, closeTweenInfo, {
        Position = UDim2.new(0.5, 0, -0.2, 0),
        Size = UDim2.new(0, 0, 0, 0)
    })
    
    closeTween:Play()
    closeTween.Completed:Connect(function()
        screenGui:Destroy()
    end)
end)
