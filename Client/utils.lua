local utils = {}

utils.fetchModule = function(gameId:string, fileName:string)
    local URL = "https://raw.githubusercontent.com/1Brenny1/EchoHub/refs/heads/main/Server/"
    return loadstring(game:HttpGet(URL .. gameId .. "/" .. fileName .. ".lua"))()
end

utils.fetchRoot = function(gameId:string)
    return utils.fetchModule(gameId, "_")
end

utils.printTable = function(table:table)
    for i, elmnt in ipairs(table) do
        print(i .. ") " .. elmnt)
    end
end

return utils