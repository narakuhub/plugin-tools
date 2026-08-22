--[=[
 d888b  db    db d888888b      .d888b.      db      db    db  .d8b.  
88' Y8b 88    88   `88'        VP  `8D      88      88    88 d8' `8b 
88      88    88    88            odD'      88      88    88 88ooo88 
88  ooo 88    88    88          .88'        88      88    88 88~~~88 
88. ~8~ 88b  d88   .88.        j88.         88booo. 88b  d88 88   88    @uniquadev
 Y888P  ~Y8888P' Y888888P      888888D      Y88888P ~Y8888P' YP   YP  CONVERTER 

designed using localmaze gui creator
]=]

-- Instances: 58 | Scripts: 0 | Modules: 0 | Tags: 0
local LMG2L = {};

-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui
LMG2L["ScreenGui_1"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"));
LMG2L["ScreenGui_1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.VerifyNars
LMG2L["VerifyNars_2"] = Instance.new("Folder", LMG2L["ScreenGui_1"]);
LMG2L["VerifyNars_2"]["Name"] = [[VerifyNars]];


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.VerifyNars.Panel
LMG2L["Panel_3"] = Instance.new("Frame", LMG2L["VerifyNars_2"]);
LMG2L["Panel_3"]["BorderSizePixel"] = 0;
LMG2L["Panel_3"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
LMG2L["Panel_3"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
LMG2L["Panel_3"]["Size"] = UDim2.new(0, 330, 0, 230);
LMG2L["Panel_3"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
LMG2L["Panel_3"]["Name"] = [[Panel]];


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.VerifyNars.Panel.Description
LMG2L["Description_4"] = Instance.new("TextLabel", LMG2L["Panel_3"]);
LMG2L["Description_4"]["TextWrapped"] = true;
LMG2L["Description_4"]["ZIndex"] = 2;
LMG2L["Description_4"]["BorderSizePixel"] = 0;
LMG2L["Description_4"]["TextSize"] = 9;
LMG2L["Description_4"]["TextXAlignment"] = Enum.TextXAlignment.Left;
LMG2L["Description_4"]["TextYAlignment"] = Enum.TextYAlignment.Top;
LMG2L["Description_4"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
LMG2L["Description_4"]["FontFace"] = Font.new([[rbxasset://fonts/families/Arial.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
LMG2L["Description_4"]["TextColor3"] = Color3.fromRGB(188, 193, 199);
LMG2L["Description_4"]["BackgroundTransparency"] = 1;
LMG2L["Description_4"]["Size"] = UDim2.new(0, 208, 0, 36);
LMG2L["Description_4"]["Text"] = [[]];
LMG2L["Description_4"]["Name"] = [[Description]];
LMG2L["Description_4"]["Position"] = UDim2.new(0, 86, 0, 46);


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.VerifyNars.Panel.Description.UIStroke
LMG2L["UIStroke_5"] = Instance.new("UIStroke", LMG2L["Description_4"]);
LMG2L["UIStroke_5"]["Transparency"] = 0.87;


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.VerifyNars.Panel.BgVerify
LMG2L["BgVerify_6"] = Instance.new("Frame", LMG2L["Panel_3"]);
LMG2L["BgVerify_6"]["BorderSizePixel"] = 0;
LMG2L["BgVerify_6"]["BackgroundColor3"] = Color3.fromRGB(127, 131, 135);
LMG2L["BgVerify_6"]["Size"] = UDim2.new(0, 245, 0, 28);
LMG2L["BgVerify_6"]["Position"] = UDim2.new(0, 8, 0, 195);
LMG2L["BgVerify_6"]["Name"] = [[BgVerify]];


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.VerifyNars.Panel.BgVerify.UICorner
LMG2L["UICorner_7"] = Instance.new("UICorner", LMG2L["BgVerify_6"]);
LMG2L["UICorner_7"]["CornerRadius"] = UDim.new(0, 5);


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.VerifyNars.Panel.BgVerify.IconVerify
LMG2L["IconVerify_8"] = Instance.new("ImageLabel", LMG2L["BgVerify_6"]);
LMG2L["IconVerify_8"]["ZIndex"] = 2;
LMG2L["IconVerify_8"]["BorderSizePixel"] = 0;
LMG2L["IconVerify_8"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
-- LMG2L["IconVerify_8"]["ImageContent"] = ;
LMG2L["IconVerify_8"]["ImageColor3"] = Color3.fromRGB(0, 0, 0);
LMG2L["IconVerify_8"]["Image"] = [[rbxassetid://107077233630749]];
LMG2L["IconVerify_8"]["Size"] = UDim2.new(0, 18, 0, 18);
LMG2L["IconVerify_8"]["BackgroundTransparency"] = 1;
LMG2L["IconVerify_8"]["Name"] = [[IconVerify]];
LMG2L["IconVerify_8"]["Position"] = UDim2.new(0, 10, 0, 4);


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.VerifyNars.Panel.BgVerify.VerifyButton
LMG2L["VerifyButton_9"] = Instance.new("TextButton", LMG2L["BgVerify_6"]);
LMG2L["VerifyButton_9"]["BorderSizePixel"] = 0;
LMG2L["VerifyButton_9"]["TextSize"] = 11;
LMG2L["VerifyButton_9"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
LMG2L["VerifyButton_9"]["BackgroundColor3"] = Color3.fromRGB(224, 231, 238);
LMG2L["VerifyButton_9"]["FontFace"] = Font.new([[rbxasset://fonts/families/Arial.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
LMG2L["VerifyButton_9"]["Size"] = UDim2.new(0, 245, 0, 26);
LMG2L["VerifyButton_9"]["Text"] = [[VERIFY ACCESS PLUGIN]];
LMG2L["VerifyButton_9"]["Name"] = [[VerifyButton]];


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.VerifyNars.Panel.BgVerify.VerifyButton.UICorner
LMG2L["UICorner_a"] = Instance.new("UICorner", LMG2L["VerifyButton_9"]);
LMG2L["UICorner_a"]["CornerRadius"] = UDim.new(0, 4);


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.VerifyNars.Panel.BgVerify.VerifyButton.UIStroke
LMG2L["UIStroke_b"] = Instance.new("UIStroke", LMG2L["VerifyButton_9"]);
LMG2L["UIStroke_b"]["Transparency"] = 0.85;
LMG2L["UIStroke_b"]["Thickness"] = 0.5;


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.VerifyNars.Panel.UIStroke
LMG2L["UIStroke_c"] = Instance.new("UIStroke", LMG2L["Panel_3"]);
LMG2L["UIStroke_c"]["Transparency"] = 0.95;
LMG2L["UIStroke_c"]["Thickness"] = 2;


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.VerifyNars.Panel.Thumbnail
LMG2L["Thumbnail_d"] = Instance.new("ImageLabel", LMG2L["Panel_3"]);
LMG2L["Thumbnail_d"]["BorderSizePixel"] = 0;
LMG2L["Thumbnail_d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
LMG2L["Thumbnail_d"]["Size"] = UDim2.new(0, 70, 0, 50);
LMG2L["Thumbnail_d"]["BackgroundTransparency"] = 1;
LMG2L["Thumbnail_d"]["Name"] = [[Thumbnail]];
LMG2L["Thumbnail_d"]["Position"] = UDim2.new(0, 8, 0, 32);


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.VerifyNars.Panel.Thumbnail.UIStroke2
LMG2L["UIStroke2_e"] = Instance.new("UIStroke", LMG2L["Thumbnail_d"]);
LMG2L["UIStroke2_e"]["Transparency"] = 0.94;
LMG2L["UIStroke2_e"]["Name"] = [[UIStroke2]];
LMG2L["UIStroke2_e"]["Thickness"] = 2;
LMG2L["UIStroke2_e"]["Color"] = Color3.fromRGB(224, 231, 238);


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.VerifyNars.Panel.Thumbnail.UICorner
LMG2L["UICorner_f"] = Instance.new("UICorner", LMG2L["Thumbnail_d"]);
LMG2L["UICorner_f"]["CornerRadius"] = UDim.new(0, 5);


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.VerifyNars.Panel.Thumbnail.UIStroke
LMG2L["UIStroke_10"] = Instance.new("UIStroke", LMG2L["Thumbnail_d"]);
LMG2L["UIStroke_10"]["Thickness"] = 0.5;
LMG2L["UIStroke_10"]["Color"] = Color3.fromRGB(38, 38, 38);


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.VerifyNars.Panel.UICorner
LMG2L["UICorner_11"] = Instance.new("UICorner", LMG2L["Panel_3"]);



-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.VerifyNars.Panel.CardFrature
LMG2L["CardFrature_12"] = Instance.new("Frame", LMG2L["Panel_3"]);
LMG2L["CardFrature_12"]["BorderSizePixel"] = 0;
LMG2L["CardFrature_12"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
LMG2L["CardFrature_12"]["Size"] = UDim2.new(0, 314, 0, 98);
LMG2L["CardFrature_12"]["Position"] = UDim2.new(0, 8, 0, 90);
LMG2L["CardFrature_12"]["Name"] = [[CardFrature]];


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.VerifyNars.Panel.CardFrature.UIStroke2
LMG2L["UIStroke2_13"] = Instance.new("UIStroke", LMG2L["CardFrature_12"]);
LMG2L["UIStroke2_13"]["Transparency"] = 0.94;
LMG2L["UIStroke2_13"]["Name"] = [[UIStroke2]];
LMG2L["UIStroke2_13"]["Thickness"] = 2;
LMG2L["UIStroke2_13"]["Color"] = Color3.fromRGB(241, 248, 255);


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.VerifyNars.Panel.CardFrature.ScrollingFrame
LMG2L["ScrollingFrame_14"] = Instance.new("ScrollingFrame", LMG2L["CardFrature_12"]);
LMG2L["ScrollingFrame_14"]["BorderSizePixel"] = 0;
LMG2L["ScrollingFrame_14"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
LMG2L["ScrollingFrame_14"]["Size"] = UDim2.new(0, 314, 0, 68);
LMG2L["ScrollingFrame_14"]["Position"] = UDim2.new(0, 0, 0, 26);
LMG2L["ScrollingFrame_14"]["ScrollBarThickness"] = 4;
LMG2L["ScrollingFrame_14"]["BackgroundTransparency"] = 1;


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.VerifyNars.Panel.CardFrature.ScrollingFrame.UIPadding
LMG2L["UIPadding_15"] = Instance.new("UIPadding", LMG2L["ScrollingFrame_14"]);
LMG2L["UIPadding_15"]["PaddingTop"] = UDim.new(0, 1);
LMG2L["UIPadding_15"]["PaddingRight"] = UDim.new(0, 5);
LMG2L["UIPadding_15"]["PaddingLeft"] = UDim.new(0, 5);
LMG2L["UIPadding_15"]["PaddingBottom"] = UDim.new(0, 5);


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.VerifyNars.Panel.CardFrature.ScrollingFrame.UIListLayout
LMG2L["UIListLayout_16"] = Instance.new("UIListLayout", LMG2L["ScrollingFrame_14"]);
LMG2L["UIListLayout_16"]["Padding"] = UDim.new(0, 5);


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.VerifyNars.Panel.CardFrature.ScrollingFrame.Card
LMG2L["Card_17"] = Instance.new("Frame", LMG2L["ScrollingFrame_14"]);
LMG2L["Card_17"]["BorderSizePixel"] = 0;
LMG2L["Card_17"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
LMG2L["Card_17"]["Size"] = UDim2.new(0, 304, 0, 28);
LMG2L["Card_17"]["Name"] = [[Card]];


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.VerifyNars.Panel.CardFrature.ScrollingFrame.Card.Path
LMG2L["Path_18"] = Instance.new("TextLabel", LMG2L["Card_17"]);
LMG2L["Path_18"]["TextTruncate"] = Enum.TextTruncate.AtEnd;
LMG2L["Path_18"]["ZIndex"] = 2;
LMG2L["Path_18"]["BorderSizePixel"] = 0;
LMG2L["Path_18"]["TextSize"] = 9;
LMG2L["Path_18"]["TextXAlignment"] = Enum.TextXAlignment.Left;
LMG2L["Path_18"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
LMG2L["Path_18"]["FontFace"] = Font.new([[rbxasset://fonts/families/Arial.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
LMG2L["Path_18"]["TextColor3"] = Color3.fromRGB(196, 202, 208);
LMG2L["Path_18"]["BackgroundTransparency"] = 1;
LMG2L["Path_18"]["Size"] = UDim2.new(0, 108, 0, 14);
LMG2L["Path_18"]["Text"] = [[]];
LMG2L["Path_18"]["Name"] = [[Path]];
LMG2L["Path_18"]["Position"] = UDim2.new(0, 190, 0, 7);


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.VerifyNars.Panel.CardFrature.ScrollingFrame.Card.Path.UIStroke
LMG2L["UIStroke_19"] = Instance.new("UIStroke", LMG2L["Path_18"]);
LMG2L["UIStroke_19"]["Transparency"] = 0.87;


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.VerifyNars.Panel.CardFrature.ScrollingFrame.Card.UICorner
LMG2L["UICorner_1a"] = Instance.new("UICorner", LMG2L["Card_17"]);
LMG2L["UICorner_1a"]["CornerRadius"] = UDim.new(0, 5);


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.VerifyNars.Panel.CardFrature.ScrollingFrame.Card.Tag
LMG2L["Tag_1b"] = Instance.new("TextLabel", LMG2L["Card_17"]);
LMG2L["Tag_1b"]["ZIndex"] = 2;
LMG2L["Tag_1b"]["BorderSizePixel"] = 0;
LMG2L["Tag_1b"]["TextSize"] = 9;
LMG2L["Tag_1b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
LMG2L["Tag_1b"]["FontFace"] = Font.new([[rbxasset://fonts/families/Arial.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
LMG2L["Tag_1b"]["TextColor3"] = Color3.fromRGB(147, 152, 156);
LMG2L["Tag_1b"]["BackgroundTransparency"] = 1;
LMG2L["Tag_1b"]["Size"] = UDim2.new(0, 22, 0, 14);
LMG2L["Tag_1b"]["Text"] = [[GET]];
LMG2L["Tag_1b"]["Name"] = [[Tag]];
LMG2L["Tag_1b"]["Position"] = UDim2.new(0, 164, 0, 7);


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.VerifyNars.Panel.CardFrature.ScrollingFrame.Card.Tag.UIStroke
LMG2L["UIStroke_1c"] = Instance.new("UIStroke", LMG2L["Tag_1b"]);
LMG2L["UIStroke_1c"]["Transparency"] = 0.87;


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.VerifyNars.Panel.CardFrature.ScrollingFrame.Card.Name
LMG2L["Name_1d"] = Instance.new("TextLabel", LMG2L["Card_17"]);
LMG2L["Name_1d"]["ZIndex"] = 2;
LMG2L["Name_1d"]["BorderSizePixel"] = 0;
LMG2L["Name_1d"]["TextSize"] = 9;
LMG2L["Name_1d"]["TextXAlignment"] = Enum.TextXAlignment.Left;
LMG2L["Name_1d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
LMG2L["Name_1d"]["FontFace"] = Font.new([[rbxasset://fonts/families/Arial.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
LMG2L["Name_1d"]["TextColor3"] = Color3.fromRGB(224, 231, 238);
LMG2L["Name_1d"]["BackgroundTransparency"] = 1;
LMG2L["Name_1d"]["Size"] = UDim2.new(0, 102, 0, 14);
LMG2L["Name_1d"]["Text"] = [[NAMA FEATURE]];
LMG2L["Name_1d"]["Name"] = [[Name]];
LMG2L["Name_1d"]["Position"] = UDim2.new(0, 28, 0, 7);


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.VerifyNars.Panel.CardFrature.ScrollingFrame.Card.Name.UIStroke
LMG2L["UIStroke_1e"] = Instance.new("UIStroke", LMG2L["Name_1d"]);
LMG2L["UIStroke_1e"]["Transparency"] = 0.87;


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.VerifyNars.Panel.CardFrature.ScrollingFrame.Card.IconFeature
LMG2L["IconFeature_1f"] = Instance.new("ImageLabel", LMG2L["Card_17"]);
LMG2L["IconFeature_1f"]["BorderSizePixel"] = 0;
LMG2L["IconFeature_1f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
-- LMG2L["IconFeature_1f"]["ImageContent"] = ;
LMG2L["IconFeature_1f"]["ImageColor3"] = Color3.fromRGB(224, 231, 238);
LMG2L["IconFeature_1f"]["Image"] = [[rbxassetid://126926348062230]];
LMG2L["IconFeature_1f"]["Size"] = UDim2.new(0, 18, 0, 16);
LMG2L["IconFeature_1f"]["BackgroundTransparency"] = 1;
LMG2L["IconFeature_1f"]["Name"] = [[IconFeature]];
LMG2L["IconFeature_1f"]["Position"] = UDim2.new(0, 5, 0, 6);


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.VerifyNars.Panel.CardFrature.ScrollingFrame.Card.Status
LMG2L["Status_20"] = Instance.new("TextLabel", LMG2L["Card_17"]);
LMG2L["Status_20"]["ZIndex"] = 2;
LMG2L["Status_20"]["BorderSizePixel"] = 0;
LMG2L["Status_20"]["TextSize"] = 9;
LMG2L["Status_20"]["BackgroundColor3"] = Color3.fromRGB(27, 138, 25);
LMG2L["Status_20"]["FontFace"] = Font.new([[rbxasset://fonts/families/Arial.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
LMG2L["Status_20"]["TextColor3"] = Color3.fromRGB(80, 191, 21);
LMG2L["Status_20"]["BackgroundTransparency"] = 0.5;
LMG2L["Status_20"]["Size"] = UDim2.new(0, 24, 0, 14);
LMG2L["Status_20"]["Text"] = [[200]];
LMG2L["Status_20"]["Name"] = [[Status]];
LMG2L["Status_20"]["Position"] = UDim2.new(0, 136, 0, 7);


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.VerifyNars.Panel.CardFrature.ScrollingFrame.Card.Status.UICorner
LMG2L["UICorner_21"] = Instance.new("UICorner", LMG2L["Status_20"]);
LMG2L["UICorner_21"]["CornerRadius"] = UDim.new(0, 4);


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.VerifyNars.Panel.CardFrature.ScrollingFrame.Card.UIStroke
LMG2L["UIStroke_22"] = Instance.new("UIStroke", LMG2L["Card_17"]);
LMG2L["UIStroke_22"]["Thickness"] = 0.5;
LMG2L["UIStroke_22"]["Color"] = Color3.fromRGB(38, 38, 38);


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.VerifyNars.Panel.CardFrature.Garis
LMG2L["Garis_23"] = Instance.new("Frame", LMG2L["CardFrature_12"]);
LMG2L["Garis_23"]["BorderSizePixel"] = 0;
LMG2L["Garis_23"]["BackgroundColor3"] = Color3.fromRGB(38, 38, 38);
LMG2L["Garis_23"]["Size"] = UDim2.new(0, 314, 0, 1);
LMG2L["Garis_23"]["Position"] = UDim2.new(0, 0, 0, 20);
LMG2L["Garis_23"]["Name"] = [[Garis]];


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.VerifyNars.Panel.CardFrature.UICorner
LMG2L["UICorner_24"] = Instance.new("UICorner", LMG2L["CardFrature_12"]);
LMG2L["UICorner_24"]["CornerRadius"] = UDim.new(0, 5);


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.VerifyNars.Panel.CardFrature.Title
LMG2L["Title_25"] = Instance.new("TextLabel", LMG2L["CardFrature_12"]);
LMG2L["Title_25"]["ZIndex"] = 2;
LMG2L["Title_25"]["BorderSizePixel"] = 0;
LMG2L["Title_25"]["TextSize"] = 9;
LMG2L["Title_25"]["TextXAlignment"] = Enum.TextXAlignment.Left;
LMG2L["Title_25"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
LMG2L["Title_25"]["FontFace"] = Font.new([[rbxasset://fonts/families/Arial.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
LMG2L["Title_25"]["TextColor3"] = Color3.fromRGB(224, 231, 238);
LMG2L["Title_25"]["BackgroundTransparency"] = 1;
LMG2L["Title_25"]["Size"] = UDim2.new(0, 134, 0, 14);
LMG2L["Title_25"]["Text"] = [[FEATURE]];
LMG2L["Title_25"]["Name"] = [[Title]];
LMG2L["Title_25"]["Position"] = UDim2.new(0, 6, 0, 2);


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.VerifyNars.Panel.CardFrature.Title.UIStroke
LMG2L["UIStroke_26"] = Instance.new("UIStroke", LMG2L["Title_25"]);
LMG2L["UIStroke_26"]["Transparency"] = 0.87;


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.VerifyNars.Panel.CardFrature.IconList
LMG2L["IconList_27"] = Instance.new("ImageLabel", LMG2L["CardFrature_12"]);
LMG2L["IconList_27"]["BorderSizePixel"] = 0;
LMG2L["IconList_27"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
-- LMG2L["IconList_27"]["ImageContent"] = ;
LMG2L["IconList_27"]["ImageColor3"] = Color3.fromRGB(224, 231, 238);
LMG2L["IconList_27"]["Image"] = [[rbxassetid://96841053672327]];
LMG2L["IconList_27"]["Size"] = UDim2.new(0, 18, 0, 16);
LMG2L["IconList_27"]["BackgroundTransparency"] = 1;
LMG2L["IconList_27"]["Name"] = [[IconList]];
LMG2L["IconList_27"]["Position"] = UDim2.new(0, 293, 0, 2);


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.VerifyNars.Panel.CardFrature.UIStroke
LMG2L["UIStroke_28"] = Instance.new("UIStroke", LMG2L["CardFrature_12"]);
LMG2L["UIStroke_28"]["Thickness"] = 0.5;
LMG2L["UIStroke_28"]["Color"] = Color3.fromRGB(38, 38, 38);


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.VerifyNars.Panel.Header
LMG2L["Header_29"] = Instance.new("Frame", LMG2L["Panel_3"]);
LMG2L["Header_29"]["ZIndex"] = 3;
LMG2L["Header_29"]["BorderSizePixel"] = 0;
LMG2L["Header_29"]["BackgroundColor3"] = Color3.fromRGB(224, 231, 238);
LMG2L["Header_29"]["Size"] = UDim2.new(0, 330, 0, 26);
LMG2L["Header_29"]["Name"] = [[Header]];


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.VerifyNars.Panel.Header.UICorner
LMG2L["UICorner_2a"] = Instance.new("UICorner", LMG2L["Header_29"]);



-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.VerifyNars.Panel.Header.Garis
LMG2L["Garis_2b"] = Instance.new("Frame", LMG2L["Header_29"]);
LMG2L["Garis_2b"]["BorderSizePixel"] = 0;
LMG2L["Garis_2b"]["BackgroundColor3"] = Color3.fromRGB(224, 231, 238);
LMG2L["Garis_2b"]["Size"] = UDim2.new(0, 330, 0, 8);
LMG2L["Garis_2b"]["Position"] = UDim2.new(0, 0, 0, 18);
LMG2L["Garis_2b"]["Name"] = [[Garis]];


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.VerifyNars.Panel.Header.Title
LMG2L["Title_2c"] = Instance.new("TextLabel", LMG2L["Header_29"]);
LMG2L["Title_2c"]["ZIndex"] = 2;
LMG2L["Title_2c"]["BorderSizePixel"] = 0;
LMG2L["Title_2c"]["TextSize"] = 12;
LMG2L["Title_2c"]["TextXAlignment"] = Enum.TextXAlignment.Left;
LMG2L["Title_2c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
LMG2L["Title_2c"]["FontFace"] = Font.new([[rbxasset://fonts/families/Arial.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
LMG2L["Title_2c"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
LMG2L["Title_2c"]["BackgroundTransparency"] = 1;
LMG2L["Title_2c"]["Size"] = UDim2.new(0, 134, 0, 26);
LMG2L["Title_2c"]["Text"] = [[VERIFY ACCESS]];
LMG2L["Title_2c"]["Name"] = [[Title]];
LMG2L["Title_2c"]["Position"] = UDim2.new(0, 26, 0, 0);


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.VerifyNars.Panel.Header.Title.UIStroke
LMG2L["UIStroke_2d"] = Instance.new("UIStroke", LMG2L["Title_2c"]);
LMG2L["UIStroke_2d"]["Transparency"] = 0.87;


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.VerifyNars.Panel.Header.Logo
LMG2L["Logo_2e"] = Instance.new("ImageLabel", LMG2L["Header_29"]);
LMG2L["Logo_2e"]["ZIndex"] = 2;
LMG2L["Logo_2e"]["BorderSizePixel"] = 0;
LMG2L["Logo_2e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
-- LMG2L["Logo_2e"]["ImageContent"] = ;
LMG2L["Logo_2e"]["ImageColor3"] = Color3.fromRGB(0, 0, 0);
LMG2L["Logo_2e"]["Image"] = [[rbxassetid://107077233630749]];
LMG2L["Logo_2e"]["Size"] = UDim2.new(0, 18, 0, 18);
LMG2L["Logo_2e"]["BackgroundTransparency"] = 1;
LMG2L["Logo_2e"]["Name"] = [[Logo]];
LMG2L["Logo_2e"]["Position"] = UDim2.new(0, 5, 0, 5);


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.VerifyNars.Panel.BgGithub
LMG2L["BgGithub_2f"] = Instance.new("Frame", LMG2L["Panel_3"]);
LMG2L["BgGithub_2f"]["BorderSizePixel"] = 0;
LMG2L["BgGithub_2f"]["BackgroundColor3"] = Color3.fromRGB(127, 131, 135);
LMG2L["BgGithub_2f"]["Size"] = UDim2.new(0, 28, 0, 28);
LMG2L["BgGithub_2f"]["Position"] = UDim2.new(0, 260, 0, 196);
LMG2L["BgGithub_2f"]["Name"] = [[BgGithub]];


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.VerifyNars.Panel.BgGithub.UICorner
LMG2L["UICorner_30"] = Instance.new("UICorner", LMG2L["BgGithub_2f"]);
LMG2L["UICorner_30"]["CornerRadius"] = UDim.new(0, 5);


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.VerifyNars.Panel.BgGithub.BgIcon
LMG2L["BgIcon_31"] = Instance.new("Frame", LMG2L["BgGithub_2f"]);
LMG2L["BgIcon_31"]["BorderSizePixel"] = 0;
LMG2L["BgIcon_31"]["BackgroundColor3"] = Color3.fromRGB(224, 231, 238);
LMG2L["BgIcon_31"]["Size"] = UDim2.new(0, 28, 0, 26);
LMG2L["BgIcon_31"]["Name"] = [[BgIcon]];


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.VerifyNars.Panel.BgGithub.BgIcon.UICorner
LMG2L["UICorner_32"] = Instance.new("UICorner", LMG2L["BgIcon_31"]);
LMG2L["UICorner_32"]["CornerRadius"] = UDim.new(0, 4);


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.VerifyNars.Panel.BgGithub.IconGithub
LMG2L["IconGithub_33"] = Instance.new("ImageLabel", LMG2L["BgGithub_2f"]);
LMG2L["IconGithub_33"]["ZIndex"] = 2;
LMG2L["IconGithub_33"]["BorderSizePixel"] = 0;
LMG2L["IconGithub_33"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
-- LMG2L["IconGithub_33"]["ImageContent"] = ;
LMG2L["IconGithub_33"]["ImageColor3"] = Color3.fromRGB(0, 0, 0);
LMG2L["IconGithub_33"]["Image"] = [[rbxassetid://82705201316688]];
LMG2L["IconGithub_33"]["Size"] = UDim2.new(0, 18, 0, 18);
LMG2L["IconGithub_33"]["BackgroundTransparency"] = 1;
LMG2L["IconGithub_33"]["Name"] = [[IconGithub]];
LMG2L["IconGithub_33"]["Position"] = UDim2.new(0, 5, 0, 4);


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.VerifyNars.Panel.Title
LMG2L["Title_34"] = Instance.new("TextLabel", LMG2L["Panel_3"]);
LMG2L["Title_34"]["ZIndex"] = 2;
LMG2L["Title_34"]["BorderSizePixel"] = 0;
LMG2L["Title_34"]["TextSize"] = 10;
LMG2L["Title_34"]["TextXAlignment"] = Enum.TextXAlignment.Left;
LMG2L["Title_34"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
LMG2L["Title_34"]["FontFace"] = Font.new([[rbxasset://fonts/families/Arial.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
LMG2L["Title_34"]["TextColor3"] = Color3.fromRGB(224, 231, 238);
LMG2L["Title_34"]["BackgroundTransparency"] = 1;
LMG2L["Title_34"]["Size"] = UDim2.new(0, 134, 0, 18);
LMG2L["Title_34"]["Text"] = [[NARS' PLUGIN]];
LMG2L["Title_34"]["Name"] = [[Title]];
LMG2L["Title_34"]["Position"] = UDim2.new(0, 86, 0, 30);


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.VerifyNars.Panel.Title.UIStroke
LMG2L["UIStroke_35"] = Instance.new("UIStroke", LMG2L["Title_34"]);
LMG2L["UIStroke_35"]["Transparency"] = 0.87;


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.VerifyNars.Panel.BgLink
LMG2L["BgLink_36"] = Instance.new("Frame", LMG2L["Panel_3"]);
LMG2L["BgLink_36"]["BorderSizePixel"] = 0;
LMG2L["BgLink_36"]["BackgroundColor3"] = Color3.fromRGB(127, 131, 135);
LMG2L["BgLink_36"]["Size"] = UDim2.new(0, 28, 0, 28);
LMG2L["BgLink_36"]["Position"] = UDim2.new(0, 294, 0, 196);
LMG2L["BgLink_36"]["Name"] = [[BgLink]];


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.VerifyNars.Panel.BgLink.UICorner
LMG2L["UICorner_37"] = Instance.new("UICorner", LMG2L["BgLink_36"]);
LMG2L["UICorner_37"]["CornerRadius"] = UDim.new(0, 5);


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.VerifyNars.Panel.BgLink.BgIcon
LMG2L["BgIcon_38"] = Instance.new("Frame", LMG2L["BgLink_36"]);
LMG2L["BgIcon_38"]["BorderSizePixel"] = 0;
LMG2L["BgIcon_38"]["BackgroundColor3"] = Color3.fromRGB(224, 231, 238);
LMG2L["BgIcon_38"]["Size"] = UDim2.new(0, 28, 0, 26);
LMG2L["BgIcon_38"]["Name"] = [[BgIcon]];


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.VerifyNars.Panel.BgLink.BgIcon.UICorner
LMG2L["UICorner_39"] = Instance.new("UICorner", LMG2L["BgIcon_38"]);
LMG2L["UICorner_39"]["CornerRadius"] = UDim.new(0, 4);


-- Players.HYUDGKJHBBNFFXXDHBN.PlayerGui.ScreenGui.VerifyNars.Panel.BgLink.IconLink
LMG2L["IconLink_3a"] = Instance.new("ImageLabel", LMG2L["BgLink_36"]);
LMG2L["IconLink_3a"]["ZIndex"] = 2;
LMG2L["IconLink_3a"]["BorderSizePixel"] = 0;
LMG2L["IconLink_3a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
-- LMG2L["IconLink_3a"]["ImageContent"] = ;
LMG2L["IconLink_3a"]["ImageColor3"] = Color3.fromRGB(0, 0, 0);
LMG2L["IconLink_3a"]["Image"] = [[rbxassetid://86309956430067]];
LMG2L["IconLink_3a"]["Size"] = UDim2.new(0, 18, 0, 18);
LMG2L["IconLink_3a"]["BackgroundTransparency"] = 1;
LMG2L["IconLink_3a"]["Name"] = [[IconLink]];
LMG2L["IconLink_3a"]["Position"] = UDim2.new(0, 5, 0, 4);



return LMG2L["ScreenGui_1"], require;
