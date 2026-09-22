--!strict
--[[
    Generated with Roblox UI Designer Mobile (Executor)
    ----------------------------------------
    - Self-contained: paste it into an executor, or loadstring it.
    - Mounts into the hidden GUI container, falling back to PlayerGui.
    - Every LocalScript runs with its own script.Parent, as authored.
]]

local executorEnv = getfenv() :: any

local function resolveHost(): Instance
	local getHiddenUi = executorEnv.gethui or executorEnv.get_hidden_gui
	if type(getHiddenUi) == "function" then
		local ok, hidden = pcall(getHiddenUi)
		if ok and typeof(hidden) == "Instance" then
			return hidden
		end
	end

	local ok, coreGui = pcall(function()
		return game:GetService("CoreGui")
	end)
	if ok and typeof(coreGui) == "Instance" then
		return coreGui
	end

	local players = game:GetService("Players")
	local player = players.LocalPlayer
	return player:WaitForChild("PlayerGui")
end

local host = resolveHost()

local GUI: {[string]: any} = {}

-- ===== UI =====

-- ScreenGui: MainGui
GUI["GUI_MainGui"] = Instance.new("ScreenGui")
GUI["GUI_MainGui"]["Name"] = "MainGui"
GUI["GUI_MainGui"]["DisplayOrder"] = 999
GUI["GUI_MainGui"]["Enabled"] = true
GUI["GUI_MainGui"]["IgnoreGuiInset"] = true
GUI["GUI_MainGui"]["ResetOnSpawn"] = true
GUI["GUI_MainGui"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling
GUI["GUI_MainGui"]["Parent"] = host

-- CanvasGroup: Card
GUI["GUI_Card"] = Instance.new("CanvasGroup")
GUI["GUI_Card"]["Name"] = "Card"
GUI["GUI_Card"]["AnchorPoint"] = Vector2.new(0.5, 0.5)
GUI["GUI_Card"]["Size"] = UDim2.fromOffset(330, 200)
GUI["GUI_Card"]["Position"] = UDim2.fromScale(0.5, 0.5)
GUI["GUI_Card"]["Rotation"] = 0
GUI["GUI_Card"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27)
GUI["GUI_Card"]["BackgroundTransparency"] = 0
GUI["GUI_Card"]["BorderSizePixel"] = 0
GUI["GUI_Card"]["ClipsDescendants"] = true
GUI["GUI_Card"]["GroupColor3"] = Color3.fromRGB(255, 255, 255)
GUI["GUI_Card"]["GroupTransparency"] = 0
GUI["GUI_Card"]["Visible"] = true
GUI["GUI_Card"]["Active"] = true
GUI["GUI_Card"]["ZIndex"] = 1
GUI["GUI_Card"]["LayoutOrder"] = 0
GUI["GUI_Card"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
GUI["GUI_Card"]["Parent"] = GUI["GUI_MainGui"]

-- Frame: Frame
GUI["GUI_Frame"] = Instance.new("Frame")
GUI["GUI_Frame"]["Name"] = "Frame"
GUI["GUI_Frame"]["AnchorPoint"] = Vector2.new(0.0, 0.0)
GUI["GUI_Frame"]["Size"] = UDim2.fromOffset(280, 200)
GUI["GUI_Frame"]["Position"] = UDim2.fromOffset(170, 20)
GUI["GUI_Frame"]["Rotation"] = 115
GUI["GUI_Frame"]["BackgroundColor3"] = Color3.fromRGB(22, 22, 22)
GUI["GUI_Frame"]["BackgroundTransparency"] = 0
GUI["GUI_Frame"]["BorderSizePixel"] = 0
GUI["GUI_Frame"]["ClipsDescendants"] = false
GUI["GUI_Frame"]["Visible"] = true
GUI["GUI_Frame"]["Active"] = true
GUI["GUI_Frame"]["ZIndex"] = 2
GUI["GUI_Frame"]["LayoutOrder"] = 0
GUI["GUI_Frame"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
GUI["GUI_Frame"]["Parent"] = GUI["GUI_Card"]

-- UIShadow: UIShadow
GUI["GUI_UIShadow"] = Instance.new("UIShadow")
GUI["GUI_UIShadow"]["Name"] = "UIShadow"
GUI["GUI_UIShadow"]["ZIndex"] = -1
GUI["GUI_UIShadow"]["BlurRadius"] = UDim.new(0.0, 12)
GUI["GUI_UIShadow"]["Color"] = Color3.fromRGB(0, 0, 0)
GUI["GUI_UIShadow"]["Enabled"] = true
GUI["GUI_UIShadow"]["Offset"] = UDim2.fromOffset(0, 4)
GUI["GUI_UIShadow"]["Spread"] = UDim2.fromScale(0, 0)
GUI["GUI_UIShadow"]["Transparency"] = 0.5
GUI["GUI_UIShadow"]["Parent"] = GUI["GUI_Frame"]

-- TextLabel: Description
GUI["GUI_Description"] = Instance.new("TextLabel")
GUI["GUI_Description"]["Name"] = "Description"
GUI["GUI_Description"]["AnchorPoint"] = Vector2.new(0.0, 0.0)
GUI["GUI_Description"]["Size"] = UDim2.fromOffset(180, 39)
GUI["GUI_Description"]["Position"] = UDim2.fromOffset(20, 40)
GUI["GUI_Description"]["Rotation"] = 0
GUI["GUI_Description"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
GUI["GUI_Description"]["BackgroundTransparency"] = 1
GUI["GUI_Description"]["BorderSizePixel"] = 0
GUI["GUI_Description"]["Visible"] = true
GUI["GUI_Description"]["Active"] = true
GUI["GUI_Description"]["ZIndex"] = 3
GUI["GUI_Description"]["LayoutOrder"] = 0
GUI["GUI_Description"]["Text"] = "Stay updated with Nars Endeavor. Join the community for updates, support, and more. "
GUI["GUI_Description"]["TextColor3"] = Color3.fromRGB(228, 228, 228)
GUI["GUI_Description"]["TextSize"] = 12
GUI["GUI_Description"]["TextScaled"] = false
GUI["GUI_Description"]["TextWrapped"] = true
GUI["GUI_Description"]["TextTransparency"] = 0
GUI["GUI_Description"]["Font"] = Enum.Font.GothamMedium
GUI["GUI_Description"]["TextXAlignment"] = Enum.TextXAlignment.Left
GUI["GUI_Description"]["TextYAlignment"] = Enum.TextYAlignment.Top
GUI["GUI_Description"]["RichText"] = false
GUI["GUI_Description"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
GUI["GUI_Description"]["Parent"] = GUI["GUI_Card"]

-- TextLabel: Title
GUI["GUI_Title"] = Instance.new("TextLabel")
GUI["GUI_Title"]["Name"] = "Title"
GUI["GUI_Title"]["AnchorPoint"] = Vector2.new(0.0, 0.0)
GUI["GUI_Title"]["Size"] = UDim2.fromOffset(120, 20)
GUI["GUI_Title"]["Position"] = UDim2.fromOffset(50, 20)
GUI["GUI_Title"]["Rotation"] = 0
GUI["GUI_Title"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
GUI["GUI_Title"]["BackgroundTransparency"] = 1
GUI["GUI_Title"]["BorderSizePixel"] = 0
GUI["GUI_Title"]["Visible"] = true
GUI["GUI_Title"]["Active"] = true
GUI["GUI_Title"]["ZIndex"] = 3
GUI["GUI_Title"]["LayoutOrder"] = 0
GUI["GUI_Title"]["Text"] = "JOINED DISCORD"
GUI["GUI_Title"]["TextColor3"] = Color3.fromRGB(223, 230, 232)
GUI["GUI_Title"]["TextSize"] = 14
GUI["GUI_Title"]["TextScaled"] = false
GUI["GUI_Title"]["TextWrapped"] = true
GUI["GUI_Title"]["TextTransparency"] = 0
GUI["GUI_Title"]["Font"] = Enum.Font.GothamBold
GUI["GUI_Title"]["TextXAlignment"] = Enum.TextXAlignment.Left
GUI["GUI_Title"]["TextYAlignment"] = Enum.TextYAlignment.Center
GUI["GUI_Title"]["RichText"] = false
GUI["GUI_Title"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
GUI["GUI_Title"]["Parent"] = GUI["GUI_Card"]

-- ImageLabel: Banner
GUI["GUI_Banner"] = Instance.new("ImageLabel")
GUI["GUI_Banner"]["Name"] = "Banner"
GUI["GUI_Banner"]["AnchorPoint"] = Vector2.new(0.0, 0.0)
GUI["GUI_Banner"]["Size"] = UDim2.fromOffset(330, 200)
GUI["GUI_Banner"]["Position"] = UDim2.fromScale(0, 0)
GUI["GUI_Banner"]["Rotation"] = 0
GUI["GUI_Banner"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
GUI["GUI_Banner"]["BackgroundTransparency"] = 1
GUI["GUI_Banner"]["BorderSizePixel"] = 0
GUI["GUI_Banner"]["Visible"] = true
GUI["GUI_Banner"]["Active"] = true
GUI["GUI_Banner"]["ZIndex"] = 1
GUI["GUI_Banner"]["LayoutOrder"] = 0
GUI["GUI_Banner"]["Image"] = "rbxassetid://99027217090571"
GUI["GUI_Banner"]["ImageTransparency"] = 0
GUI["GUI_Banner"]["ScaleType"] = Enum.ScaleType.Stretch
GUI["GUI_Banner"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
GUI["GUI_Banner"]["Parent"] = GUI["GUI_Card"]

-- ImageLabel: Logo
GUI["GUI_Logo"] = Instance.new("ImageLabel")
GUI["GUI_Logo"]["Name"] = "Logo"
GUI["GUI_Logo"]["AnchorPoint"] = Vector2.new(0.0, 0.0)
GUI["GUI_Logo"]["Size"] = UDim2.fromOffset(24, 24)
GUI["GUI_Logo"]["Position"] = UDim2.fromOffset(20, 16)
GUI["GUI_Logo"]["Rotation"] = 0
GUI["GUI_Logo"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
GUI["GUI_Logo"]["BackgroundTransparency"] = 1
GUI["GUI_Logo"]["BorderSizePixel"] = 0
GUI["GUI_Logo"]["Visible"] = true
GUI["GUI_Logo"]["Active"] = true
GUI["GUI_Logo"]["ZIndex"] = 3
GUI["GUI_Logo"]["LayoutOrder"] = 0
GUI["GUI_Logo"]["Image"] = "rbxassetid://109798031608756"
GUI["GUI_Logo"]["ImageTransparency"] = 0
GUI["GUI_Logo"]["ScaleType"] = Enum.ScaleType.Stretch
GUI["GUI_Logo"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
GUI["GUI_Logo"]["Parent"] = GUI["GUI_Card"]

-- UICorner: UICorner
GUI["GUI_UICorner"] = Instance.new("UICorner")
GUI["GUI_UICorner"]["Name"] = "UICorner"
GUI["GUI_UICorner"]["CornerRadius"] = UDim.new(0.0, 12)
GUI["GUI_UICorner"]["Parent"] = GUI["GUI_Card"]

-- UIShadow: UIShadow
GUI["GUI_UIShadow_1"] = Instance.new("UIShadow")
GUI["GUI_UIShadow_1"]["Name"] = "UIShadow"
GUI["GUI_UIShadow_1"]["ZIndex"] = -1
GUI["GUI_UIShadow_1"]["BlurRadius"] = UDim.new(0.0, 12)
GUI["GUI_UIShadow_1"]["Color"] = Color3.fromRGB(0, 0, 0)
GUI["GUI_UIShadow_1"]["Enabled"] = true
GUI["GUI_UIShadow_1"]["Offset"] = UDim2.fromOffset(0, 4)
GUI["GUI_UIShadow_1"]["Spread"] = UDim2.fromScale(0, 0)
GUI["GUI_UIShadow_1"]["Transparency"] = 0.5
GUI["GUI_UIShadow_1"]["Parent"] = GUI["GUI_Card"]

-- Frame: BgBtn
GUI["GUI_BgBtn"] = Instance.new("Frame")
GUI["GUI_BgBtn"]["Name"] = "BgBtn"
GUI["GUI_BgBtn"]["AnchorPoint"] = Vector2.new(0.0, 0.0)
GUI["GUI_BgBtn"]["Size"] = UDim2.fromOffset(100, 24)
GUI["GUI_BgBtn"]["Position"] = UDim2.fromOffset(210, 158)
GUI["GUI_BgBtn"]["Rotation"] = 0
GUI["GUI_BgBtn"]["BackgroundColor3"] = Color3.fromRGB(25, 77, 157)
GUI["GUI_BgBtn"]["BackgroundTransparency"] = 0
GUI["GUI_BgBtn"]["BorderSizePixel"] = 0
GUI["GUI_BgBtn"]["ClipsDescendants"] = false
GUI["GUI_BgBtn"]["Visible"] = true
GUI["GUI_BgBtn"]["Active"] = true
GUI["GUI_BgBtn"]["ZIndex"] = 3
GUI["GUI_BgBtn"]["LayoutOrder"] = 0
GUI["GUI_BgBtn"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
GUI["GUI_BgBtn"]["Parent"] = GUI["GUI_Card"]

-- UICorner: UICorner
GUI["GUI_UICorner_1"] = Instance.new("UICorner")
GUI["GUI_UICorner_1"]["Name"] = "UICorner"
GUI["GUI_UICorner_1"]["CornerRadius"] = UDim.new(0.0, 5)
GUI["GUI_UICorner_1"]["Parent"] = GUI["GUI_BgBtn"]

-- TextButton: Button
GUI["GUI_Button"] = Instance.new("TextButton")
GUI["GUI_Button"]["Name"] = "Button"
GUI["GUI_Button"]["AnchorPoint"] = Vector2.new(0.0, 0.0)
GUI["GUI_Button"]["Size"] = UDim2.fromOffset(100, 22)
GUI["GUI_Button"]["Position"] = UDim2.fromScale(0, 0)
GUI["GUI_Button"]["Rotation"] = 0
GUI["GUI_Button"]["BackgroundColor3"] = Color3.fromRGB(60, 129, 233)
GUI["GUI_Button"]["BackgroundTransparency"] = 0
GUI["GUI_Button"]["BorderSizePixel"] = 0
GUI["GUI_Button"]["Visible"] = true
GUI["GUI_Button"]["Active"] = true
GUI["GUI_Button"]["ZIndex"] = 1
GUI["GUI_Button"]["LayoutOrder"] = 0
GUI["GUI_Button"]["Text"] = "JOIN LINK"
GUI["GUI_Button"]["TextColor3"] = Color3.fromRGB(223, 230, 232)
GUI["GUI_Button"]["TextSize"] = 11
GUI["GUI_Button"]["TextScaled"] = false
GUI["GUI_Button"]["TextWrapped"] = true
GUI["GUI_Button"]["TextTransparency"] = 0
GUI["GUI_Button"]["Font"] = Enum.Font.GothamBold
GUI["GUI_Button"]["TextXAlignment"] = Enum.TextXAlignment.Center
GUI["GUI_Button"]["TextYAlignment"] = Enum.TextYAlignment.Center
GUI["GUI_Button"]["RichText"] = false
GUI["GUI_Button"]["AutoButtonColor"] = true
GUI["GUI_Button"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
GUI["GUI_Button"]["Parent"] = GUI["GUI_BgBtn"]

-- UICorner: UICorner
GUI["GUI_UICorner_2"] = Instance.new("UICorner")
GUI["GUI_UICorner_2"]["Name"] = "UICorner"
GUI["GUI_UICorner_2"]["CornerRadius"] = UDim.new(0.0, 5)
GUI["GUI_UICorner_2"]["Parent"] = GUI["GUI_Button"]

-- ImageLabel: Icon
GUI["GUI_Icon"] = Instance.new("ImageLabel")
GUI["GUI_Icon"]["Name"] = "Icon"
GUI["GUI_Icon"]["AnchorPoint"] = Vector2.new(0.0, 0.0)
GUI["GUI_Icon"]["Size"] = UDim2.fromOffset(14, 14)
GUI["GUI_Icon"]["Position"] = UDim2.fromOffset(82, 3)
GUI["GUI_Icon"]["Rotation"] = 0
GUI["GUI_Icon"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
GUI["GUI_Icon"]["BackgroundTransparency"] = 1
GUI["GUI_Icon"]["BorderSizePixel"] = 0
GUI["GUI_Icon"]["Visible"] = true
GUI["GUI_Icon"]["Active"] = true
GUI["GUI_Icon"]["ZIndex"] = 3
GUI["GUI_Icon"]["LayoutOrder"] = 0
GUI["GUI_Icon"]["Image"] = "rbxassetid://92473583511724"
GUI["GUI_Icon"]["ImageTransparency"] = 0
GUI["GUI_Icon"]["ScaleType"] = Enum.ScaleType.Stretch
GUI["GUI_Icon"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
GUI["GUI_Icon"]["Parent"] = GUI["GUI_Button"]

-- UIShadow: UIShadow
GUI["GUI_UIShadow_2"] = Instance.new("UIShadow")
GUI["GUI_UIShadow_2"]["Name"] = "UIShadow"
GUI["GUI_UIShadow_2"]["ZIndex"] = -1
GUI["GUI_UIShadow_2"]["BlurRadius"] = UDim.new(0.0, 12)
GUI["GUI_UIShadow_2"]["Color"] = Color3.fromRGB(0, 0, 0)
GUI["GUI_UIShadow_2"]["Enabled"] = true
GUI["GUI_UIShadow_2"]["Offset"] = UDim2.fromOffset(0, 4)
GUI["GUI_UIShadow_2"]["Spread"] = UDim2.fromScale(0, 0)
GUI["GUI_UIShadow_2"]["Transparency"] = 0.5
GUI["GUI_UIShadow_2"]["Parent"] = GUI["GUI_BgBtn"]

-- TextButton: CloseBtn
GUI["GUI_CloseBtn"] = Instance.new("TextButton")
GUI["GUI_CloseBtn"]["Name"] = "CloseBtn"
GUI["GUI_CloseBtn"]["AnchorPoint"] = Vector2.new(0.0, 0.0)
GUI["GUI_CloseBtn"]["Size"] = UDim2.fromOffset(20, 20)
GUI["GUI_CloseBtn"]["Position"] = UDim2.fromOffset(300, 10)
GUI["GUI_CloseBtn"]["Rotation"] = 0
GUI["GUI_CloseBtn"]["BackgroundColor3"] = Color3.fromRGB(180, 25, 25)
GUI["GUI_CloseBtn"]["BackgroundTransparency"] = 0
GUI["GUI_CloseBtn"]["BorderSizePixel"] = 0
GUI["GUI_CloseBtn"]["Visible"] = true
GUI["GUI_CloseBtn"]["Active"] = true
GUI["GUI_CloseBtn"]["ZIndex"] = 3
GUI["GUI_CloseBtn"]["LayoutOrder"] = 0
GUI["GUI_CloseBtn"]["Text"] = ""
GUI["GUI_CloseBtn"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
GUI["GUI_CloseBtn"]["TextSize"] = 14
GUI["GUI_CloseBtn"]["TextScaled"] = false
GUI["GUI_CloseBtn"]["TextWrapped"] = true
GUI["GUI_CloseBtn"]["TextTransparency"] = 0
GUI["GUI_CloseBtn"]["Font"] = Enum.Font.SourceSansBold
GUI["GUI_CloseBtn"]["TextXAlignment"] = Enum.TextXAlignment.Center
GUI["GUI_CloseBtn"]["TextYAlignment"] = Enum.TextYAlignment.Center
GUI["GUI_CloseBtn"]["RichText"] = false
GUI["GUI_CloseBtn"]["AutoButtonColor"] = true
GUI["GUI_CloseBtn"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
GUI["GUI_CloseBtn"]["Parent"] = GUI["GUI_Card"]

-- UICorner: UICorner
GUI["GUI_UICorner_3"] = Instance.new("UICorner")
GUI["GUI_UICorner_3"]["Name"] = "UICorner"
GUI["GUI_UICorner_3"]["CornerRadius"] = UDim.new(0.0, 5)
GUI["GUI_UICorner_3"]["Parent"] = GUI["GUI_CloseBtn"]

-- UIShadow: UIShadow
GUI["GUI_UIShadow_3"] = Instance.new("UIShadow")
GUI["GUI_UIShadow_3"]["Name"] = "UIShadow"
GUI["GUI_UIShadow_3"]["ZIndex"] = -1
GUI["GUI_UIShadow_3"]["BlurRadius"] = UDim.new(0.0, 12)
GUI["GUI_UIShadow_3"]["Color"] = Color3.fromRGB(0, 0, 0)
GUI["GUI_UIShadow_3"]["Enabled"] = true
GUI["GUI_UIShadow_3"]["Offset"] = UDim2.fromOffset(0, 4)
GUI["GUI_UIShadow_3"]["Spread"] = UDim2.fromScale(0, 0)
GUI["GUI_UIShadow_3"]["Transparency"] = 0.5
GUI["GUI_UIShadow_3"]["Parent"] = GUI["GUI_CloseBtn"]

-- ImageLabel: Icon
GUI["GUI_Icon_1"] = Instance.new("ImageLabel")
GUI["GUI_Icon_1"]["Name"] = "Icon"
GUI["GUI_Icon_1"]["AnchorPoint"] = Vector2.new(0.0, 0.0)
GUI["GUI_Icon_1"]["Size"] = UDim2.fromOffset(16, 16)
GUI["GUI_Icon_1"]["Position"] = UDim2.fromOffset(2, 2)
GUI["GUI_Icon_1"]["Rotation"] = 0
GUI["GUI_Icon_1"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
GUI["GUI_Icon_1"]["BackgroundTransparency"] = 1
GUI["GUI_Icon_1"]["BorderSizePixel"] = 0
GUI["GUI_Icon_1"]["Visible"] = true
GUI["GUI_Icon_1"]["Active"] = false
GUI["GUI_Icon_1"]["ZIndex"] = 3
GUI["GUI_Icon_1"]["LayoutOrder"] = 0
GUI["GUI_Icon_1"]["Image"] = "rbxassetid://110786993356448"
GUI["GUI_Icon_1"]["ImageTransparency"] = 0
GUI["GUI_Icon_1"]["ScaleType"] = Enum.ScaleType.Stretch
GUI["GUI_Icon_1"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
GUI["GUI_Icon_1"]["Parent"] = GUI["GUI_CloseBtn"]

--!strict

local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local GuiService = game:GetService("GuiService")

local executorEnv = getfenv() :: any

local Card = GUI["GUI_Card"] :: CanvasGroup
local Logo = GUI["GUI_Logo"] :: ImageLabel
local Title = GUI["GUI_Title"] :: TextLabel
local Description = GUI["GUI_Description"] :: TextLabel
local Button = GUI["GUI_Button"] :: TextButton
local CloseBtn = GUI["GUI_CloseBtn"] :: TextButton

local CloseIcon = GUI["GUI_Icon_1"] :: ImageLabel
local ButtonIcon = GUI["GUI_Icon"] :: ImageLabel

local ORIGINAL_POSITION = Card.Position
local ORIGINAL_ROTATION = Card.Rotation

local DESCRIPTION_TEXT = Description.Text

local DISCORD_LINK = "https://discord.gg/fVxjEbYYd"

local destroyed = false
local closing = false
local buttonDebounce = false

CloseIcon.Active = false
ButtonIcon.Active = false
Logo.Active = false
Description.Active = false
Title.Active = false

local function tween(
	instance: Instance,
	duration: number,
	properties: {[string]: any},
	easingStyle: Enum.EasingStyle?,
	easingDirection: Enum.EasingDirection?
): Tween
	local info = TweenInfo.new(
		duration,
		easingStyle or Enum.EasingStyle.Quad,
		easingDirection or Enum.EasingDirection.Out
	)

	local animation = TweenService:Create(
		instance,
		info,
		properties
	)

	animation:Play()

	return animation
end

local function openDiscord(url: string): boolean
	local candidates = {
		executorEnv.open_url,
		executorEnv.openurl,
		executorEnv.openUrl,
		executorEnv.openURL,
	}

	for _, callback in ipairs(candidates) do
		if type(callback) == "function" then
			local success = pcall(callback, url)

			if success then
				return true
			end
		end
	end

	local browserSuccess = pcall(function()
		(GuiService :: any):OpenBrowserWindow(url)
	end)

	if browserSuccess then
		return true
	end

	local clipboard =
		executorEnv.setclipboard
		or executorEnv.to_clipboard

	if type(clipboard) == "function" then
		pcall(clipboard, url)
	end

	return false
end

local function animateLogo()
	local basePosition = Logo.Position
	local baseRotation = Logo.Rotation

	local connection: RBXScriptConnection?

	connection = RunService.RenderStepped:Connect(function()
		if destroyed or closing or not Logo.Parent then
			if connection then
				connection:Disconnect()
				connection = nil
			end

			return
		end

		local time = os.clock()

		local vertical =
			math.sin(time * 2.2) * 2

		local rotation =
			math.sin(time * 1.8) * 2

		Logo.Position =
			basePosition
			+ UDim2.fromOffset(0, vertical)

		Logo.Rotation =
			baseRotation
			+ rotation
	end)
end

local function animateTitle()
	local baseTransparency = Title.TextTransparency

	task.spawn(function()
		while not destroyed and not closing do

			local dim = tween(
				Title,
				1.2,
				{
					TextTransparency = math.clamp(
						baseTransparency + 0.35,
						0,
						1
					)
				},
				Enum.EasingStyle.Sine,
				Enum.EasingDirection.InOut
			)

			dim.Completed:Wait()

			if destroyed or closing then
				break
			end

			local glow = tween(
				Title,
				1.2,
				{
					TextTransparency = baseTransparency
				},
				Enum.EasingStyle.Sine,
				Enum.EasingDirection.InOut
			)

			glow.Completed:Wait()
		end
	end)
end

local function animateDescription()
	task.spawn(function()
		while not destroyed and not closing do

			Description.Text = ""
			Description.TextTransparency = 0

			for index = 1, #DESCRIPTION_TEXT do
				if destroyed or closing then
					return
				end

				Description.Text =
					string.sub(
						DESCRIPTION_TEXT,
						1,
						index
					)

				local character =
					string.sub(
						DESCRIPTION_TEXT,
						index,
						index
					)

				if character == " " then
					task.wait(0.045)
				else
					task.wait(0.025)
				end
			end

			if destroyed or closing then
				break
			end

			task.wait(2)

			if destroyed or closing then
				break
			end

			local fade = tween(
				Description,
				0.35,
				{
					TextTransparency = 1
				},
				Enum.EasingStyle.Sine,
				Enum.EasingDirection.Out
			)

			fade.Completed:Wait()

			if destroyed or closing then
				break
			end

			Description.Text = ""
			Description.TextTransparency = 0

			task.wait(0.25)
		end
	end)
end

local function animateButtonPress()
	if buttonDebounce or destroyed or closing then
		return
	end

	buttonDebounce = true

	local originalSize = Button.Size
	local originalPosition = Button.Position

	local press = tween(
		Button,
		0.07,
		{
			Size = UDim2.new(
				originalSize.X.Scale,
				originalSize.X.Offset - 4,
				originalSize.Y.Scale,
				originalSize.Y.Offset - 2
			),

			Position = UDim2.new(
				originalPosition.X.Scale,
				originalPosition.X.Offset + 2,
				originalPosition.Y.Scale,
				originalPosition.Y.Offset + 1
			)
		},
		Enum.EasingStyle.Quad,
		Enum.EasingDirection.Out
	)

	press.Completed:Wait()

	if destroyed or closing then
		return
	end

	local release = tween(
		Button,
		0.16,
		{
			Size = originalSize,
			Position = originalPosition
		},
		Enum.EasingStyle.Back,
		Enum.EasingDirection.Out
	)

	release.Completed:Wait()

	buttonDebounce = false
end

local function animateClose()
	if closing or destroyed then
		return
	end

	closing = true

	local originalRotation = CloseBtn.Rotation
	local originalPosition = Card.Position

	local rotateForward = tween(
		CloseBtn,
		0.12,
		{
			Rotation = originalRotation + 12
		},
		Enum.EasingStyle.Quad,
		Enum.EasingDirection.Out
	)

	rotateForward.Completed:Wait()

	if destroyed then
		return
	end

	local rotateBack = tween(
		CloseBtn,
		0.10,
		{
			Rotation = originalRotation - 3
		},
		Enum.EasingStyle.Sine,
		Enum.EasingDirection.Out
	)

	rotateBack.Completed:Wait()

	if destroyed then
		return
	end

	local exitPosition = UDim2.new(
		originalPosition.X.Scale,
		originalPosition.X.Offset,
		originalPosition.Y.Scale,
		originalPosition.Y.Offset + 28
	)

	local exitAnimation = tween(
		Card,
		0.32,
		{
			Position = exitPosition,
			GroupTransparency = 1
		},
		Enum.EasingStyle.Quint,
		Enum.EasingDirection.In
	)

	exitAnimation.Completed:Wait()

	if destroyed then
		return
	end

	destroyed = true

	local MainGui = GUI["GUI_MainGui"] :: ScreenGui

	if MainGui then
		MainGui:Destroy()
	end
end

local function animateEntry()
	Card.Position = UDim2.new(
		ORIGINAL_POSITION.X.Scale,
		ORIGINAL_POSITION.X.Offset,

		ORIGINAL_POSITION.Y.Scale,
		ORIGINAL_POSITION.Y.Offset - 180
	)

	Card.Rotation = ORIGINAL_ROTATION
	Card.GroupTransparency = 1

	local entry = tween(
		Card,
		0.72,
		{
			Position = ORIGINAL_POSITION,
			GroupTransparency = 0
		},
		Enum.EasingStyle.Quint,
		Enum.EasingDirection.Out
	)

	entry.Completed:Wait()
end

Button.Activated:Connect(function()
	if destroyed or closing or buttonDebounce then
		return
	end

	task.spawn(function()
		animateButtonPress()
	end)

	openDiscord(DISCORD_LINK)
end)

CloseBtn.Activated:Connect(function()
	if destroyed or closing then
		return
	end

	task.spawn(function()
		animateClose()
	end)
end)

task.spawn(function()
	animateEntry()
end)

task.spawn(function()
	task.wait(0.20)

	if not destroyed and not closing then
		animateLogo()
	end
end)

task.spawn(function()
	task.wait(0.30)

	if not destroyed and not closing then
		animateTitle()
	end
end)

task.spawn(function()
	task.wait(0.40)

	if not destroyed and not closing then
		animateDescription()
	end
end)

return GUI
