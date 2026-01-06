-- 元表是lua的一个强大的特性，允许我们去改变表的默认行为。元表是这些普通人赋予超能力的超能力赋予者
local ordinaryTable = {name = "mbt", age = 18}

local metatable1 =  {
    __index = function(table, key)
        return "没有找到键：" .. key
    end

}
-- 注意顺序不能反 
setmetatable(ordinaryTable, metatable1)
-- setmetatable(metatable1,ordinaryTable)

print(ordinaryTable.name, ordinaryTable.gender)