-- 创建多层元表链
local mt1 = {
    __index = function(table, key)
        print("在mt1中查找: " .. key)
        return "来自mt1的值"
    end
}

local mt2 = {
    __index = function(table, key)
        print("在mt2中查找: " .. key)
        return "来自mt2的值"
    end
}

-- 设置元表链
local t = {}
setmetatable(mt2, mt1)  -- mt2的元表是mt1
setmetatable(t, mt2)

print(t.someKey)
-- 输出:
-- 在mt2中查找: someKey
-- 来自mt2的值