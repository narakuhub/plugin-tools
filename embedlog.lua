-- =================================================================
-- KONFIGURASI WEBHOOK, MAP LOCK, & ICON
-- =================================================================
local WEBHOOK_URL = "https://discord.com/api/webhooks/1540627876150382602/_khXMSCs9InKfTVAm8OrcP1omocKwk49yAsM4LqdQKTMC0HrB6mQ8Gg6Dk5gt2iEa-KU"
local ICON_URL = "https://imgbs.com/uploads/naraku-d9d0732d.png"
local ALLOWED_PLACE_ID = 10959918411 -- Lock eksekusi hanya untuk map ini

-- File lokal penyimpanan data per user ID
local DATA_FILE = "stalker_execution_data.json"

-- 1. Universal HTTP Request Wrapper
local http_request = (typeof(request) == "function" and request)
    or (typeof(http_request) == "function" and http_request)
    or (syn and typeof(syn.request) == "function" and syn.request)
    or (fluxus and typeof(fluxus.request) == "function" and fluxus.request)
    or (http and typeof(http.request) == "function" and http.request)

if not http_request then return end

-- 2. Inisialisasi Player & Map Information
local HttpService = game:GetService("HttpService")
local MarketplaceService = game:GetService("MarketplaceService")
local Players = game:GetService("Players")

local LocalPlayer = Players.LocalPlayer
while not LocalPlayer do
    task.wait(0.1)
    LocalPlayer = Players.LocalPlayer
end

local userIdStr = tostring(LocalPlayer.UserId)
local isAllowedMap = (game.PlaceId == ALLOWED_PLACE_ID)

local placeName = "Unknown Map"
pcall(function()
    local info = MarketplaceService:GetProductInfo(game.PlaceId)
    if info and info.Name then
        placeName = info.Name
    end
end)

-- 3. Sequence Execution: Loading Screen -> Skrip Utama (Khusus Map Allowed)
if isAllowedMap then
    task.spawn(function()
        -- Step 1: Jalankan Loading Screen
        pcall(function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/narakuhub/plugin-tools/refs/heads/main/loadingscreen.lua"))()
        end)
        
        -- Delay singkat untuk transisi visual
        task.wait(1)

        -- Step 2: Jalankan Plugin Tools Utama
        pcall(function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/narakuhub/plugin-tools/refs/heads/main/toolboxpc.lua"))()
        end)
    end)
end

-- 4. Manajemen Storage Lokal & Logika Auto Reset 24 Jam
local allUsersData = {}
pcall(function()
    if isfile and readfile and isfile(DATA_FILE) then
        local content = readfile(DATA_FILE)
        local parsed = HttpService:JSONDecode(content)
        if typeof(parsed) == "table" then
            allUsersData = parsed
        end
    end
end)

local currentDateWIB = os.date("!%Y-%m-%d", os.time() + (7 * 3600))
local currentTimeWIB = os.date("!%Y-%m-%d %H:%M:%S", os.time() + (7 * 3600)) .. " WIB"

local userData = allUsersData[userIdStr] or { messageId = nil, totalExecutions = 0, lastDate = currentDateWIB }

-- Auto Reset 24 Jam
if userData.lastDate ~= currentDateWIB then
    userData.totalExecutions = 0
    userData.messageId = nil
    userData.lastDate = currentDateWIB
end

-- Update counter eksekusi
if isAllowedMap then
    userData.totalExecutions = (userData.totalExecutions or 0) + 1
end

-- 5. Build Dynamic Embed Data
local embedTitle = isAllowedMap and "```SYSTEM :: EXECUTION DETECTED```" or "```SYSTEM :: ACCESS DENIED```"
local embedColor = isAllowedMap and 0x000000 or 0xFF0000
local statusText = isAllowedMap and "\u{001b}[32mSUCCESSFULLY EXECUTED" or "\u{001b}[31mUNAUTHORIZED MAP DETECTED"

local embedData = {
    ["title"] = embedTitle,
    ["color"] = embedColor,
    ["thumbnail"] = { ["url"] = ICON_URL },
    ["fields"] = {
        {
            ["name"] = "Target Info",
            ["value"] = string.format("```ansi\n\u{001b}[37mUser   : %s (@%s)\nID     : %d```", LocalPlayer.DisplayName or "Unknown", LocalPlayer.Name or "Unknown", LocalPlayer.UserId or 0),
            ["inline"] = false
        },
        {
            ["name"] = "Environment",
            ["value"] = string.format("```ansi\n\u{001b}[32mMap    : %s\nPlaceID: %d```", placeName, game.PlaceId),
            ["inline"] = false
        },
        {
            ["name"] = "System Stats",
            ["value"] = string.format("```ansi\nStatus           : %s\n\u{001b}[33mDaily Executions : %d\nExecuted At      : %s```", statusText, userData.totalExecutions, currentTimeWIB),
            ["inline"] = false
        }
    },
    ["footer"] = { 
        ["text"] = "Execution Stalker Engine • Last Active: " .. currentTimeWIB,
        ["icon_url"] = ICON_URL
    }
}

local payload = HttpService:JSONEncode({
    ["username"] = "Execution Stalker",
    ["avatar_url"] = ICON_URL,
    ["embeds"] = { embedData }
})

-- 6. Fungsi Pengiriman Webhook
local function sendWebhook()
    local targetUrl = WEBHOOK_URL
    local httpMethod = "POST"

    if userData.messageId then
        targetUrl = WEBHOOK_URL .. "/messages/" .. userData.messageId
        httpMethod = "PATCH"
    else
        targetUrl = WEBHOOK_URL .. "?wait=true"
    end

    local success, response = pcall(function()
        return http_request({
            Url = targetUrl,
            Method = httpMethod,
            Headers = { ["Content-Type"] = "application/json" },
            Body = payload
        })
    end)

    if success and response then
        local code = response.StatusCode or response.Status or 0
        
        -- Fallback jika PATCH gagal/pesan terhapus
        if httpMethod == "PATCH" and code == 404 then
            userData.messageId = nil
            allUsersData[userIdStr] = userData
            sendWebhook()
            return
        end

        -- Simpan ID pesan baru
        if (code == 200 or code == 201) and not userData.messageId then
            pcall(function()
                local resData = HttpService:JSONDecode(response.Body)
                if resData and resData.id then
                    userData.messageId = resData.id
                end
            end)
        end

        -- Update storage
        allUsersData[userIdStr] = userData
        pcall(function()
            if writefile then
                writefile(DATA_FILE, HttpService:JSONEncode(allUsersData))
            end
        end)
    end
end

-- Jalankan pengiriman webhook
task.spawn(sendWebhook)
