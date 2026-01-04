function CreateDefaultValueTable(default)
    local mt = {
        __index = function (table, key)
            return default
        end
    }

    return setmetatable({}, mt)
end

local scores = CreateDefaultValueTable(60)
scores["张三"] = 85
scores["李四"] = 90
print(scores["张三"])