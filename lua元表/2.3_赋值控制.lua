local readOnlyTable = { existingKey = "可修改" }
local mt = {
    __newindex = function(table, key, value)
        error("不能给不存在的键赋值: " .. key)
    end
}

setmetatable(readOnlyTable, mt)
readOnlyTable.existingKey = "新值"  -- 允许修改
print(readOnlyTable.existingKey)    -- 输出: "新值"

readOnlyTable.newKey = "尝试赋值"  -- 会抛出错误