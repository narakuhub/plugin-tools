-- ============================================================
-- ROBUST STUDIO LITE ASSET IMPORTER
-- Normal Remote -> PlayerGui -> game:GetObjects -> Hardcoded RBXM
-- Menjaga Model + Script + LocalScript + ModuleScript + descendants
-- ============================================================

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local SerializationService = game:GetService("SerializationService")

local StudioLiteFolder = ReplicatedStorage:WaitForChild("StudioLiteFolder", 3)
local LoadAssetRemote = StudioLiteFolder and StudioLiteFolder:WaitForChild(
    "LoadAssetModelToPlayerGuiServerFunction", 3
)
local ClearAssetRemote = StudioLiteFolder and StudioLiteFolder:WaitForChild(
    "ClearAssetModelToPlayerGuiServerFunction", 3
)

-- ============================================================
-- HARD-CODED RBXM PAYLOAD
-- ============================================================

local HARD_CODED_RBXM = table.concat({
    "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",
    "aXB0R3VpZAEmAAAAezI1QjZFOTJCLUExMDMtNDEwQy05OTk5LTE5NDUwRTA5QjBFRX0qAPAWQkZEM0M4MDctRkRCRS00MzE1LTg3NjgtQkQyRjRFQUM3OEIw",
    "fVBST1C0BgAAyQsAAAAAAADxcgQAAAAGAAAAU291cmNlAaUGAAAtLU1hZGUgYnkgU3RpY2ttYXN0ZXJsdWtlCgoKc3A9c2NyaXB0LlBhcmVudAoKCm51bWJl",
    "cm9mZHVja3M9NwoKCmNoZWNrPXRydWUKZHVja3M9e30KZGVicmlzPWdhbWU6R2V0U2VydmljZSgiRBgA8AQiKQoKZnVuY3Rpb24gY3JlYXRlTwDwBWxpbmco",
    "Zm9sbG93KQoJbG9jYWwgGADwCD1JbnN0YW5jZS5uZXcoIlBhcnQiKQoJGwCDLk5hbWU9IkQ+ABMiFgC2QnJpY2tDb2xvcj0LAAI+AHBDb29sIHllZQAARQAC",
    "ZgAbbWMAsFNwZWNpYWxNZXNoJQAgbS4KAPAfSWQ9Imh0dHA6Ly93d3cucm9ibG94LmNvbS9hc3NldC8/aWQ9MTA0NTAyOTk5IjYAf1RleHR1cmU5ABZBMzI0",
    "NjkA0VNjYWxlPVZlY3RvcjO4AJAxLDEsMSkqLjlYAAKNAVM9ZHVja/EAtFNoYXBlPSJCYWxsBAE/U2l6QwABAzEA9ANUb3BTdXJmYWNlPSJTbW9vdGg4AG9C",
    "b3R0b20dAAQxRnJptgEjPTBIAKBFbGFzdGljaXR5EwACTgHwAnJwPXNwLkhhbmRsZS5Qb3NpMgAYK84A+QNtYXRoLnJhbmRvbSgtNSw1KSwSAB0xEgAAJAAE",
    "8wEwQ0Zy9QECBwABHQElcnAwAhBzewAADwIRU7gCszpjbG9uZSgpCglzwwIDNgH0AXMuRGlzYWJsZWQ9ZmFsc2W8ACtmdAsCsE9iamVjdFZhbHVlCwIjZnRz",
    "AhFGqAJBVGFnIhUAASEAEj29AgERAAmkAQIYASticFwAREJvZHkgAQBdAKxicC5tYXhGb3JjugEQMP0BQTEwXjMlABNwVAExPXJwEAAPbAABH2dsAABBR3ly",
    "b2gAEGdoAFpUb3JxdWkAIDUsaQEEaQAaZzMBAtQDkDpBZGRJdGVtKH4CkCw1KjYwKQoJdEoBcS5pbnNlcnQZACBzLB8ABLIBA6AA8QdnYW1lLldvcmtzcGFj",
    "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",
    "b2Jsb3g+",
})

