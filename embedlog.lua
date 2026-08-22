-- =================================================================
-- KONFIGURASI WEBHOOK, MAP LOCK, & ICON
-- =================================================================
local ALLOWED_PLACE_ID = 10959918411 -- Lock eksekusi hanya untuk map ini

-- Hentikan seluruh proses jika dieksekusi di luar map yang diizinkan
if game.PlaceId ~= ALLOWED_PLACE_ID then return end

local WEBHOOK_URL = "https://discord.com/api/webhooks/1540627876150382602/_khXMSCs9InKfTVAm8OrcP1omocKwk49yAsM4LqdQKTMC0HrB6mQ8Gg6Dk5gt2iEa-KU"
local ICON_URL = "https://imgbs.com/uploads/naraku-d9d0732d.png"

-- File lokal penyimpanan data per user ID
local DATA_FILE = "naraku_execution_data.json"

-- 1. Universal HTTP Request Wrapper
local http_request = (typeof(request) == "function" and request)
    or (typeof(http_request) == "function" and http_request)
    or (syn and typeof(syn.request) == "function" and syn.request)
    or (fluxus and typeof(fluxus.request) == "function" and fluxus.request)
    or (http and typeof(http.request) == "function" and http.request)

if not http_request then return end

-- 2. Inisialisasi Service & Player
local HttpService = game:GetService("HttpService")
local MarketplaceService = game:GetService("MarketplaceService")
local Players = game:GetService("Players")

local LocalPlayer = Players.LocalPlayer
while not LocalPlayer do
    task.wait(0.1)
    LocalPlayer = Players.LocalPlayer
end

local userIdStr = tostring(LocalPlayer.UserId)

local placeName = "Unknown Map"
pcall(function()
    local info = MarketplaceService:GetProductInfo(game.PlaceId)
    if info and info.Name then
        placeName = info.Name
    end
end)

-- 3. Eksekusi Skrip Utama
task.spawn(function()
    pcall(function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/narakuhub/plugin-tools/refs/heads/main/toolboxpc.lua"))()
    end)
end)

-- 4. Manajemen Storage Lokal (Permanen Tanpa Reset)
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
local userData = allUsersData[userIdStr] or { messageId = nil, totalExecutions = 0 }

-- Increment total request eksekusi secara akumulatif/permanen
userData.totalExecutions = (userData.totalExecutions or 0) + 1

-- 5. Build Dynamic Embed Data
local embedData = {
    ["title"] = "```LOG PLUGIN NARAKU```",
    ["color"] = 0x000000,
    ["thumbnail"] = { ["url"] = ICON_URL },
    ["fields"] = {
        {
            ["name"] = "Features List",
            ["value"] = "```ansi\n\u{001b}[32m✓ TOOLBOX PC\n✓ ARCHIMEDES [ UPDATE ]\n✓ AUDIO PLAY\n✓ FLY GUI [ UPDATE ]\n✓ IMPORT FILE [ UPDATE ]```",
            ["inline"] = false
        },
        {
            ["name"] = "Environment",
            ["value"] = string.format("```ansi\n\u{001b}[37mMap    : %s\nPlaceID: %d```", placeName, game.PlaceId),
            ["inline"] = false
        },
        {
            ["name"] = "System Stats",
            ["value"] = string.format("```ansi\nStatus          : \u{001b}[32mONLINE\n\u{001b}[33mTotal Requests  : %d\nExecuted Date   : %s```", userData.totalExecutions, currentDateWIB),
            ["inline"] = false
        }
    },
    ["footer"] = { 
        ["text"] = "Execution Plugin Engine • Date: " .. currentDateWIB,
        ["icon_url"] = ICON_URL
    }
}

local payload = HttpService:JSONEncode({
    ["username"] = "NARAKU LOG",
    ["avatar_url"] = ICON_URL,
    ["embeds"] = { embedData }
})

-- 6. Fungsi Pengiriman Webhook Live Update (POST / PATCH)
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
        
        -- Fallback jika pesan PATCH terhapus di Discord
        if httpMethod == "PATCH" and code == 404 then
            userData.messageId = nil
            allUsersData[userIdStr] = userData
            sendWebhook()
            return
        end

        -- Simpan Message ID pertama kali untuk selalu di-update lewat PATCH
        if (code == 200 or code == 201) and not userData.messageId then
            pcall(function()
                local resData = HttpService:JSONDecode(response.Body)
                if resData and resData.id then
                    userData.messageId = resData.id
                end
            end)
        end

        -- Update penyimpanan lokal
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
