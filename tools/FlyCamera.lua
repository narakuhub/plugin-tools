-- FLY CAMERA SPEED - DEV NARS ENDEAVOR
_G.FlySpeed = 50 
_G.FlySpeedEnabled = false 

local Players = game:GetService("Players")
local CoreGui = game:GetService("CoreGui")
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")

local GUI_NAME = "FlyCameraUI"
local oldGui = CoreGui:FindFirstChild(GUI_NAME)
if oldGui then oldGui:Destroy() end

local function getParent()
	if gethui then return gethui() end
	return CoreGui
end

local Gui = Instance.new("ScreenGui")
Gui.Name = GUI_NAME
Gui.ResetOnSpawn = false
Gui.IgnoreGuiInset = true
Gui.Parent = getParent()

-- Main Panel (Card) - Size Fixed: Scale 0, Offset 250 (X) | Scale 0, Offset 150 (Y)
local Card = Instance.new("Frame")
Card.Name = "CardPanel"
Card.Size = UDim2.new(0, 250, 0, 150)
Card.Position = UDim2.new(0.5, -125, 0.5, -75)
Card.BackgroundColor3 = Color3.fromRGB(15, 15, 18)
Card.BorderSizePixel = 0
Card.ClipsDescendants = true
Card.Parent = Gui

local CardCorner = Instance.new("UICorner")
CardCorner.CornerRadius = UDim.new(0, 10)
CardCorner.Parent = Card

local CardStroke = Instance.new("UIStroke")
CardStroke.Color = Color3.fromRGB(0, 0, 0)
CardStroke.Transparency = 0.94
CardStroke.Thickness = 2
CardStroke.Parent = Card

-- Header Section - Size Fixed: Scale 1, Offset 0 (X) | Scale 0, Offset 30 (Y)
local Header = Instance.new("Frame")
Header.Name = "Header"
Header.Size = UDim2.new(1, 0, 0, 30)
Header.BackgroundColor3 = Color3.fromRGB(223, 230, 237)
Header.BorderSizePixel = 0
Header.Parent = Card

local HeaderCorner = Instance.new("UICorner")
HeaderCorner.CornerRadius = UDim.new(0, 10)
HeaderCorner.Parent = Header

local HeaderFix = Instance.new("Frame")
HeaderFix.Size = UDim2.new(1, 0, 0, 10)
HeaderFix.Position = UDim2.new(0, 0, 1, -10)
HeaderFix.BackgroundColor3 = Color3.fromRGB(223, 230, 237)
HeaderFix.BorderSizePixel = 0
HeaderFix.Parent = Header

-- Title Icon
local TitleIcon = Instance.new("ImageLabel")
TitleIcon.Name = "TitleIcon"
TitleIcon.Size = UDim2.fromOffset(14, 14)
TitleIcon.Position = UDim2.fromOffset(10, 8)
TitleIcon.BackgroundTransparency = 1
TitleIcon.Image = "rbxassetid://80451686744860"
TitleIcon.ImageColor3 = Color3.fromRGB(0, 0, 0)
TitleIcon.Parent = Header

-- Container Box (Title + Subtitle)
local TitleContainer = Instance.new("Frame")
TitleContainer.Size = UDim2.new(1, -70, 1, 0)
TitleContainer.Position = UDim2.fromOffset(30, 0)
TitleContainer.BackgroundTransparency = 1
TitleContainer.Parent = Header

local HeaderTitle = Instance.new("TextLabel")
HeaderTitle.Size = UDim2.new(1, 0, 0, 14)
HeaderTitle.Position = UDim2.fromOffset(0, 4)
HeaderTitle.BackgroundTransparency = 1
HeaderTitle.Text = "FLY CAMERA SPEED"
HeaderTitle.TextColor3 = Color3.fromRGB(0, 0, 0)
HeaderTitle.TextSize = 10
HeaderTitle.Font = Enum.Font.ArialBold
HeaderTitle.TextXAlignment = Enum.TextXAlignment.Left
HeaderTitle.Parent = TitleContainer

local TitleStroke = Instance.new("UIStroke")
TitleStroke.Color = Color3.fromRGB(0, 0, 0)
TitleStroke.Transparency = 0.94
TitleStroke.Thickness = 1
TitleStroke.Parent = HeaderTitle

