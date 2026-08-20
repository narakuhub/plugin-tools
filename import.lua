--[=[
 d888b  db    db d888888b      .d888b.      db      db    db  .d8b.  
88' Y8b 88    88   `88'        VP  `8D      88      88    88 d8' `8b 
88      88    88    88            odD'      88      88    88 88ooo88 
88  ooo 88    88    88          .88'        88      88    88 88~~~88 
88. ~8~ 88b  d88   .88.        j88.         88booo. 88b  d88 88   88    @uniquadev
 Y888P  ~Y8888P' Y888888P      888888D      Y88888P ~Y8888P' YP   YP  CONVERTER 

designed using localmaze gui creator
]=]

-- Instances: 71 | Scripts: 0 | Modules: 0 | Tags: 0
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
LMG2L["Panel_3"]["Size"] = UDim2.new(0, 280, 0, 215);
LMG2L["Panel_3"]["Position"] = UDim2.new(0, 10, 0, 20);
LMG2L["Panel_3"]["Name"] = [[Panel]];


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.CardUploud
LMG2L["CardUploud_4"] = Instance.new("Frame", LMG2L["Panel_3"]);
LMG2L["CardUploud_4"]["Visible"] = false;
LMG2L["CardUploud_4"]["ZIndex"] = 3;
LMG2L["CardUploud_4"]["BorderSizePixel"] = 0;
LMG2L["CardUploud_4"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
LMG2L["CardUploud_4"]["Size"] = UDim2.new(0, 280, 0, 122);
LMG2L["CardUploud_4"]["Position"] = UDim2.new(0, 0, 0, 94);
LMG2L["CardUploud_4"]["Name"] = [[CardUploud]];


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.CardUploud.NameBox
LMG2L["NameBox_5"] = Instance.new("TextBox", LMG2L["CardUploud_4"]);
LMG2L["NameBox_5"]["Name"] = [[NameBox]];
LMG2L["NameBox_5"]["BorderSizePixel"] = 0;
LMG2L["NameBox_5"]["TextTransparency"] = 0.5;
LMG2L["NameBox_5"]["TextSize"] = 9;
LMG2L["NameBox_5"]["TextColor3"] = Color3.fromRGB(224, 231, 238);
LMG2L["NameBox_5"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
LMG2L["NameBox_5"]["FontFace"] = Font.new([[rbxasset://fonts/families/Arial.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
LMG2L["NameBox_5"]["Size"] = UDim2.new(0, 270, 0, 24);
LMG2L["NameBox_5"]["Position"] = UDim2.new(0, 5, 0, 23);
LMG2L["NameBox_5"]["Text"] = [[Enter your title..]];


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.CardUploud.NameBox.UIStroke2
LMG2L["UIStroke2_6"] = Instance.new("UIStroke", LMG2L["NameBox_5"]);
LMG2L["UIStroke2_6"]["Transparency"] = 0.85;
LMG2L["UIStroke2_6"]["Name"] = [[UIStroke2]];
LMG2L["UIStroke2_6"]["Color"] = Color3.fromRGB(224, 231, 238);


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.CardUploud.NameBox.UICorner
LMG2L["UICorner_7"] = Instance.new("UICorner", LMG2L["NameBox_5"]);
LMG2L["UICorner_7"]["CornerRadius"] = UDim.new(0, 5);


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.CardUploud.NameBox.UIStroke
LMG2L["UIStroke_8"] = Instance.new("UIStroke", LMG2L["NameBox_5"]);
LMG2L["UIStroke_8"]["Transparency"] = 0.5;
LMG2L["UIStroke_8"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
LMG2L["UIStroke_8"]["Thickness"] = 0.5;
LMG2L["UIStroke_8"]["Color"] = Color3.fromRGB(71, 73, 75);


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.CardUploud.UICorner
LMG2L["UICorner_9"] = Instance.new("UICorner", LMG2L["CardUploud_4"]);



-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.CardUploud.Title
LMG2L["Title_a"] = Instance.new("TextLabel", LMG2L["CardUploud_4"]);
LMG2L["Title_a"]["TextWrapped"] = true;
LMG2L["Title_a"]["BorderSizePixel"] = 0;
LMG2L["Title_a"]["TextSize"] = 9;
LMG2L["Title_a"]["TextXAlignment"] = Enum.TextXAlignment.Left;
LMG2L["Title_a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
LMG2L["Title_a"]["FontFace"] = Font.new([[rbxasset://fonts/families/Arial.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
LMG2L["Title_a"]["TextColor3"] = Color3.fromRGB(224, 231, 238);
LMG2L["Title_a"]["BackgroundTransparency"] = 1;
LMG2L["Title_a"]["Size"] = UDim2.new(0, 202, 0, 20);
LMG2L["Title_a"]["Text"] = [[UPLOAD FILE]];
LMG2L["Title_a"]["Name"] = [[Title]];
LMG2L["Title_a"]["Position"] = UDim2.new(0, 5, 0, 0);


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.CardUploud.Title.UIStroke
LMG2L["UIStroke_b"] = Instance.new("UIStroke", LMG2L["Title_a"]);
LMG2L["UIStroke_b"]["Transparency"] = 0.85;
LMG2L["UIStroke_b"]["Color"] = Color3.fromRGB(224, 231, 238);


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.CardUploud.BackgroundSave
LMG2L["BackgroundSave_c"] = Instance.new("Frame", LMG2L["CardUploud_4"]);
LMG2L["BackgroundSave_c"]["BorderSizePixel"] = 0;
LMG2L["BackgroundSave_c"]["BackgroundColor3"] = Color3.fromRGB(127, 131, 135);
LMG2L["BackgroundSave_c"]["Size"] = UDim2.new(0, 270, 0, 24);
LMG2L["BackgroundSave_c"]["Position"] = UDim2.new(0, 5, 0, 90);
LMG2L["BackgroundSave_c"]["Name"] = [[BackgroundSave]];


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.CardUploud.BackgroundSave.SaveButton
LMG2L["SaveButton_d"] = Instance.new("TextButton", LMG2L["BackgroundSave_c"]);
LMG2L["SaveButton_d"]["BorderSizePixel"] = 0;
LMG2L["SaveButton_d"]["TextSize"] = 9;
LMG2L["SaveButton_d"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
LMG2L["SaveButton_d"]["BackgroundColor3"] = Color3.fromRGB(224, 231, 238);
LMG2L["SaveButton_d"]["FontFace"] = Font.new([[rbxasset://fonts/families/Arial.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
LMG2L["SaveButton_d"]["Size"] = UDim2.new(0, 270, 0, 22);
LMG2L["SaveButton_d"]["Text"] = [[SAVE FILE RAW]];
LMG2L["SaveButton_d"]["Name"] = [[SaveButton]];


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.CardUploud.BackgroundSave.SaveButton.UICorner
LMG2L["UICorner_e"] = Instance.new("UICorner", LMG2L["SaveButton_d"]);
LMG2L["UICorner_e"]["CornerRadius"] = UDim.new(0, 4);


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.CardUploud.BackgroundSave.SaveButton.UIStroke
LMG2L["UIStroke_f"] = Instance.new("UIStroke", LMG2L["SaveButton_d"]);
LMG2L["UIStroke_f"]["Transparency"] = 0.85;
LMG2L["UIStroke_f"]["Thickness"] = 0.5;


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.CardUploud.BackgroundSave.UICorner
LMG2L["UICorner_10"] = Instance.new("UICorner", LMG2L["BackgroundSave_c"]);
LMG2L["UICorner_10"]["CornerRadius"] = UDim.new(0, 5);


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.CardUploud.RawBox
LMG2L["RawBox_11"] = Instance.new("TextBox", LMG2L["CardUploud_4"]);
LMG2L["RawBox_11"]["Name"] = [[RawBox]];
LMG2L["RawBox_11"]["BorderSizePixel"] = 0;
LMG2L["RawBox_11"]["TextTruncate"] = Enum.TextTruncate.AtEnd;
LMG2L["RawBox_11"]["TextTransparency"] = 0.5;
LMG2L["RawBox_11"]["TextSize"] = 9;
LMG2L["RawBox_11"]["TextColor3"] = Color3.fromRGB(224, 231, 238);
LMG2L["RawBox_11"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
LMG2L["RawBox_11"]["FontFace"] = Font.new([[rbxasset://fonts/families/Arial.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
LMG2L["RawBox_11"]["Size"] = UDim2.new(0, 270, 0, 30);
LMG2L["RawBox_11"]["Position"] = UDim2.new(0, 5, 0, 53);
LMG2L["RawBox_11"]["Text"] = [[Paste Raw Link model...]];


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.CardUploud.RawBox.UIStroke2
LMG2L["UIStroke2_12"] = Instance.new("UIStroke", LMG2L["RawBox_11"]);
LMG2L["UIStroke2_12"]["Transparency"] = 0.85;
LMG2L["UIStroke2_12"]["Name"] = [[UIStroke2]];
LMG2L["UIStroke2_12"]["Color"] = Color3.fromRGB(224, 231, 238);


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.CardUploud.RawBox.UICorner
LMG2L["UICorner_13"] = Instance.new("UICorner", LMG2L["RawBox_11"]);
LMG2L["UICorner_13"]["CornerRadius"] = UDim.new(0, 5);


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.CardUploud.RawBox.UIStroke
LMG2L["UIStroke_14"] = Instance.new("UIStroke", LMG2L["RawBox_11"]);
LMG2L["UIStroke_14"]["Transparency"] = 0.5;
LMG2L["UIStroke_14"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
LMG2L["UIStroke_14"]["Thickness"] = 0.5;
LMG2L["UIStroke_14"]["Color"] = Color3.fromRGB(71, 73, 75);


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.CardUploud.BackButton
LMG2L["BackButton_15"] = Instance.new("ImageButton", LMG2L["CardUploud_4"]);
LMG2L["BackButton_15"]["BorderSizePixel"] = 0;
LMG2L["BackButton_15"]["BackgroundTransparency"] = 1;
-- LMG2L["BackButton_15"]["ImageContent"] = ;
LMG2L["BackButton_15"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
LMG2L["BackButton_15"]["ImageColor3"] = Color3.fromRGB(224, 231, 238);
LMG2L["BackButton_15"]["ZIndex"] = 2;
LMG2L["BackButton_15"]["Image"] = [[rbxassetid://75539660682193]];
LMG2L["BackButton_15"]["Size"] = UDim2.new(0, 16, 0, 16);
LMG2L["BackButton_15"]["Name"] = [[BackButton]];
LMG2L["BackButton_15"]["Position"] = UDim2.new(0, 260, 0, 3);


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.CardUploud.UIStroke
LMG2L["UIStroke_16"] = Instance.new("UIStroke", LMG2L["CardUploud_4"]);
LMG2L["UIStroke_16"]["Transparency"] = 0.5;
LMG2L["UIStroke_16"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
LMG2L["UIStroke_16"]["Thickness"] = 0.5;
LMG2L["UIStroke_16"]["Color"] = Color3.fromRGB(71, 73, 75);


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.SearchBox
LMG2L["SearchBox_17"] = Instance.new("TextBox", LMG2L["Panel_3"]);
LMG2L["SearchBox_17"]["Name"] = [[SearchBox]];
LMG2L["SearchBox_17"]["BorderSizePixel"] = 0;
LMG2L["SearchBox_17"]["TextTransparency"] = 0.5;
LMG2L["SearchBox_17"]["TextSize"] = 9;
LMG2L["SearchBox_17"]["TextColor3"] = Color3.fromRGB(224, 231, 238);
LMG2L["SearchBox_17"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
LMG2L["SearchBox_17"]["FontFace"] = Font.new([[rbxasset://fonts/families/Arial.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
LMG2L["SearchBox_17"]["Size"] = UDim2.new(0, 270, 0, 22);
LMG2L["SearchBox_17"]["Position"] = UDim2.new(0, 5, 0, 96);
LMG2L["SearchBox_17"]["Text"] = [[Search file...]];
LMG2L["SearchBox_17"]["BackgroundTransparency"] = 1;


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.SearchBox.UIStroke2
LMG2L["UIStroke2_18"] = Instance.new("UIStroke", LMG2L["SearchBox_17"]);
LMG2L["UIStroke2_18"]["Transparency"] = 0.85;
LMG2L["UIStroke2_18"]["Name"] = [[UIStroke2]];
LMG2L["UIStroke2_18"]["Color"] = Color3.fromRGB(224, 231, 238);


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.SearchBox.IconSearch
LMG2L["IconSearch_19"] = Instance.new("ImageLabel", LMG2L["SearchBox_17"]);
LMG2L["IconSearch_19"]["BorderSizePixel"] = 0;
LMG2L["IconSearch_19"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
-- LMG2L["IconSearch_19"]["ImageContent"] = ;
LMG2L["IconSearch_19"]["ImageColor3"] = Color3.fromRGB(224, 231, 238);
LMG2L["IconSearch_19"]["Image"] = [[rbxassetid://91918048389224]];
LMG2L["IconSearch_19"]["Size"] = UDim2.new(0, 16, 0, 16);
LMG2L["IconSearch_19"]["BackgroundTransparency"] = 1;
LMG2L["IconSearch_19"]["Name"] = [[IconSearch]];
LMG2L["IconSearch_19"]["Position"] = UDim2.new(0, 4, 0, 3);


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.SearchBox.UICorner
LMG2L["UICorner_1a"] = Instance.new("UICorner", LMG2L["SearchBox_17"]);
LMG2L["UICorner_1a"]["CornerRadius"] = UDim.new(0, 5);


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.SearchBox.UIStroke
LMG2L["UIStroke_1b"] = Instance.new("UIStroke", LMG2L["SearchBox_17"]);
LMG2L["UIStroke_1b"]["Transparency"] = 0.5;
LMG2L["UIStroke_1b"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
LMG2L["UIStroke_1b"]["Thickness"] = 0.5;
LMG2L["UIStroke_1b"]["Color"] = Color3.fromRGB(71, 73, 75);


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.UICorner
LMG2L["UICorner_1c"] = Instance.new("UICorner", LMG2L["Panel_3"]);



-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.ScrollingFrame
LMG2L["ScrollingFrame_1d"] = Instance.new("ScrollingFrame", LMG2L["Panel_3"]);
LMG2L["ScrollingFrame_1d"]["BorderSizePixel"] = 0;
LMG2L["ScrollingFrame_1d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
LMG2L["ScrollingFrame_1d"]["Size"] = UDim2.new(0, 280, 0, 88);
LMG2L["ScrollingFrame_1d"]["ScrollBarImageColor3"] = Color3.fromRGB(224, 231, 238);
LMG2L["ScrollingFrame_1d"]["Position"] = UDim2.new(0, 0, 0, 123);
LMG2L["ScrollingFrame_1d"]["ScrollBarThickness"] = 4;
LMG2L["ScrollingFrame_1d"]["BackgroundTransparency"] = 1;


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.ScrollingFrame.UIPadding
LMG2L["UIPadding_1e"] = Instance.new("UIPadding", LMG2L["ScrollingFrame_1d"]);
LMG2L["UIPadding_1e"]["PaddingTop"] = UDim.new(0, 2);
LMG2L["UIPadding_1e"]["PaddingRight"] = UDim.new(0, 5);
LMG2L["UIPadding_1e"]["PaddingLeft"] = UDim.new(0, 5);
LMG2L["UIPadding_1e"]["PaddingBottom"] = UDim.new(0, 5);


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.ScrollingFrame.UIListLayout
LMG2L["UIListLayout_1f"] = Instance.new("UIListLayout", LMG2L["ScrollingFrame_1d"]);
LMG2L["UIListLayout_1f"]["Padding"] = UDim.new(0, 5);


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.ScrollingFrame.Card
LMG2L["Card_20"] = Instance.new("Frame", LMG2L["ScrollingFrame_1d"]);
LMG2L["Card_20"]["BorderSizePixel"] = 0;
LMG2L["Card_20"]["BackgroundColor3"] = Color3.fromRGB(18, 18, 18);
LMG2L["Card_20"]["Size"] = UDim2.new(0, 270, 0, 40);
LMG2L["Card_20"]["Position"] = UDim2.new(0, 5, 0, 0);
LMG2L["Card_20"]["Name"] = [[Card]];
LMG2L["Card_20"]["BackgroundTransparency"] = 0.5;


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.ScrollingFrame.Card.Path
LMG2L["Path_21"] = Instance.new("TextLabel", LMG2L["Card_20"]);
LMG2L["Path_21"]["TextWrapped"] = true;
LMG2L["Path_21"]["BorderSizePixel"] = 0;
LMG2L["Path_21"]["TextSize"] = 9;
LMG2L["Path_21"]["TextXAlignment"] = Enum.TextXAlignment.Left;
LMG2L["Path_21"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
LMG2L["Path_21"]["FontFace"] = Font.new([[rbxasset://fonts/families/Arial.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
LMG2L["Path_21"]["TextColor3"] = Color3.fromRGB(166, 171, 176);
LMG2L["Path_21"]["BackgroundTransparency"] = 1;
LMG2L["Path_21"]["Size"] = UDim2.new(0, 210, 0, 24);
LMG2L["Path_21"]["Text"] = [[main/fishingrod.lua]];
LMG2L["Path_21"]["Name"] = [[Path]];
LMG2L["Path_21"]["Position"] = UDim2.new(0, 5, 0, 18);


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.ScrollingFrame.Card.Path.UIStroke
LMG2L["UIStroke_22"] = Instance.new("UIStroke", LMG2L["Path_21"]);
LMG2L["UIStroke_22"]["Transparency"] = 0.85;
LMG2L["UIStroke_22"]["Color"] = Color3.fromRGB(224, 231, 238);


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.ScrollingFrame.Card.BackgroundInsert
LMG2L["BackgroundInsert_23"] = Instance.new("Frame", LMG2L["Card_20"]);
LMG2L["BackgroundInsert_23"]["BorderSizePixel"] = 0;
LMG2L["BackgroundInsert_23"]["BackgroundColor3"] = Color3.fromRGB(127, 131, 135);
LMG2L["BackgroundInsert_23"]["Size"] = UDim2.new(0, 46, 0, 22);
LMG2L["BackgroundInsert_23"]["Position"] = UDim2.new(0, 215, 0, 9);
LMG2L["BackgroundInsert_23"]["Name"] = [[BackgroundInsert]];


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.ScrollingFrame.Card.BackgroundInsert.UICorner
LMG2L["UICorner_24"] = Instance.new("UICorner", LMG2L["BackgroundInsert_23"]);
LMG2L["UICorner_24"]["CornerRadius"] = UDim.new(0, 5);


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.ScrollingFrame.Card.BackgroundInsert.InsertButton
LMG2L["InsertButton_25"] = Instance.new("TextButton", LMG2L["BackgroundInsert_23"]);
LMG2L["InsertButton_25"]["BorderSizePixel"] = 0;
LMG2L["InsertButton_25"]["TextSize"] = 9;
LMG2L["InsertButton_25"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
LMG2L["InsertButton_25"]["BackgroundColor3"] = Color3.fromRGB(224, 231, 238);
LMG2L["InsertButton_25"]["FontFace"] = Font.new([[rbxasset://fonts/families/Arial.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
LMG2L["InsertButton_25"]["Size"] = UDim2.new(0, 46, 0, 20);
LMG2L["InsertButton_25"]["Text"] = [[INSERT]];
LMG2L["InsertButton_25"]["Name"] = [[InsertButton]];


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.ScrollingFrame.Card.BackgroundInsert.InsertButton.UICorner
LMG2L["UICorner_26"] = Instance.new("UICorner", LMG2L["InsertButton_25"]);
LMG2L["UICorner_26"]["CornerRadius"] = UDim.new(0, 4);


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.ScrollingFrame.Card.BackgroundInsert.InsertButton.UIStroke
LMG2L["UIStroke_27"] = Instance.new("UIStroke", LMG2L["InsertButton_25"]);
LMG2L["UIStroke_27"]["Transparency"] = 0.85;
LMG2L["UIStroke_27"]["Thickness"] = 0.5;


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.ScrollingFrame.Card.UICorner
LMG2L["UICorner_28"] = Instance.new("UICorner", LMG2L["Card_20"]);
LMG2L["UICorner_28"]["CornerRadius"] = UDim.new(0, 5);


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.ScrollingFrame.Card.Tag
LMG2L["Tag_29"] = Instance.new("TextLabel", LMG2L["Card_20"]);
LMG2L["Tag_29"]["TextWrapped"] = true;
LMG2L["Tag_29"]["BorderSizePixel"] = 0;
LMG2L["Tag_29"]["TextSize"] = 9;
LMG2L["Tag_29"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
LMG2L["Tag_29"]["FontFace"] = Font.new([[rbxasset://fonts/families/Arial.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
LMG2L["Tag_29"]["TextColor3"] = Color3.fromRGB(224, 231, 238);
LMG2L["Tag_29"]["BackgroundTransparency"] = 1;
LMG2L["Tag_29"]["Size"] = UDim2.new(0, 26, 0, 16);
LMG2L["Tag_29"]["Text"] = [[GET]];
LMG2L["Tag_29"]["Name"] = [[Tag]];
LMG2L["Tag_29"]["Position"] = UDim2.new(0, 5, 0, 5);


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.ScrollingFrame.Card.Tag.UIStroke2
LMG2L["UIStroke2_2a"] = Instance.new("UIStroke", LMG2L["Tag_29"]);
LMG2L["UIStroke2_2a"]["Transparency"] = 0.5;
LMG2L["UIStroke2_2a"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
LMG2L["UIStroke2_2a"]["Name"] = [[UIStroke2]];
LMG2L["UIStroke2_2a"]["Thickness"] = 0.5;
LMG2L["UIStroke2_2a"]["Color"] = Color3.fromRGB(71, 73, 75);


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.ScrollingFrame.Card.Tag.UICorner
LMG2L["UICorner_2b"] = Instance.new("UICorner", LMG2L["Tag_29"]);
LMG2L["UICorner_2b"]["CornerRadius"] = UDim.new(0, 5);


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.ScrollingFrame.Card.Tag.UIStroke
LMG2L["UIStroke_2c"] = Instance.new("UIStroke", LMG2L["Tag_29"]);
LMG2L["UIStroke_2c"]["Transparency"] = 0.85;
LMG2L["UIStroke_2c"]["Color"] = Color3.fromRGB(224, 231, 238);


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.ScrollingFrame.Card.Name
LMG2L["Name_2d"] = Instance.new("TextLabel", LMG2L["Card_20"]);
LMG2L["Name_2d"]["TextWrapped"] = true;
LMG2L["Name_2d"]["BorderSizePixel"] = 0;
LMG2L["Name_2d"]["TextSize"] = 9;
LMG2L["Name_2d"]["TextXAlignment"] = Enum.TextXAlignment.Left;
LMG2L["Name_2d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
LMG2L["Name_2d"]["FontFace"] = Font.new([[rbxasset://fonts/families/Arial.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
LMG2L["Name_2d"]["TextColor3"] = Color3.fromRGB(224, 231, 238);
LMG2L["Name_2d"]["BackgroundTransparency"] = 1;
LMG2L["Name_2d"]["Size"] = UDim2.new(0, 172, 0, 20);
LMG2L["Name_2d"]["Text"] = [[FISHING ROD FISH IT]];
LMG2L["Name_2d"]["Name"] = [[Name]];
LMG2L["Name_2d"]["Position"] = UDim2.new(0, 36, 0, 2);


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.ScrollingFrame.Card.Name.UIStroke
LMG2L["UIStroke_2e"] = Instance.new("UIStroke", LMG2L["Name_2d"]);
LMG2L["UIStroke_2e"]["Transparency"] = 0.85;
LMG2L["UIStroke_2e"]["Color"] = Color3.fromRGB(224, 231, 238);


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.ScrollingFrame.Card.UIStroke
LMG2L["UIStroke_2f"] = Instance.new("UIStroke", LMG2L["Card_20"]);
LMG2L["UIStroke_2f"]["Transparency"] = 0.5;
LMG2L["UIStroke_2f"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
LMG2L["UIStroke_2f"]["Thickness"] = 0.5;
LMG2L["UIStroke_2f"]["Color"] = Color3.fromRGB(71, 73, 75);


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.BackgroundInsert
LMG2L["BackgroundInsert_30"] = Instance.new("Frame", LMG2L["Panel_3"]);
LMG2L["BackgroundInsert_30"]["BorderSizePixel"] = 0;
LMG2L["BackgroundInsert_30"]["BackgroundColor3"] = Color3.fromRGB(127, 131, 135);
LMG2L["BackgroundInsert_30"]["Size"] = UDim2.new(0, 244, 0, 24);
LMG2L["BackgroundInsert_30"]["Position"] = UDim2.new(0, 5, 0, 66);
LMG2L["BackgroundInsert_30"]["Name"] = [[BackgroundInsert]];


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.BackgroundInsert.UICorner
LMG2L["UICorner_31"] = Instance.new("UICorner", LMG2L["BackgroundInsert_30"]);
LMG2L["UICorner_31"]["CornerRadius"] = UDim.new(0, 5);


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.BackgroundInsert.InsertButton
LMG2L["InsertButton_32"] = Instance.new("TextButton", LMG2L["BackgroundInsert_30"]);
LMG2L["InsertButton_32"]["BorderSizePixel"] = 0;
LMG2L["InsertButton_32"]["TextSize"] = 9;
LMG2L["InsertButton_32"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
LMG2L["InsertButton_32"]["BackgroundColor3"] = Color3.fromRGB(224, 231, 238);
LMG2L["InsertButton_32"]["FontFace"] = Font.new([[rbxasset://fonts/families/Arial.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
LMG2L["InsertButton_32"]["Size"] = UDim2.new(0, 244, 0, 22);
LMG2L["InsertButton_32"]["Text"] = [[INSERT MODEL]];
LMG2L["InsertButton_32"]["Name"] = [[InsertButton]];


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.BackgroundInsert.InsertButton.UICorner
LMG2L["UICorner_33"] = Instance.new("UICorner", LMG2L["InsertButton_32"]);
LMG2L["UICorner_33"]["CornerRadius"] = UDim.new(0, 4);


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.BackgroundInsert.InsertButton.UIStroke
LMG2L["UIStroke_34"] = Instance.new("UIStroke", LMG2L["InsertButton_32"]);
LMG2L["UIStroke_34"]["Transparency"] = 0.85;
LMG2L["UIStroke_34"]["Thickness"] = 0.5;


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.RawBox
LMG2L["RawBox_35"] = Instance.new("TextBox", LMG2L["Panel_3"]);
LMG2L["RawBox_35"]["Name"] = [[RawBox]];
LMG2L["RawBox_35"]["BorderSizePixel"] = 0;
LMG2L["RawBox_35"]["TextTruncate"] = Enum.TextTruncate.AtEnd;
LMG2L["RawBox_35"]["TextTransparency"] = 0.5;
LMG2L["RawBox_35"]["TextSize"] = 10;
LMG2L["RawBox_35"]["TextColor3"] = Color3.fromRGB(224, 231, 238);
LMG2L["RawBox_35"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
LMG2L["RawBox_35"]["FontFace"] = Font.new([[rbxasset://fonts/families/Arial.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
LMG2L["RawBox_35"]["Size"] = UDim2.new(0, 270, 0, 30);
LMG2L["RawBox_35"]["Position"] = UDim2.new(0, 5, 0, 31);
LMG2L["RawBox_35"]["Text"] = [[Paste Raw Link model...]];
LMG2L["RawBox_35"]["BackgroundTransparency"] = 1;


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.RawBox.UIStroke
LMG2L["UIStroke_36"] = Instance.new("UIStroke", LMG2L["RawBox_35"]);
LMG2L["UIStroke_36"]["Transparency"] = 0.5;
LMG2L["UIStroke_36"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
LMG2L["UIStroke_36"]["Thickness"] = 0.5;
LMG2L["UIStroke_36"]["Color"] = Color3.fromRGB(71, 73, 75);


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.RawBox.IconRaw
LMG2L["IconRaw_37"] = Instance.new("ImageLabel", LMG2L["RawBox_35"]);
LMG2L["IconRaw_37"]["BorderSizePixel"] = 0;
LMG2L["IconRaw_37"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
-- LMG2L["IconRaw_37"]["ImageContent"] = ;
LMG2L["IconRaw_37"]["ImageColor3"] = Color3.fromRGB(224, 231, 238);
LMG2L["IconRaw_37"]["Image"] = [[rbxassetid://86309956430067]];
LMG2L["IconRaw_37"]["Size"] = UDim2.new(0, 14, 0, 14);
LMG2L["IconRaw_37"]["BackgroundTransparency"] = 1;
LMG2L["IconRaw_37"]["Name"] = [[IconRaw]];
LMG2L["IconRaw_37"]["Position"] = UDim2.new(0, 4, 0, 8);


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.RawBox.UICorner
LMG2L["UICorner_38"] = Instance.new("UICorner", LMG2L["RawBox_35"]);
LMG2L["UICorner_38"]["CornerRadius"] = UDim.new(0, 5);


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.RawBox.UIStroke2
LMG2L["UIStroke2_39"] = Instance.new("UIStroke", LMG2L["RawBox_35"]);
LMG2L["UIStroke2_39"]["Transparency"] = 0.85;
LMG2L["UIStroke2_39"]["Name"] = [[UIStroke2]];
LMG2L["UIStroke2_39"]["Color"] = Color3.fromRGB(224, 231, 238);


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.BackgroundUploud
LMG2L["BackgroundUploud_3a"] = Instance.new("Frame", LMG2L["Panel_3"]);
LMG2L["BackgroundUploud_3a"]["BorderSizePixel"] = 0;
LMG2L["BackgroundUploud_3a"]["BackgroundColor3"] = Color3.fromRGB(127, 131, 135);
LMG2L["BackgroundUploud_3a"]["Size"] = UDim2.new(0, 24, 0, 24);
LMG2L["BackgroundUploud_3a"]["Position"] = UDim2.new(0, 252, 0, 66);
LMG2L["BackgroundUploud_3a"]["Name"] = [[BackgroundUploud]];


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.BackgroundUploud.UploadButton
LMG2L["UploadButton_3b"] = Instance.new("TextButton", LMG2L["BackgroundUploud_3a"]);
LMG2L["UploadButton_3b"]["BorderSizePixel"] = 0;
LMG2L["UploadButton_3b"]["TextSize"] = 9;
LMG2L["UploadButton_3b"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
LMG2L["UploadButton_3b"]["BackgroundColor3"] = Color3.fromRGB(224, 231, 238);
LMG2L["UploadButton_3b"]["FontFace"] = Font.new([[rbxasset://fonts/families/Arial.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
LMG2L["UploadButton_3b"]["Size"] = UDim2.new(0, 24, 0, 22);
LMG2L["UploadButton_3b"]["Text"] = [[]];
LMG2L["UploadButton_3b"]["Name"] = [[UploadButton]];


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.BackgroundUploud.UploadButton.UICorner
LMG2L["UICorner_3c"] = Instance.new("UICorner", LMG2L["UploadButton_3b"]);
LMG2L["UICorner_3c"]["CornerRadius"] = UDim.new(0, 4);


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.BackgroundUploud.UploadButton.UIStroke
LMG2L["UIStroke_3d"] = Instance.new("UIStroke", LMG2L["UploadButton_3b"]);
LMG2L["UIStroke_3d"]["Transparency"] = 0.85;
LMG2L["UIStroke_3d"]["Thickness"] = 0.5;


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.BackgroundUploud.IconUploud
LMG2L["IconUploud_3e"] = Instance.new("ImageLabel", LMG2L["BackgroundUploud_3a"]);
LMG2L["IconUploud_3e"]["BorderSizePixel"] = 0;
LMG2L["IconUploud_3e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
-- LMG2L["IconUploud_3e"]["ImageContent"] = ;
LMG2L["IconUploud_3e"]["ImageColor3"] = Color3.fromRGB(0, 0, 0);
LMG2L["IconUploud_3e"]["Image"] = [[rbxassetid://92075517294398]];
LMG2L["IconUploud_3e"]["Size"] = UDim2.new(0, 16, 0, 16);
LMG2L["IconUploud_3e"]["BackgroundTransparency"] = 1;
LMG2L["IconUploud_3e"]["Name"] = [[IconUploud]];
LMG2L["IconUploud_3e"]["Position"] = UDim2.new(0, 4, 0, 3);


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.BackgroundUploud.UICorner
LMG2L["UICorner_3f"] = Instance.new("UICorner", LMG2L["BackgroundUploud_3a"]);
LMG2L["UICorner_3f"]["CornerRadius"] = UDim.new(0, 5);


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.Header
LMG2L["Header_40"] = Instance.new("Frame", LMG2L["Panel_3"]);
LMG2L["Header_40"]["ZIndex"] = 3;
LMG2L["Header_40"]["BorderSizePixel"] = 0;
LMG2L["Header_40"]["BackgroundColor3"] = Color3.fromRGB(224, 231, 238);
LMG2L["Header_40"]["Size"] = UDim2.new(0, 280, 0, 26);
LMG2L["Header_40"]["Name"] = [[Header]];


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.Header.UICorner
LMG2L["UICorner_41"] = Instance.new("UICorner", LMG2L["Header_40"]);



-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.Header.Garis
LMG2L["Garis_42"] = Instance.new("Frame", LMG2L["Header_40"]);
LMG2L["Garis_42"]["BorderSizePixel"] = 0;
LMG2L["Garis_42"]["BackgroundColor3"] = Color3.fromRGB(224, 231, 238);
LMG2L["Garis_42"]["Size"] = UDim2.new(0, 280, 0, 8);
LMG2L["Garis_42"]["Position"] = UDim2.new(0, 0, 0, 18);
LMG2L["Garis_42"]["Name"] = [[Garis]];


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.Header.Title
LMG2L["Title_43"] = Instance.new("TextLabel", LMG2L["Header_40"]);
LMG2L["Title_43"]["ZIndex"] = 2;
LMG2L["Title_43"]["BorderSizePixel"] = 0;
LMG2L["Title_43"]["TextSize"] = 12;
LMG2L["Title_43"]["TextXAlignment"] = Enum.TextXAlignment.Left;
LMG2L["Title_43"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
LMG2L["Title_43"]["FontFace"] = Font.new([[rbxasset://fonts/families/Arial.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
LMG2L["Title_43"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
LMG2L["Title_43"]["BackgroundTransparency"] = 1;
LMG2L["Title_43"]["Size"] = UDim2.new(0, 134, 0, 26);
LMG2L["Title_43"]["Text"] = [[NARAKU • IMPORT FILE]];
LMG2L["Title_43"]["Name"] = [[Title]];
LMG2L["Title_43"]["Position"] = UDim2.new(0, 26, 0, 0);


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.Header.Title.UIStroke
LMG2L["UIStroke_44"] = Instance.new("UIStroke", LMG2L["Title_43"]);
LMG2L["UIStroke_44"]["Transparency"] = 0.87;


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.Header.CloseButton
LMG2L["CloseButton_45"] = Instance.new("ImageButton", LMG2L["Header_40"]);
LMG2L["CloseButton_45"]["BorderSizePixel"] = 0;
LMG2L["CloseButton_45"]["BackgroundTransparency"] = 1;
-- LMG2L["CloseButton_45"]["ImageContent"] = ;
LMG2L["CloseButton_45"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
LMG2L["CloseButton_45"]["ImageColor3"] = Color3.fromRGB(0, 0, 0);
LMG2L["CloseButton_45"]["ZIndex"] = 2;
LMG2L["CloseButton_45"]["Image"] = [[rbxassetid://75539660682193]];
LMG2L["CloseButton_45"]["Size"] = UDim2.new(0, 16, 0, 16);
LMG2L["CloseButton_45"]["Name"] = [[CloseButton]];
LMG2L["CloseButton_45"]["Position"] = UDim2.new(0, 260, 0, 6);


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.NarakuPlugin.Panel.Header.Logo
LMG2L["Logo_46"] = Instance.new("ImageLabel", LMG2L["Header_40"]);
LMG2L["Logo_46"]["ZIndex"] = 2;
LMG2L["Logo_46"]["BorderSizePixel"] = 0;
LMG2L["Logo_46"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
-- LMG2L["Logo_46"]["ImageContent"] = ;
LMG2L["Logo_46"]["ImageColor3"] = Color3.fromRGB(0, 0, 0);
LMG2L["Logo_46"]["Image"] = [[rbxassetid://100744567525223]];
LMG2L["Logo_46"]["Size"] = UDim2.new(0, 18, 0, 18);
LMG2L["Logo_46"]["BackgroundTransparency"] = 1;
LMG2L["Logo_46"]["Name"] = [[Logo]];
LMG2L["Logo_46"]["Position"] = UDim2.new(0, 5, 0, 5);

-- ================================================================================
-- NARAKU • IMPORT FILE (FIXED PARSER FOR EXECUTOR / STUDIO LITE)
-- ================================================================================

local Workspace = game:GetService("Workspace")
local InsertService = game:GetService("InsertService")
local HttpService = game:GetService("HttpService")
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local SerializationService = nil

-- Safe Service Resolution for SerializationService
pcall(function()
	SerializationService = game:GetService("SerializationService")
end)

-- Service Mapping Target Parent
local SERVICES = {
	["Workspace"] = Workspace,
	["ServerStorage"] = game:GetService("ServerStorage"),
	["ServerScriptService"] = game:GetService("ServerScriptService"),
	["ReplicatedStorage"] = game:GetService("ReplicatedStorage"),
	["StarterGui"] = game:GetService("StarterGui"),
	["StarterPack"] = game:GetService("StarterPack"),
	["StarterPlayer"] = game:GetService("StarterPlayer"),
	["Lighting"] = game:GetService("Lighting"),
	["SoundService"] = game:GetService("SoundService"),
	["Teams"] = game:GetService("Teams"),
	["MaterialService"] = game:GetService("MaterialService"),
}

-- Multi-executor HTTP Request Resolver
local HTTP_GET_FN = (syn and syn.request) or (http and http.request) or (http_request) or (fluxus and fluxus.request) or request

-- Anti Double Insert Flag
local isInserting = false

-- --------------------------------------------------------------------------------
-- 1. SAFE UI RESOLVER (UNTOUCHED UI HIERARCHY)
-- --------------------------------------------------------------------------------
local function ResolveTargetUI()
	local screenGui = nil

	if script and script.Parent then
		if script.Parent:IsA("ScreenGui") then
			screenGui = script.Parent
		elseif script.Parent.Parent and script.Parent.Parent:IsA("ScreenGui") then
			screenGui = script.Parent.Parent
		end
	end

	if not screenGui then
		local localPlayer = Players.LocalPlayer
		local searchContainers = {}
		
		if localPlayer then
			local pg = localPlayer:FindFirstChildOfClass("PlayerGui")
			if pg then table.insert(searchContainers, pg) end
		end
		
		local successCore, coreGui = pcall(function() return game:GetService("CoreGui") end)
		if successCore and coreGui then table.insert(searchContainers, coreGui) end

		for _, container in ipairs(searchContainers) do
			for _, child in ipairs(container:GetChildren()) do
				if child:IsA("ScreenGui") and child:FindFirstChild("NarakuPlugin") then
					screenGui = child
					break
				end
			end
			if screenGui then break end
		end
	end

	if not screenGui then return nil, nil, nil end

	local narakuPlugin = screenGui:FindFirstChild("NarakuPlugin")
	if not narakuPlugin then return nil, nil, nil end

	local panel = narakuPlugin:FindFirstChild("Panel")
	if not panel then return nil, nil, nil end

	local mainRawBox = panel:FindFirstChild("RawBox")
	local bgInsert = panel:FindFirstChild("BackgroundInsert")
	local mainInsertButton = bgInsert and bgInsert:FindFirstChild("InsertButton") or nil

	return screenGui, mainRawBox, mainInsertButton
end

local ScreenGui, MainRawBox, MainInsertButton = ResolveTargetUI()

-- --------------------------------------------------------------------------------
-- 2. HELPER VALIDASI URL & BINARY HEADER
-- --------------------------------------------------------------------------------
local function ValidateRawUrl(url)
	if not url or type(url) ~= "string" then return nil end
	local cleanUrl = url:match("^%s*(.-)%s*$")
	if cleanUrl == "" then return nil end
	if not (cleanUrl:find("^http://") or cleanUrl:find("^https://")) then return nil end
	return cleanUrl
end

local function ValidateBinaryHeader(data, rawUrl)
	if type(data) ~= "string" or #data < 8 then
		return false, nil, "Empty Response"
	end

	local header = data:sub(1, 8)
	local isBinary = header:find("^<roblox!") ~= nil
	local isXml = header:find("^<%?xml") ~= nil or header:find("^<roblox") ~= nil

	if not (isBinary or isXml) then
		return false, nil, "Invalid Roblox Binary/XML"
	end

	local cleanUrl = rawUrl:lower():split("?")[1]
	local fileType = "RBXM"
	if cleanUrl:sub(-5) == ".rbxl" or (data:find("Workspace") and data:find("Lighting")) then
		fileType = "RBXL"
	end

	return true, fileType, nil
end

-- --------------------------------------------------------------------------------
-- 3. DOWNLOAD RBXM/RBXL
-- --------------------------------------------------------------------------------
local function DownloadRBXM(rawUrl)
	local responseBody = nil

	if HTTP_GET_FN then
		local success, res = pcall(HTTP_GET_FN, { Url = rawUrl, Method = "GET" })
		if success and res then
			if type(res) == "table" and (res.StatusCode == 200 or res.StatusDescription == "OK") then
				responseBody = res.Body
			elseif type(res) == "string" then
				responseBody = res
			end
		end
	elseif game.HttpGet then
		local success, res = pcall(game.HttpGet, game, rawUrl)
		if success then responseBody = res end
	end

	if not responseBody or #responseBody == 0 then
		return nil, "HTTP Error / 404"
	end

	return responseBody, nil
end

-- --------------------------------------------------------------------------------
-- 4. DESERIALIZE ADAPTER (ROBLOX BINARY PARSER)
-- --------------------------------------------------------------------------------
local function LoadRBXMFromRaw(rawData, rawUrl, fileType)
	local rootContainer = Instance.new("Folder")
	rootContainer.Name = "ImportRoot"

	-- Method 1: SerializationService (Official / Engine Supported)
	if SerializationService and SerializationService.DeserializeInstancesAsync then
		local successSer, instances = pcall(function()
			return SerializationService:DeserializeInstancesAsync(rawData)
		end)
		if successSer and type(instances) == "table" and #instances > 0 then
			for _, inst in ipairs(instances) do
				inst.Parent = rootContainer
			end
			return rootContainer, nil
		end
	end

	-- Method 2: Custom Executor `deserialize()` Function
	if deserialize then
		local successCustom, result = pcall(deserialize, rawData)
		if successCustom and result then
			if type(result) == "table" then
				for _, inst in ipairs(result) do inst.Parent = rootContainer end
			elseif typeof(result) == "Instance" then
				result.Parent = rootContainer
			end
			return rootContainer, nil
		end
	end

	-- Method 3: File-System Bridge (Fallback for File I/O supported Executors)
	if writefile and (getcustomasset or (InsertService and InsertService.LoadLocalAsset)) then
		local ext = (fileType == "RBXL") and ".rbxl" or ".rbxm"
		local tempFileName = "naraku_temp_" .. HttpService:GenerateGUID(false) .. ext
		pcall(writefile, tempFileName, rawData)

		if getcustomasset then
			local successAsset, assetId = pcall(getcustomasset, tempFileName)
			if successAsset and assetId then
				local successObjects, objects = pcall(game.GetObjects, game, assetId)
				if successObjects and type(objects) == "table" and #objects > 0 then
					for _, obj in ipairs(objects) do
						obj.Parent = rootContainer
					end
					if delfile then pcall(delfile, tempFileName) end
					return rootContainer, nil
				end
			end
		end

		if InsertService and InsertService.LoadLocalAsset then
			local successLoad, result = pcall(function()
				return InsertService:LoadLocalAsset(tempFileName)
			end)
			if successLoad and result then
				if delfile then pcall(delfile, tempFileName) end
				return result, nil
			end
		end

		if delfile then pcall(delfile, tempFileName) end
	end

	-- Final Failure State
	rootContainer:Destroy()
	return nil, "Deserializer Unavailable"
end

-- --------------------------------------------------------------------------------
-- 5. WORKSPACE POSITIONING
-- --------------------------------------------------------------------------------
local function PositionWorkspaceObject(instance)
	local camera = Workspace.CurrentCamera
	local targetCFrame = camera and (camera.CFrame * CFrame.new(0, 0, -20)) or CFrame.new(0, 5, 0)

	if instance:IsA("Model") then
		if instance.PrimaryPart or instance:FindFirstChildWhichIsA("BasePart", true) then
			instance:PivotTo(targetCFrame)
		end
	elseif instance:IsA("BasePart") then
		instance.CFrame = targetCFrame
	end
end

-- --------------------------------------------------------------------------------
-- 6. HIERARCHY DISTRIBUTION & CLIENT/SERVER SAFETY
-- --------------------------------------------------------------------------------
local function InsertLoadedHierarchy(rootContainer)
	local children = rootContainer:GetChildren()
	local containsServerContent = false
	local isClientContext = RunService:IsClient()

	for _, child in ipairs(children) do
		local name = child.Name

		-- Flag Server-side Script instances
		if child:IsA("Script") and not child:IsA("LocalScript") and not child:IsA("ModuleScript") then
			containsServerContent = true
		end

		if SERVICES[name] then
			local targetService = SERVICES[name]
			if name == "ServerScriptService" or name == "ServerStorage" then
				containsServerContent = true
			end

			for _, subChild in ipairs(child:GetChildren()) do
				subChild.Parent = targetService
			end
			child:Destroy()
		elseif name == "StarterPlayer" then
			local spScripts = child:FindFirstChild("StarterPlayerScripts")
			local scScripts = child:FindFirstChild("StarterCharacterScripts")
			local starterPlayer = game:GetService("StarterPlayer")

			if spScripts then
				for _, item in ipairs(spScripts:GetChildren()) do
					item.Parent = starterPlayer:FindFirstChildOfClass("StarterPlayerScripts") or starterPlayer
				end
			end
			if scScripts then
				for _, item in ipairs(scScripts:GetChildren()) do
					item.Parent = starterPlayer:FindFirstChildOfClass("StarterCharacterScripts") or starterPlayer
				end
			end
			child:Destroy()
		else
			if child:IsA("Model") or child:IsA("BasePart") then
				PositionWorkspaceObject(child)
			end
			child.Parent = Workspace
		end
	end

	rootContainer:Destroy()
	return isClientContext and containsServerContent
end

-- --------------------------------------------------------------------------------
-- 7. FUNCTION UTAMA: InsertFileFromRaw
-- --------------------------------------------------------------------------------
local function InsertFileFromRaw(rawUrl, statusTargetBtn)
	if isInserting then return end
	isInserting = true

	local btnTextObj = statusTargetBtn and (statusTargetBtn:FindFirstChildOfClass("TextLabel") or statusTargetBtn)
	local originalText = (btnTextObj and (btnTextObj:IsA("TextLabel") or btnTextObj:IsA("TextButton"))) and btnTextObj.Text or "INSERT MODEL"

	local function SetStatus(msg)
		if btnTextObj and (btnTextObj:IsA("TextLabel") or btnTextObj:IsA("TextButton")) then
			btnTextObj.Text = msg
		end
	end

	-- 1. Validasi URL
	local cleanUrl = ValidateRawUrl(rawUrl)
	if not cleanUrl then
		SetStatus("Invalid Raw Link")
		task.wait(1.5)
		SetStatus(originalText)
		isInserting = false
		return
	end

	-- 2. Download Data
	SetStatus("Downloading...")
	local rawData, errDownload = DownloadRBXM(cleanUrl)
	if errDownload then
		SetStatus(errDownload)
		task.wait(1.5)
		SetStatus(originalText)
		isInserting = false
		return
	end

	-- 3. Header & Format Validation
	local isValid, fileType, valErr = ValidateBinaryHeader(rawData, cleanUrl)
	if not isValid then
		SetStatus(valErr or "Invalid Binary")
		task.wait(1.5)
		SetStatus(originalText)
		isInserting = false
		return
	end

	-- 4. Load & Deserialize
	SetStatus("Loading " .. fileType .. "...")
	local rootContainer, errLoad = LoadRBXMFromRaw(rawData, cleanUrl, fileType)
	if errLoad then
		SetStatus(errLoad)
		task.wait(1.5)
		SetStatus(originalText)
		isInserting = false
		return
	end

	-- 5. Insert & Distribute Hierarchy
	SetStatus("Inserting...")
	local serverWarning = false
	local distSuccess, distErr = pcall(function()
		serverWarning = InsertLoadedHierarchy(rootContainer)
	end)

	if not distSuccess then
		if rootContainer then rootContainer:Destroy() end
		SetStatus("Insert Failed")
		task.wait(1.5)
		SetStatus(originalText)
		isInserting = false
		return
	end

	-- 6. Success & Context Warnings
	if serverWarning then
		SetStatus("Client Only (No Server)")
	else
		SetStatus("Berhasil!")
	end

	task.wait(2.0)
	SetStatus(originalText)
	isInserting = false
end

-- --------------------------------------------------------------------------------
-- 8. EVENT UTAMA: Panel.BackgroundInsert.InsertButton
-- --------------------------------------------------------------------------------
if MainInsertButton and MainRawBox then
	MainInsertButton.MouseButton1Click:Connect(function()
		local rawUrlInput = MainRawBox.Text
		InsertFileFromRaw(rawUrlInput, MainInsertButton)
	end)
end

return LMG2L["ScreenGui_1"], require;
