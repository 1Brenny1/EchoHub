function _require(path:string)
    return loadstring(game:HttpGet("https://raw.githubusercontent.com/1Brenny1/EchoHub/refs/heads/main/Client/"..path..".lua"))()
end

local utils = _require("utils")

local root = utils.fetchRoot("_")
print(root)
print(utils.fetchModule("_", root[1]))