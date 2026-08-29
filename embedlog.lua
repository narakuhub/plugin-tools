local HttpService = game:GetService("HttpService")
local MarketplaceService = game:GetService("MarketplaceService")

-- Ganti TOKEN dengan milikmu (Jangan hapus "Bearer ")
local GITHUB_TOKEN = "Bearer "

-- Fungsi Generate Random Session ID (#8FA92X)
local function generateSessionID()
    local chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
    local result = "#"
    for i = 1, 6 do
        local rand = math.random(1, #chars)
        result = result .. string.sub(chars, rand, rand)
    end
    return result
end

-- Ambil Nama Map
local mapName = "Studio Ringan"
pcall(function()
    local productInfo = MarketplaceService:GetProductInfo(game.PlaceId)
    if productInfo and productInfo.Name then
        mapName = productInfo.Name
    end
end)

-- Kirim Log
pcall(function()
    local payload = HttpService:JSONEncode({
        event_type = "send_log",
        client_payload = {
            session_id = generateSessionID(),
            script_status = "Active",
            exec_status = "Sukses \226\156\147", -- Kode UTF-8 untuk tanda Centang (✓)
            mapname = mapName,
            placeid = tostring(game.PlaceId),
            status = "ONLINE"
        }
    })

    HttpService:RequestAsync({
        Url = "https://api.github.com/repos/narsendeavor/nars-log/dispatches",
        Method = "POST",
        Headers = {
            ["Authorization"] = GITHUB_TOKEN,
            ["Content-Type"] = "application/json",
            ["User-Agent"] = "RobloxApp"
        },
        Body = payload
    })
end)

-- Loader Script Utama
loadstring(game:HttpGet("https://raw.githubusercontent.com/narsendeavor/plugin/refs/heads/main/loader.lua"))()
