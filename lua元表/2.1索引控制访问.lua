-- __index 是最常用的元方法之一，它用于控制访问表的元素
-- 方法一关联一个 函数
local mt1 = {
    __index = function (table, key)
        if key == "deault" then
            return "默认值"
        end
        return nil
    end
}

local t1 = { a = 1}
setmetatable(t1, mt1)
print(t1.a) -- 输出1
print(t1.deault) -- 输出默认值

-- 方法二关联另一个表
local parents = { parentkey = "父类值"}
local child = {}

setmetatable(child, {__index = parents})
print(child.parentkey) -- 输出父类值