-- 实现向量加法
local Vector = {}

function Vector.new(x, y)
    local v = {x = x or 0, y = y or 0}
    setmetatable(v, Vector.mt)
    return v
    
end

Vector.mt = {
    __add = function (v1, v2)
        return Vector.new(v1.x + v2.x, v1.y + v2.y)
    end,

    __tostring = function (v)
        return string.format("Vector(%f,%f)", v.x, v.y)
    end
}

local v1 = Vector.new(1, 2)
local v2 = Vector.new(3, 4)
local v3 = v1 + v2
print(v3)
