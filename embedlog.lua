-- =================================================================
-- KONFIGURASI WEBHOOK, MAP LOCK, & ICON
-- =================================================================
local ALLOWED_PLACE_ID = 10959918411 -- Lock eksekusi hanya untuk map ini

-- Hentikan seluruh proses jika dieksekusi di luar map yang diizinkan
if game.PlaceId ~= ALLOWED_PLACE_ID then return end

local WEBHOOK_URL = ""
local ICON_URL = "https://imgbs.com/uploads/naraku-d9d0732d.png"

-- File lokal untuk menyimpan ID pesan Embed Global
local GLOBAL_MSG_FILE = "naraku_global_msg.json"

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

-- 4. Manajemen Global Storage & Update Webhook Single Embed
local function processGlobalWebhook()
    local currentDateWIB = os.date("!%Y-%m-%d", os.time() + (7 * 3600))
    local globalData = { messageId = nil }

    -- Baca Message ID Global
    pcall(function()
        if isfile and readfile and isfile(GLOBAL_MSG_FILE) then
            local content = readfile(GLOBAL_MSG_FILE)
            local parsed = HttpService:JSONDecode(content)
            if typeof(parsed) == "table" and parsed.messageId then
                globalData.messageId = parsed.messageId
            end
        end
    end)

    local currentTotalRequests = 0

    -- Jika ID pesan global ada, ambil data angka saat ini dari Discord (GET)
    if globalData.messageId then
        local getRes = pcall(function()
            return http_request({
                Url = WEBHOOK_URL .. "/messages/" .. globalData.messageId,
                Method = "GET"
            })
        end)

        if getRes and type(getRes) == "table" and getRes.Body then
            pcall(function()
                local msgObj = HttpService:JSONDecode(getRes.Body)
                if msgObj and msgObj.embeds and msgObj.embeds[1] and msgObj.embeds[1].fields then
                    for _, field in ipairs(msgObj.embeds[1].fields) do
                        if field.name == "System Stats" then
                            local reqMatch = field.value:match("Total Requests%s*:%s*(%d+)")
                            if reqMatch then
                                currentTotalRequests = tonumber(reqMatch) or 0
                            end
                        end
                    end
                end
            end)
        end
    end

    -- Tambah 1 hit ke Total Requests Global
    currentTotalRequests = currentTotalRequests + 1

    -- Build Embed Data Baru dengan angka yang sudah ter-increment
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
                ["value"] = string.format("```ansi\nStatus          : \u{001b}[32mONLINE\n\u{001b}[33mTotal Requests  : %d\nExecuted Date   : %s```", currentTotalRequests, currentDateWIB),
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

    -- Kirimkan PATCH (Update pesan yang sama) atau POST (Jka pesan belum ada)
    local targetUrl = WEBHOOK_URL
    local httpMethod = "POST"

    if globalData.messageId then
        targetUrl = WEBHOOK_URL .. "/messages/" .. globalData.messageId
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

        -- Jika PATCH gagal (pesan terhapus di Discord), reset dan POST ulang
        if httpMethod == "PATCH" and code == 404 then
            globalData.messageId = nil
            if writefile then pcall(function() writefile(GLOBAL_MSG_FILE, HttpService:JSONEncode(globalData)) end) end
            processGlobalWebhook()
            return
        end

        -- Simpan ID pesan jika POST baru dibuat
        if (code == 200 or code == 201) and not globalData.messageId then
            pcall(function()
                local resData = HttpService:JSONDecode(response.Body)
                if resData and resData.id then
                    globalData.messageId = resData.id
                    if writefile then
                        writefile(GLOBAL_MSG_FILE, HttpService:JSONEncode(globalData))
                    end
                end
            end)
        end
    end
end

-- Jalankan eksekusi webhook global
task.spawn(processGlobalWebhook)
