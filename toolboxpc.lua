local LMG2L = {};

-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui
LMG2L["ScreenGui_1"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"));
LMG2L["ScreenGui_1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin
LMG2L["NarakuPlugin_2"] = Instance.new("Folder", LMG2L["ScreenGui_1"]);
LMG2L["NarakuPlugin_2"]["Name"] = [[NarakuPlugin]];


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel
LMG2L["Panel_3"] = Instance.new("Frame", LMG2L["NarakuPlugin_2"]);
LMG2L["Panel_3"]["BorderSizePixel"] = 0;
LMG2L["Panel_3"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
LMG2L["Panel_3"]["Size"] = UDim2.new(0, 280, 0, 337);
LMG2L["Panel_3"]["Position"] = UDim2.new(0, 10, 0, 20);
LMG2L["Panel_3"]["Name"] = [[Panel]];


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.SearchBox
LMG2L["SearchBox_4"] = Instance.new("TextBox", LMG2L["Panel_3"]);
LMG2L["SearchBox_4"]["Name"] = [[SearchBox]];
LMG2L["SearchBox_4"]["BorderSizePixel"] = 0;
LMG2L["SearchBox_4"]["TextTransparency"] = 0.5;
LMG2L["SearchBox_4"]["TextSize"] = 10;
LMG2L["SearchBox_4"]["TextColor3"] = Color3.fromRGB(224, 231, 238);
LMG2L["SearchBox_4"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
LMG2L["SearchBox_4"]["FontFace"] = Font.new([[rbxasset://fonts/families/Arial.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
LMG2L["SearchBox_4"]["Size"] = UDim2.new(0, 220, 0, 22);
LMG2L["SearchBox_4"]["Position"] = UDim2.new(0, 5, 0, 82);
LMG2L["SearchBox_4"]["Text"] = [[]];


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.SearchBox.IconSearch
LMG2L["IconSearch_5"] = Instance.new("ImageLabel", LMG2L["SearchBox_4"]);
LMG2L["IconSearch_5"]["BorderSizePixel"] = 0;
LMG2L["IconSearch_5"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
-- LMG2L["IconSearch_5"]["ImageContent"] = ;
LMG2L["IconSearch_5"]["ImageColor3"] = Color3.fromRGB(224, 231, 238);
LMG2L["IconSearch_5"]["Image"] = [[rbxassetid://91918048389224]];
LMG2L["IconSearch_5"]["Size"] = UDim2.new(0, 16, 0, 16);
LMG2L["IconSearch_5"]["BackgroundTransparency"] = 1;
LMG2L["IconSearch_5"]["Name"] = [[IconSearch]];
LMG2L["IconSearch_5"]["Position"] = UDim2.new(0, 3, 0, 3);


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.SearchBox.UICorner
LMG2L["UICorner_6"] = Instance.new("UICorner", LMG2L["SearchBox_4"]);
LMG2L["UICorner_6"]["CornerRadius"] = UDim.new(0, 5);


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.SearchBox.UIStroke2
LMG2L["UIStroke2_7"] = Instance.new("UIStroke", LMG2L["SearchBox_4"]);
LMG2L["UIStroke2_7"]["Transparency"] = 0.85;
LMG2L["UIStroke2_7"]["Name"] = [[UIStroke2]];
LMG2L["UIStroke2_7"]["Color"] = Color3.fromRGB(224, 231, 238);


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.SearchBox.UIStroke
LMG2L["UIStroke_8"] = Instance.new("UIStroke", LMG2L["SearchBox_4"]);
LMG2L["UIStroke_8"]["Transparency"] = 0.5;
LMG2L["UIStroke_8"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
LMG2L["UIStroke_8"]["Thickness"] = 0.5;
LMG2L["UIStroke_8"]["Color"] = Color3.fromRGB(71, 73, 75);


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.ScrollingTab
LMG2L["ScrollingTab_9"] = Instance.new("ScrollingFrame", LMG2L["Panel_3"]);
LMG2L["ScrollingTab_9"]["ScrollingDirection"] = Enum.ScrollingDirection.X;
LMG2L["ScrollingTab_9"]["BorderSizePixel"] = 0;
LMG2L["ScrollingTab_9"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
LMG2L["ScrollingTab_9"]["Name"] = [[ScrollingTab]];
LMG2L["ScrollingTab_9"]["AutomaticCanvasSize"] = Enum.AutomaticSize.X;
LMG2L["ScrollingTab_9"]["Size"] = UDim2.new(0, 246, 0, 26);
LMG2L["ScrollingTab_9"]["Position"] = UDim2.new(0, 30, 0, 106);
LMG2L["ScrollingTab_9"]["ScrollBarThickness"] = 0;
LMG2L["ScrollingTab_9"]["BackgroundTransparency"] = 1;


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.ScrollingTab.BackgroundAudio
LMG2L["BackgroundAudio_a"] = Instance.new("Frame", LMG2L["ScrollingTab_9"]);
LMG2L["BackgroundAudio_a"]["BorderSizePixel"] = 0;
LMG2L["BackgroundAudio_a"]["BackgroundColor3"] = Color3.fromRGB(127, 131, 135);
LMG2L["BackgroundAudio_a"]["Size"] = UDim2.new(0, 80, 0, 22);
LMG2L["BackgroundAudio_a"]["Name"] = [[BackgroundAudio]];


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.ScrollingTab.BackgroundAudio.AudioButton
LMG2L["AudioButton_b"] = Instance.new("TextButton", LMG2L["BackgroundAudio_a"]);
LMG2L["AudioButton_b"]["BorderSizePixel"] = 0;
LMG2L["AudioButton_b"]["TextSize"] = 9;
LMG2L["AudioButton_b"]["TextColor3"] = Color3.fromRGB(224, 231, 238);
LMG2L["AudioButton_b"]["BackgroundColor3"] = Color3.fromRGB(53, 55, 57);
LMG2L["AudioButton_b"]["FontFace"] = Font.new([[rbxasset://fonts/families/Arial.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
LMG2L["AudioButton_b"]["Size"] = UDim2.new(0, 80, 0, 20);
LMG2L["AudioButton_b"]["Text"] = [[AUDIO]];
LMG2L["AudioButton_b"]["Name"] = [[AudioButton]];


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.ScrollingTab.BackgroundAudio.AudioButton.UICorner
LMG2L["UICorner_c"] = Instance.new("UICorner", LMG2L["AudioButton_b"]);
LMG2L["UICorner_c"]["CornerRadius"] = UDim.new(0, 4);


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.ScrollingTab.BackgroundAudio.AudioButton.UIStroke
LMG2L["UIStroke_d"] = Instance.new("UIStroke", LMG2L["AudioButton_b"]);
LMG2L["UIStroke_d"]["Transparency"] = 0.85;
LMG2L["UIStroke_d"]["Thickness"] = 0.5;


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.ScrollingTab.BackgroundAudio.UICorner
LMG2L["UICorner_e"] = Instance.new("UICorner", LMG2L["BackgroundAudio_a"]);
LMG2L["UICorner_e"]["CornerRadius"] = UDim.new(0, 5);


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.ScrollingTab.BackgroundAudio.IconAudio
LMG2L["IconAudio_f"] = Instance.new("ImageLabel", LMG2L["BackgroundAudio_a"]);
LMG2L["IconAudio_f"]["ZIndex"] = 2;
LMG2L["IconAudio_f"]["BorderSizePixel"] = 0;
LMG2L["IconAudio_f"]["BackgroundColor3"] = Color3.fromRGB(76, 76, 76);
-- LMG2L["IconAudio_f"]["ImageContent"] = ;
LMG2L["IconAudio_f"]["ImageColor3"] = Color3.fromRGB(224, 231, 238);
LMG2L["IconAudio_f"]["Image"] = [[rbxassetid://80662318540562]];
LMG2L["IconAudio_f"]["Size"] = UDim2.new(0, 14, 0, 14);
LMG2L["IconAudio_f"]["BackgroundTransparency"] = 1;
LMG2L["IconAudio_f"]["Name"] = [[IconAudio]];
LMG2L["IconAudio_f"]["Position"] = UDim2.new(0, 4, 0, 3);


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.ScrollingTab.UIPadding
LMG2L["UIPadding_10"] = Instance.new("UIPadding", LMG2L["ScrollingTab_9"]);
LMG2L["UIPadding_10"]["PaddingTop"] = UDim.new(0, 2);
LMG2L["UIPadding_10"]["PaddingRight"] = UDim.new(0, 2);
LMG2L["UIPadding_10"]["PaddingBottom"] = UDim.new(0, 2);


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.ScrollingTab.BackgroundModel
LMG2L["BackgroundModel_11"] = Instance.new("Frame", LMG2L["ScrollingTab_9"]);
LMG2L["BackgroundModel_11"]["BorderSizePixel"] = 0;
LMG2L["BackgroundModel_11"]["BackgroundColor3"] = Color3.fromRGB(127, 131, 135);
LMG2L["BackgroundModel_11"]["Size"] = UDim2.new(0, 80, 0, 22);
LMG2L["BackgroundModel_11"]["Name"] = [[BackgroundModel]];


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.ScrollingTab.BackgroundModel.ModelButton
LMG2L["ModelButton_12"] = Instance.new("TextButton", LMG2L["BackgroundModel_11"]);
LMG2L["ModelButton_12"]["BorderSizePixel"] = 0;
LMG2L["ModelButton_12"]["TextSize"] = 9;
LMG2L["ModelButton_12"]["TextColor3"] = Color3.fromRGB(224, 231, 238);
LMG2L["ModelButton_12"]["BackgroundColor3"] = Color3.fromRGB(53, 55, 57);
LMG2L["ModelButton_12"]["FontFace"] = Font.new([[rbxasset://fonts/families/Arial.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
LMG2L["ModelButton_12"]["Size"] = UDim2.new(0, 80, 0, 20);
LMG2L["ModelButton_12"]["Text"] = [[MODEL]];
LMG2L["ModelButton_12"]["Name"] = [[ModelButton]];


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.ScrollingTab.BackgroundModel.ModelButton.UICorner
LMG2L["UICorner_13"] = Instance.new("UICorner", LMG2L["ModelButton_12"]);
LMG2L["UICorner_13"]["CornerRadius"] = UDim.new(0, 4);


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.ScrollingTab.BackgroundModel.ModelButton.UIStroke
LMG2L["UIStroke_14"] = Instance.new("UIStroke", LMG2L["ModelButton_12"]);
LMG2L["UIStroke_14"]["Transparency"] = 0.85;
LMG2L["UIStroke_14"]["Thickness"] = 0.5;


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.ScrollingTab.BackgroundModel.IconModel
LMG2L["IconModel_15"] = Instance.new("ImageLabel", LMG2L["BackgroundModel_11"]);
LMG2L["IconModel_15"]["ZIndex"] = 2;
LMG2L["IconModel_15"]["BorderSizePixel"] = 0;
LMG2L["IconModel_15"]["BackgroundColor3"] = Color3.fromRGB(76, 76, 76);
-- LMG2L["IconModel_15"]["ImageContent"] = ;
LMG2L["IconModel_15"]["ImageColor3"] = Color3.fromRGB(224, 231, 238);
LMG2L["IconModel_15"]["Image"] = [[rbxassetid://81364972479416]];
LMG2L["IconModel_15"]["Size"] = UDim2.new(0, 14, 0, 14);
LMG2L["IconModel_15"]["BackgroundTransparency"] = 1;
LMG2L["IconModel_15"]["Name"] = [[IconModel]];
LMG2L["IconModel_15"]["Position"] = UDim2.new(0, 4, 0, 3);


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.ScrollingTab.BackgroundModel.UICorner
LMG2L["UICorner_16"] = Instance.new("UICorner", LMG2L["BackgroundModel_11"]);
LMG2L["UICorner_16"]["CornerRadius"] = UDim.new(0, 5);


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.ScrollingTab.UIListLayout
LMG2L["UIListLayout_17"] = Instance.new("UIListLayout", LMG2L["ScrollingTab_9"]);
LMG2L["UIListLayout_17"]["Padding"] = UDim.new(0, 3);
LMG2L["UIListLayout_17"]["FillDirection"] = Enum.FillDirection.Horizontal;


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.ScrollingTab.BackgroundPlugin
LMG2L["BackgroundPlugin_18"] = Instance.new("Frame", LMG2L["ScrollingTab_9"]);
LMG2L["BackgroundPlugin_18"]["BorderSizePixel"] = 0;
LMG2L["BackgroundPlugin_18"]["BackgroundColor3"] = Color3.fromRGB(127, 131, 135);
LMG2L["BackgroundPlugin_18"]["Size"] = UDim2.new(0, 80, 0, 22);
LMG2L["BackgroundPlugin_18"]["Name"] = [[BackgroundPlugin]];


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.ScrollingTab.BackgroundPlugin.PluginButton
LMG2L["PluginButton_19"] = Instance.new("TextButton", LMG2L["BackgroundPlugin_18"]);
LMG2L["PluginButton_19"]["BorderSizePixel"] = 0;
LMG2L["PluginButton_19"]["TextSize"] = 9;
LMG2L["PluginButton_19"]["TextColor3"] = Color3.fromRGB(224, 231, 238);
LMG2L["PluginButton_19"]["BackgroundColor3"] = Color3.fromRGB(53, 55, 57);
LMG2L["PluginButton_19"]["FontFace"] = Font.new([[rbxasset://fonts/families/Arial.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
LMG2L["PluginButton_19"]["Size"] = UDim2.new(0, 80, 0, 20);
LMG2L["PluginButton_19"]["Text"] = [[PLUGIN]];
LMG2L["PluginButton_19"]["Name"] = [[PluginButton]];


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.ScrollingTab.BackgroundPlugin.PluginButton.UICorner
LMG2L["UICorner_1a"] = Instance.new("UICorner", LMG2L["PluginButton_19"]);
LMG2L["UICorner_1a"]["CornerRadius"] = UDim.new(0, 4);


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.ScrollingTab.BackgroundPlugin.PluginButton.UIStroke
LMG2L["UIStroke_1b"] = Instance.new("UIStroke", LMG2L["PluginButton_19"]);
LMG2L["UIStroke_1b"]["Transparency"] = 0.85;
LMG2L["UIStroke_1b"]["Thickness"] = 0.5;


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.ScrollingTab.BackgroundPlugin.UICorner
LMG2L["UICorner_1c"] = Instance.new("UICorner", LMG2L["BackgroundPlugin_18"]);
LMG2L["UICorner_1c"]["CornerRadius"] = UDim.new(0, 5);


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.ScrollingTab.BackgroundPlugin.IconPlugin
LMG2L["IconPlugin_1d"] = Instance.new("ImageLabel", LMG2L["BackgroundPlugin_18"]);
LMG2L["IconPlugin_1d"]["ZIndex"] = 2;
LMG2L["IconPlugin_1d"]["BorderSizePixel"] = 0;
LMG2L["IconPlugin_1d"]["BackgroundColor3"] = Color3.fromRGB(76, 76, 76);
-- LMG2L["IconPlugin_1d"]["ImageContent"] = ;
LMG2L["IconPlugin_1d"]["ImageColor3"] = Color3.fromRGB(224, 231, 238);
LMG2L["IconPlugin_1d"]["Image"] = [[rbxassetid://119977886496737]];
LMG2L["IconPlugin_1d"]["Size"] = UDim2.new(0, 14, 0, 14);
LMG2L["IconPlugin_1d"]["BackgroundTransparency"] = 1;
LMG2L["IconPlugin_1d"]["Name"] = [[IconPlugin]];
LMG2L["IconPlugin_1d"]["Position"] = UDim2.new(0, 4, 0, 3);


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.ScrollingTab.BackgroundDecal
LMG2L["BackgroundDecal_1e"] = Instance.new("Frame", LMG2L["ScrollingTab_9"]);
LMG2L["BackgroundDecal_1e"]["BorderSizePixel"] = 0;
LMG2L["BackgroundDecal_1e"]["BackgroundColor3"] = Color3.fromRGB(127, 131, 135);
LMG2L["BackgroundDecal_1e"]["Size"] = UDim2.new(0, 80, 0, 22);
LMG2L["BackgroundDecal_1e"]["Name"] = [[BackgroundDecal]];


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.ScrollingTab.BackgroundDecal.IconDecal
LMG2L["IconDecal_1f"] = Instance.new("ImageLabel", LMG2L["BackgroundDecal_1e"]);
LMG2L["IconDecal_1f"]["ZIndex"] = 2;
LMG2L["IconDecal_1f"]["BorderSizePixel"] = 0;
LMG2L["IconDecal_1f"]["BackgroundColor3"] = Color3.fromRGB(76, 76, 76);
-- LMG2L["IconDecal_1f"]["ImageContent"] = ;
LMG2L["IconDecal_1f"]["ImageColor3"] = Color3.fromRGB(224, 231, 238);
LMG2L["IconDecal_1f"]["Image"] = [[rbxassetid://86658530760289]];
LMG2L["IconDecal_1f"]["Size"] = UDim2.new(0, 14, 0, 14);
LMG2L["IconDecal_1f"]["BackgroundTransparency"] = 1;
LMG2L["IconDecal_1f"]["Name"] = [[IconDecal]];
LMG2L["IconDecal_1f"]["Position"] = UDim2.new(0, 4, 0, 3);


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.ScrollingTab.BackgroundDecal.UICorner
LMG2L["UICorner_20"] = Instance.new("UICorner", LMG2L["BackgroundDecal_1e"]);
LMG2L["UICorner_20"]["CornerRadius"] = UDim.new(0, 5);


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.ScrollingTab.BackgroundDecal.DecalButton
LMG2L["DecalButton_21"] = Instance.new("TextButton", LMG2L["BackgroundDecal_1e"]);
LMG2L["DecalButton_21"]["BorderSizePixel"] = 0;
LMG2L["DecalButton_21"]["TextSize"] = 9;
LMG2L["DecalButton_21"]["TextColor3"] = Color3.fromRGB(224, 231, 238);
LMG2L["DecalButton_21"]["BackgroundColor3"] = Color3.fromRGB(53, 55, 57);
LMG2L["DecalButton_21"]["FontFace"] = Font.new([[rbxasset://fonts/families/Arial.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
LMG2L["DecalButton_21"]["Size"] = UDim2.new(0, 80, 0, 20);
LMG2L["DecalButton_21"]["Text"] = [[DECAL]];
LMG2L["DecalButton_21"]["Name"] = [[DecalButton]];


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.ScrollingTab.BackgroundDecal.DecalButton.UICorner
LMG2L["UICorner_22"] = Instance.new("UICorner", LMG2L["DecalButton_21"]);
LMG2L["UICorner_22"]["CornerRadius"] = UDim.new(0, 4);


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.ScrollingTab.BackgroundDecal.DecalButton.UIStroke
LMG2L["UIStroke_23"] = Instance.new("UIStroke", LMG2L["DecalButton_21"]);
LMG2L["UIStroke_23"]["Transparency"] = 0.85;
LMG2L["UIStroke_23"]["Thickness"] = 0.5;


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.SaveBox
LMG2L["SaveBox_24"] = Instance.new("TextBox", LMG2L["Panel_3"]);
LMG2L["SaveBox_24"]["Name"] = [[SaveBox]];
LMG2L["SaveBox_24"]["BorderSizePixel"] = 0;
LMG2L["SaveBox_24"]["TextTransparency"] = 0.5;
LMG2L["SaveBox_24"]["TextSize"] = 10;
LMG2L["SaveBox_24"]["TextColor3"] = Color3.fromRGB(224, 231, 238);
LMG2L["SaveBox_24"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
LMG2L["SaveBox_24"]["FontFace"] = Font.new([[rbxasset://fonts/families/Arial.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
LMG2L["SaveBox_24"]["Size"] = UDim2.new(0, 220, 0, 22);
LMG2L["SaveBox_24"]["Position"] = UDim2.new(0, 5, 0, 56);
LMG2L["SaveBox_24"]["Text"] = [[]];


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.SaveBox.UIStroke2
LMG2L["UIStroke2_25"] = Instance.new("UIStroke", LMG2L["SaveBox_24"]);
LMG2L["UIStroke2_25"]["Transparency"] = 0.85;
LMG2L["UIStroke2_25"]["Name"] = [[UIStroke2]];
LMG2L["UIStroke2_25"]["Color"] = Color3.fromRGB(224, 231, 238);


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.SaveBox.UIStroke
LMG2L["UIStroke_26"] = Instance.new("UIStroke", LMG2L["SaveBox_24"]);
LMG2L["UIStroke_26"]["Transparency"] = 0.5;
LMG2L["UIStroke_26"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
LMG2L["UIStroke_26"]["Thickness"] = 0.5;
LMG2L["UIStroke_26"]["Color"] = Color3.fromRGB(71, 73, 75);


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.SaveBox.UICorner
LMG2L["UICorner_27"] = Instance.new("UICorner", LMG2L["SaveBox_24"]);
LMG2L["UICorner_27"]["CornerRadius"] = UDim.new(0, 5);


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.SaveBox.IconSave
LMG2L["IconSave_28"] = Instance.new("ImageLabel", LMG2L["SaveBox_24"]);
LMG2L["IconSave_28"]["BorderSizePixel"] = 0;
LMG2L["IconSave_28"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
-- LMG2L["IconSave_28"]["ImageContent"] = ;
LMG2L["IconSave_28"]["ImageColor3"] = Color3.fromRGB(224, 231, 238);
LMG2L["IconSave_28"]["Image"] = [[rbxassetid://137646187701237]];
LMG2L["IconSave_28"]["Size"] = UDim2.new(0, 14, 0, 14);
LMG2L["IconSave_28"]["BackgroundTransparency"] = 1;
LMG2L["IconSave_28"]["Name"] = [[IconSave]];
LMG2L["IconSave_28"]["Position"] = UDim2.new(0, 3, 0, 4);


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.UIStroke
LMG2L["UIStroke_29"] = Instance.new("UIStroke", LMG2L["Panel_3"]);
LMG2L["UIStroke_29"]["Transparency"] = 0.95;
LMG2L["UIStroke_29"]["Thickness"] = 2;


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.CardSaved
LMG2L["CardSaved_2a"] = Instance.new("Frame", LMG2L["Panel_3"]);
LMG2L["CardSaved_2a"]["BorderSizePixel"] = 0;
LMG2L["CardSaved_2a"]["BackgroundColor3"] = Color3.fromRGB(127, 131, 135);
LMG2L["CardSaved_2a"]["Size"] = UDim2.new(0, 22, 0, 22);
LMG2L["CardSaved_2a"]["Position"] = UDim2.new(0, 5, 0, 108);
LMG2L["CardSaved_2a"]["Name"] = [[CardSaved]];


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.CardSaved.UICorner
LMG2L["UICorner_2b"] = Instance.new("UICorner", LMG2L["CardSaved_2a"]);
LMG2L["UICorner_2b"]["CornerRadius"] = UDim.new(0, 5);


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.CardSaved.SavedButton
LMG2L["SavedButton_2c"] = Instance.new("TextButton", LMG2L["CardSaved_2a"]);
LMG2L["SavedButton_2c"]["BorderSizePixel"] = 0;
LMG2L["SavedButton_2c"]["TextSize"] = 9;
LMG2L["SavedButton_2c"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
LMG2L["SavedButton_2c"]["BackgroundColor3"] = Color3.fromRGB(53, 55, 57);
LMG2L["SavedButton_2c"]["FontFace"] = Font.new([[rbxasset://fonts/families/Arial.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
LMG2L["SavedButton_2c"]["Size"] = UDim2.new(0, 22, 0, 20);
LMG2L["SavedButton_2c"]["Text"] = [[]];
LMG2L["SavedButton_2c"]["Name"] = [[SavedButton]];


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.CardSaved.SavedButton.UICorner
LMG2L["UICorner_2d"] = Instance.new("UICorner", LMG2L["SavedButton_2c"]);
LMG2L["UICorner_2d"]["CornerRadius"] = UDim.new(0, 4);


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.CardSaved.SavedButton.IconSaved
LMG2L["IconSaved_2e"] = Instance.new("ImageLabel", LMG2L["SavedButton_2c"]);
LMG2L["IconSaved_2e"]["BorderSizePixel"] = 0;
LMG2L["IconSaved_2e"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
-- LMG2L["IconSaved_2e"]["ImageContent"] = ;
LMG2L["IconSaved_2e"]["Image"] = [[rbxassetid://137646187701237]];
LMG2L["IconSaved_2e"]["Size"] = UDim2.new(0, 14, 0, 14);
LMG2L["IconSaved_2e"]["BackgroundTransparency"] = 1;
LMG2L["IconSaved_2e"]["Name"] = [[IconSaved]];
LMG2L["IconSaved_2e"]["Position"] = UDim2.new(0, 4, 0, 3);


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.ResizeHandleButton
LMG2L["ResizeHandleButton_2f"] = Instance.new("TextButton", LMG2L["Panel_3"]);
LMG2L["ResizeHandleButton_2f"]["BorderSizePixel"] = 0;
LMG2L["ResizeHandleButton_2f"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
LMG2L["ResizeHandleButton_2f"]["BackgroundColor3"] = Color3.fromRGB(224, 231, 238);
LMG2L["ResizeHandleButton_2f"]["BackgroundTransparency"] = 0.5;
LMG2L["ResizeHandleButton_2f"]["Size"] = UDim2.new(0, 180, 0, 4);
LMG2L["ResizeHandleButton_2f"]["Text"] = [[]];
LMG2L["ResizeHandleButton_2f"]["Name"] = [[ResizeHandleButton]];
LMG2L["ResizeHandleButton_2f"]["Position"] = UDim2.new(0, 50, 0, 342);


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.ResizeHandleButton.UICorner
LMG2L["UICorner_30"] = Instance.new("UICorner", LMG2L["ResizeHandleButton_2f"]);



-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.ResizeHandleButton.UIStroke
LMG2L["UIStroke_31"] = Instance.new("UIStroke", LMG2L["ResizeHandleButton_2f"]);
LMG2L["UIStroke_31"]["Transparency"] = 0.95;
LMG2L["UIStroke_31"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
LMG2L["UIStroke_31"]["Thickness"] = 2;


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.BackgroundInsert
LMG2L["BackgroundInsert_32"] = Instance.new("Frame", LMG2L["Panel_3"]);
LMG2L["BackgroundInsert_32"]["BorderSizePixel"] = 0;
LMG2L["BackgroundInsert_32"]["BackgroundColor3"] = Color3.fromRGB(127, 131, 135);
LMG2L["BackgroundInsert_32"]["Size"] = UDim2.new(0, 46, 0, 22);
LMG2L["BackgroundInsert_32"]["Position"] = UDim2.new(0, 230, 0, 30);
LMG2L["BackgroundInsert_32"]["Name"] = [[BackgroundInsert]];


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.BackgroundInsert.UICorner
LMG2L["UICorner_33"] = Instance.new("UICorner", LMG2L["BackgroundInsert_32"]);
LMG2L["UICorner_33"]["CornerRadius"] = UDim.new(0, 5);


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.BackgroundInsert.InsertButton
LMG2L["InsertButton_34"] = Instance.new("TextButton", LMG2L["BackgroundInsert_32"]);
LMG2L["InsertButton_34"]["BorderSizePixel"] = 0;
LMG2L["InsertButton_34"]["TextSize"] = 9;
LMG2L["InsertButton_34"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
LMG2L["InsertButton_34"]["BackgroundColor3"] = Color3.fromRGB(224, 231, 238);
LMG2L["InsertButton_34"]["FontFace"] = Font.new([[rbxasset://fonts/families/Arial.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
LMG2L["InsertButton_34"]["Size"] = UDim2.new(0, 46, 0, 20);
LMG2L["InsertButton_34"]["Text"] = [[INSERT]];
LMG2L["InsertButton_34"]["Name"] = [[InsertButton]];


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.BackgroundInsert.InsertButton.UICorner
LMG2L["UICorner_35"] = Instance.new("UICorner", LMG2L["InsertButton_34"]);
LMG2L["UICorner_35"]["CornerRadius"] = UDim.new(0, 4);


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.BackgroundInsert.InsertButton.UIStroke
LMG2L["UIStroke_36"] = Instance.new("UIStroke", LMG2L["InsertButton_34"]);
LMG2L["UIStroke_36"]["Transparency"] = 0.85;
LMG2L["UIStroke_36"]["Thickness"] = 0.5;


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.UICorner
LMG2L["UICorner_37"] = Instance.new("UICorner", LMG2L["Panel_3"]);



-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.InsertBox
LMG2L["InsertBox_38"] = Instance.new("TextBox", LMG2L["Panel_3"]);
LMG2L["InsertBox_38"]["Name"] = [[InsertBox]];
LMG2L["InsertBox_38"]["BorderSizePixel"] = 0;
LMG2L["InsertBox_38"]["TextTransparency"] = 0.5;
LMG2L["InsertBox_38"]["TextSize"] = 10;
LMG2L["InsertBox_38"]["TextColor3"] = Color3.fromRGB(224, 231, 238);
LMG2L["InsertBox_38"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
LMG2L["InsertBox_38"]["FontFace"] = Font.new([[rbxasset://fonts/families/Arial.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
LMG2L["InsertBox_38"]["Size"] = UDim2.new(0, 220, 0, 22);
LMG2L["InsertBox_38"]["Position"] = UDim2.new(0, 5, 0, 30);
LMG2L["InsertBox_38"]["Text"] = [[]];


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.InsertBox.UIStroke2
LMG2L["UIStroke2_39"] = Instance.new("UIStroke", LMG2L["InsertBox_38"]);
LMG2L["UIStroke2_39"]["Transparency"] = 0.85;
LMG2L["UIStroke2_39"]["Name"] = [[UIStroke2]];
LMG2L["UIStroke2_39"]["Color"] = Color3.fromRGB(224, 231, 238);


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.InsertBox.IconInsert
LMG2L["IconInsert_3a"] = Instance.new("ImageLabel", LMG2L["InsertBox_38"]);
LMG2L["IconInsert_3a"]["BorderSizePixel"] = 0;
LMG2L["IconInsert_3a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
-- LMG2L["IconInsert_3a"]["ImageContent"] = ;
LMG2L["IconInsert_3a"]["ImageColor3"] = Color3.fromRGB(224, 231, 238);
LMG2L["IconInsert_3a"]["Image"] = [[rbxassetid://113150314234048]];
LMG2L["IconInsert_3a"]["Size"] = UDim2.new(0, 14, 0, 14);
LMG2L["IconInsert_3a"]["BackgroundTransparency"] = 1;
LMG2L["IconInsert_3a"]["Name"] = [[IconInsert]];
LMG2L["IconInsert_3a"]["Position"] = UDim2.new(0, 3, 0, 4);


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.InsertBox.UICorner
LMG2L["UICorner_3b"] = Instance.new("UICorner", LMG2L["InsertBox_38"]);
LMG2L["UICorner_3b"]["CornerRadius"] = UDim.new(0, 5);


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.InsertBox.UIStroke
LMG2L["UIStroke_3c"] = Instance.new("UIStroke", LMG2L["InsertBox_38"]);
LMG2L["UIStroke_3c"]["Transparency"] = 0.5;
LMG2L["UIStroke_3c"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
LMG2L["UIStroke_3c"]["Thickness"] = 0.5;
LMG2L["UIStroke_3c"]["Color"] = Color3.fromRGB(71, 73, 75);


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.CardMenu
LMG2L["CardMenu_3d"] = Instance.new("Frame", LMG2L["Panel_3"]);
LMG2L["CardMenu_3d"]["Visible"] = false;
LMG2L["CardMenu_3d"]["ZIndex"] = 3;
LMG2L["CardMenu_3d"]["BorderSizePixel"] = 0;
LMG2L["CardMenu_3d"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
LMG2L["CardMenu_3d"]["Size"] = UDim2.new(0, 125, 0, 307);
LMG2L["CardMenu_3d"]["Position"] = UDim2.new(0, 0, 0, 26);
LMG2L["CardMenu_3d"]["Name"] = [[CardMenu]];
LMG2L["CardMenu_3d"]["BackgroundTransparency"] = 0.3;


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.CardMenu.UICorner
LMG2L["UICorner_3e"] = Instance.new("UICorner", LMG2L["CardMenu_3d"]);
LMG2L["UICorner_3e"]["CornerRadius"] = UDim.new(0, 5);


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.CardMenu.ScrollingButton
LMG2L["ScrollingButton_3f"] = Instance.new("ScrollingFrame", LMG2L["CardMenu_3d"]);
LMG2L["ScrollingButton_3f"]["ZIndex"] = 2;
LMG2L["ScrollingButton_3f"]["BorderSizePixel"] = 0;
LMG2L["ScrollingButton_3f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
LMG2L["ScrollingButton_3f"]["Name"] = [[ScrollingButton]];
LMG2L["ScrollingButton_3f"]["Size"] = UDim2.new(0, 126, 0, 284);
LMG2L["ScrollingButton_3f"]["Position"] = UDim2.new(0, 0, 0, 16);
LMG2L["ScrollingButton_3f"]["ScrollBarThickness"] = 0;
LMG2L["ScrollingButton_3f"]["BackgroundTransparency"] = 1;


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.CardMenu.ScrollingButton.UIPadding
LMG2L["UIPadding_40"] = Instance.new("UIPadding", LMG2L["ScrollingButton_3f"]);
LMG2L["UIPadding_40"]["PaddingTop"] = UDim.new(0, 4);
LMG2L["UIPadding_40"]["PaddingRight"] = UDim.new(0, 2);
LMG2L["UIPadding_40"]["PaddingLeft"] = UDim.new(0, 4);
LMG2L["UIPadding_40"]["PaddingBottom"] = UDim.new(0, 2);


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.CardMenu.ScrollingButton.UIListLayout
LMG2L["UIListLayout_41"] = Instance.new("UIListLayout", LMG2L["ScrollingButton_3f"]);
LMG2L["UIListLayout_41"]["Padding"] = UDim.new(0, 4);


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.CardMenu.ScrollingButton.BackgroundButton
LMG2L["BackgroundButton_42"] = Instance.new("Frame", LMG2L["ScrollingButton_3f"]);
LMG2L["BackgroundButton_42"]["BorderSizePixel"] = 0;
LMG2L["BackgroundButton_42"]["BackgroundColor3"] = Color3.fromRGB(127, 131, 135);
LMG2L["BackgroundButton_42"]["Size"] = UDim2.new(0, 116, 0, 22);
LMG2L["BackgroundButton_42"]["Name"] = [[BackgroundButton]];


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.CardMenu.ScrollingButton.BackgroundButton.IconButton
LMG2L["IconButton_43"] = Instance.new("ImageLabel", LMG2L["BackgroundButton_42"]);
LMG2L["IconButton_43"]["ZIndex"] = 2;
LMG2L["IconButton_43"]["BorderSizePixel"] = 0;
LMG2L["IconButton_43"]["BackgroundColor3"] = Color3.fromRGB(76, 76, 76);
-- LMG2L["IconButton_43"]["ImageContent"] = ;
LMG2L["IconButton_43"]["ImageColor3"] = Color3.fromRGB(0, 0, 0);
LMG2L["IconButton_43"]["Image"] = [[rbxassetid://87188567501065]];
LMG2L["IconButton_43"]["Size"] = UDim2.new(0, 14, 0, 14);
LMG2L["IconButton_43"]["BackgroundTransparency"] = 1;
LMG2L["IconButton_43"]["Name"] = [[IconButton]];
LMG2L["IconButton_43"]["Position"] = UDim2.new(0, 4, 0, 3);


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.CardMenu.ScrollingButton.BackgroundButton.UICorner
LMG2L["UICorner_44"] = Instance.new("UICorner", LMG2L["BackgroundButton_42"]);
LMG2L["UICorner_44"]["CornerRadius"] = UDim.new(0, 5);


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.CardMenu.ScrollingButton.BackgroundButton.Button
LMG2L["Button_45"] = Instance.new("TextButton", LMG2L["BackgroundButton_42"]);
LMG2L["Button_45"]["BorderSizePixel"] = 0;
LMG2L["Button_45"]["TextSize"] = 9;
LMG2L["Button_45"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
LMG2L["Button_45"]["BackgroundColor3"] = Color3.fromRGB(224, 231, 238);
LMG2L["Button_45"]["FontFace"] = Font.new([[rbxasset://fonts/families/Arial.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
LMG2L["Button_45"]["Size"] = UDim2.new(0, 116, 0, 20);
LMG2L["Button_45"]["Text"] = [[NAME TOOLS]];
LMG2L["Button_45"]["Name"] = [[Button]];


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.CardMenu.ScrollingButton.BackgroundButton.Button.UICorner
LMG2L["UICorner_46"] = Instance.new("UICorner", LMG2L["Button_45"]);
LMG2L["UICorner_46"]["CornerRadius"] = UDim.new(0, 4);


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.CardMenu.ScrollingButton.BackgroundButton.Button.UIStroke
LMG2L["UIStroke_47"] = Instance.new("UIStroke", LMG2L["Button_45"]);
LMG2L["UIStroke_47"]["Transparency"] = 0.85;
LMG2L["UIStroke_47"]["Thickness"] = 0.5;


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.CardMenu.Title
LMG2L["Title_48"] = Instance.new("TextLabel", LMG2L["CardMenu_3d"]);
LMG2L["Title_48"]["ZIndex"] = 2;
LMG2L["Title_48"]["BorderSizePixel"] = 0;
LMG2L["Title_48"]["TextSize"] = 9;
LMG2L["Title_48"]["TextXAlignment"] = Enum.TextXAlignment.Left;
LMG2L["Title_48"]["TextYAlignment"] = Enum.TextYAlignment.Top;
LMG2L["Title_48"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
LMG2L["Title_48"]["FontFace"] = Font.new([[rbxasset://fonts/families/Arial.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
LMG2L["Title_48"]["TextColor3"] = Color3.fromRGB(224, 231, 238);
LMG2L["Title_48"]["BackgroundTransparency"] = 1;
LMG2L["Title_48"]["Size"] = UDim2.new(0, 116, 0, 12);
LMG2L["Title_48"]["Text"] = [[MENU TOOLS]];
LMG2L["Title_48"]["Name"] = [[Title]];
LMG2L["Title_48"]["Position"] = UDim2.new(0, 4, 0, 6);


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.CardMenu.Title.UIStroke
LMG2L["UIStroke_49"] = Instance.new("UIStroke", LMG2L["Title_48"]);
LMG2L["UIStroke_49"]["Transparency"] = 0.85;
LMG2L["UIStroke_49"]["Thickness"] = 0.5;
LMG2L["UIStroke_49"]["Color"] = Color3.fromRGB(224, 231, 238);


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.AmountAsset
LMG2L["AmountAsset_4a"] = Instance.new("TextLabel", LMG2L["Panel_3"]);
LMG2L["AmountAsset_4a"]["BorderSizePixel"] = 0;
LMG2L["AmountAsset_4a"]["TextSize"] = 9;
LMG2L["AmountAsset_4a"]["TextXAlignment"] = Enum.TextXAlignment.Left;
LMG2L["AmountAsset_4a"]["TextTransparency"] = 0.5;
LMG2L["AmountAsset_4a"]["TextYAlignment"] = Enum.TextYAlignment.Top;
LMG2L["AmountAsset_4a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
LMG2L["AmountAsset_4a"]["FontFace"] = Font.new([[rbxasset://fonts/families/Arial.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
LMG2L["AmountAsset_4a"]["TextColor3"] = Color3.fromRGB(224, 231, 238);
LMG2L["AmountAsset_4a"]["BackgroundTransparency"] = 1;
LMG2L["AmountAsset_4a"]["Size"] = UDim2.new(0, 134, 0, 10);
LMG2L["AmountAsset_4a"]["Text"] = [[1.345 Assets loaded]];
LMG2L["AmountAsset_4a"]["Name"] = [[AmountAsset]];
LMG2L["AmountAsset_4a"]["Position"] = UDim2.new(0, 5, 0, 324);


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.AmountAsset.UIStroke
LMG2L["UIStroke_4b"] = Instance.new("UIStroke", LMG2L["AmountAsset_4a"]);
LMG2L["UIStroke_4b"]["Transparency"] = 0.85;
LMG2L["UIStroke_4b"]["Thickness"] = 0.5;
LMG2L["UIStroke_4b"]["Color"] = Color3.fromRGB(224, 231, 238);


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.Header
LMG2L["Header_4c"] = Instance.new("Frame", LMG2L["Panel_3"]);
LMG2L["Header_4c"]["ZIndex"] = 3;
LMG2L["Header_4c"]["BorderSizePixel"] = 0;
LMG2L["Header_4c"]["BackgroundColor3"] = Color3.fromRGB(224, 231, 238);
LMG2L["Header_4c"]["Size"] = UDim2.new(0, 280, 0, 26);
LMG2L["Header_4c"]["Name"] = [[Header]];


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.Header.InfoButton
LMG2L["InfoButton_4d"] = Instance.new("ImageButton", LMG2L["Header_4c"]);
LMG2L["InfoButton_4d"]["BorderSizePixel"] = 0;
LMG2L["InfoButton_4d"]["BackgroundTransparency"] = 1;
-- LMG2L["InfoButton_4d"]["ImageContent"] = ;
LMG2L["InfoButton_4d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
LMG2L["InfoButton_4d"]["ImageColor3"] = Color3.fromRGB(0, 0, 0);
LMG2L["InfoButton_4d"]["ZIndex"] = 2;
LMG2L["InfoButton_4d"]["Image"] = [[rbxassetid://113539709103285]];
LMG2L["InfoButton_4d"]["Size"] = UDim2.new(0, 16, 0, 16);
LMG2L["InfoButton_4d"]["Name"] = [[InfoButton]];
LMG2L["InfoButton_4d"]["Position"] = UDim2.new(0, 218, 0, 6);


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.Header.UICorner
LMG2L["UICorner_4e"] = Instance.new("UICorner", LMG2L["Header_4c"]);



-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.Header.Garis
LMG2L["Garis_4f"] = Instance.new("Frame", LMG2L["Header_4c"]);
LMG2L["Garis_4f"]["BorderSizePixel"] = 0;
LMG2L["Garis_4f"]["BackgroundColor3"] = Color3.fromRGB(224, 231, 238);
LMG2L["Garis_4f"]["Size"] = UDim2.new(0, 280, 0, 8);
LMG2L["Garis_4f"]["Position"] = UDim2.new(0, 0, 0, 18);
LMG2L["Garis_4f"]["Name"] = [[Garis]];


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.Header.CloseButton
LMG2L["CloseButton_50"] = Instance.new("ImageButton", LMG2L["Header_4c"]);
LMG2L["CloseButton_50"]["BorderSizePixel"] = 0;
LMG2L["CloseButton_50"]["BackgroundTransparency"] = 1;
-- LMG2L["CloseButton_50"]["ImageContent"] = ;
LMG2L["CloseButton_50"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
LMG2L["CloseButton_50"]["ImageColor3"] = Color3.fromRGB(0, 0, 0);
LMG2L["CloseButton_50"]["ZIndex"] = 2;
LMG2L["CloseButton_50"]["Image"] = [[rbxassetid://75539660682193]];
LMG2L["CloseButton_50"]["Size"] = UDim2.new(0, 16, 0, 16);
LMG2L["CloseButton_50"]["Name"] = [[CloseButton]];
LMG2L["CloseButton_50"]["Position"] = UDim2.new(0, 260, 0, 6);


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.Header.Title
LMG2L["Title_51"] = Instance.new("TextLabel", LMG2L["Header_4c"]);
LMG2L["Title_51"]["ZIndex"] = 2;
LMG2L["Title_51"]["BorderSizePixel"] = 0;
LMG2L["Title_51"]["TextSize"] = 12;
LMG2L["Title_51"]["TextXAlignment"] = Enum.TextXAlignment.Left;
LMG2L["Title_51"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
LMG2L["Title_51"]["FontFace"] = Font.new([[rbxasset://fonts/families/Arial.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
LMG2L["Title_51"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
LMG2L["Title_51"]["BackgroundTransparency"] = 1;
LMG2L["Title_51"]["Size"] = UDim2.new(0, 134, 0, 26);
LMG2L["Title_51"]["Text"] = [[NARS'S ENDEAVOR • TOOLBOX]];
LMG2L["Title_51"]["Name"] = [[Title]];
LMG2L["Title_51"]["Position"] = UDim2.new(0, 26, 0, 0);


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.Header.Title.UIStroke
LMG2L["UIStroke_52"] = Instance.new("UIStroke", LMG2L["Title_51"]);
LMG2L["UIStroke_52"]["Transparency"] = 0.87;


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.Header.Logo
LMG2L["Logo_53"] = Instance.new("ImageLabel", LMG2L["Header_4c"]);
LMG2L["Logo_53"]["ZIndex"] = 2;
LMG2L["Logo_53"]["BorderSizePixel"] = 0;
LMG2L["Logo_53"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
-- LMG2L["Logo_53"]["ImageContent"] = ;
LMG2L["Logo_53"]["ImageColor3"] = Color3.fromRGB(0, 0, 0);
LMG2L["Logo_53"]["Image"] = [[rbxassetid://100744567525223]];
LMG2L["Logo_53"]["Size"] = UDim2.new(0, 18, 0, 18);
LMG2L["Logo_53"]["BackgroundTransparency"] = 1;
LMG2L["Logo_53"]["Name"] = [[Logo]];
LMG2L["Logo_53"]["Position"] = UDim2.new(0, 5, 0, 5);


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.Header.MenuButton
LMG2L["MenuButton_54"] = Instance.new("ImageButton", LMG2L["Header_4c"]);
LMG2L["MenuButton_54"]["BorderSizePixel"] = 0;
LMG2L["MenuButton_54"]["BackgroundTransparency"] = 1;
-- LMG2L["MenuButton_54"]["ImageContent"] = ;
LMG2L["MenuButton_54"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
LMG2L["MenuButton_54"]["ImageColor3"] = Color3.fromRGB(0, 0, 0);
LMG2L["MenuButton_54"]["ZIndex"] = 2;
LMG2L["MenuButton_54"]["Image"] = [[rbxassetid://76007989326576]];
LMG2L["MenuButton_54"]["Size"] = UDim2.new(0, 16, 0, 16);
LMG2L["MenuButton_54"]["Name"] = [[MenuButton]];
LMG2L["MenuButton_54"]["Position"] = UDim2.new(0, 240, 0, 6);


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.BackgroundSave
LMG2L["BackgroundSave_55"] = Instance.new("Frame", LMG2L["Panel_3"]);
LMG2L["BackgroundSave_55"]["BorderSizePixel"] = 0;
LMG2L["BackgroundSave_55"]["BackgroundColor3"] = Color3.fromRGB(127, 131, 135);
LMG2L["BackgroundSave_55"]["Size"] = UDim2.new(0, 46, 0, 22);
LMG2L["BackgroundSave_55"]["Position"] = UDim2.new(0, 230, 0, 56);
LMG2L["BackgroundSave_55"]["Name"] = [[BackgroundSave]];


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.BackgroundSave.SaveButton
LMG2L["SaveButton_56"] = Instance.new("TextButton", LMG2L["BackgroundSave_55"]);
LMG2L["SaveButton_56"]["BorderSizePixel"] = 0;
LMG2L["SaveButton_56"]["TextSize"] = 9;
LMG2L["SaveButton_56"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
LMG2L["SaveButton_56"]["BackgroundColor3"] = Color3.fromRGB(224, 231, 238);
LMG2L["SaveButton_56"]["FontFace"] = Font.new([[rbxasset://fonts/families/Arial.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
LMG2L["SaveButton_56"]["Size"] = UDim2.new(0, 46, 0, 20);
LMG2L["SaveButton_56"]["Text"] = [[SAVE ID]];
LMG2L["SaveButton_56"]["Name"] = [[SaveButton]];


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.BackgroundSave.SaveButton.UICorner
LMG2L["UICorner_57"] = Instance.new("UICorner", LMG2L["SaveButton_56"]);
LMG2L["UICorner_57"]["CornerRadius"] = UDim.new(0, 4);


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.BackgroundSave.SaveButton.UIStroke
LMG2L["UIStroke_58"] = Instance.new("UIStroke", LMG2L["SaveButton_56"]);
LMG2L["UIStroke_58"]["Transparency"] = 0.85;
LMG2L["UIStroke_58"]["Thickness"] = 0.5;


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.BackgroundSave.UICorner
LMG2L["UICorner_59"] = Instance.new("UICorner", LMG2L["BackgroundSave_55"]);
LMG2L["UICorner_59"]["CornerRadius"] = UDim.new(0, 5);


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.ScrollingFrame
LMG2L["ScrollingFrame_5a"] = Instance.new("ScrollingFrame", LMG2L["Panel_3"]);
LMG2L["ScrollingFrame_5a"]["BorderSizePixel"] = 0;
LMG2L["ScrollingFrame_5a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
LMG2L["ScrollingFrame_5a"]["Size"] = UDim2.new(0, 280, 0, 187);
LMG2L["ScrollingFrame_5a"]["ScrollBarImageColor3"] = Color3.fromRGB(224, 231, 238);
LMG2L["ScrollingFrame_5a"]["Position"] = UDim2.new(0, 0, 0, 134);
LMG2L["ScrollingFrame_5a"]["ScrollBarThickness"] = 4;
LMG2L["ScrollingFrame_5a"]["BackgroundTransparency"] = 1;


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.ScrollingFrame.UIPadding
LMG2L["UIPadding_5b"] = Instance.new("UIPadding", LMG2L["ScrollingFrame_5a"]);
LMG2L["UIPadding_5b"]["PaddingTop"] = UDim.new(0, 2);
LMG2L["UIPadding_5b"]["PaddingRight"] = UDim.new(0, 5);
LMG2L["UIPadding_5b"]["PaddingLeft"] = UDim.new(0, 5);
LMG2L["UIPadding_5b"]["PaddingBottom"] = UDim.new(0, 5);


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.ScrollingFrame.UIListLayout
LMG2L["UIListLayout_5c"] = Instance.new("UIListLayout", LMG2L["ScrollingFrame_5a"]);
LMG2L["UIListLayout_5c"]["Padding"] = UDim.new(0, 5);


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.ScrollingFrame.Card
LMG2L["Card_5d"] = Instance.new("Frame", LMG2L["ScrollingFrame_5a"]);
LMG2L["Card_5d"]["BorderSizePixel"] = 0;
LMG2L["Card_5d"]["BackgroundColor3"] = Color3.fromRGB(18, 18, 18);
LMG2L["Card_5d"]["Size"] = UDim2.new(0, 270, 0, 57);
LMG2L["Card_5d"]["Position"] = UDim2.new(0, 5, 0, 0);
LMG2L["Card_5d"]["Name"] = [[Card]];
LMG2L["Card_5d"]["BackgroundTransparency"] = 0.5;


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.ScrollingFrame.Card.ThumbnailAsset
LMG2L["ThumbnailAsset_5e"] = Instance.new("ImageLabel", LMG2L["Card_5d"]);
LMG2L["ThumbnailAsset_5e"]["BorderSizePixel"] = 0;
LMG2L["ThumbnailAsset_5e"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
-- LMG2L["ThumbnailAsset_5e"]["ImageContent"] = ;
LMG2L["ThumbnailAsset_5e"]["Image"] = [[rbxassetid://99027217090571]];
LMG2L["ThumbnailAsset_5e"]["Size"] = UDim2.new(0, 47, 0, 47);
LMG2L["ThumbnailAsset_5e"]["Name"] = [[ThumbnailAsset]];
LMG2L["ThumbnailAsset_5e"]["Position"] = UDim2.new(0, 5, 0, 5);


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.ScrollingFrame.Card.ThumbnailAsset.UICorner
LMG2L["UICorner_5f"] = Instance.new("UICorner", LMG2L["ThumbnailAsset_5e"]);
LMG2L["UICorner_5f"]["CornerRadius"] = UDim.new(0, 5);


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.ScrollingFrame.Card.Creator
LMG2L["Creator_60"] = Instance.new("TextLabel", LMG2L["Card_5d"]);
LMG2L["Creator_60"]["BorderSizePixel"] = 0;
LMG2L["Creator_60"]["TextSize"] = 9;
LMG2L["Creator_60"]["TextXAlignment"] = Enum.TextXAlignment.Left;
LMG2L["Creator_60"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
LMG2L["Creator_60"]["FontFace"] = Font.new([[rbxasset://fonts/families/Arial.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
LMG2L["Creator_60"]["TextColor3"] = Color3.fromRGB(190, 196, 202);
LMG2L["Creator_60"]["BackgroundTransparency"] = 1;
LMG2L["Creator_60"]["Size"] = UDim2.new(0, 156, 0, 26);
LMG2L["Creator_60"]["Text"] = [[By Naraku]];
LMG2L["Creator_60"]["Name"] = [[Creator]];
LMG2L["Creator_60"]["Position"] = UDim2.new(0, 58, 0, 22);


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.ScrollingFrame.Card.Creator.UIStroke
LMG2L["UIStroke_61"] = Instance.new("UIStroke", LMG2L["Creator_60"]);
LMG2L["UIStroke_61"]["Transparency"] = 0.85;
LMG2L["UIStroke_61"]["Color"] = Color3.fromRGB(224, 231, 238);


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.ScrollingFrame.Card.IconSaved
LMG2L["IconSaved_62"] = Instance.new("ImageLabel", LMG2L["Card_5d"]);
LMG2L["IconSaved_62"]["ZIndex"] = 2;
LMG2L["IconSaved_62"]["BorderSizePixel"] = 0;
LMG2L["IconSaved_62"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
-- LMG2L["IconSaved_62"]["ImageContent"] = ;
LMG2L["IconSaved_62"]["ImageColor3"] = Color3.fromRGB(238, 201, 23);
LMG2L["IconSaved_62"]["Image"] = [[rbxassetid://137646187701237]];
LMG2L["IconSaved_62"]["Size"] = UDim2.new(0, 10, 0, 10);
LMG2L["IconSaved_62"]["BackgroundTransparency"] = 1;
LMG2L["IconSaved_62"]["Name"] = [[IconSaved]];
LMG2L["IconSaved_62"]["Position"] = UDim2.new(0, 41, 0, 7);


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.ScrollingFrame.Card.BackgroundCopy
LMG2L["BackgroundCopy_63"] = Instance.new("Frame", LMG2L["Card_5d"]);
LMG2L["BackgroundCopy_63"]["BorderSizePixel"] = 0;
LMG2L["BackgroundCopy_63"]["BackgroundColor3"] = Color3.fromRGB(127, 131, 135);
LMG2L["BackgroundCopy_63"]["Size"] = UDim2.new(0, 46, 0, 22);
LMG2L["BackgroundCopy_63"]["Position"] = UDim2.new(0, 220, 0, 30);
LMG2L["BackgroundCopy_63"]["Name"] = [[BackgroundCopy]];


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.ScrollingFrame.Card.BackgroundCopy.CopyButton
LMG2L["CopyButton_64"] = Instance.new("TextButton", LMG2L["BackgroundCopy_63"]);
LMG2L["CopyButton_64"]["BorderSizePixel"] = 0;
LMG2L["CopyButton_64"]["TextSize"] = 9;
LMG2L["CopyButton_64"]["TextColor3"] = Color3.fromRGB(224, 231, 238);
LMG2L["CopyButton_64"]["BackgroundColor3"] = Color3.fromRGB(53, 55, 57);
LMG2L["CopyButton_64"]["FontFace"] = Font.new([[rbxasset://fonts/families/Arial.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
LMG2L["CopyButton_64"]["Size"] = UDim2.new(0, 46, 0, 20);
LMG2L["CopyButton_64"]["Text"] = [[COPY ID]];
LMG2L["CopyButton_64"]["Name"] = [[CopyButton]];


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.ScrollingFrame.Card.BackgroundCopy.CopyButton.UICorner
LMG2L["UICorner_65"] = Instance.new("UICorner", LMG2L["CopyButton_64"]);
LMG2L["UICorner_65"]["CornerRadius"] = UDim.new(0, 4);


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.ScrollingFrame.Card.BackgroundCopy.CopyButton.UIStroke
LMG2L["UIStroke_66"] = Instance.new("UIStroke", LMG2L["CopyButton_64"]);
LMG2L["UIStroke_66"]["Transparency"] = 0.85;
LMG2L["UIStroke_66"]["Thickness"] = 0.5;


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.ScrollingFrame.Card.BackgroundCopy.UICorner
LMG2L["UICorner_67"] = Instance.new("UICorner", LMG2L["BackgroundCopy_63"]);
LMG2L["UICorner_67"]["CornerRadius"] = UDim.new(0, 5);


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.ScrollingFrame.Card.UICorner
LMG2L["UICorner_68"] = Instance.new("UICorner", LMG2L["Card_5d"]);
LMG2L["UICorner_68"]["CornerRadius"] = UDim.new(0, 5);


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.ScrollingFrame.Card.BackgroundInsert
LMG2L["BackgroundInsert_69"] = Instance.new("Frame", LMG2L["Card_5d"]);
LMG2L["BackgroundInsert_69"]["BorderSizePixel"] = 0;
LMG2L["BackgroundInsert_69"]["BackgroundColor3"] = Color3.fromRGB(127, 131, 135);
LMG2L["BackgroundInsert_69"]["Size"] = UDim2.new(0, 46, 0, 22);
LMG2L["BackgroundInsert_69"]["Position"] = UDim2.new(0, 220, 0, 5);
LMG2L["BackgroundInsert_69"]["Name"] = [[BackgroundInsert]];


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.ScrollingFrame.Card.BackgroundInsert.UICorner
LMG2L["UICorner_6a"] = Instance.new("UICorner", LMG2L["BackgroundInsert_69"]);
LMG2L["UICorner_6a"]["CornerRadius"] = UDim.new(0, 5);


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.ScrollingFrame.Card.BackgroundInsert.InsertButton
LMG2L["InsertButton_6b"] = Instance.new("TextButton", LMG2L["BackgroundInsert_69"]);
LMG2L["InsertButton_6b"]["BorderSizePixel"] = 0;
LMG2L["InsertButton_6b"]["TextSize"] = 9;
LMG2L["InsertButton_6b"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
LMG2L["InsertButton_6b"]["BackgroundColor3"] = Color3.fromRGB(224, 231, 238);
LMG2L["InsertButton_6b"]["FontFace"] = Font.new([[rbxasset://fonts/families/Arial.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
LMG2L["InsertButton_6b"]["Size"] = UDim2.new(0, 46, 0, 20);
LMG2L["InsertButton_6b"]["Text"] = [[INSERT]];
LMG2L["InsertButton_6b"]["Name"] = [[InsertButton]];


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.ScrollingFrame.Card.BackgroundInsert.InsertButton.UICorner
LMG2L["UICorner_6c"] = Instance.new("UICorner", LMG2L["InsertButton_6b"]);
LMG2L["UICorner_6c"]["CornerRadius"] = UDim.new(0, 4);


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.ScrollingFrame.Card.BackgroundInsert.InsertButton.UIStroke
LMG2L["UIStroke_6d"] = Instance.new("UIStroke", LMG2L["InsertButton_6b"]);
LMG2L["UIStroke_6d"]["Transparency"] = 0.85;
LMG2L["UIStroke_6d"]["Thickness"] = 0.5;


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.ScrollingFrame.Card.Name
LMG2L["Name_6e"] = Instance.new("TextLabel", LMG2L["Card_5d"]);
LMG2L["Name_6e"]["TextWrapped"] = true;
LMG2L["Name_6e"]["BorderSizePixel"] = 0;
LMG2L["Name_6e"]["TextSize"] = 9;
LMG2L["Name_6e"]["TextXAlignment"] = Enum.TextXAlignment.Left;
LMG2L["Name_6e"]["TextYAlignment"] = Enum.TextYAlignment.Top;
LMG2L["Name_6e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
LMG2L["Name_6e"]["FontFace"] = Font.new([[rbxasset://fonts/families/Arial.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
LMG2L["Name_6e"]["TextColor3"] = Color3.fromRGB(224, 231, 238);
LMG2L["Name_6e"]["BackgroundTransparency"] = 1;
LMG2L["Name_6e"]["Size"] = UDim2.new(0, 156, 0, 28);
LMG2L["Name_6e"]["Text"] = [[Name asset model,decal,audio,plugin support studio lite Roblox ]];
LMG2L["Name_6e"]["Name"] = [[Name]];
LMG2L["Name_6e"]["Position"] = UDim2.new(0, 58, 0, 4);


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.ScrollingFrame.Card.Name.UIStroke
LMG2L["UIStroke_6f"] = Instance.new("UIStroke", LMG2L["Name_6e"]);
LMG2L["UIStroke_6f"]["Transparency"] = 0.85;
LMG2L["UIStroke_6f"]["Color"] = Color3.fromRGB(224, 231, 238);


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.ScrollingFrame.Card.ID
LMG2L["ID_70"] = Instance.new("TextLabel", LMG2L["Card_5d"]);
LMG2L["ID_70"]["BorderSizePixel"] = 0;
LMG2L["ID_70"]["TextSize"] = 9;
LMG2L["ID_70"]["TextXAlignment"] = Enum.TextXAlignment.Left;
LMG2L["ID_70"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
LMG2L["ID_70"]["FontFace"] = Font.new([[rbxasset://fonts/families/Arial.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
LMG2L["ID_70"]["TextColor3"] = Color3.fromRGB(190, 196, 202);
LMG2L["ID_70"]["BackgroundTransparency"] = 1;
LMG2L["ID_70"]["Size"] = UDim2.new(0, 156, 0, 22);
LMG2L["ID_70"]["Text"] = [[ID : 87188567501065]];
LMG2L["ID_70"]["Name"] = [[ID]];
LMG2L["ID_70"]["Position"] = UDim2.new(0, 58, 0, 36);


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.ScrollingFrame.Card.ID.UIStroke
LMG2L["UIStroke_71"] = Instance.new("UIStroke", LMG2L["ID_70"]);
LMG2L["UIStroke_71"]["Transparency"] = 0.85;
LMG2L["UIStroke_71"]["Color"] = Color3.fromRGB(224, 231, 238);


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.ScrollingFrame.Card.UIStroke
LMG2L["UIStroke_72"] = Instance.new("UIStroke", LMG2L["Card_5d"]);
LMG2L["UIStroke_72"]["Transparency"] = 0.5;
LMG2L["UIStroke_72"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
LMG2L["UIStroke_72"]["Thickness"] = 0.5;
LMG2L["UIStroke_72"]["Color"] = Color3.fromRGB(71, 73, 75);


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.BackgroundSearch
LMG2L["BackgroundSearch_73"] = Instance.new("Frame", LMG2L["Panel_3"]);
LMG2L["BackgroundSearch_73"]["BorderSizePixel"] = 0;
LMG2L["BackgroundSearch_73"]["BackgroundColor3"] = Color3.fromRGB(127, 131, 135);
LMG2L["BackgroundSearch_73"]["Size"] = UDim2.new(0, 46, 0, 22);
LMG2L["BackgroundSearch_73"]["Position"] = UDim2.new(0, 230, 0, 82);
LMG2L["BackgroundSearch_73"]["Name"] = [[BackgroundSearch]];


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.BackgroundSearch.UICorner
LMG2L["UICorner_74"] = Instance.new("UICorner", LMG2L["BackgroundSearch_73"]);
LMG2L["UICorner_74"]["CornerRadius"] = UDim.new(0, 5);


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.BackgroundSearch.SearchButton
LMG2L["SearchButton_75"] = Instance.new("TextButton", LMG2L["BackgroundSearch_73"]);
LMG2L["SearchButton_75"]["BorderSizePixel"] = 0;
LMG2L["SearchButton_75"]["TextSize"] = 9;
LMG2L["SearchButton_75"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
LMG2L["SearchButton_75"]["BackgroundColor3"] = Color3.fromRGB(224, 231, 238);
LMG2L["SearchButton_75"]["FontFace"] = Font.new([[rbxasset://fonts/families/Arial.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
LMG2L["SearchButton_75"]["Size"] = UDim2.new(0, 46, 0, 20);
LMG2L["SearchButton_75"]["Text"] = [[SEARCH]];
LMG2L["SearchButton_75"]["Name"] = [[SearchButton]];


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.BackgroundSearch.SearchButton.UICorner
LMG2L["UICorner_76"] = Instance.new("UICorner", LMG2L["SearchButton_75"]);
LMG2L["UICorner_76"]["CornerRadius"] = UDim.new(0, 4);


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.BackgroundSearch.SearchButton.UIStroke
LMG2L["UIStroke_77"] = Instance.new("UIStroke", LMG2L["SearchButton_75"]);
LMG2L["UIStroke_77"]["Transparency"] = 0.85;
LMG2L["UIStroke_77"]["Thickness"] = 0.5;

-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui
LMG2L["ScreenGui_1"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"));
LMG2L["ScreenGui_1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;

-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.Panel.ScrollingFrame.LoadmoreButton
LMG2L["LoadmoreButton_2"] = Instance.new("TextButton", LMG2L["ScrollingFrame_5a"]);
LMG2L["LoadmoreButton_2"]["BorderSizePixel"] = 0;
LMG2L["LoadmoreButton_2"]["TextSize"] = 9;
LMG2L["LoadmoreButton_2"]["TextColor3"] = Color3.fromRGB(155, 160, 164);
LMG2L["LoadmoreButton_2"]["BackgroundColor3"] = Color3.fromRGB(29, 30, 31);
LMG2L["LoadmoreButton_2"]["FontFace"] = Font.new([[rbxasset://fonts/families/Arial.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
LMG2L["LoadmoreButton_2"]["Size"] = UDim2.new(0, 270, 0, 24);
LMG2L["LoadmoreButton_2"]["Text"] = [[LOAD MORE ASSETS]];
LMG2L["LoadmoreButton_2"]["Name"] = [[LoadmoreButton]];
LMG2L["LoadmoreButton_2"]["Visible"] = false; -- Sembunyi default
LMG2L["LoadmoreButton_2"]["LayoutOrder"] = 999999; -- Agar selalu di paling bawah

-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.Panel.ScrollingFrame.LoadmoreButton.UICorner
LMG2L["UICorner_3"] = Instance.new("UICorner", LMG2L["LoadmoreButton_2"]);
LMG2L["UICorner_3"]["CornerRadius"] = UDim.new(0, 5);

-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.OpenButton
LMG2L["OpenButton_78"] = Instance.new("ImageButton", LMG2L["NarakuPlugin_2"]);
LMG2L["OpenButton_78"]["BorderSizePixel"] = 0;
LMG2L["OpenButton_78"]["BackgroundTransparency"] = 0.5;
-- LMG2L["OpenButton_78"]["ImageContent"] = ;
LMG2L["OpenButton_78"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
LMG2L["OpenButton_78"]["ImageColor3"] = Color3.fromRGB(224, 231, 238);
LMG2L["OpenButton_78"]["Image"] = [[rbxassetid://82611145930357]];
LMG2L["OpenButton_78"]["Size"] = UDim2.new(0, 20, 0, 20);
LMG2L["OpenButton_78"]["Name"] = [[OpenButton]];
LMG2L["OpenButton_78"]["Position"] = UDim2.new(0, 0, 0, -10);


local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")
local CoreGui = game:GetService("CoreGui")


local ARROW_RIGHT = "rbxassetid://138472587694798"
local ARROW_LEFT = "rbxassetid://82611145930357"

local TWEEN_OPEN_CLOSE = TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
local TWEEN_DESTROY = TweenInfo.new(0.20, Enum.EasingStyle.Sine, Enum.EasingDirection.In)

local MAX_HEIGHT = 700

local ScreenGui = LMG2L["ScreenGui_1"]
local NarakuPlugin = LMG2L["NarakuPlugin_2"]

if not ScreenGui then
	ScreenGui = CoreGui:FindFirstChild("ScreenGui_1")
	if not ScreenGui then
		ScreenGui = Instance.new("ScreenGui")
		ScreenGui.Name = "ScreenGui_1"
		ScreenGui.ResetOnSpawn = false
		ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
		ScreenGui.Parent = CoreGui
	end
else
	ScreenGui.Parent = CoreGui
end

if not NarakuPlugin then
	NarakuPlugin = ScreenGui:FindFirstChild("NarakuPlugin")
end

if not NarakuPlugin then
	warn("NARAKU PLUGIN: NarakuPlugin tidak ditemukan.")
	return
end

NarakuPlugin.Parent = ScreenGui


local Panel = LMG2L["Panel_3"]
local Header = LMG2L["Header_4c"]

local CloseButton = LMG2L["CloseButton_50"]
local MenuButton = LMG2L["MenuButton_54"]
local InfoButton = LMG2L["InfoButton_4d"]

local SearchBox = LMG2L["SearchBox_4"]
local BackgroundSearch = LMG2L["BackgroundSearch_73"]
local SearchButton = LMG2L["SearchButton_75"]

local ScrollingTab = LMG2L["ScrollingTab_9"]

local SaveBox = LMG2L["SaveBox_24"]
local BackgroundSave = LMG2L["BackgroundSave_55"]

local CardSaved = LMG2L["CardSaved_2a"]
local SavedButton = LMG2L["SavedButton_2c"]

local InsertBox = LMG2L["InsertBox_38"]
local BackgroundInsert = LMG2L["BackgroundInsert_32"]

local CardMenu = LMG2L["CardMenu_3d"]

local AmountAsset = LMG2L["AmountAsset_4a"]
local ScrollingFrame = LMG2L["ScrollingFrame_5a"]
local LoadMoreButton = LMG2L["LoadmoreButton_2"]
local ResizeHandle = LMG2L["ResizeHandleButton_2f"]
local OpenButton = LMG2L["OpenButton_78"]

local ORIGINAL_PANEL_SIZE = Panel.Size
local ORIGINAL_PANEL_POSITION = Panel.Position

local PANEL_WIDTH = ORIGINAL_PANEL_SIZE.X.Offset
local ORIGINAL_HEIGHT = ORIGINAL_PANEL_SIZE.Y.Offset
local MIN_HEIGHT = ORIGINAL_HEIGHT

local ORIGINAL_SCROLL_POSITION = ScrollingFrame.Position
local ORIGINAL_SCROLL_SIZE = ScrollingFrame.Size

local ORIGINAL_RESIZE_POSITION = ResizeHandle.Position
local ORIGINAL_AMOUNT_POSITION = AmountAsset.Position

local ORIGINAL_INSERT_POSITION = InsertBox.Position
local ORIGINAL_BACKGROUND_INSERT_POSITION = BackgroundInsert.Position

local ORIGINAL_SAVE_POSITION = SaveBox.Position
local ORIGINAL_BACKGROUND_SAVE_POSITION = BackgroundSave.Position

local ORIGINAL_SEARCH_POSITION = SearchBox.Position
local ORIGINAL_BACKGROUND_SEARCH_POSITION = BackgroundSearch.Position

local ORIGINAL_CARD_SAVED_POSITION = CardSaved.Position
local ORIGINAL_CARD_MENU_POSITION = CardMenu.Position


local OPEN_POSITION = ORIGINAL_PANEL_POSITION
local CLOSE_POSITION = UDim2.new(
	ORIGINAL_PANEL_POSITION.X.Scale,
	ORIGINAL_PANEL_POSITION.X.Offset - PANEL_WIDTH - 10,
	ORIGINAL_PANEL_POSITION.Y.Scale,
	ORIGINAL_PANEL_POSITION.Y.Offset
)


local IsOpen = true
local IsDestroyed = false
local IsResizing = false

local StartMouseY = 0
local StartHeight = ORIGINAL_HEIGHT


local function UpdateOpenButtonIcon()
	if IsDestroyed or not OpenButton then return end
	OpenButton.Image = IsOpen and ARROW_LEFT or ARROW_RIGHT
end

local function UpdatePanelLayout(NewHeight)
	if IsDestroyed then return end

	NewHeight = math.clamp(NewHeight, MIN_HEIGHT, MAX_HEIGHT)

	Panel.Size = UDim2.new(
		ORIGINAL_PANEL_SIZE.X.Scale,
		PANEL_WIDTH,
		ORIGINAL_PANEL_SIZE.Y.Scale,
		NewHeight
	)

	local ScrollTop = ORIGINAL_SCROLL_POSITION.Y.Offset
	local ScrollBottomPadding = 16
	local ScrollHeight = math.max(50, NewHeight - ScrollTop - ScrollBottomPadding)

	ScrollingFrame.Position = UDim2.new(
		ORIGINAL_SCROLL_POSITION.X.Scale,
		ORIGINAL_SCROLL_POSITION.X.Offset,
		ORIGINAL_SCROLL_POSITION.Y.Scale,
		ScrollTop
	)

	ScrollingFrame.Size = UDim2.new(
		ORIGINAL_SCROLL_SIZE.X.Scale,
		ORIGINAL_SCROLL_SIZE.X.Offset,
		0,
		ScrollHeight
	)

	ResizeHandle.Position = UDim2.new(
		ORIGINAL_RESIZE_POSITION.X.Scale,
		ORIGINAL_RESIZE_POSITION.X.Offset,
		0,
		NewHeight + 5
	)

	AmountAsset.Position = UDim2.new(
		ORIGINAL_AMOUNT_POSITION.X.Scale,
		ORIGINAL_AMOUNT_POSITION.X.Offset,
		1,
		-13
	)

	InsertBox.Position = ORIGINAL_INSERT_POSITION
	BackgroundInsert.Position = ORIGINAL_BACKGROUND_INSERT_POSITION

	SaveBox.Position = ORIGINAL_SAVE_POSITION
	BackgroundSave.Position = ORIGINAL_BACKGROUND_SAVE_POSITION

	SearchBox.Position = ORIGINAL_SEARCH_POSITION
	BackgroundSearch.Position = ORIGINAL_BACKGROUND_SEARCH_POSITION

	CardSaved.Position = ORIGINAL_CARD_SAVED_POSITION
	CardMenu.Position = ORIGINAL_CARD_MENU_POSITION
end

local function OpenPanel()
	if IsDestroyed then return end
	IsOpen = true
	UpdateOpenButtonIcon()

	TweenService:Create(Panel, TWEEN_OPEN_CLOSE, {
		Position = OPEN_POSITION
	}):Play()
end

local function HidePanel()
	if IsDestroyed then return end
	IsOpen = false
	UpdateOpenButtonIcon()

	TweenService:Create(Panel, TWEEN_OPEN_CLOSE, {
		Position = CLOSE_POSITION
	}):Play()
end

Panel.AnchorPoint = Vector2.new(0, 0)
Panel.Size = ORIGINAL_PANEL_SIZE
Panel.Position = CLOSE_POSITION
Panel.Visible = true

UpdatePanelLayout(ORIGINAL_HEIGHT)
UpdateOpenButtonIcon()

TweenService:Create(Panel, TWEEN_OPEN_CLOSE, {
	Position = OPEN_POSITION
}):Play()


OpenButton.MouseButton1Click:Connect(function()
	if IsDestroyed then return end
	if IsOpen then
		HidePanel()
	else
		OpenPanel()
	end
end)

CloseButton.MouseButton1Click:Connect(function()
	if IsDestroyed then return end
	IsDestroyed = true

	local DestroyTween = TweenService:Create(Panel, TWEEN_DESTROY, {
		Size = UDim2.new(0, 0, 0, 0),
		Position = ORIGINAL_PANEL_POSITION
	})

	DestroyTween:Play()
	DestroyTween.Completed:Wait()

	if NarakuPlugin then
		NarakuPlugin:Destroy()
	end
end)

ResizeHandle.InputBegan:Connect(function(Input)
	if IsDestroyed then return end
	if Input.UserInputType == Enum.UserInputType.MouseButton1 or Input.UserInputType == Enum.UserInputType.Touch then
		IsResizing = true
		StartMouseY = Input.Position.Y
		StartHeight = Panel.Size.Y.Offset
	end
end)

UserInputService.InputEnded:Connect(function(Input)
	if Input.UserInputType == Enum.UserInputType.MouseButton1 or Input.UserInputType == Enum.UserInputType.Touch then
		IsResizing = false
	end
end)

UserInputService.InputChanged:Connect(function(Input)
	if IsDestroyed or not IsResizing then return end
	if Input.UserInputType ~= Enum.UserInputType.MouseMovement and Input.UserInputType ~= Enum.UserInputType.Touch then
		return
	end

	local DeltaY = Input.Position.Y - StartMouseY
	UpdatePanelLayout(StartHeight + DeltaY)
end)

local AssetLayout = ScrollingFrame:FindFirstChildOfClass("UIListLayout")
if AssetLayout then
	local function UpdateAssetCanvas()
		if IsDestroyed then return end
		ScrollingFrame.CanvasSize = UDim2.new(0, 0, 0, AssetLayout.AbsoluteContentSize.Y + 12)
	end

	UpdateAssetCanvas()
	AssetLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(UpdateAssetCanvas)
end

local TabLayout = ScrollingTab:FindFirstChildOfClass("UIListLayout")
if TabLayout then
	local function UpdateTabCanvas()
		if IsDestroyed then return end
		ScrollingTab.CanvasSize = UDim2.new(0, TabLayout.AbsoluteContentSize.X + 12, 0, 0)
	end

	UpdateTabCanvas()
	TabLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(UpdateTabCanvas)
end

UpdatePanelLayout(ORIGINAL_HEIGHT)
UpdateOpenButtonIcon()

local TweenService = game:GetService("TweenService")	
local MarketplaceService = game:GetService("MarketplaceService")
local HttpService = game:GetService("HttpService")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local PlayerGui = LocalPlayer:WaitForChild("PlayerGui")

local StudioLiteFolder = game:GetService("ReplicatedStorage"):WaitForChild("StudioLiteFolder", 3)
local LoadAssetRemote = StudioLiteFolder and StudioLiteFolder:WaitForChild("LoadAssetModelToPlayerGuiServerFunction", 3)
local ClearAssetRemote = StudioLiteFolder and StudioLiteFolder:WaitForChild("ClearAssetModelToPlayerGuiServerFunction", 3)

local StudioGui = PlayerGui:WaitForChild("StudioGui", 3)
local ExplorerPanel = StudioGui and StudioGui:WaitForChild("ExplorerPanel", 3)
local GetSelection = ExplorerPanel and ExplorerPanel:WaitForChild("GetSelection", 3)
local SetSelection = ExplorerPanel and ExplorerPanel:WaitForChild("SetSelection", 3)

local writefile = writefile or (io and io.writefile)
local readfile = readfile or (io and io.readfile)
local isfile = isfile or (io and io.isfile)
local isfolder = isfolder or (io and io.isfolder)
local makefolder = makefolder or (io and io.makefolder)
local setclipboard = setclipboard or toclipboard or print

local Gui = LMG2L and LMG2L["ScreenGui_1"]
local MainPanel = LMG2L and LMG2L["Panel_3"]

local AudioButton = LMG2L and LMG2L["AudioButton_b"]
local ModelButton = LMG2L and LMG2L["ModelButton_12"]
local PluginButton = LMG2L and LMG2L["PluginButton_19"]
local DecalButton = LMG2L and LMG2L["DecalButton_21"]

local CardSaved = LMG2L and LMG2L["CardSaved_2a"]
local SavedButton = LMG2L and LMG2L["SavedButton_2c"]
local SavedIconIndicator = LMG2L["IconSaved_2e"]

local InsertIDBox = LMG2L and LMG2L["InsertBox_38"]
local InsertButton = LMG2L and LMG2L["InsertButton_34"]

local SearchBox = LMG2L and LMG2L["SearchBox_4"]
local SearchButton = LMG2L and LMG2L["SearchButton_75"]

local SaveIDBox = LMG2L and LMG2L["SaveBox_24"]
local SaveIDButton = LMG2L and LMG2L["SaveButton_56"]

local ScrollingFrame = LMG2L and LMG2L["ScrollingFrame_5a"]
local TemplateFrame = LMG2L and LMG2L["Card_5d"]
local LoadMoreButton = LMG2L["LoadmoreButton_2"]

if TemplateFrame then
    TemplateFrame.Visible = false
    TemplateFrame.Parent = nil
end

local ModelButton = LMG2L and LMG2L["ModelButton_12"]
local DecalButton = LMG2L and LMG2L["DecalButton_21"]
local AudioButton = LMG2L and LMG2L["AudioButton_b"]
local PluginButton = LMG2L and LMG2L["PluginButton_19"]

local IconModel = LMG2L and LMG2L["IconModel_15"]
local IconDecal = LMG2L and LMG2L["IconDecal_1f"]
local IconAudio = LMG2L and LMG2L["IconAudio_f"]
local IconPlugin = LMG2L and LMG2L["IconPlugin_1d"]

local CardSaved = LMG2L and LMG2L["CardSaved_2a"]
local SavedButton = LMG2L and LMG2L["SavedButton_2c"]
local IconSaved = LMG2L and LMG2L["IconSaved_2e"]

local COLOR_ACTIVE = Color3.fromRGB(223, 230, 237)
local COLOR_INACTIVE = Color3.fromRGB(36, 36, 36)

local COLOR_TEXT_ACTIVE = Color3.fromRGB(0, 0, 0)
local COLOR_TEXT_INACTIVE = Color3.fromRGB(223, 230, 237)

local TabVisualMap = {
    ["Model"] = { Button = ModelButton, Icon = IconModel },
    ["Decal"] = { Button = DecalButton, Icon = IconDecal },
    ["Audio"] = { Button = AudioButton, Icon = IconAudio },
    ["Plugin"] = { Button = PluginButton, Icon = IconPlugin }
}

local function UpdateTabVisualState(category, isActive)
    local visualData = TabVisualMap[category]
    if not visualData then return end

    local bgCol = isActive and COLOR_ACTIVE or COLOR_INACTIVE
    local contentCol = isActive and COLOR_TEXT_ACTIVE or COLOR_TEXT_INACTIVE

    if visualData.Button and visualData.Button:IsA("TextButton") then
        visualData.Button.BackgroundColor3 = bgCol
        visualData.Button.TextColor3 = contentCol
    end
    
    if visualData.Icon and (visualData.Icon:IsA("ImageLabel") or visualData.Icon:IsA("ImageButton")) then
        visualData.Icon.ImageColor3 = contentCol
    end
end

local function UpdateSavedFilterVisualState(isSavedOnly)
    local bgCol = isSavedOnly and COLOR_ACTIVE or COLOR_INACTIVE
    local contentCol = isSavedOnly and COLOR_TEXT_ACTIVE or COLOR_TEXT_INACTIVE

    if SavedButton and SavedButton:IsA("TextButton") then
        SavedButton.BackgroundColor3 = bgCol
        SavedButton.TextColor3 = contentCol
    end
    
    if IconSaved and (IconSaved:IsA("ImageLabel") or IconSaved:IsA("ImageButton")) then
        IconSaved.ImageColor3 = contentCol
    end
end

local ScrollingTab = LMG2L and LMG2L["ScrollingTab_9"]
local BackgroundModel = LMG2L and LMG2L["BackgroundModel_11"]
local BackgroundDecal = LMG2L and LMG2L["BackgroundDecal_1e"]
local BackgroundAudio = LMG2L and LMG2L["BackgroundAudio_a"]
local BackgroundPlugin = LMG2L and LMG2L["BackgroundPlugin_18"]

if ScrollingTab then
    local listLayout = ScrollingTab:FindFirstChildOfClass("UIListLayout")
    if listLayout then
        listLayout.SortOrder = Enum.SortOrder.LayoutOrder
    end
end

if BackgroundModel then BackgroundModel.LayoutOrder = 1 end
if BackgroundDecal then BackgroundDecal.LayoutOrder = 2 end
if BackgroundAudio then BackgroundAudio.LayoutOrder = 3 end
if BackgroundPlugin then BackgroundPlugin.LayoutOrder = 4 end

local HttpService = game:GetService("HttpService")
local MarketplaceService = game:GetService("MarketplaceService")

local function GetRequestFunction()
    return http_request
        or request
        or (syn and syn.request)
        or (fluxus and fluxus.request)
end

local requestFunc = GetRequestFunction()

local CurrentCategory = "Model" 
local CurrentSessionId = 0
local IsShowingSavedOnly = false

local SavedAssets = {
    Model = {},
    Decal = {},
    Audio = {},
    Plugin = {}
}

local AssetInfoCache = {}

local function GetCategoryFromAssetType(assetTypeId)
    local id = tonumber(assetTypeId)
    if id == 13 or id == 1 or id == 2 or id == 14 then
        return "Decal"
    elseif id == 3 or id == 34 then
        return "Audio"
    elseif id == 38 then
        return "Plugin"
    else
        return "Model"
    end
end

local function FetchAssetMetadata(assetId)
    local numericId = tonumber(assetId)
    if not numericId then return nil end
    
    if AssetInfoCache[numericId] then
        return AssetInfoCache[numericId]
    end

    local success, info = pcall(function()
        return MarketplaceService:GetProductInfo(numericId)
    end)

    if success and info and type(info) == "table" then
        local creatorName = "Unknown"
        if type(info.Creator) == "table" and info.Creator.Name then
            creatorName = tostring(info.Creator.Name)
        elseif type(info.Creator) == "string" and #info.Creator > 0 then
            creatorName = info.Creator
        elseif info.CreatorName and #tostring(info.CreatorName) > 0 then
            creatorName = tostring(info.CreatorName)
        end

        local parsedMeta = {
            Name = tostring(info.Name or "Asset " .. numericId),
            Creator = creatorName,
            ID = numericId,
            AssetTypeId = info.AssetTypeId
        }
        
        AssetInfoCache[numericId] = parsedMeta
        return parsedMeta
    end

    return nil
end

local function GetAssetThumbnail(assetId, assetTypeId)
    local numericId = tonumber(assetId)
    if not numericId then return "" end

    if assetTypeId == 1 or assetTypeId == 13 or assetTypeId == 2 or assetTypeId == 14 then
        -- Decal / Image / Texture
        return "rbxthumb://type=Asset&id=" .. numericId .. "&w=420&h=420"
    elseif assetTypeId == 3 or assetTypeId == 34 then
        -- Audio Asset Icon
        return "rbxthumb://type=AutoGeneratedAsset&id=" .. numericId .. "&w=420&h=420"
    else
        -- Model, Plugin, & Generic Asset
        return "rbxthumb://type=Asset&id=" .. numericId .. "&w=420&h=420"
    end
end

local function FormatPrettyJSON(data, indent)
    indent = indent or "  "
    local function Pretty(obj, level)
        local t = type(obj)
        if t ~= "table" then
            return HttpService:JSONEncode(obj)
        end
        
        local isArray = #obj > 0
        local items = {}
        local currentIndent = string.rep(indent, level)
        local nextIndent = string.rep(indent, level + 1)
        
        if isArray then
            for _, v in ipairs(obj) do
                table.insert(items, nextIndent .. Pretty(v, level + 1))
            end
            return "[\n" .. table.concat(items, ",\n") .. "\n" .. currentIndent .. "]"
        else
            local keys = {}
            for k in pairs(obj) do table.insert(keys, k) end
            table.sort(keys)

            for _, k in ipairs(keys) do
                local v = obj[k]
                table.insert(items, nextIndent .. HttpService:JSONEncode(tostring(k)) .. ": " .. Pretty(v, level + 1))
            end
            return "{\n" .. table.concat(items, ",\n") .. "\n" .. currentIndent .. "}"
        end
    end
    return Pretty(data, 0)
end

local function SaveUserData()
    if not writefile then return false end
    local success = pcall(function()
        if isfolder and not isfolder("delta") then 
            makefolder("delta") 
        end
        local encodedData = FormatPrettyJSON(SavedAssets)
        writefile("delta/saved_assets.json", encodedData)
    end)
    return success
end

local function LoadUserData()
    if not (readfile and isfile and HttpService) then return end
    
    pcall(function()
        if isfolder and not isfolder("delta") then 
            makefolder("delta") 
        end
        
        if isfile("delta/saved_assets.json") then
            local data = readfile("delta/saved_assets.json")
            if data and #data > 0 then
                local decodeSuccess, decoded = pcall(function()
                    return HttpService:JSONDecode(data)
                end)
                
                if decodeSuccess and type(decoded) == "table" then
						
                    SavedAssets = { Model = {}, Decal = {}, Audio = {}, Plugin = {} }

                    if decoded.Model or decoded.Decal or decoded.Audio or decoded.Plugin then
                        for catName, catList in pairs(decoded) do
                            if SavedAssets[catName] and type(catList) == "table" then
                                for _, item in ipairs(catList) do
                                    if type(item) == "table" and item.ID then
                                        table.insert(SavedAssets[catName], {
                                            Name = tostring(item.Name or "Saved Asset"),
                                            Creator = tostring(item.Creator or "Unknown"),
                                            ID = tonumber(item.ID),
                                            AssetTypeId = item.AssetTypeId
                                        })
                                    elseif type(item) == "number" then
                                        table.insert(SavedAssets[catName], {
                                            Name = "Saved Asset " .. tostring(item),
                                            Creator = "Unknown",
                                            ID = tonumber(item)
                                        })
                                    end
                                end
                            end
                        end
                    
                    elseif #decoded > 0 then
                        for _, item in ipairs(decoded) do
                            local targetId = type(item) == "table" and item.ID or item
                            local numericId = tonumber(targetId)
                            
                            if numericId then
                                table.insert(SavedAssets.Model, {
                                    Name = type(item) == "table" and item.Name or ("Saved Asset " .. numericId),
                                    Creator = type(item) == "table" and item.Creator or "Unknown",
                                    ID = numericId
                                })
                            end
                        end
                    end

                    task.spawn(function()
                        local needsReSave = false
                        local tempMigrated = { Model = {}, Decal = {}, Audio = {}, Plugin = {} }

                        for catName, list in pairs(SavedAssets) do
                            for _, entry in ipairs(list) do
                                local meta = FetchAssetMetadata(entry.ID)
                                local targetCat = catName

                                if meta then
                                    entry.Name = meta.Name
                                    entry.Creator = meta.Creator
                                    entry.AssetTypeId = meta.AssetTypeId
                                    
                                    if meta.AssetTypeId then
                                        targetCat = GetCategoryFromAssetType(meta.AssetTypeId)
                                    end
                                end

                                if targetCat ~= catName then
                                    needsReSave = true
                                end

                                table.insert(tempMigrated[targetCat], entry)
                            end
                        end

                        if needsReSave then
                            SavedAssets = tempMigrated
                            SaveUserData()
                        end
                    end)
                end
            end
        end
    end)
end

local function IsAssetSaved(assetId, category)
    local numericId = tonumber(assetId)
    if not numericId or type(SavedAssets) ~= "table" then return false end
    
    local targetCategory = category or CurrentCategory
    
    if targetCategory and SavedAssets[targetCategory] then
        for _, entry in ipairs(SavedAssets[targetCategory]) do
            if type(entry) == "table" and tonumber(entry.ID) == numericId then
                return true
            end
        end
    end
    
    return false
end

LoadUserData()

local NextPageCursor = ""
local CurrentSearchQuery = ""
local CurrentSearchCategory = ""

local function SearchRobloxStore(query, category, isLoadMore)
    if not requestFunc then
        warn("Executing environment does not support HTTP Requests")
        return {}, ""
    end

    if not isLoadMore then
        NextPageCursor = ""
        CurrentSearchQuery = (query and query ~= "") and query or CurrentSearchQuery
        CurrentSearchCategory = (category and category ~= "") and category or CurrentCategory or "Model"
    end

    local LoadMoreButton = LMG2L and LMG2L["LoadmoreButton_2"]
    if LoadMoreButton and isLoadMore then
        LoadMoreButton.Text = "LOADING..."
    end

    local encodedQuery = HttpService:UrlEncode(CurrentSearchQuery)
    local searchCategory = CurrentSearchCategory
    
    local url = "https://apis.roblox.com/toolbox-service/v2/assets:search?searchCategoryType=" .. searchCategory .. "&query=" .. encodedQuery

    if isLoadMore and NextPageCursor and NextPageCursor ~= "" then
        url = url .. "&pageToken=" .. HttpService:UrlEncode(NextPageCursor) .. "&cursor=" .. HttpService:UrlEncode(NextPageCursor)
    end

    local success, response = pcall(function()
        return requestFunc({
            Url = url,
            Method = "GET",
            Headers = {
                ["Accept"] = "application/json"
            }
        })
    end)

    if not success or not response or response.StatusCode ~= 200 then
        warn("Search API Error:", response and response.StatusCode or "No response")
        return {}, ""
    end

    local decodeSuccess, decoded = pcall(function()
        return HttpService:JSONDecode(response.Body)
    end)

    if not decodeSuccess or not decoded or not decoded.creatorStoreAssets then
        return {}, ""
    end

    local rawNextToken = decoded.nextPageToken or decoded.nextPageCursor or decoded.nextCursor or ""
    NextPageCursor = tostring(rawNextToken)

    local results = {}
    for _, item in ipairs(decoded.creatorStoreAssets) do
        local asset = item.asset or {}
        local creator = item.creator or {}

        if asset.id then
            table.insert(results, {
                Name = asset.name or "Unknown Asset",
                Creator = creator.name or "Unknown",
                ID = tonumber(asset.id),
                AssetTypeId = asset.assetType
            })
        end
    end

    return results, NextPageCursor
end

local function ClearList()
    if not ScrollingFrame then return end
    
    local LoadMoreButton = LMG2L and LMG2L["LoadmoreButton_2"]
    for _, item in ipairs(ScrollingFrame:GetChildren()) do
        if item:IsA("GuiObject") and item ~= TemplateFrame and item ~= LoadMoreButton then
            item:Destroy()
        end
    end
end

local function InsertAsset(assetId, category, statusTarget)

    local function SetStatus(msg)
        if statusTarget and typeof(statusTarget) == "Instance" then
            if statusTarget:IsA("TextLabel") or statusTarget:IsA("TextButton") then
                statusTarget.Text = msg
            end
        end
    end

    SetStatus("Working")
    local stringId = tostring(assetId)
    local numericId = tonumber(assetId)

    if not numericId then
        SetStatus("Gagal")
        return
    end

    local successInfo, info = pcall(function() 
        return MarketplaceService:GetProductInfo(numericId) 
    end)
    
    if successInfo and info and info.AssetTypeId then
        local detectedCategory = GetCategoryFromAssetType(info.AssetTypeId)
        if detectedCategory then
            category = detectedCategory
        end
    end

    if not category then 
        category = "Model" 
    end

    local function SafeStudioFallback(obj)
        if not obj then return end
        local targetModel, isTemporary, tempContainer
        
        if obj.ClassName == "Model" then
            targetModel = obj
            isTemporary = false
        else
            targetModel = Instance.new("Model")
            obj.Parent = targetModel
            tempContainer = targetModel
            isTemporary = true
        end

        local currentCFrame, boundingSize = targetModel:GetBoundingBox()
        local lowestYOffset = not targetModel.PrimaryPart and 0 or targetModel.PrimaryPart.Position.Y - boundingSize.Y / 2
        local camCFrame = (workspace.CurrentCamera and workspace.CurrentCamera.CFrame) or CFrame.new()
        local posX = math.floor((camCFrame.X + camCFrame.LookVector.X * 30) * 2) / 2
        local posY = boundingSize.Y / 2 + lowestYOffset
        local posZ = math.floor((camCFrame.Z + camCFrame.LookVector.Z * 30) * 2) / 2
        
        local calculatedPos = Vector3.new(posX, posY, posZ)
        local raycastOrigin = Vector3.new(calculatedPos.X, camCFrame.Y, calculatedPos.Z)
        local raycastResult = workspace:Raycast(raycastOrigin, Vector3.new(0, -camCFrame.Y, 0))
        
        if raycastResult then
            local newY = raycastResult.Instance.Position.Y + raycastResult.Instance.Size.Y / 2 + boundingSize.Y / 2 + lowestYOffset
            calculatedPos = Vector3.new(calculatedPos.X, newY, calculatedPos.Z)
        end

        targetModel:PivotTo(CFrame.new(calculatedPos) * currentCFrame.Rotation)

        if isTemporary then
            local children = targetModel:GetChildren()
            if #children > 0 then
                local finalObj = children[1]:Clone()
                finalObj.Parent = workspace
            end
            if tempContainer then tempContainer:Destroy() end
        else
            targetModel.Parent = workspace
            targetModel:MakeJoints()
        end
    end

    if category == "Audio" then
        local sound = Instance.new("Sound")
        sound.Name = (successInfo and info and info.Name) or ("SoundAsset_" .. stringId)
        sound.SoundId = "rbxassetid://" .. stringId
        sound.Volume = 0.5
        sound.Parent = workspace
        SetStatus("Berhasil!")
        return
    end

    if category == "Decal" then
        if GetSelection and SetSelection then
            local currentSelection = nil
            pcall(function() currentSelection = GetSelection:Invoke() end)
            
            if currentSelection and typeof(currentSelection) == "table" and #currentSelection >= 1 and currentSelection[1]:IsA("BasePart") then
                local decal = Instance.new("Decal")
                decal.Name = (successInfo and info and info.Name) or "Decal"
                decal.Texture = "rbxthumb://type=Asset&id=" .. stringId .. "&w=420&h=420"
                decal.Parent = currentSelection[1]
                
                task.wait(0.2)
                pcall(function() SetSelection:Invoke({ decal }) end)
                SetStatus("Berhasil!")
            else
                SetStatus("Select Part!")
            end
        else
            local decal = Instance.new("Decal")
            decal.Name = (successInfo and info and info.Name) or ("DecalAsset_" .. stringId)
            decal.Texture = "rbxassetid://" .. stringId
            decal.Parent = workspace
            SetStatus("Berhasil!")
        end
        return
    end

    if LoadAssetRemote and LoadAssetRemote:IsA("RemoteFunction") then
        local loadSuccess = false
        pcall(function()
            loadSuccess = LoadAssetRemote:InvokeServer(stringId)
        end)

        if loadSuccess then
            local serverFolder = PlayerGui and PlayerGui:WaitForChild(stringId, 5)
            if serverFolder then
                local assetClone = serverFolder:Clone()
                local children = assetClone:GetChildren()
                if #children == 0 then
                    local clientSuccess, clientObj = pcall(function() return game:GetObjects("rbxassetid://" .. numericId)[1] end)
                    if clientSuccess and clientObj then
                        SafeStudioFallback(clientObj)
                    else
                        assetClone.Parent = workspace
                    end
                else
                    for _, obj in pairs(children) do
                        if obj.ClassName == "Folder" and ("Workspace Lighting MaterialService ReplicatedStorage ServerStorage ServerScriptService StarterGui StarterPack Teams SoundService StarterPlayer InsertService TextChatService"):find(obj.Name, 1, true) then
                            if obj.Name == "ServerStorage" then
                                for _, item in pairs(obj:GetChildren()) do item.Parent = _G.ss or game:GetService("ServerStorage") end
                            elseif obj.Name == "ServerScriptService" then
                                for _, item in pairs(obj:GetChildren()) do item.Parent = _G.sss or game:GetService("ServerScriptService") end
                            elseif obj.Name == "StarterPlayer" then
                                for _, inner in pairs(obj:GetChildren()) do
                                    if inner.Name == "StarterPlayerScripts" or inner.Name == "StarterCharacterScripts" then
                                        for _, scr in pairs(inner:GetChildren()) do
                                            if not game.StarterPlayer[inner.Name]:FindFirstChild(scr.Name) then
                                                scr.Parent = game.StarterPlayer[inner.Name]
                                            end
                                        end
                                    else
                                        inner.Parent = game.StarterPlayer
                                    end
                                end
                            elseif obj.Name ~= "InsertService" and obj.Name ~= "TextChatService" then
                                local targetService = game:FindFirstChild(obj.Name)
                                if targetService then
                                    for _, item in pairs(obj:GetChildren()) do item.Parent = targetService end
                                end
                            end
                        elseif obj:IsA("PostEffect") or obj.ClassName == "Sky" then
                            obj.Parent = game:GetService("Lighting")
                        else
                            SafeStudioFallback(obj)
                        end
                    end
                end
                assetClone:Destroy()
                if ClearAssetRemote then pcall(function() ClearAssetRemote:InvokeServer(stringId) end) end
                SetStatus("Berhasil!")
            else
                local clientSuccess, clientObj = pcall(function() return game:GetObjects("rbxassetid://" .. numericId)[1] end)
                if clientSuccess and clientObj then
                    SafeStudioFallback(clientObj)
                    SetStatus("Berhasil!")
                else
                    SetStatus("No Folder")
                end
            end
        else
            local clientSuccess, clientObj = pcall(function() return game:GetObjects("rbxassetid://" .. numericId)[1] end)
            if clientSuccess and clientObj then
                SafeStudioFallback(clientObj)
                SetStatus("Berhasil!")
            else
                SetStatus("Gagal")
            end
        end
    else
        local clientSuccess, clientObj = pcall(function() return game:GetObjects("rbxassetid://" .. numericId)[1] end)
        if clientSuccess and clientObj then
            SafeStudioFallback(clientObj)
            SetStatus("Berhasil!")
        else
            SetStatus("No Remote")
        end
    end
end

local AmountAssetLabel = LMG2L and LMG2L["AmountAsset_4a"]
local LoadMoreButton = LMG2L and LMG2L["LoadmoreButton_2"]

local function UpdateAmountAssetDisplay(count, category, isSavedOnly, queryText, isSearching)
    if not AmountAssetLabel or not AmountAssetLabel:IsA("TextLabel") then return end
    
    local categoryName = tostring(category):upper()
    
    if isSearching then
        local qUpper = queryText and queryText ~= "" and (" '" .. queryText:upper() .. "'") or ""
        AmountAssetLabel.Text = string.format("SEARCHING%s...", qUpper)
        return
    end

    if isSavedOnly then
        AmountAssetLabel.Text = string.format("SAVED (%s) • %d Assets", categoryName, count)
    else
        if queryText and #queryText > 0 then
            AmountAssetLabel.Text = string.format("%s ('%s') • %d Assets", categoryName, queryText:upper(), count)
        else
            AmountAssetLabel.Text = string.format("%s • %d Assets", categoryName, count)
        end
    end
end

local function UpdateCanvas()
    if not ScrollingFrame then return end
    local layout = ScrollingFrame:FindFirstChildOfClass("UIListLayout") or ScrollingFrame:FindFirstChildOfClass("UIGridLayout")
    if layout then
        ScrollingFrame.CanvasSize = UDim2.new(0, 0, 0, layout.AbsoluteContentSize.Y + 25)
    end
end

local function GetCurrentRenderedCardCount()
    if not ScrollingFrame then return 0 end
    local count = 0
    for _, child in ipairs(ScrollingFrame:GetChildren()) do
        if child:IsA("GuiObject") and child ~= LoadMoreButton and child.Name ~= "LoadmoreButton" and child.Visible then
            count = count + 1
        end
    end
    return count
end

local function RenderAssets(searchQuery, isLoadMore)

    if not isLoadMore then
        ClearList()
        CurrentSessionId = CurrentSessionId + 1
    end
    
    local thisSession = CurrentSessionId
    local targetCategoryAtCall = CurrentCategory
    local isSavedModeAtCall = IsShowingSavedOnly

    local query = ""
    if searchQuery and searchQuery ~= "Search asset..." then
        query = searchQuery:lower():match("^%s*(.-)%s*$") or ""
    end

    if isSavedModeAtCall then
        if LoadMoreButton then LoadMoreButton.Visible = false end

        local categoryList = SavedAssets and SavedAssets[targetCategoryAtCall] or {}
        local targetList = {}

        for _, entry in ipairs(categoryList) do
            local assetId = typeof(entry) == "table" and (entry.ID or entry.Id) or entry
            local assetName = typeof(entry) == "table" and (entry.Name or entry.name) or ("Asset_" .. tostring(assetId))
            local assetCreator = typeof(entry) == "table" and (entry.Creator or entry.creator) or "Unknown"
            local numericId = tonumber(assetId)

            if numericId then
                local isMatched = true
                if query ~= "" then
                    local nameLower = tostring(assetName):lower()
                    local creatorLower = tostring(assetCreator):lower()
                    local assetIdStr = tostring(numericId)

                    if not nameLower:find(query, 1, true) and 
                       not creatorLower:find(query, 1, true) and 
                       not assetIdStr:find(query, 1, true) then
                        isMatched = false
                    end
                end

                if isMatched then
                    table.insert(targetList, {
                        ID = numericId,
                        Name = assetName,
                        Creator = assetCreator,
                        AssetTypeId = typeof(entry) == "table" and entry.AssetTypeId or nil
                    })
                end
            end
        end

        local renderedCount = 0
        UpdateAmountAssetDisplay(#targetList, targetCategoryAtCall, true, query, false)

        task.spawn(function()
            for index, item in ipairs(targetList) do
                if thisSession ~= CurrentSessionId or CurrentCategory ~= targetCategoryAtCall or not IsShowingSavedOnly then 
                    return 
                end

                local numericId = item.ID
                if numericId and TemplateFrame then
                    local card = TemplateFrame:Clone()
                    card.Visible = true
                    card.Parent = ScrollingFrame
                    card.Name = "SavedAsset_" .. numericId

                    renderedCount = renderedCount + 1

                    local ThumbnailAsset = card:FindFirstChild("ThumbnailAsset_5e") or card:FindFirstChild("ThumbnailAsset")
                    local NameLabel      = card:FindFirstChild("Name_6e") or card:FindFirstChild("Name")
                    local CreatorLabel   = card:FindFirstChild("Creator_60") or card:FindFirstChild("Creator")
                    local IDLabel        = card:FindFirstChild("ID_70") or card:FindFirstChild("ID")
                    local IconSaved      = card:FindFirstChild("IconSaved_62") or card:FindFirstChild("IconSaved")
                    
                    local BackgroundCopy   = card:FindFirstChild("BackgroundCopy_63") or card:FindFirstChild("BackgroundCopy")
                    local CopyBtn          = BackgroundCopy and (BackgroundCopy:FindFirstChild("CopyButton_64") or BackgroundCopy:FindFirstChild("CopyButton"))
                    local BackgroundInsert = card:FindFirstChild("BackgroundInsert_69") or card:FindFirstChild("BackgroundInsert")
                    local InsertBtn        = BackgroundInsert and (BackgroundInsert:FindFirstChild("InsertButton_6b") or BackgroundInsert:FindFirstChild("InsertButton"))

                    if NameLabel then NameLabel.Text = item.Name end
                    if CreatorLabel then CreatorLabel.Text = "By: " .. tostring(item.Creator) end
                    if IDLabel then IDLabel.Text = "ID : " .. tostring(numericId) end

                    if ThumbnailAsset and ThumbnailAsset:IsA("ImageLabel") then
                        if targetCategoryAtCall == "Audio" then
                            ThumbnailAsset.Image = "rbxassetid://16327318049"
                        else
                            ThumbnailAsset.Image = GetAssetThumbnail(numericId, item.AssetTypeId)
                        end
                    end

                    if IconSaved then IconSaved.Visible = true end

                    if CopyBtn and CopyBtn:IsA("GuiButton") then
                        CopyBtn.MouseButton1Click:Connect(function()
                            if setclipboard then setclipboard(tostring(numericId)) end
                            local originalText = CopyBtn.Text
                            CopyBtn.Text = "Copied!"
                            task.wait(1)
                            CopyBtn.Text = originalText
                        end)
                    end

                    if InsertBtn and InsertBtn:IsA("GuiButton") then
                        InsertBtn.MouseButton1Click:Connect(function()
                            if typeof(InsertAsset) == "function" then
                                InsertAsset(numericId, targetCategoryAtCall, InsertBtn)
                            end
                            task.wait(1.5)
                            InsertBtn.Text = "INSERT"
                        end)
                    end

                    UpdateCanvas()
                end

                if index % 5 == 0 then task.wait() end
            end
        end)
        return
    end

local LoadMoreButton = LMG2L and LMG2L["LoadmoreButton_2"]

if LoadMoreButton and LoadMoreButton:IsA("GuiButton") then
    LoadMoreButton.MouseButton1Click:Connect(function()
				
        if LoadMoreButton.Text == "LOADING..." then 
            return 
        end
        
        if typeof(RenderAssets) == "function" then
            local queryToPass = (typeof(CurrentSearchQuery) == "string") and CurrentSearchQuery or ""
            RenderAssets(queryToPass, true)
        else
            warn("RenderAssets function is not defined or placed below this listener!")
        end
    end)
	end
 
    if query == "" then
        if LoadMoreButton then LoadMoreButton.Visible = false end
        UpdateAmountAssetDisplay(0, targetCategoryAtCall, false, "", false)
        return
    end

    if not isLoadMore then
        UpdateAmountAssetDisplay(0, targetCategoryAtCall, false, query, true)
    end

    task.spawn(function()
        local apiResults, nextPageToken = SearchRobloxStore(query, targetCategoryAtCall, isLoadMore)

        if thisSession ~= CurrentSessionId or CurrentCategory ~= targetCategoryAtCall or IsShowingSavedOnly then
            return
        end

        local apiList = type(apiResults) == "table" and apiResults or {}
        local previousCount = isLoadMore and GetCurrentRenderedCardCount() or 0
        local totalAssetsFound = previousCount + #apiList

        UpdateAmountAssetDisplay(totalAssetsFound, targetCategoryAtCall, false, query, false)

        for index, item in ipairs(apiList) do
            if thisSession ~= CurrentSessionId or CurrentCategory ~= targetCategoryAtCall or IsShowingSavedOnly then 
                return 
            end

            local numericId = tonumber(item.ID or item.Id)
            local assetName = item.Name or item.name or ("Asset_" .. tostring(numericId))
            local assetCreator = item.Creator or item.creator or "Unknown"

            if numericId and TemplateFrame then
                local card = TemplateFrame:Clone()
                card.Visible = true
                card.Parent = ScrollingFrame
                card.Name = "Asset_" .. numericId

                local ThumbnailAsset = card:FindFirstChild("ThumbnailAsset_5e") or card:FindFirstChild("ThumbnailAsset")
                local NameLabel      = card:FindFirstChild("Name_6e") or card:FindFirstChild("Name")
                local CreatorLabel   = card:FindFirstChild("Creator_60") or card:FindFirstChild("Creator")
                local IDLabel        = card:FindFirstChild("ID_70") or card:FindFirstChild("ID")
                local IconSaved      = card:FindFirstChild("IconSaved_62") or card:FindFirstChild("IconSaved")
                
                local BackgroundCopy   = card:FindFirstChild("BackgroundCopy_63") or card:FindFirstChild("BackgroundCopy")
                local CopyBtn          = BackgroundCopy and (BackgroundCopy:FindFirstChild("CopyButton_64") or BackgroundCopy:FindFirstChild("CopyButton"))
                local BackgroundInsert = card:FindFirstChild("BackgroundInsert_69") or card:FindFirstChild("BackgroundInsert")
                local InsertBtn        = BackgroundInsert and (BackgroundInsert:FindFirstChild("InsertButton_6b") or BackgroundInsert:FindFirstChild("InsertButton"))

                if NameLabel then NameLabel.Text = assetName end
                if CreatorLabel then CreatorLabel.Text = "By: " .. tostring(assetCreator) end
                if IDLabel then IDLabel.Text = "ID : " .. tostring(numericId) end

                if ThumbnailAsset and ThumbnailAsset:IsA("ImageLabel") then
                    if targetCategoryAtCall == "Audio" then
                        ThumbnailAsset.Image = "rbxassetid://16327318049"
                    else
                        ThumbnailAsset.Image = GetAssetThumbnail(numericId, item.AssetTypeId)
                    end
                end

                if IconSaved then
                    IconSaved.Visible = IsAssetSaved(numericId, targetCategoryAtCall)
                end

                if CopyBtn and CopyBtn:IsA("GuiButton") then
                    CopyBtn.MouseButton1Click:Connect(function()
                        if setclipboard then setclipboard(tostring(numericId)) end
                        local originalText = CopyBtn.Text
                        CopyBtn.Text = "Copied!"
                        task.wait(1)
                        CopyBtn.Text = originalText
                    end)
                end

                if InsertBtn and InsertBtn:IsA("GuiButton") then
                    InsertBtn.MouseButton1Click:Connect(function()
                        if typeof(InsertAsset) == "function" then
                            InsertAsset(numericId, targetCategoryAtCall, InsertBtn)
                        end
                        task.wait(1.5)

                        InsertBtn.Text = "INSERT"
                    end)
                end

                UpdateCanvas()
            end

            if index % 5 == 0 then
                task.wait()
            end
        end
			
        if LoadMoreButton then
            if nextPageToken and nextPageToken ~= "" and #apiList > 0 then
                LoadMoreButton.Visible = true
                LoadMoreButton.Text = "LOAD MORE"
                LoadMoreButton.LayoutOrder = 999999
            else
                LoadMoreButton.Visible = false
            end
            UpdateCanvas()
        end
    end)
end

local function SwitchTab(tabName)
    CurrentCategory = tabName

    if typeof(UpdateTabVisualState) == "function" then
        UpdateTabVisualState("Model", false)
        UpdateTabVisualState("Decal", false)
        UpdateTabVisualState("Audio", false)
        UpdateTabVisualState("Plugin", false)

        UpdateTabVisualState(tabName, true)
    end

    if SearchBox and SearchBox:IsA("TextBox") then
        SearchBox.Text = "Search store..."
        SearchBox.TextTransparency = 0.5
    end
    
    -- Render Ulang sesuai Kategori Baru dengan Mempertahankan Status Saved
    if typeof(RenderAssets) == "function" then
        RenderAssets("")
    end
end

local COLOR_TEXT_ACTIVE = Color3.fromRGB(223, 230, 237)

local function SetupInputBoxBehavior(textBox, defaultPlaceholder)
    if not textBox or not textBox:IsA("TextBox") then return end

    -- Memastikan properti dasar awal terpasang
    textBox.ClearTextOnFocus = false
    
    if textBox.Text == "" or textBox.Text == defaultPlaceholder then
        textBox.Text = defaultPlaceholder
        textBox.TextTransparency = 0.5
    else
        textBox.TextTransparency = 0
        textBox.TextColor3 = COLOR_TEXT_ACTIVE
    end

    textBox.Focused:Connect(function()
        if textBox.Text == defaultPlaceholder then
            textBox.Text = ""
        end
        textBox.TextTransparency = 0
        textBox.TextColor3 = COLOR_TEXT_ACTIVE
    end)

    textBox.FocusLost:Connect(function(enterPressed)
        local cleanText = textBox.Text:match("^%s*(.-)%s*$")
        
        if cleanText == "" or cleanText == defaultPlaceholder then
            textBox.Text = defaultPlaceholder
            textBox.TextTransparency = 0.5
        else
            textBox.Text = cleanText
            textBox.TextTransparency = 0
            textBox.TextColor3 = COLOR_TEXT_ACTIVE
        end
    end)

    textBox:GetPropertyChangedSignal("Text"):Connect(function()
        local currentText = textBox.Text
        if currentText == defaultPlaceholder then
            textBox.TextTransparency = 0.5
        elseif currentText ~= "" then
            textBox.TextTransparency = 0
            textBox.TextColor3 = COLOR_TEXT_ACTIVE
        end
    end)
end

if InsertIDBox then SetupInputBoxBehavior(InsertIDBox, "Insert Id asset...") end
if SearchBox then SetupInputBoxBehavior(SearchBox, "Search store...") end
if SaveIDBox then SetupInputBoxBehavior(SaveIDBox, "Save id asset...") end

local SearchButton = LMG2L and (LMG2L["SearchButton_75"] or LMG2L["SearchButton"] or LMG2L["SearchBtn"])

local function ExecuteSearch()
    if typeof(RenderAssets) == "function" then
        local query = ""
        if SearchBox and SearchBox:IsA("TextBox") then
            query = SearchBox.Text:match("^%s*(.-)%s*$")
            if query == "Search asset..." then 
                query = "" 
            end
        end
        RenderAssets(query)
    end
end

if SearchButton and SearchButton:IsA("GuiButton") then
    SearchButton.MouseButton1Click:Connect(ExecuteSearch)
end

_G.IsShowingSavedOnly = _G.IsShowingSavedOnly or false
IsShowingSavedOnly = _G.IsShowingSavedOnly

local HeaderSavedButton = LMG2L and (LMG2L["SavedButton_2c"] or LMG2L["SavedButton"])
local HeaderIconSaved   = LMG2L and (LMG2L["IconSaved_2e"] or LMG2L["IconSaved"])

local SaveBox    = LMG2L and (LMG2L["SaveBox_24"] or LMG2L["SaveBox"] or LMG2L["SaveIDBox"] or SaveIDBox)
local SaveButton = LMG2L and (LMG2L["SaveButton_56"] or LMG2L["SaveButton"] or LMG2L["SaveIDButton"])

if ModelButton and ModelButton:IsA("GuiButton") then
    ModelButton.MouseButton1Click:Connect(function() SwitchTab("Model") end)
end

if DecalButton and DecalButton:IsA("GuiButton") then
    DecalButton.MouseButton1Click:Connect(function() SwitchTab("Decal") end)
end

if AudioButton and AudioButton:IsA("GuiButton") then
    AudioButton.MouseButton1Click:Connect(function() SwitchTab("Audio") end)
end

if PluginButton and PluginButton:IsA("GuiButton") then
    PluginButton.MouseButton1Click:Connect(function() SwitchTab("Plugin") end)
end

local function ToggleSavedFilter()

    IsShowingSavedOnly = not IsShowingSavedOnly
    _G.IsShowingSavedOnly = IsShowingSavedOnly

    if typeof(UpdateSavedFilterVisualState) == "function" then
        UpdateSavedFilterVisualState(IsShowingSavedOnly)
    end
    
    local currentQuery = (SearchBox and SearchBox:IsA("TextBox")) and SearchBox.Text or ""
    
    if typeof(RenderAssets) == "function" then
        RenderAssets(currentQuery)
    end
end

if HeaderSavedButton and HeaderSavedButton:IsA("GuiButton") then
    HeaderSavedButton.MouseButton1Click:Connect(ToggleSavedFilter)
elseif HeaderIconSaved and HeaderIconSaved:IsA("GuiButton") then
    HeaderIconSaved.MouseButton1Click:Connect(ToggleSavedFilter)
end

if SaveButton and SaveButton:IsA("GuiButton") then
    SaveButton.MouseButton1Click:Connect(function()
        if not SaveBox or not SaveBox:IsA("TextBox") then return end
        
        local rawText = SaveBox.Text
        local numericId = tonumber(rawText:match("%d+"))

        if not numericId then
            SaveBox.Text = "Harus ID Angka!"
            task.wait(1.2)
            if SaveBox then 
                SaveBox.Text = "Save id asset..." 
                SaveBox.TextTransparency = 0.5
            end
            return
        end

        local originalBtnText = SaveButton.Text
        SaveButton.Text = "SAVE"

        task.spawn(function()
					
            local meta = nil
            if typeof(FetchAssetMetadata) == "function" then
                meta = FetchAssetMetadata(numericId)
            end

            local targetCategory = (meta and meta.Category) or CurrentCategory or "Model"

            local isAlreadySaved = false
            if typeof(IsAssetSaved) == "function" then
                isAlreadySaved = IsAssetSaved(numericId, targetCategory)
            end

            if not isAlreadySaved then
                if type(SavedAssets) ~= "table" then
                    SavedAssets = { Model = {}, Decal = {}, Audio = {}, Plugin = {} }
                end
                
                SavedAssets[targetCategory] = SavedAssets[targetCategory] or {}
                table.insert(SavedAssets[targetCategory], numericId)
                
                if typeof(SaveUserData) == "function" then
                    SaveUserData()
                end
            end

            SaveButton.Text = "SAVED!"
            
            -- Reset Input Box setelah berhasil
            if SaveBox then
                SaveBox.Text = "Save id asset..."
                SaveBox.TextTransparency = 0.5
            end
            
            task.wait(1.2)
            if SaveButton then SaveButton.Text = originalBtnText end

            -- Segera Refresh UI List
            if typeof(RenderAssets) == "function" then
                local currentQuery = (SearchBox and SearchBox:IsA("TextBox")) and SearchBox.Text or ""
                RenderAssets(currentQuery)
            end
        end)
    end)
end

--- insert

if SaveButton and SaveButton:IsA("GuiButton") then
    SaveButton.MouseButton1Click:Connect(function()
        if not SaveIDBox or not SaveIDBox:IsA("TextBox") then return end
        
        local rawText = SaveIDBox.Text
        local cleanId = tonumber(rawText:match("%d+"))

        if not cleanId then
            SaveIDBox.Text = "Harus ID Angka!"
            SaveIDBox.TextTransparency = 0
            task.wait(1.5)
            if SaveIDBox and SaveIDBox.Text == "Harus ID Angka!" then
                SaveIDBox.Text = "Save id asset..."
                SaveIDBox.TextTransparency = 0.5
            end
            return
        end

        SaveIDBox.Text = tostring(cleanId)
        SaveIDBox.TextTransparency = 0
        if typeof(COLOR_TEXT_ACTIVE) == "Color3" then
            SaveIDBox.TextColor3 = COLOR_TEXT_ACTIVE
        end

        local originalBtnText = SaveButton.Text
        SaveButton.Text = "SAVE"

        task.spawn(function()

            local success, info = pcall(function() 
                return MarketplaceService:GetProductInfo(cleanId) 
            end)

            if success and info and info.Name then
						
                local targetCategory = CurrentCategory or "Model"
                if typeof(GetCategoryFromAssetType) == "function" and info.AssetTypeId then
                    targetCategory = GetCategoryFromAssetType(info.AssetTypeId) or targetCategory
                end

                local isDuplicate = false
                if typeof(IsAssetSaved) == "function" then
                    isDuplicate = IsAssetSaved(cleanId, targetCategory)
                end

                if isDuplicate then
                    SaveIDBox.Text = "Sudah Ada!"
                    task.wait(1.5)
                    if SaveButton then SaveButton.Text = originalBtnText end
                    if SaveIDBox and SaveIDBox.Text == "Sudah Ada!" then
                        SaveIDBox.Text = tostring(cleanId)
                        SaveIDBox.TextTransparency = 0
                    end
                    return
                end

                local assetName = tostring(info.Name)
                local creatorName = "Unknown"

                if type(info.Creator) == "table" and info.Creator.Name then
                    creatorName = tostring(info.Creator.Name)
                elseif type(info.Creator) == "string" and #info.Creator > 0 then
                    creatorName = info.Creator
                elseif info.CreatorName and #tostring(info.CreatorName) > 0 then
                    creatorName = tostring(info.CreatorName)
                end

                local newSavedAsset = {
                    Name = assetName,
                    Creator = creatorName,
                    ID = cleanId,
                    AssetTypeId = info.AssetTypeId
                }

                SavedAssets = SavedAssets or { Model = {}, Decal = {}, Audio = {}, Plugin = {} }
                SavedAssets[targetCategory] = SavedAssets[targetCategory] or {}
                table.insert(SavedAssets[targetCategory], newSavedAsset)
                
                if typeof(SaveUserData) == "function" then
                    SaveUserData()
                end
                
                SaveButton.Text = "SAVED!"
                
                if IsShowingSavedOnly and typeof(RenderAssets) == "function" then
                    RenderAssets("")
                end
            else
                SaveIDBox.Text = "ID Gagal Validasi!"
                task.wait(1.5)
                if SaveIDBox and SaveIDBox.Text == "ID Gagal Validasi!" then
                    SaveIDBox.Text = tostring(cleanId)
                    SaveIDBox.TextTransparency = 0
                end
            end
            
            task.wait(1.2)
            if SaveButton then SaveButton.Text = originalBtnText end
        end)
    end)
end

local isInsertingManual = false
local manualInsertConnection = nil

local InsertButton_34 = (LMG2L and LMG2L["InsertButton_34"]) or InsertButton
local InsertBox_38 = (LMG2L and LMG2L["InsertBox_38"]) or InsertIDBox

if manualInsertConnection then
    manualInsertConnection:Disconnect()
    manualInsertConnection = nil
end

if InsertButton_34 and InsertButton_34:IsA("GuiButton") then
    manualInsertConnection = InsertButton_34.MouseButton1Click:Connect(function()
        -- Lock Rapat: Jika sedang proses, abaikan klik sama sekali
        if isInsertingManual then return end
        if not InsertBox_38 or not InsertBox_38:IsA("TextBox") then return end
        
        local rawText = InsertBox_38.Text
        local cleanId = tonumber(rawText:match("%d+"))

        if not cleanId then
            local originalText = InsertButton_34.Text
            InsertButton_34.Text = "Invalid ID!"
            task.wait(1.5)
            if InsertButton_34 then InsertButton_34.Text = originalText end
            return
        end

        isInsertingManual = true
        local originalText = InsertButton_34.Text

        InsertBox_38.Text = tostring(cleanId)
        InsertBox_38.TextTransparency = 0
        if typeof(COLOR_TEXT_ACTIVE) == "Color3" then
            InsertBox_38.TextColor3 = COLOR_TEXT_ACTIVE
        end

        InsertButton_34.Text = "WORKING..."
        
        task.spawn(function()
            if typeof(InsertAsset) == "function" then

                InsertAsset(cleanId, CurrentCategory, nil)
            end
            
            task.wait(1.5)
            if InsertButton_34 then InsertButton_34.Text = originalText end
            isInsertingManual = false
        end)
    end)
end

local function SetupCardInsertButton(cardFrame, assetId)
    local cardInsertBtn = cardFrame:FindFirstChild("InsertButton_6b", true)
    if not cardInsertBtn or not cardInsertBtn:IsA("GuiButton") then return end

    local isInsertingCard = false

    cardInsertBtn.MouseButton1Click:Connect(function()
        if isInsertingCard then return end
        isInsertingCard = true

        local originalText = cardInsertBtn.Text
        cardInsertBtn.Text = "LOAD"

        task.spawn(function()
            if typeof(InsertAsset) == "function" then
                InsertAsset(assetId, CurrentCategory, cardInsertBtn)
            end

            task.wait(1.5)
            if cardInsertBtn then cardInsertBtn.Text = originalText end
            isInsertingCard = false
        end)
    end)
end

if typeof(SwitchTab) == "function" then
    SwitchTab("Model")
end

local MenuButton = LMG2L and (LMG2L["MenuButton_54"] or LMG2L["MenuButton"])
local CardMenu   = LMG2L and (LMG2L["CardMenu_3d"] or LMG2L["CardMenu"])

local ScrollingButton  = CardMenu and (CardMenu:FindFirstChild("ScrollingButton_3f") or CardMenu:FindFirstChild("ScrollingButton"))
local TemplateBgButton = ScrollingButton and (ScrollingButton:FindFirstChild("BackgroundButton_42") or ScrollingButton:FindFirstChild("BackgroundButton"))

local ICON_CLOSED = "rbxassetid://76007989326576"
local ICON_OPENED = "rbxassetid://86595679119304"

local IsMenuOpen = false

local MenuFeatureList = {
    {
        Name = "TERRAIN",
        Icon = "rbxassetid://129361331543944",
        RawLink = "https://raw.githubusercontent.com/narakuhub/plugin-tools/refs/heads/main/tools/terrain.lua"
    },
	{
        Name = "AUDIO PLAY",
        Icon = "rbxassetid://136460394404917",
        RawLink = "https://raw.githubusercontent.com/narakuhub/plugin-tools/refs/heads/main/tools/audio.lua"
    },
	{
        Name = "ARCHIMEDES",
        Icon = "rbxassetid://87188567501065",
        RawLink = "https://raw.githubusercontent.com/narakuhub/plugin-tools/refs/heads/main/tools/ArchSementara.lua"
    },
	{
        Name = "LUCIDE ICONS",
        Icon = "rbxassetid://126610009605241",
        RawLink = "https://raw.githubusercontent.com/narakuhub/plugin-tools/refs/heads/main/tools/lucide.lua"
    },
	{
        Name = "FLY CAMERA",
        Icon = "rbxassetid://80451686744860",
        RawLink = "https://raw.githubusercontent.com/narakuhub/plugin-tools/refs/heads/main/tools/FlyCamera.lua"
    },
    {
        Name = "FLY GUI",
        Icon = "rbxassetid://126428723702595",
        RawLink = "https://raw.githubusercontent.com/narakuhub/plugin-tools/refs/heads/main/tools/flygui.lua"
    }
}

if TemplateBgButton then
    TemplateBgButton.Visible = false -- Sembunyikan Template Acuan
end

local function BuildMenuItems()
    if not ScrollingButton or not TemplateBgButton then return end

    for _, child in ipairs(ScrollingButton:GetChildren()) do
        if child:IsA("GuiObject") and child ~= TemplateBgButton then
            child:Destroy()
        end
    end

    for index, featureData in ipairs(MenuFeatureList) do
        local buttonCard = TemplateBgButton:Clone()
        buttonCard.Name = "MenuCard_" .. tostring(index)
        buttonCard.Visible = true
        buttonCard.Parent = ScrollingButton

        local IconButton = buttonCard:FindFirstChild("IconButton_43") or buttonCard:FindFirstChild("IconButton")
        local ExecButton = buttonCard:FindFirstChild("Button_45") or buttonCard:FindFirstChild("Button")

        if IconButton and IconButton:IsA("ImageLabel") then
            IconButton.Image = featureData.Icon or ICON_CLOSED
        end

        if ExecButton then
            local textTarget = ExecButton:IsA("TextButton") and ExecButton or ExecButton:FindFirstChildOfClass("TextLabel")
            if textTarget then
                textTarget.Text = featureData.Name
            elseif ExecButton:IsA("TextButton") then
                ExecButton.Text = featureData.Name
            end

            local clickTarget = ExecButton:IsA("GuiButton") and ExecButton or ExecButton:FindFirstChildOfClass("GuiButton")
            if clickTarget then
                clickTarget.MouseButton1Click:Connect(function()
                    if not featureData.RawLink or featureData.RawLink == "" then return end

                    local originalText = clickTarget.Text
                    clickTarget.Text = "EXECUTING..."

                    task.spawn(function()
                        local success, err = pcall(function()
                            local scriptContent = game:HttpGet(featureData.RawLink)
                            local executeScript = loadstring(scriptContent)
                            executeScript()
                        end)

                        if success then
                            clickTarget.Text = "SUCCESS!"
                        else
                            warn("[MENU EXECUTE ERROR]: " .. tostring(err))
                            clickTarget.Text = "FAILED!"
                        end

                        task.wait(1.5)
                        clickTarget.Text = originalText
                    end)
                end)
            end
        end
    end

    local layout = ScrollingButton:FindFirstChildOfClass("UIListLayout")
    if layout then
        ScrollingButton.CanvasSize = UDim2.new(0, 0, 0, layout.AbsoluteContentSize.Y + 15)
    end
end

if MenuButton then
    MenuButton.MouseButton1Click:Connect(function()
        IsMenuOpen = not IsMenuOpen

        if CardMenu then
            CardMenu.Visible = IsMenuOpen
        end

        if MenuButton:IsA("ImageButton") or MenuButton:IsA("ImageLabel") then
            MenuButton.Image = IsMenuOpen and ICON_OPENED or ICON_CLOSED
        else

            local childIcon = MenuButton:FindFirstChildOfClass("ImageLabel")
            if childIcon then
                childIcon.Image = IsMenuOpen and ICON_OPENED or ICON_CLOSED
            end
        end

        if IsMenuOpen then
            BuildMenuItems()
        end
    end)
end

if CardMenu then 
    CardMenu.Visible = false 
end

if MenuButton then
    if MenuButton:IsA("ImageButton") or MenuButton:IsA("ImageLabel") then
        MenuButton.Image = ICON_CLOSED
    else
        local childIcon = MenuButton:FindFirstChildOfClass("ImageLabel")
        if childIcon then childIcon.Image = ICON_CLOSED end
    end
end
	
return LMG2L["ScreenGui_1"], require;