local SubTitle = Instance.new("TextLabel")
SubTitle.Size = UDim2.new(1, 0, 0, 10)
SubTitle.Position = UDim2.fromOffset(0, 16)
SubTitle.BackgroundTransparency = 1
SubTitle.Text = "NARS ENDEAVOR"
SubTitle.TextColor3 = Color3.fromRGB(80, 85, 95)
SubTitle.TextSize = 8
SubTitle.Font = Enum.Font.ArialBold
SubTitle.TextXAlignment = Enum.TextXAlignment.Left
SubTitle.Parent = TitleContainer

local BackBtn = Instance.new("ImageButton")
BackBtn.Name = "BackBtn"
BackBtn.Size = UDim2.fromOffset(14, 14)
BackBtn.Position = UDim2.new(1, -44, 0.5, -7)
BackBtn.BackgroundTransparency = 1
BackBtn.Image = "rbxassetid://118026365011536"
BackBtn.ImageColor3 = Color3.fromRGB(15, 15, 18)
BackBtn.Parent = Header

local CloseBtn = Instance.new("ImageButton")
CloseBtn.Name = "CloseBtn"
CloseBtn.Size = UDim2.fromOffset(14, 14)
CloseBtn.Position = UDim2.new(1, -22, 0.5, -7)
CloseBtn.BackgroundTransparency = 1
CloseBtn.Image = "rbxassetid://110786993356448"
CloseBtn.ImageColor3 = Color3.fromRGB(15, 15, 18)
CloseBtn.Parent = Header

-- Open Floating Button (UICorner: 5)
local OpenBtn = Instance.new("TextButton")
OpenBtn.Name = "OpenFlyCamBtn"
OpenBtn.Size = UDim2.new(0, 80, 0, 20)
OpenBtn.Position = UDim2.new(0, 37, 0, 57)
OpenBtn.BackgroundColor3 = Color3.fromRGB(223, 230, 237)
OpenBtn.Text = "FlyCamera"
OpenBtn.TextColor3 = Color3.fromRGB(15, 15, 18)
OpenBtn.TextSize = 10
OpenBtn.Font = Enum.Font.ArialBold
OpenBtn.Visible = false
OpenBtn.Parent = Gui

local OpenBtnCorner = Instance.new("UICorner")
OpenBtnCorner.CornerRadius = UDim.new(0, 5)
OpenBtnCorner.Parent = OpenBtn

local OpenBtnStroke = Instance.new("UIStroke")
OpenBtnStroke.Color = Color3.fromRGB(0, 0, 0)
OpenBtnStroke.Transparency = 0.94
OpenBtnStroke.Thickness = 2
OpenBtnStroke.Parent = OpenBtn

-- Body Container
local Body = Instance.new("Frame")
Body.Size = UDim2.new(1, -24, 1, -38)
Body.Position = UDim2.fromOffset(12, 34)
Body.BackgroundTransparency = 1
Body.Parent = Card

local DescRow = Instance.new("Frame")
DescRow.Size = UDim2.new(1, 0, 0, 24)
DescRow.BackgroundTransparency = 1
DescRow.Parent = Body

local DescText = Instance.new("TextLabel")
DescText.Size = UDim2.new(1, -44, 1, 0)
DescText.BackgroundTransparency = 1
DescText.Text = "Aktifkan toggle untuk ubah speed Fly camera."
DescText.TextColor3 = Color3.fromRGB(140, 145, 155)
DescText.TextSize = 10
DescText.Font = Enum.Font.Arial
DescText.TextWrapped = true
DescText.TextXAlignment = Enum.TextXAlignment.Left
DescText.Parent = DescRow

local ToggleBg = Instance.new("TextButton")
ToggleBg.Name = "ToggleBg"
ToggleBg.Size = UDim2.fromOffset(34, 18)
ToggleBg.Position = UDim2.new(1, -34, 0.5, -9)
ToggleBg.BackgroundColor3 = Color3.fromRGB(35, 38, 45)
ToggleBg.Text = ""
ToggleBg.AutoButtonColor = false
ToggleBg.Parent = DescRow

local ToggleBgCorner = Instance.new("UICorner")
ToggleBgCorner.CornerRadius = UDim.new(1, 0)
ToggleBgCorner.Parent = ToggleBg

