local utils = {}

utils.fetchModule = function(gameId, fileName)
    local URL = "https://raw.githubusercontent.com/1Brenny1/EchoHub/refs/heads/main/"
    return loadstring(game:HttpGet(URL .. gameId .. "/" .. fileName .. ".lua"))()
end

utils.fetchRoot = function(gameId)
    return utils.fetchModule(gameId, "_")
end

return utils