local Ophyn = loadstring(game:HttpGet("https://ophyn.space/interface"))()

Ophyn.new({
    -- Window
    Title = "Nars Edv",
    Description = "Verify Access Plugin",
    Logo = "rbxassetid://122926744824622",
    Theme = "Dark",
    Folder = "Nars-Plugin",

    -- Buttons
    getkey = false,

    -- Intro
    Intro = true,
    startintro_size = 80,
    squareintro_time = 1,

    -- Appearance
    Changelogocolor = false,
    Changeiconscolor = true,
    NotifStyle = "2",

    -- Links
    discord_link = "https://discord.gg/byB7wCTKM",

    -- Cards
    Discord = true,

    -- Games
    SupportedGames = {
        [10959918411] = true,
    },

    -- Key System
    KeySystem = {
        Key = {"NARS-ACCESS-PLUGIN"},
        SaveKey = true,
    },

    -- Script
    Callback = function(key)
        loadstring(game:HttpGet( "https://raw.githubusercontent.com/narakuhub/plugin-tools/refs/heads/main/source.lua"
        ))()
    end,
})
