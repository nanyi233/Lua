-- 调试元表访问
local DebugMetatable = {
    __index = function(table, key)
        print("[DEBUG] 访问键:", key)
        return rawget(table, key)
    end,
    
    __newindex = function(table, key, value)
        print("[DEBUG] 设置键:", key, "值:", value)
        rawset(table, key, value)
    end
}

local debugTable = {}
setmetatable(debugTable, DebugMetatable)

debugTable.name = "测试"  -- 输出: [DEBUG] 设置键: name 值: 测试
print(debugTable.name)    -- 输出: [DEBUG] 访问键: name \n 测试