local ToggleStroke = Instance.new("UIStroke")
ToggleStroke.Color = Color3.fromRGB(223, 230, 237)
ToggleStroke.Transparency = 0.85
ToggleStroke.Thickness = 1
ToggleStroke.Parent = ToggleBg

local ToggleCircle = Instance.new("Frame")
ToggleCircle.Size = UDim2.fromOffset(12, 12)
ToggleCircle.Position = UDim2.fromOffset(3, 3)
ToggleCircle.BackgroundColor3 = Color3.fromRGB(150, 155, 165)
ToggleCircle.Parent = ToggleBg

local ToggleCircleCorner = Instance.new("UICorner")
ToggleCircleCorner.CornerRadius = UDim.new(1, 0)
ToggleCircleCorner.Parent = ToggleCircle

-- Slider Row (Speed: 10 - 500)
local SliderRow = Instance.new("Frame")
SliderRow.Size = UDim2.new(1, 0, 0, 42)
SliderRow.Position = UDim2.fromOffset(0, 28)
SliderRow.BackgroundTransparency = 1
SliderRow.Parent = Body

local SliderLabel = Instance.new("TextLabel")
SliderLabel.Size = UDim2.new(0.5, 0, 0, 14)
SliderLabel.BackgroundTransparency = 1
SliderLabel.Text = "FlyCamera Speed custom 10-500"
SliderLabel.TextColor3 = Color3.fromRGB(200, 205, 215)
SliderLabel.TextSize = 10
SliderLabel.Font = Enum.Font.ArialBold
SliderLabel.TextXAlignment = Enum.TextXAlignment.Left
SliderLabel.Parent = SliderRow

local SpeedText = Instance.new("TextLabel")
SpeedText.Size = UDim2.new(0.5, 0, 0, 14)
SpeedText.Position = UDim2.new(0.5, 0, 0, 0)
SpeedText.BackgroundTransparency = 1
SpeedText.Text = "50"
SpeedText.TextColor3 = Color3.fromRGB(223, 230, 237)
SpeedText.TextSize = 10
SpeedText.Font = Enum.Font.ArialBold
SpeedText.TextXAlignment = Enum.TextXAlignment.Right
SpeedText.Parent = SliderRow

local SliderTrack = Instance.new("TextButton")
SliderTrack.Size = UDim2.new(1, 0, 0, 10)
SliderTrack.Position = UDim2.fromOffset(0, 20)
SliderTrack.BackgroundColor3 = Color3.fromRGB(30, 33, 40)
SliderTrack.Text = ""
SliderTrack.AutoButtonColor = false
SliderTrack.ClipsDescendants = false
SliderTrack.Parent = SliderRow

local TrackCorner = Instance.new("UICorner")
TrackCorner.CornerRadius = UDim.new(1, 0)
TrackCorner.Parent = SliderTrack

local SliderFill = Instance.new("Frame")
-- Posisi awal slider disesuaikan dengan nilai Speed awal 50 (Range 10-500)
SliderFill.Size = UDim2.new((50 - 10) / (500 - 10), 0, 1, 0)
SliderFill.BackgroundColor3 = Color3.fromRGB(223, 230, 237)
SliderFill.BorderSizePixel = 0
SliderFill.Parent = SliderTrack

local FillCorner = Instance.new("UICorner")
FillCorner.CornerRadius = UDim.new(1, 0)
FillCorner.Parent = SliderFill

-- Fix Knob agar mentok pas di dalam Slider (Left Alignment)
local SliderKnob = Instance.new("Frame")
SliderKnob.Size = UDim2.fromOffset(10, 10)
SliderKnob.Position = UDim2.new(1, -10, 0, 0)
SliderKnob.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SliderKnob.Parent = SliderFill

local KnobCorner = Instance.new("UICorner")
KnobCorner.CornerRadius = UDim.new(1, 0)
KnobCorner.Parent = SliderKnob

local KnobStroke = Instance.new("UIStroke")
KnobStroke.Color = Color3.fromRGB(15, 15, 18)
KnobStroke.Transparency = 0.5
KnobStroke.Thickness = 1
KnobStroke.Parent = SliderKnob