local function DecodeBase64(s)
    local alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
    local out = {}
    local n = 0
    local bits = 0

    for i = 1, #s do
        local c = s:sub(i, i)
        if c == "=" then
            break
        end

        local v = alphabet:find(c, 1, true)
        if v then
            v -= 1
            n = n * 64 + v
            bits += 6

            if bits >= 8 then
                bits -= 8
                out[#out + 1] = string.char(
                    math.floor(n / 2^bits) % 256
                )
                n %= 2^bits
            end
        end
    end

    return table.concat(out)
end

local function ImportHardcoded(parent)
    parent = parent or workspace

    local ok, result = pcall(function()
        local raw = DecodeBase64(HARD_CODED_RBXM)
        local buf = buffer.fromstring(raw)
        return SerializationService:DeserializeInstancesAsync(buf)
    end)

    if not ok then
        warn("[Asset Import] Hardcoded deserialize failed:", result)
        return false, nil
    end

    local roots = {}

    if typeof(result) == "Instance" then
        roots[1] = result
    elseif type(result) == "table" then
        for _, obj in ipairs(result) do
            if typeof(obj) == "Instance" then
                roots[#roots + 1] = obj
            end
        end
    end

    local count = 0
    for _, obj in ipairs(roots) do
        if obj and obj.Parent == nil then
            obj.Parent = parent
        end
        if obj and obj:IsDescendantOf(parent) then
            count += 1
        end
    end

    return count > 0, roots
end

-- ============================================================
-- VALIDATION
-- ============================================================

local function HasUsefulDescendants(root)
    if not root or not root:IsA("Instance") then
        return false
    end

    local descendants = root:GetDescendants()

    -- Asset kosong = gagal
    if #descendants == 0 and #root:GetChildren() == 0 then
        return false
    end

    return true
end

local function HasScriptDescendant(root)
    if not root or not root:IsA("Instance") then
        return false
    end

    for _, obj in ipairs(root:GetDescendants()) do
        if obj:IsA("Script")
            or obj:IsA("LocalScript")
            or obj:IsA("ModuleScript") then
            return true
        end
    end

    return false
end

local function CountDescendants(root)
    if not root or not root:IsA("Instance") then
        return 0
    end
    return #root:GetDescendants()
end

local function SafeDestroy(obj)
    if obj and obj.Destroy then
        pcall(function()
            obj:Destroy()
        end)
    end
end

-- Memindahkan hasil asset tanpa membuang Script/LocalScript/ModuleScript.
local function MoveAssetContents(root)
    if not root then
        return false
    end

    local moved = false

    if root:IsA("Model")
        or root:IsA("Folder")
        or root:IsA("Tool") then

        for _, child in ipairs(root:GetChildren()) do
            local ok = pcall(function()
                SafeStudioFallback(child)
            end)

            if ok then
                moved = true
            end
        end
    else
        local ok = pcall(function()
            SafeStudioFallback(root)
        end)
        moved = ok
    end

    return moved
end

-- ============================================================
-- game:GetObjects FALLBACK
-- ============================================================

local function TryGetObjects(numericId)
    local ok, result = pcall(function()
        return game:GetObjects("rbxassetid://" .. tostring(numericId))
    end)

    if not ok or type(result) ~= "table" then
        return false, nil
    end

    for _, obj in ipairs(result) do
        if typeof(obj) == "Instance" then
            local descendants = CountDescendants(obj)

            -- Jangan menerima object kosong.
            if descendants > 0 or #obj:GetChildren() > 0 then
                return true, obj
            end
        end
    end

    return false, nil
end

-- ============================================================
-- PLAYERGUI / SERVER REMOTE IMPORT
-- ============================================================

local function ProcessServerFolder(serverFolder)
    if not serverFolder then
        return false
    end

    local clone = serverFolder:Clone()
    local children = clone:GetChildren()

    if #children == 0 then
        SafeDestroy(clone)
        return false
    end

    local importedSomething = false

    for _, obj in ipairs(children) do
        if obj.ClassName == "Folder"
            and (" Workspace Lighting MaterialService ReplicatedStorage ServerStorage ServerScriptService StarterGui StarterPack Teams SoundService StarterPlayer InsertService TextChatService "):find(
                " " .. obj.Name .. " ", 1, true
            ) then

            if obj.Name == "ServerStorage" then
                for _, item in ipairs(obj:GetChildren()) do
                    item.Parent = _G.ss or game:GetService("ServerStorage")
                    importedSomething = true
                end

            elseif obj.Name == "ServerScriptService" then
                for _, item in ipairs(obj:GetChildren()) do
                    item.Parent = _G.sss or game:GetService("ServerScriptService")
                    importedSomething = true
                end

            elseif obj.Name == "StarterPlayer" then
                for _, inner in ipairs(obj:GetChildren()) do
                    if inner.Name == "StarterPlayerScripts"
                        or inner.Name == "StarterCharacterScripts" then

                        local target = game.StarterPlayer:FindFirstChild(inner.Name)
                        if target then
                            for _, scr in ipairs(inner:GetChildren()) do
                                if not target:FindFirstChild(scr.Name) then
                                    scr.Parent = target
                                    importedSomething = true
                                end
                            end
                        end
                    else
                        inner.Parent = game.StarterPlayer
                        importedSomething = true
                    end
                end

            elseif obj.Name ~= "InsertService"
                and obj.Name ~= "TextChatService" then

                local targetService = game:FindFirstChild(obj.Name)
                if targetService then
                    for _, item in ipairs(obj:GetChildren()) do
                        item.Parent = targetService
                        importedSomething = true
                    end
                end
            end

        elseif obj:IsA("PostEffect") or obj.ClassName == "Sky" then
            obj.Parent = game:GetService("Lighting")
            importedSomething = true

        else
            local ok = pcall(function()
                SafeStudioFallback(obj)
            end)
            if ok then
                importedSomething = true
            end
        end
    end

    SafeDestroy(clone)
    return importedSomething
end

-- ============================================================
-- MAIN IMPORT
-- ============================================================

local function ImportAssetRobust(stringId, numericId, PlayerGui)
    local remoteWorked = false

    -- 1. SERVER REMOTE
    if LoadAssetRemote and LoadAssetRemote:IsA("RemoteFunction") then
        pcall(function()
            remoteWorked = LoadAssetRemote:InvokeServer(stringId) == true
        end)

        if remoteWorked and PlayerGui then
            local serverFolder = PlayerGui:WaitForChild(stringId, 5)

            if serverFolder then
                local ok = ProcessServerFolder(serverFolder)

                if ok then
                    if ClearAssetRemote then
                        pcall(function()
                            ClearAssetRemote:InvokeServer(stringId)
                        end)
                    end

                    SetStatus("Berhasil!")
                    return true
                end
            end
        end
    end

    -- 2. CLIENT GETOBJECTS
    local clientOk, clientObj = TryGetObjects(numericId)

    if clientOk and clientObj then
        local hadScripts = HasScriptDescendant(clientObj)
        local hadChildren = HasUsefulDescendants(clientObj)

        if hadChildren then
            local moved = pcall(function()
                SafeStudioFallback(clientObj)
            end)

            if moved then
                if hadScripts then
                    SetStatus("Berhasil! (Model + Script)")
                else
                    SetStatus("Berhasil!")
                end
                return true
            end
        end

        SafeDestroy(clientObj)
    end

    -- 3. HARD-CODED RBXM FALLBACK
    -- Ini memastikan asset yang payload-nya tersedia tetap bisa masuk
    -- walaupun Remote/GetObjects mengembalikan Not Found/kosong.
    local hardOk, roots = ImportHardcoded(workspace)

    if hardOk then
        local hasScripts = false

        for _, root in ipairs(roots or {}) do
            if typeof(root) == "Instance" and HasScriptDescendant(root) then
                hasScripts = true
                break
            end
        end

        if hasScripts then
            SetStatus("Berhasil! (Hard Code + Script)")
        else
            SetStatus("Berhasil! (Hard Code)")
        end

        return true
    end

    SetStatus("Asset tidak ditemukan / gagal di-import.")
    return false
end

-- ============================================================
-- PANGGIL:
-- ImportAssetRobust(stringId, numericId, PlayerGui)
-- ============================================================

return ImportAssetRobust
