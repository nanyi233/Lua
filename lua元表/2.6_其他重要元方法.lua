local mt = {
    __call =function (table, ...)
        print("表被调用，参数:",...)
    end,

    -- 获取长度时的行为
    __len = function (table)
        local count = 0
        for _ in pairs(table) do
            count = count + 1
        end
        return count
    end,

    -- 字符串表示
    __tostring = function (table)
        return "表的字符串表示"
    end,

    -- 垃圾回收
    __gc = function (table)
        print("表被垃圾回收")
    end
}

local t = {}
setmetatable(t, mt)

t("参数1", "参数2") -- 表被调用，参数:参数1 参数2
print(#t) -- 0
print(tostring(t)) -- 输出自定义表