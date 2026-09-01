pcall(function()
    local infoSrc = game:HttpGet("https://raw.githubusercontent.com/narakuhub/plugin-tools/refs/heads/main/information.lua")
    local infoFn = loadstring(infoSrc)
    if infoFn then infoFn() end

    local gizmoSrc = game:HttpGet("https://raw.githubusercontent.com/narakuhub/plugin-tools/refs/heads/main/tools/ExtendedGizmo.lua")
    local gizmoFn = loadstring(gizmoSrc)
    if gizmoFn then gizmoFn() end

    local toolboxSrc = game:HttpGet("https://raw.githubusercontent.com/narakuhub/plugin-tools/refs/heads/main/toolboxpc.lua")
    local toolboxFn = loadstring(toolboxSrc)
    if toolboxFn then toolboxFn() end
end)