-- Quick Preset Buttons (Mengisi area bawah slider yang kosong)
local PresetRow = Instance.new("Frame")
PresetRow.Size = UDim2.new(1, 0, 0, 18)
PresetRow.Position = UDim2.fromOffset(0, 76)
PresetRow.BackgroundTransparency = 1
PresetRow.Parent = Body

local presets = {10, 50, 150, 300, 500}
local btnWidth = (1 - (0.04 * (#presets - 1))) / #presets

for i, speedVal in ipairs(presets) do
	local pBtn = Instance.new("TextButton")
	pBtn.Size = UDim2.new(btnWidth, 0, 1, 0)
	pBtn.Position = UDim2.new((i - 1) * (btnWidth + 0.04), 0, 0, 0)
	pBtn.BackgroundColor3 = Color3.fromRGB(30, 33, 40)
	pBtn.Text = tostring(speedVal)
	pBtn.TextColor3 = Color3.fromRGB(180, 185, 195)
	pBtn.TextSize = 8
	pBtn.Font = Enum.Font.ArialBold
	pBtn.Parent = PresetRow

	local pCorner = Instance.new("UICorner")
	pCorner.CornerRadius = UDim.new(0, 4)
	pCorner.Parent = pBtn

	pBtn.MouseButton1Click:Connect(function()
		_G.FlySpeed = speedVal
		SpeedText.Text = tostring(speedVal)
		local relX = (speedVal - 10) / (500 - 10)
		TweenService:Create(SliderFill, TweenInfo.new(0.15), {Size = UDim2.new(relX, 0, 1, 0)}):Play()
	end)
end

-- Resize Handle (CornerSizeHandle)
local ResizeHandle = Instance.new("ImageButton")
ResizeHandle.Name = "CornerSizeHandle"
ResizeHandle.Size = UDim2.fromOffset(12, 12)
ResizeHandle.Position = UDim2.new(1, -14, 1, -14)
ResizeHandle.BackgroundTransparency = 1
ResizeHandle.Image = "rbxassetid://116138709011735"
ResizeHandle.ImageColor3 = Color3.fromRGB(100, 105, 115)
ResizeHandle.Rotation = 90
ResizeHandle.Parent = Card

-- Smooth Animations (Tween) Functions
local function animateShow(instance, targetScale)
	instance.Visible = true
	instance.Size = UDim2.new(0, 0, 0, 0)
	TweenService:Create(instance, TweenInfo.new(0.2, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {Size = targetScale}):Play()
end

local function animateHide(instance, onComplete)
	local tween = TweenService:Create(instance, TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {Size = UDim2.new(0, 0, 0, 0)})
	tween.Completed:Connect(function()
		instance.Visible = false
		if onComplete then onComplete() end
	end)
	tween:Play()
end

-- Toggle Interaction
ToggleBg.MouseButton1Click:Connect(function()
	_G.FlySpeedEnabled = not _G.FlySpeedEnabled
	if _G.FlySpeedEnabled then
		TweenService:Create(ToggleBg, TweenInfo.new(0.15), {BackgroundColor3 = Color3.fromRGB(223, 230, 237)}):Play()
		TweenService:Create(ToggleCircle, TweenInfo.new(0.15), {Position = UDim2.fromOffset(19, 3), BackgroundColor3 = Color3.fromRGB(15, 15, 18)}):Play()
		TweenService:Create(ToggleStroke, TweenInfo.new(0.15), {Transparency = 1}):Play()
	else
		TweenService:Create(ToggleBg, TweenInfo.new(0.15), {BackgroundColor3 = Color3.fromRGB(35, 38, 45)}):Play()
		TweenService:Create(ToggleCircle, TweenInfo.new(0.15), {Position = UDim2.fromOffset(3, 3), BackgroundColor3 = Color3.fromRGB(150, 155, 165)}):Play()
		TweenService:Create(ToggleStroke, TweenInfo.new(0.15), {Transparency = 0.85}):Play()
	end
end)

-- Slider Dragging Logic (MIN 10, MAX 500)
local isDragging = false
local MIN_SPEED, MAX_SPEED = 10, 500

local function updateSlider(input)
	local trackAbsPos = SliderTrack.AbsolutePosition.X
	local trackAbsSize = SliderTrack.AbsoluteSize.X
	if trackAbsSize <= 0 then return end
	local relativeX = math.clamp((input.Position.X - trackAbsPos) / trackAbsSize, 0, 1)
	SliderFill.Size = UDim2.new(relativeX, 0, 1, 0)
	
	_G.FlySpeed = math.floor(MIN_SPEED + (relativeX * (MAX_SPEED - MIN_SPEED)))
	SpeedText.Text = tostring(_G.FlySpeed)
end

SliderTrack.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
		isDragging = true
		updateSlider(input)
	end
end)

UserInputService.InputChanged:Connect(function(input)
	if isDragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
		updateSlider(input)
	end
end)

UserInputService.InputEnded:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
		isDragging = false
	end
end)

-- Window Drag Logic
local isDraggingCard = false
local dragStart, startPos
Header.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
		isDraggingCard = true
		dragStart = input.Position
		startPos = Card.Position
	end
end)

UserInputService.InputChanged:Connect(function(input)
	if isDraggingCard and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
		local delta = input.Position - dragStart
		Card.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
	end
end)

UserInputService.InputEnded:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
		isDraggingCard = false
	end
end)

