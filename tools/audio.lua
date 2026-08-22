--[=[
 d888b  db    db d888888b      .d888b.      db      db    db  .d8b.  
88' Y8b 88    88   `88'        VP  `8D      88      88    88 d8' `8b 
88      88    88    88            odD'      88      88    88 88ooo88 
88  ooo 88    88    88          .88'        88      88    88 88~~~88 
88. ~8~ 88b  d88   .88.        j88.         88booo. 88b  d88 88   88    @uniquadev
 Y888P  ~Y8888P' Y888888P      888888D      Y88888P ~Y8888P' YP   YP  CONVERTER 

designed using localmaze gui creator
]=]

-- Instances: 42 | Scripts: 0 | Modules: 0 | Tags: 0
local LMG2L = {};

-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui
LMG2L["ScreenGui_1"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"));
LMG2L["ScreenGui_1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.PluginAudio
LMG2L["PluginAudio_2"] = Instance.new("Folder", LMG2L["ScreenGui_1"]);
LMG2L["PluginAudio_2"]["Name"] = [[PluginAudio]];


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.PluginAudio.Panel
LMG2L["Panel_3"] = Instance.new("Frame", LMG2L["PluginAudio_2"]);
LMG2L["Panel_3"]["BorderSizePixel"] = 0;
LMG2L["Panel_3"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
LMG2L["Panel_3"]["Size"] = UDim2.new(0, 260, 0, 93);
LMG2L["Panel_3"]["Position"] = UDim2.new(0, 10, 0, 32);
LMG2L["Panel_3"]["Name"] = [[Panel]];


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.PluginAudio.Panel.DurationLabel
LMG2L["DurationLabel_4"] = Instance.new("TextLabel", LMG2L["Panel_3"]);
LMG2L["DurationLabel_4"]["ZIndex"] = 2;
LMG2L["DurationLabel_4"]["BorderSizePixel"] = 0;
LMG2L["DurationLabel_4"]["TextSize"] = 9;
LMG2L["DurationLabel_4"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
LMG2L["DurationLabel_4"]["FontFace"] = Font.new([[rbxasset://fonts/families/Arial.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
LMG2L["DurationLabel_4"]["TextColor3"] = Color3.fromRGB(224, 231, 238);
LMG2L["DurationLabel_4"]["BackgroundTransparency"] = 1;
LMG2L["DurationLabel_4"]["Size"] = UDim2.new(0, 38, 0, 16);
LMG2L["DurationLabel_4"]["Text"] = [[00:00]];
LMG2L["DurationLabel_4"]["Name"] = [[DurationLabel]];
LMG2L["DurationLabel_4"]["Position"] = UDim2.new(0, 212, 0, 60);


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.PluginAudio.Panel.DurationLabel.UIStroke
LMG2L["UIStroke_5"] = Instance.new("UIStroke", LMG2L["DurationLabel_4"]);
LMG2L["UIStroke_5"]["Transparency"] = 0.87;


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.PluginAudio.Panel.ProgressBar
LMG2L["ProgressBar_6"] = Instance.new("Frame", LMG2L["Panel_3"]);
LMG2L["ProgressBar_6"]["BorderSizePixel"] = 0;
LMG2L["ProgressBar_6"]["BackgroundColor3"] = Color3.fromRGB(37, 38, 39);
LMG2L["ProgressBar_6"]["Size"] = UDim2.new(0, 213, 0, 6);
LMG2L["ProgressBar_6"]["Position"] = UDim2.new(0, 38, 0, 78);
LMG2L["ProgressBar_6"]["Name"] = [[ProgressBar]];


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.PluginAudio.Panel.ProgressBar.UICorner
LMG2L["UICorner_7"] = Instance.new("UICorner", LMG2L["ProgressBar_6"]);
LMG2L["UICorner_7"]["CornerRadius"] = UDim.new(0, 100);


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.PluginAudio.Panel.ProgressBar.Fill
LMG2L["Fill_8"] = Instance.new("Frame", LMG2L["ProgressBar_6"]);
LMG2L["Fill_8"]["BorderSizePixel"] = 0;
LMG2L["Fill_8"]["BackgroundColor3"] = Color3.fromRGB(224, 231, 238);
LMG2L["Fill_8"]["Size"] = UDim2.new(0, 42, 0, 6);
LMG2L["Fill_8"]["Name"] = [[Fill]];


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.PluginAudio.Panel.ProgressBar.Fill.UICorner
LMG2L["UICorner_9"] = Instance.new("UICorner", LMG2L["Fill_8"]);
LMG2L["UICorner_9"]["CornerRadius"] = UDim.new(0, 100);


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.PluginAudio.Panel.ProgressBar.Fill.KnobButton
LMG2L["KnobButton_a"] = Instance.new("TextButton", LMG2L["Fill_8"]);
LMG2L["KnobButton_a"]["BorderSizePixel"] = 0;
LMG2L["KnobButton_a"]["TextSize"] = 9;
LMG2L["KnobButton_a"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
LMG2L["KnobButton_a"]["BackgroundColor3"] = Color3.fromRGB(228, 236, 243);
LMG2L["KnobButton_a"]["FontFace"] = Font.new([[rbxasset://fonts/families/Arial.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
LMG2L["KnobButton_a"]["Size"] = UDim2.new(0, 12, 0, 12);
LMG2L["KnobButton_a"]["Text"] = [[]];
LMG2L["KnobButton_a"]["Name"] = [[KnobButton]];
LMG2L["KnobButton_a"]["Position"] = UDim2.new(0, 40, 0, -3);


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.PluginAudio.Panel.ProgressBar.Fill.KnobButton.UICorner
LMG2L["UICorner_b"] = Instance.new("UICorner", LMG2L["KnobButton_a"]);
LMG2L["UICorner_b"]["CornerRadius"] = UDim.new(0, 100);


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.PluginAudio.Panel.ProgressBar.Fill.KnobButton.UIStroke
LMG2L["UIStroke_c"] = Instance.new("UIStroke", LMG2L["KnobButton_a"]);
LMG2L["UIStroke_c"]["Transparency"] = 0.8;
LMG2L["UIStroke_c"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.PluginAudio.Panel.ProgressBar.UIStroke
LMG2L["UIStroke_d"] = Instance.new("UIStroke", LMG2L["ProgressBar_6"]);
LMG2L["UIStroke_d"]["Transparency"] = 0.85;
LMG2L["UIStroke_d"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
LMG2L["UIStroke_d"]["Thickness"] = 0.5;
LMG2L["UIStroke_d"]["Color"] = Color3.fromRGB(224, 231, 238);


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.PluginAudio.Panel.CurrentTimeLabel
LMG2L["CurrentTimeLabel_e"] = Instance.new("TextLabel", LMG2L["Panel_3"]);
LMG2L["CurrentTimeLabel_e"]["ZIndex"] = 2;
LMG2L["CurrentTimeLabel_e"]["BorderSizePixel"] = 0;
LMG2L["CurrentTimeLabel_e"]["TextSize"] = 9;
LMG2L["CurrentTimeLabel_e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
LMG2L["CurrentTimeLabel_e"]["FontFace"] = Font.new([[rbxasset://fonts/families/Arial.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
LMG2L["CurrentTimeLabel_e"]["TextColor3"] = Color3.fromRGB(224, 231, 238);
LMG2L["CurrentTimeLabel_e"]["BackgroundTransparency"] = 1;
LMG2L["CurrentTimeLabel_e"]["Size"] = UDim2.new(0, 38, 0, 16);
LMG2L["CurrentTimeLabel_e"]["Text"] = [[00:00]];
LMG2L["CurrentTimeLabel_e"]["Name"] = [[CurrentTimeLabel]];
LMG2L["CurrentTimeLabel_e"]["Position"] = UDim2.new(0, 38, 0, 60);


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.PluginAudio.Panel.CurrentTimeLabel.UIStroke
LMG2L["UIStroke_f"] = Instance.new("UIStroke", LMG2L["CurrentTimeLabel_e"]);
LMG2L["UIStroke_f"]["Transparency"] = 0.87;


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.PluginAudio.Panel.Sound
LMG2L["Sound_10"] = Instance.new("Sound", LMG2L["Panel_3"]);



-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.PluginAudio.Panel.UICorner
LMG2L["UICorner_11"] = Instance.new("UICorner", LMG2L["Panel_3"]);



-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.PluginAudio.Panel.BgAdd
LMG2L["BgAdd_12"] = Instance.new("Frame", LMG2L["Panel_3"]);
LMG2L["BgAdd_12"]["BorderSizePixel"] = 0;
LMG2L["BgAdd_12"]["BackgroundColor3"] = Color3.fromRGB(127, 131, 135);
LMG2L["BgAdd_12"]["Size"] = UDim2.new(0, 45, 0, 22);
LMG2L["BgAdd_12"]["Position"] = UDim2.new(0, 210, 0, 32);
LMG2L["BgAdd_12"]["Name"] = [[BgAdd]];


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.PluginAudio.Panel.BgAdd.AddButton
LMG2L["AddButton_13"] = Instance.new("TextButton", LMG2L["BgAdd_12"]);
LMG2L["AddButton_13"]["BorderSizePixel"] = 0;
LMG2L["AddButton_13"]["TextSize"] = 9;
LMG2L["AddButton_13"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
LMG2L["AddButton_13"]["BackgroundColor3"] = Color3.fromRGB(224, 231, 238);
LMG2L["AddButton_13"]["FontFace"] = Font.new([[rbxasset://fonts/families/Arial.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
LMG2L["AddButton_13"]["Size"] = UDim2.new(0, 45, 0, 20);
LMG2L["AddButton_13"]["Text"] = [[+ ADD]];
LMG2L["AddButton_13"]["Name"] = [[AddButton]];


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.PluginAudio.Panel.BgAdd.AddButton.UICorner
LMG2L["UICorner_14"] = Instance.new("UICorner", LMG2L["AddButton_13"]);
LMG2L["UICorner_14"]["CornerRadius"] = UDim.new(0, 4);


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.PluginAudio.Panel.BgAdd.AddButton.UIStroke
LMG2L["UIStroke_15"] = Instance.new("UIStroke", LMG2L["AddButton_13"]);
LMG2L["UIStroke_15"]["Transparency"] = 0.85;
LMG2L["UIStroke_15"]["Thickness"] = 0.5;


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.PluginAudio.Panel.BgAdd.UICorner
LMG2L["UICorner_16"] = Instance.new("UICorner", LMG2L["BgAdd_12"]);
LMG2L["UICorner_16"]["CornerRadius"] = UDim.new(0, 5);


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.PluginAudio.Panel.Name
LMG2L["Name_17"] = Instance.new("TextLabel", LMG2L["Panel_3"]);
LMG2L["Name_17"]["TextTruncate"] = Enum.TextTruncate.AtEnd;
LMG2L["Name_17"]["ZIndex"] = 2;
LMG2L["Name_17"]["BorderSizePixel"] = 0;
LMG2L["Name_17"]["TextSize"] = 9;
LMG2L["Name_17"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
LMG2L["Name_17"]["FontFace"] = Font.new([[rbxasset://fonts/families/Arial.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
LMG2L["Name_17"]["TextColor3"] = Color3.fromRGB(224, 231, 238);
LMG2L["Name_17"]["BackgroundTransparency"] = 1;
LMG2L["Name_17"]["Size"] = UDim2.new(0, 114, 0, 20);
LMG2L["Name_17"]["Text"] = [[DJ SOUND HOREG ]];
LMG2L["Name_17"]["Name"] = [[Name]];
LMG2L["Name_17"]["Position"] = UDim2.new(0, 84, 0, 54);


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.PluginAudio.Panel.Name.UIStroke
LMG2L["UIStroke_18"] = Instance.new("UIStroke", LMG2L["Name_17"]);
LMG2L["UIStroke_18"]["Transparency"] = 0.87;


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.PluginAudio.Panel.UIStroke
LMG2L["UIStroke_19"] = Instance.new("UIStroke", LMG2L["Panel_3"]);
LMG2L["UIStroke_19"]["Transparency"] = 0.95;
LMG2L["UIStroke_19"]["Thickness"] = 2;


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.PluginAudio.Panel.Header
LMG2L["Header_1a"] = Instance.new("Frame", LMG2L["Panel_3"]);
LMG2L["Header_1a"]["ZIndex"] = 3;
LMG2L["Header_1a"]["BorderSizePixel"] = 0;
LMG2L["Header_1a"]["BackgroundColor3"] = Color3.fromRGB(224, 231, 238);
LMG2L["Header_1a"]["Size"] = UDim2.new(0, 260, 0, 26);
LMG2L["Header_1a"]["Name"] = [[Header]];


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.PluginAudio.Panel.Header.UICorner
LMG2L["UICorner_1b"] = Instance.new("UICorner", LMG2L["Header_1a"]);



-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.PluginAudio.Panel.Header.Garis
LMG2L["Garis_1c"] = Instance.new("Frame", LMG2L["Header_1a"]);
LMG2L["Garis_1c"]["BorderSizePixel"] = 0;
LMG2L["Garis_1c"]["BackgroundColor3"] = Color3.fromRGB(224, 231, 238);
LMG2L["Garis_1c"]["Size"] = UDim2.new(0, 260, 0, 8);
LMG2L["Garis_1c"]["Position"] = UDim2.new(0, 0, 0, 18);
LMG2L["Garis_1c"]["Name"] = [[Garis]];


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.PluginAudio.Panel.Header.Title
LMG2L["Title_1d"] = Instance.new("TextLabel", LMG2L["Header_1a"]);
LMG2L["Title_1d"]["ZIndex"] = 2;
LMG2L["Title_1d"]["BorderSizePixel"] = 0;
LMG2L["Title_1d"]["TextSize"] = 12;
LMG2L["Title_1d"]["TextXAlignment"] = Enum.TextXAlignment.Left;
LMG2L["Title_1d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
LMG2L["Title_1d"]["FontFace"] = Font.new([[rbxasset://fonts/families/Arial.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
LMG2L["Title_1d"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
LMG2L["Title_1d"]["BackgroundTransparency"] = 1;
LMG2L["Title_1d"]["Size"] = UDim2.new(0, 134, 0, 26);
LMG2L["Title_1d"]["Text"] = [[AUDIO PLAY]];
LMG2L["Title_1d"]["Name"] = [[Title]];
LMG2L["Title_1d"]["Position"] = UDim2.new(0, 26, 0, 0);


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.PluginAudio.Panel.Header.Title.UIStroke
LMG2L["UIStroke_1e"] = Instance.new("UIStroke", LMG2L["Title_1d"]);
LMG2L["UIStroke_1e"]["Transparency"] = 0.87;


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.PluginAudio.Panel.Header.CloseButton
LMG2L["CloseButton_1f"] = Instance.new("ImageButton", LMG2L["Header_1a"]);
LMG2L["CloseButton_1f"]["BorderSizePixel"] = 0;
LMG2L["CloseButton_1f"]["BackgroundTransparency"] = 1;
-- LMG2L["CloseButton_1f"]["ImageContent"] = ;
LMG2L["CloseButton_1f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
LMG2L["CloseButton_1f"]["ImageColor3"] = Color3.fromRGB(0, 0, 0);
LMG2L["CloseButton_1f"]["ZIndex"] = 2;
LMG2L["CloseButton_1f"]["Image"] = [[rbxassetid://75539660682193]];
LMG2L["CloseButton_1f"]["Size"] = UDim2.new(0, 16, 0, 16);
LMG2L["CloseButton_1f"]["Name"] = [[CloseButton]];
LMG2L["CloseButton_1f"]["Position"] = UDim2.new(0, 240, 0, 6);


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.PluginAudio.Panel.Header.Logo
LMG2L["Logo_20"] = Instance.new("ImageLabel", LMG2L["Header_1a"]);
LMG2L["Logo_20"]["ZIndex"] = 2;
LMG2L["Logo_20"]["BorderSizePixel"] = 0;
LMG2L["Logo_20"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
-- LMG2L["Logo_20"]["ImageContent"] = ;
LMG2L["Logo_20"]["ImageColor3"] = Color3.fromRGB(0, 0, 0);
LMG2L["Logo_20"]["Image"] = [[rbxassetid://136460394404917]];
LMG2L["Logo_20"]["Size"] = UDim2.new(0, 18, 0, 18);
LMG2L["Logo_20"]["BackgroundTransparency"] = 1;
LMG2L["Logo_20"]["Name"] = [[Logo]];
LMG2L["Logo_20"]["Position"] = UDim2.new(0, 5, 0, 5);


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.PluginAudio.Panel.BgPlayPause
LMG2L["BgPlayPause_21"] = Instance.new("Frame", LMG2L["Panel_3"]);
LMG2L["BgPlayPause_21"]["BorderSizePixel"] = 0;
LMG2L["BgPlayPause_21"]["BackgroundColor3"] = Color3.fromRGB(127, 131, 135);
LMG2L["BgPlayPause_21"]["Size"] = UDim2.new(0, 24, 0, 22);
LMG2L["BgPlayPause_21"]["Position"] = UDim2.new(0, 6, 0, 65);
LMG2L["BgPlayPause_21"]["Name"] = [[BgPlayPause]];


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.PluginAudio.Panel.BgPlayPause.UICorner
LMG2L["UICorner_22"] = Instance.new("UICorner", LMG2L["BgPlayPause_21"]);
LMG2L["UICorner_22"]["CornerRadius"] = UDim.new(0, 5);


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.PluginAudio.Panel.BgPlayPause.PlayPauseButton
LMG2L["PlayPauseButton_23"] = Instance.new("TextButton", LMG2L["BgPlayPause_21"]);
LMG2L["PlayPauseButton_23"]["BorderSizePixel"] = 0;
LMG2L["PlayPauseButton_23"]["TextSize"] = 9;
LMG2L["PlayPauseButton_23"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
LMG2L["PlayPauseButton_23"]["BackgroundColor3"] = Color3.fromRGB(224, 231, 238);
LMG2L["PlayPauseButton_23"]["FontFace"] = Font.new([[rbxasset://fonts/families/Arial.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
LMG2L["PlayPauseButton_23"]["Size"] = UDim2.new(0, 24, 0, 20);
LMG2L["PlayPauseButton_23"]["Text"] = [[]];
LMG2L["PlayPauseButton_23"]["Name"] = [[PlayPauseButton]];


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.PluginAudio.Panel.BgPlayPause.PlayPauseButton.UICorner
LMG2L["UICorner_24"] = Instance.new("UICorner", LMG2L["PlayPauseButton_23"]);
LMG2L["UICorner_24"]["CornerRadius"] = UDim.new(0, 4);


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.PluginAudio.Panel.BgPlayPause.PlayPauseButton.UIStroke
LMG2L["UIStroke_25"] = Instance.new("UIStroke", LMG2L["PlayPauseButton_23"]);
LMG2L["UIStroke_25"]["Transparency"] = 0.85;
LMG2L["UIStroke_25"]["Thickness"] = 0.5;


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.PluginAudio.Panel.BgPlayPause.IconPlayPause
LMG2L["IconPlayPause_26"] = Instance.new("ImageLabel", LMG2L["BgPlayPause_21"]);
LMG2L["IconPlayPause_26"]["BorderSizePixel"] = 0;
LMG2L["IconPlayPause_26"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
-- LMG2L["IconPlayPause_26"]["ImageContent"] = ;
LMG2L["IconPlayPause_26"]["ImageColor3"] = Color3.fromRGB(0, 0, 0);
LMG2L["IconPlayPause_26"]["Image"] = [[rbxassetid://110313200539368]];
LMG2L["IconPlayPause_26"]["Size"] = UDim2.new(0, 14, 0, 14);
LMG2L["IconPlayPause_26"]["BackgroundTransparency"] = 1;
LMG2L["IconPlayPause_26"]["Name"] = [[IconPlayPause]];
LMG2L["IconPlayPause_26"]["Position"] = UDim2.new(0, 5, 0, 3);


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.PluginAudio.Panel.AudioIDBox
LMG2L["AudioIDBox_27"] = Instance.new("TextBox", LMG2L["Panel_3"]);
LMG2L["AudioIDBox_27"]["Name"] = [[AudioIDBox]];
LMG2L["AudioIDBox_27"]["BorderSizePixel"] = 0;
LMG2L["AudioIDBox_27"]["TextTruncate"] = Enum.TextTruncate.AtEnd;
LMG2L["AudioIDBox_27"]["TextTransparency"] = 0.5;
LMG2L["AudioIDBox_27"]["TextSize"] = 10;
LMG2L["AudioIDBox_27"]["TextColor3"] = Color3.fromRGB(224, 231, 238);
LMG2L["AudioIDBox_27"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
LMG2L["AudioIDBox_27"]["FontFace"] = Font.new([[rbxasset://fonts/families/Arial.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
LMG2L["AudioIDBox_27"]["Size"] = UDim2.new(0, 200, 0, 22);
LMG2L["AudioIDBox_27"]["Position"] = UDim2.new(0, 6, 0, 32);
LMG2L["AudioIDBox_27"]["Text"] = [[masukan audio id...]];
LMG2L["AudioIDBox_27"]["BackgroundTransparency"] = 1;


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.PluginAudio.Panel.AudioIDBox.UIStroke2
LMG2L["UIStroke2_28"] = Instance.new("UIStroke", LMG2L["AudioIDBox_27"]);
LMG2L["UIStroke2_28"]["Transparency"] = 0.85;
LMG2L["UIStroke2_28"]["Name"] = [[UIStroke2]];
LMG2L["UIStroke2_28"]["Color"] = Color3.fromRGB(224, 231, 238);


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.PluginAudio.Panel.AudioIDBox.UICorner
LMG2L["UICorner_29"] = Instance.new("UICorner", LMG2L["AudioIDBox_27"]);
LMG2L["UICorner_29"]["CornerRadius"] = UDim.new(0, 5);


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.PluginAudio.Panel.AudioIDBox.UIStroke
LMG2L["UIStroke_2a"] = Instance.new("UIStroke", LMG2L["AudioIDBox_27"]);
LMG2L["UIStroke_2a"]["Transparency"] = 0.5;
LMG2L["UIStroke_2a"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
LMG2L["UIStroke_2a"]["Thickness"] = 0.5;
LMG2L["UIStroke_2a"]["Color"] = Color3.fromRGB(71, 73, 75);

--// MAIN PANEL SYSTEM

local UserInputService = game:GetService("UserInputService")
local CoreGui = game:GetService("CoreGui")

local ScreenGui = LMG2L["ScreenGui_1"]
local PluginAudio = ScreenGui:WaitForChild("PluginAudio")
local Panel = PluginAudio:WaitForChild("Panel")
local Header = Panel:WaitForChild("Header")
local CloseButton = Header:WaitForChild("CloseButton")
local Sound = Panel:WaitForChild("Sound")

ScreenGui.Parent = CoreGui

ScreenGui.ResetOnSpawn = false
ScreenGui.IgnoreGuiInset = false
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

local dragging = false
local dragInput = nil
local dragStart = nil
local startPos = nil

local function updateDrag(input)
	local delta = input.Position - dragStart

	Panel.Position = UDim2.new(
		startPos.X.Scale,
		startPos.X.Offset + delta.X,
		startPos.Y.Scale,
		startPos.Y.Offset + delta.Y
	)
end

Header.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1
		or input.UserInputType == Enum.UserInputType.Touch then

		dragging = true
		dragStart = input.Position
		startPos = Panel.Position

		input.Changed:Connect(function()
			if input.UserInputState == Enum.UserInputState.End then
				dragging = false
			end
		end)
	end
end)

Header.InputChanged:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseMovement
		or input.UserInputType == Enum.UserInputType.Touch then

		dragInput = input
	end
end)

UserInputService.InputChanged:Connect(function(input)
	if input == dragInput and dragging then
		updateDrag(input)
	end
end)

CloseButton.MouseButton1Click:Connect(function()
	if Sound then
		Sound:Stop()
		Sound.SoundId = ""
	end

	dragging = false
	dragInput = nil

	ScreenGui:Destroy()
end)

--// AUDIO PLAYER SYSTEM

local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local MarketplaceService = game:GetService("MarketplaceService")

local ScreenGui = LMG2L["ScreenGui_1"]
local PluginAudio = ScreenGui:WaitForChild("PluginAudio")
local Panel = PluginAudio:WaitForChild("Panel")

local AudioIDBox = Panel:WaitForChild("AudioIDBox")

local BgAdd = Panel:WaitForChild("BgAdd")
local AddButton = BgAdd:WaitForChild("AddButton")

local Name = Panel:WaitForChild("Name")

local BgPlayPause = Panel:WaitForChild("BgPlayPause")
local PlayPauseButton = BgPlayPause:WaitForChild("PlayPauseButton")
local IconPlayPause = BgPlayPause:WaitForChild("IconPlayPause")

local ProgressBar = Panel:WaitForChild("ProgressBar")
local Fill = ProgressBar:WaitForChild("Fill")
local KnobButton = Fill:WaitForChild("KnobButton")

local CurrentTimeLabel = Panel:WaitForChild("CurrentTimeLabel")
local DurationLabel = Panel:WaitForChild("DurationLabel")

local Sound = Panel:WaitForChild("Sound")

--// ICONS
local PLAY_ICON = "rbxassetid://110313200539368"
local PAUSE_ICON = "rbxassetid://102338167215000"

--// AUDIO ID BOX
local DEFAULT_TEXT = "masukan audio id..."
local TEXT_COLOR = Color3.fromRGB(223, 230, 237)

--// STATE
local loadedAudio = false
local isDragging = false
local currentAssetId = nil
local loadToken = 0

--// KNOB
local KNOB_SIZE = 12
local KNOB_HALF = KNOB_SIZE / 2
local KNOB_Y_OFFSET = -3

--// INITIAL UI
IconPlayPause.Image = PLAY_ICON

AudioIDBox.Text = DEFAULT_TEXT
AudioIDBox.TextTransparency = 0.5
AudioIDBox.TextColor3 = TEXT_COLOR

Name.Text = ""
CurrentTimeLabel.Text = "00:00"
DurationLabel.Text = "00:00"

Fill.Size = UDim2.new(0, 0, 1, 0)

--// KNOB MENUTUPI UJUNG FILL
KnobButton.Position = UDim2.new(0, -KNOB_HALF, 0, KNOB_Y_OFFSET)

--// FORMAT TIME
local function formatTime(seconds)
	seconds = math.max(0, math.floor(seconds or 0))

	local minutes = math.floor(seconds / 60)
	local remainingSeconds = seconds % 60

	return string.format("%02d:%02d", minutes, remainingSeconds)
end

--// GET AUDIO ID
local function getAudioId()
	local text = tostring(AudioIDBox.Text or "")

	if text == DEFAULT_TEXT then
		return nil
	end

	text = text:gsub("%D", "")

	if text == "" then
		return nil
	end

	return text
end

--// PLAY UI
local function setPlayingUI(isPlaying)
	IconPlayPause.Image = isPlaying and PAUSE_ICON or PLAY_ICON
end

--// SET PROGRESS
local function setProgress(percent)
	percent = math.clamp(percent or 0, 0, 1)

	local barWidth = ProgressBar.AbsoluteSize.X

	if barWidth <= 0 then
		return
	end

	local fillWidth = barWidth * percent

	Fill.Size = UDim2.new(0, fillWidth, 1, 0)

	--// TITIK TENGAH KNOB TEPAT DI UJUNG FILL
	KnobButton.Position = UDim2.new(
		1,
		-KNOB_HALF,
		0,
		KNOB_Y_OFFSET
	)
end

--// RESET PLAYER
local function resetPlayer()
	loadedAudio = false
	isDragging = false

	Sound:Stop()
	Sound.TimePosition = 0

	CurrentTimeLabel.Text = "00:00"
	DurationLabel.Text = "00:00"

	setProgress(0)
	setPlayingUI(false)
end

--// AUDIO ID INPUT
AudioIDBox.Focused:Connect(function()
	if AudioIDBox.Text == DEFAULT_TEXT then
		AudioIDBox.Text = ""
		AudioIDBox.TextTransparency = 0
		AudioIDBox.TextColor3 = TEXT_COLOR
	end
end)

AudioIDBox:GetPropertyChangedSignal("Text"):Connect(function()
	local text = AudioIDBox.Text

	if text == DEFAULT_TEXT then
		return
	end

	local cleanText = tostring(text):gsub("%D", "")

	if text ~= cleanText then
		AudioIDBox.Text = cleanText
		return
	end

	if cleanText ~= "" then
		AudioIDBox.TextTransparency = 0
		AudioIDBox.TextColor3 = TEXT_COLOR
	end
end)

AudioIDBox.FocusLost:Connect(function()
	if AudioIDBox.Text == "" then
		AudioIDBox.Text = DEFAULT_TEXT
		AudioIDBox.TextTransparency = 0.5
		AudioIDBox.TextColor3 = TEXT_COLOR
	end
end)

--// UPDATE AUDIO UI
local function updateAudioUI()
	if not loadedAudio then
		return
	end

	local duration = Sound.TimeLength
	local currentTime = Sound.TimePosition

	if duration <= 0 then
		return
	end

	CurrentTimeLabel.Text = formatTime(currentTime)
	DurationLabel.Text = formatTime(duration)

	if not isDragging then
		setProgress(currentTime / duration)
	end

	setPlayingUI(Sound.IsPlaying)
end

--// LOAD AUDIO
local function loadAudio()
	local audioId = getAudioId()

	if not audioId then
		return
	end

	loadToken += 1

	local token = loadToken

	currentAssetId = audioId

	resetPlayer()

	Sound.SoundId = ""
	Sound.SoundId = "rbxassetid://" .. audioId

	Name.Text = "LOADING..."

	task.spawn(function()
		local success, productInfo = pcall(function()
			return MarketplaceService:GetProductInfo(
				tonumber(audioId),
				Enum.InfoType.Asset
			)
		end)

		if token ~= loadToken or currentAssetId ~= audioId then
			return
		end

		if success and productInfo then
			if productInfo.Name and productInfo.Name ~= "" then
				Name.Text = productInfo.Name
			else
				Name.Text = "AUDIO " .. audioId
			end
		else
			Name.Text = "AUDIO " .. audioId
		end
	end)

	task.spawn(function()
		local startTime = os.clock()
		local timeout = 15

		while token == loadToken and Sound.TimeLength <= 0 do
			if os.clock() - startTime >= timeout then
				break
			end

			task.wait(0.1)
		end

		if token ~= loadToken or currentAssetId ~= audioId then
			return
		end

		if Sound.TimeLength > 0 then
			loadedAudio = true

			CurrentTimeLabel.Text = "00:00"
			DurationLabel.Text = formatTime(Sound.TimeLength)

			setProgress(0)
			setPlayingUI(false)
		else
			loadedAudio = false
			Name.Text = "FAILED TO LOAD"
			CurrentTimeLabel.Text = "00:00"
			DurationLabel.Text = "00:00"

			setProgress(0)
			setPlayingUI(false)
		end
	end)
end

--// ADD BUTTON
AddButton.MouseButton1Click:Connect(function()
	loadAudio()
end)

--// ENTER TO ADD
AudioIDBox.FocusLost:Connect(function(enterPressed)
	if enterPressed then
		loadAudio()
	end
end)

--// PLAY / PAUSE
PlayPauseButton.MouseButton1Click:Connect(function()
	if not loadedAudio then
		return
	end

	if Sound.TimeLength <= 0 then
		return
	end

	if Sound.IsPlaying then
		Sound:Pause()
		setPlayingUI(false)
	else
		if Sound.TimePosition >= Sound.TimeLength then
			Sound.TimePosition = 0
			setProgress(0)
		end

		Sound:Play()
		setPlayingUI(true)
	end
end)

--// GET PROGRESS PERCENT
local function getPercentFromPosition(inputPosition)
	local barPosition = ProgressBar.AbsolutePosition.X
	local barWidth = ProgressBar.AbsoluteSize.X

	if barWidth <= 0 then
		return 0
	end

	local percent = (inputPosition.X - barPosition) / barWidth

	return math.clamp(percent, 0, 1)
end

--// SEEK SOUND
local function seekToPosition(inputPosition)
	if not loadedAudio then
		return
	end

	local duration = Sound.TimeLength

	if duration <= 0 then
		return
	end

	local percent = getPercentFromPosition(inputPosition)

	Sound.TimePosition = duration * percent

	CurrentTimeLabel.Text = formatTime(Sound.TimePosition)
	DurationLabel.Text = formatTime(duration)

	setProgress(percent)
end

--// CLICK PROGRESS BAR
ProgressBar.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1
		or input.UserInputType == Enum.UserInputType.Touch then

		seekToPosition(input.Position)
	end
end)

--// START KNOB DRAG
KnobButton.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1
		or input.UserInputType == Enum.UserInputType.Touch then

		if not loadedAudio then
			return
		end

		isDragging = true
		seekToPosition(input.Position)
	end
end)

--// DRAG KNOB
UserInputService.InputChanged:Connect(function(input)
	if not isDragging then
		return
	end

	if input.UserInputType == Enum.UserInputType.MouseMovement
		or input.UserInputType == Enum.UserInputType.Touch then

		seekToPosition(input.Position)
	end
end)

--// STOP KNOB DRAG
UserInputService.InputEnded:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1
		or input.UserInputType == Enum.UserInputType.Touch then

		isDragging = false
	end
end)

--// SOUND LOADED
Sound.Loaded:Connect(function()
	if currentAssetId and Sound.TimeLength > 0 then
		loadedAudio = true

		CurrentTimeLabel.Text = formatTime(Sound.TimePosition)
		DurationLabel.Text = formatTime(Sound.TimeLength)

		if not isDragging then
			setProgress(Sound.TimePosition / Sound.TimeLength)
		end
	end
end)

--// SOUND ENDED
Sound.Ended:Connect(function()
	if not loadedAudio then
		return
	end

	Sound.TimePosition = 0

	CurrentTimeLabel.Text = "00:00"
	DurationLabel.Text = formatTime(Sound.TimeLength)

	setProgress(0)
	setPlayingUI(false)
end)

--// LIVE UPDATE
RunService.RenderStepped:Connect(function()
	updateAudioUI()
end)

return LMG2L["ScreenGui_1"], require;
