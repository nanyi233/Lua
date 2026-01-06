-- 多参数以及多返回值
-- local function divmod(a,b)
--     return math.floor(a / b), a % b
-- end

-- local q, r = divmod(17, 5)
-- print(q, r)

-- 只接受部分返回值
local function divmod(a, b)
    return math.floor(a / b), a % b
end

local q = divmod(17, 5)
print(q)