-- UISCALE SETUP FOR PROPOTIONAL RESIZING
local CardScale = Card:FindFirstChildOfClass("UIScale") or Instance.new("UIScale")
CardScale.Parent = Card

local isResizing = false
local resizeStartPos = nil
local startScale = 1

local MIN_SCALE = 1.0 
local MAX_SCALE = 2.5

ResizeHandle.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
		isResizing = true
		resizeStartPos = input.Position
		startScale = CardScale.Scale
	end
end)

UserInputService.InputChanged:Connect(function(input)
	if isResizing and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
		local delta = input.Position - resizeStartPos
		
		-- Hitung perubahan skala berdasarkan pergerakan mouse/touch (diambil dari rata-rata delta X & Y)
		local scaleDelta = (delta.X + delta.Y) / 300
		local newScale = math.clamp(startScale + scaleDelta, MIN_SCALE, MAX_SCALE)
		
		-- Terapkan Skala ke Card (Semua elemen child di dalamnya otomatis menyesuaikan)
		CardScale.Scale = newScale
	end
end)

UserInputService.InputEnded:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
		isResizing = false
	end
end)

-- Animated Button Bindings
BackBtn.MouseButton1Click:Connect(function()
	animateHide(Card, function()
		animateShow(OpenBtn, UDim2.new(0, 80, 0, 20))
	end)
end)

OpenBtn.MouseButton1Click:Connect(function()
	animateHide(OpenBtn, function()
		animateShow(Card, UDim2.new(0, 250, 0, 150))
	end)
end)

CloseBtn.MouseButton1Click:Connect(function()
	_G.FlySpeedEnabled = false
	animateHide(Card, function()
		Gui:Destroy()
	end)
end)

-- Entrance Animation
Card.Size = UDim2.new(0, 0, 0, 0)
animateShow(Card, UDim2.new(0, 250, 0, 150))

-- ORIGINAL FLY CAMERA LOGIC DECOMPILED (OPTIMIZED)
local v_u_1 = game.Players.LocalPlayer
local v2 = require(v_u_1:WaitForChild("PlayerScripts", 9):WaitForChild("PlayerModule", 9):WaitForChild("ControlModule", 9))
local v_u_3 = game:GetService("ReplicatedStorage"):WaitForChild("StudioLiteFolder"):WaitForChild("ServerFunctions")
local v_u_4 = nil
local v_u_5 = nil
local v_u_6 = nil

pcall(function()
    task.wait(0.1)
    game:GetService("StarterGui"):SetCoreGuiEnabled(Enum.CoreGuiType.All, false)
end)

local v7 = 0
local v8 = 0
local v9 = 0
local v_u_10 = nil
local v_u_11 = nil
local v12 = Vector3.new()

