local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local Lighting = game:GetService("Lighting")
local CoreGui = game:GetService("CoreGui")
local UserInputService = game:GetService("UserInputService")

local GUI_NAME = "DiscordJoinCardUI"
local oldGui = CoreGui:FindFirstChild(GUI_NAME)
if oldGui then oldGui:Destroy() end

local function getParent()
	if gethui then return gethui() end
	return CoreGui
end

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = GUI_NAME
ScreenGui.ResetOnSpawn = false
ScreenGui.IgnoreGuiInset = true
ScreenGui.Parent = getParent()

local Blur = Instance.new("BlurEffect")
Blur.Name = "DiscordCardBlur"
Blur.Size = 0
Blur.Parent = Lighting

TweenService:Create(Blur, TweenInfo.new(0.5), {Size = 16}):Play()

local Card = Instance.new("Frame")
Card.Name = "DiscordCard"
Card.Size = UDim2.fromOffset(260, 160)
Card.Position = UDim2.new(0.5, 0, 1.5, 0)
Card.AnchorPoint = Vector2.new(0.5, 0.5)
Card.BackgroundColor3 = Color3.fromRGB(15, 15, 18)
Card.BorderSizePixel = 0
Card.ClipsDescendants = false
Card.Parent = ScreenGui

local CardCorner = Instance.new("UICorner")
CardCorner.CornerRadius = UDim.new(0, 10)
CardCorner.Parent = Card

local CardStroke = Instance.new("UIStroke")
CardStroke.Color = Color3.fromRGB(0, 0, 0)
CardStroke.Transparency = 0.94
CardStroke.Thickness = 2
CardStroke.Parent = Card

local TitleText = Instance.new("TextLabel")
TitleText.Name = "TitleText"
TitleText.Size = UDim2.new(1, -40, 0, 20)
TitleText.Position = UDim2.fromOffset(14, 10)
TitleText.BackgroundTransparency = 1
TitleText.Text = "JOINED DISCORD"
TitleText.TextColor3 = Color3.fromRGB(223, 230, 237)
TitleText.TextSize = 12
TitleText.Font = Enum.Font.ArialBold
TitleText.TextXAlignment = Enum.TextXAlignment.Left
TitleText.Parent = Card

