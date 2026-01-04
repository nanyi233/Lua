local Vector = {}

-- 预定义元表
Vector.__index = Vector.adds
Vector.__mul = Vector.mul


-- 避免在循环中创建元表
local function CreateObject(x,y)
    local obj = {x = x, y = y}  
    obj.__index = obj
    return setmetatable({},obj)
end