function setupFlyMode()
    while true do
        local v14, v15 = pcall(function()
            for _ = 1, 80 do
                v_u_1 = game.Players.LocalPlayer
                v_u_4 = v_u_1.Character
                if v_u_4 then
                    v_u_5 = v_u_4:FindFirstChildOfClass("Humanoid")
                    v_u_6 = v_u_4.PrimaryPart
                    if v_u_1 and (v_u_4 and (v_u_4.Parent and (v_u_5 and v_u_6))) then
                        break
                    end
                end
                task.wait(0.1)
            end
            if v_u_5 then
                v_u_5.PlatformStand = true
                v_u_4:PivotTo(CFrame.new(0, 5000, 0))
                v_u_6.Anchored = true
                v_u_1.CameraMode = Enum.CameraMode.Classic
                local v13 = game:GetService("ReplicatedStorage"):WaitForChild("FlyCameraFocus", 9):Clone()
                v13.Parent = workspace
                v_u_10 = v13:WaitForChild("LinearVelocity")
                v_u_11 = workspace.CurrentCamera
                v_u_11.CameraType = Enum.CameraType.Track
                v_u_11.CameraSubject = v13
                v_u_1.CameraMaxZoomDistance = 10
                v_u_1.CameraMinZoomDistance = 10
                task.wait()
                v_u_11.CFrame = v_u_11.CFrame * CFrame.Angles(0.55, 3.1415, 0)
                _G.CameraCFrameOrig = v_u_11.CFrame
            else
                warn("SL_ char still not loaded after 8 seconds.  Try :LoadCharacter.")
                v_u_3:InvokeServer("StopClearServerWorkspace")
            end
        end)
        if v14 then
            break
        end
        warn("SL_ERROR: " .. script.Name .. "  " .. v15)
        task.wait(2)
    end
end

setupFlyMode()

local v16 = game:GetService("UserInputService")
v16.InputChanged:Connect(function(p17, p18)
    if p17.UserInputType == Enum.UserInputType.MouseWheel and (not p18 and v_u_11) then
        v_u_10.VectorVelocity = v_u_11.CFrame.lookVector * p17.Position.Z * 100
    end
end)

local v_u_19 = 0
v16.InputBegan:Connect(function(p20, p21)
    if p20.UserInputType == Enum.UserInputType.Keyboard and not p21 then
        if p20.KeyCode == Enum.KeyCode.Q then
            v_u_19 = -1
            return
        end
        if p20.KeyCode == Enum.KeyCode.E then
            v_u_19 = 1
        end
    end
end)

v16.InputEnded:Connect(function(p22, p23)
    if p22.UserInputType == Enum.UserInputType.Keyboard and not p23 then
        if p22.KeyCode == Enum.KeyCode.Q then
            v_u_19 = 0
            return
        end
        if p22.KeyCode == Enum.KeyCode.E then
            v_u_19 = 0
        end
    end
end)

local v_u_24 = 0
v16.TouchPinch:Connect(function(_, p25, _, p26)
    if p26 == Enum.UserInputState.Change or p26 == Enum.UserInputState.End and v_u_11 then
        v_u_10.VectorVelocity = v_u_11.CFrame.lookVector * (p25 - v_u_24)
    end
    v_u_24 = p25
end)

task.spawn(function()
	while task.wait(0.016) do
		local v27 = v_u_10
		local v28 = v_u_19
		local v29 = v_u_11
		local v30 = v_u_6

		local v31
		if _G.BlockCameraMovement then
			v31 = v12
		else
			if not v30 or v30.Position.Y <= 4000 then
				setupFlyMode()
			end
			v31 = v2:GetMoveVector()
			if v31 == v12 then
				v31 = v12
			else
				v7 = v31.z < -0.2 and 1 or (v31.z > 0.2 and -1 or 0)
				if v31.x < -0.2 then
					v8 = -1
				elseif v31.x > 0.2 then
					v8 = 1
				else
					v8 = 0
				end
			end
			if v8 == 0 and (v7 == 0 and v28 == 0) then
				if v27 then v27.VectorVelocity = Vector3.new() end
				v9 = 0
			else
				local targetSpeed = _G.FlySpeedEnabled and (_G.FlySpeed or 50) or 90
				if _G.FlySpeedEnabled then
					v9 = targetSpeed
				else
					local v32 = v9 + 5
					v9 = v32 > targetSpeed and targetSpeed or v32
				end
				if v27 and v29 then
					v27.VectorVelocity = (v29.CFrame.LookVector * v7 + v29.CFrame.RightVector * v8 + Vector3.new(0, v28, 0)) * v9
				end
			end
		end
		v12 = v31
	end
end)