task.spawn(function()
	while Card and Card.Parent do
		local tweenFade = TweenService:Create(TitleText, TweenInfo.new(1.2, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {TextTransparency = 0.7})
		tweenFade:Play()
		tweenFade.Completed:Wait()
		local tweenShow = TweenService:Create(TitleText, TweenInfo.new(1.2, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {TextTransparency = 0})
		tweenShow:Play()
		tweenShow.Completed:Wait()
	end
end)

local CloseBtn = Instance.new("ImageButton")
CloseBtn.Name = "CloseBtn"
CloseBtn.Size = UDim2.fromOffset(14, 14)
CloseBtn.Position = UDim2.new(1, -24, 0, 13)
CloseBtn.BackgroundTransparency = 1
CloseBtn.Image = "rbxassetid://110786993356448"
CloseBtn.ImageColor3 = Color3.fromRGB(223, 230, 237)
CloseBtn.Parent = Card

-- Description 1 (Bahasa Indonesia)
local DescText1 = Instance.new("TextLabel")
DescText1.Name = "DescText1"
DescText1.Size = UDim2.new(1, -28, 0, 32)
DescText1.Position = UDim2.fromOffset(14, 32)
DescText1.BackgroundTransparency = 1
DescText1.Text = ""
DescText1.TextColor3 = Color3.fromRGB(180, 185, 195)
DescText1.TextSize = 10
DescText1.Font = Enum.Font.Arial
DescText1.TextWrapped = true
DescText1.TextYAlignment = Enum.TextYAlignment.Top
DescText1.TextXAlignment = Enum.TextXAlignment.Left
DescText1.Parent = Card

-- Description 2 (Bahasa Inggris)
local DescText2 = Instance.new("TextLabel")
DescText2.Name = "DescText2"
DescText2.Size = UDim2.new(1, -28, 0, 24)
DescText2.Position = UDim2.fromOffset(14, 66)
DescText2.BackgroundTransparency = 1
DescText2.Text = ""
DescText2.TextColor3 = Color3.fromRGB(130, 135, 145)
DescText2.TextSize = 9
DescText2.Font = Enum.Font.Arial
DescText2.TextWrapped = true
DescText2.TextYAlignment = Enum.TextYAlignment.Top
DescText2.TextXAlignment = Enum.TextXAlignment.Left
DescText2.Parent = Card

local textDesc1 = "Nars Endeavor script plugin. Gabung ke server Discord resmi kami untuk info update, fitur baru, dan bantuan Komunitas."
local textDesc2 = "Stay updated with Nars Endeavor. Join the community for updates, support, and more."

task.spawn(function()
	task.wait(0.5)
	-- Ketik Desc 1
	for i = 1, #textDesc1 do
		if not Card or not Card.Parent then break end
		DescText1.Text = string.sub(textDesc1, 1, i)
		task.wait(0.025)
	end
	
	task.wait(0.2)
	-- Ketik Desc 2
	for i = 1, #textDesc2 do
		if not Card or not Card.Parent then break end
		DescText2.Text = string.sub(textDesc2, 1, i)
		task.wait(0.025)
	end
end)

local JoinBtn = Instance.new("TextButton")
JoinBtn.Name = "JoinBtn"
JoinBtn.Size = UDim2.new(1, -28, 0, 32)
JoinBtn.Position = UDim2.new(0, 14, 1, -35)
JoinBtn.BackgroundColor3 = Color3.fromRGB(223, 230, 237)
JoinBtn.Text = "JOINED DISCORD"
JoinBtn.TextColor3 = Color3.fromRGB(15, 15, 18)
JoinBtn.TextSize = 10
JoinBtn.Font = Enum.Font.ArialBold
JoinBtn.AutoButtonColor = false
JoinBtn.ClipsDescendants = true
JoinBtn.Parent = Card

local BtnCorner = Instance.new("UICorner")
BtnCorner.CornerRadius = UDim.new(0, 6)
BtnCorner.Parent = JoinBtn

local BtnIcon = Instance.new("ImageLabel")
BtnIcon.Name = "BtnIcon"
BtnIcon.Size = UDim2.fromOffset(14, 14)
BtnIcon.Position = UDim2.new(0, 10, 0.5, -7)
BtnIcon.BackgroundTransparency = 1
BtnIcon.Image = "rbxassetid://125600127845630"
BtnIcon.ImageColor3 = Color3.fromRGB(15, 15, 18)
BtnIcon.Parent = JoinBtn

local GradientFrame = Instance.new("Frame")
GradientFrame.Size = UDim2.new(0, 30, 1, 0)
GradientFrame.Position = UDim2.new(-0.3, 0, 0, 0)
GradientFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
GradientFrame.BorderSizePixel = 0
GradientFrame.BackgroundTransparency = 0.5
GradientFrame.Parent = JoinBtn

local UIGradient = Instance.new("UIGradient")
UIGradient.Transparency = NumberSequence.new({
	NumberSequenceKeypoint.new(0, 1),
	NumberSequenceKeypoint.new(0.5, 0.2),
	NumberSequenceKeypoint.new(1, 1)
})
UIGradient.Parent = GradientFrame

task.spawn(function()
	while JoinBtn and JoinBtn.Parent do
		GradientFrame.Position = UDim2.new(-0.3, 0, 0, 0)
		local shine = TweenService:Create(GradientFrame, TweenInfo.new(1.8, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Position = UDim2.new(1.3, 0, 0, 0)})
		shine:Play()
		shine.Completed:Wait()
		task.wait(1.5)
	end
end)

JoinBtn.MouseButton1Click:Connect(function()
	if setclipboard then
		setclipboard("https://discord.gg/kxZjV8tEN")
	end
	
	local origText = JoinBtn.Text
	JoinBtn.Text = "COPIED TO CLIPBOARD!"
	task.wait(1.5)
	if JoinBtn and JoinBtn.Parent then
		JoinBtn.Text = origText
	end
end)

local particleColors = {
	Color3.fromRGB(255, 255, 255),
	Color3.fromRGB(255, 75, 75),
	Color3.fromRGB(75, 255, 125),
	Color3.fromRGB(255, 220, 75)
}

local function SpawnBinaryParticle()
	if not Card or not Card.Parent then return end
	
	local particle = Instance.new("ImageLabel")
	particle.Size = UDim2.fromOffset(16, 16)
	particle.BackgroundTransparency = 1
	particle.Image = "rbxassetid://91751953950088"
	particle.ImageColor3 = particleColors[math.random(1, #particleColors)]
	particle.ImageTransparency = 1
	
	local offsetX = math.random(-40, 280)
	local offsetY = math.random(-40, 180)
	particle.Position = UDim2.fromOffset(offsetX, offsetY)
	particle.Parent = Card
	
	task.spawn(function()
		local fadeIn = TweenService:Create(particle, TweenInfo.new(0.6), {ImageTransparency = 0.2})
		fadeIn:Play()
		fadeIn.Completed:Wait()
		
		task.wait(0.4)
		
		local fadeOut = TweenService:Create(particle, TweenInfo.new(0.6), {ImageTransparency = 1})
		fadeOut:Play()
		fadeOut.Completed:Wait()
		
		particle:Destroy()
	end)
end

task.spawn(function()
	while Card and Card.Parent do
		SpawnBinaryParticle()
		task.wait(0.4)
	end
end)

TweenService:Create(Card, TweenInfo.new(0.5, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {Position = UDim2.new(0.5, 0, 0.5, 0)}):Play()

local function CloseUI()
	TweenService:Create(Blur, TweenInfo.new(0.3), {Size = 0}):Play()
	local tweenClose = TweenService:Create(Card, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {Position = UDim2.new(0.5, 0, 1.5, 0)})
	tweenClose:Play()
	tweenClose.Completed:Connect(function()
		Blur:Destroy()
		ScreenGui:Destroy()
	end)
end

CloseBtn.MouseButton1Click:Connect(CloseUI)
