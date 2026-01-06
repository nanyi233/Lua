-- 数组长度不准
local problematic = {1, 2, nil, 4}
print(#problematic)  -- 输出可能是2或4

-- 解决方案 使用自定义长度函数
function saftLength( arr )
    -- body
    local count = 0
    for _ in ipairs(arr) do
        count = count + 1
    end
end

-- 错误方式 ： 浅拷贝
for i,v in ipairs(original) do
    copy[i] = v -- 只复制了引用
end

-- 正确方式：深拷贝
function deepCopyArray(arr)
    local result = {}
    for i, v in ipairs(arr) do
        if type(v) == "table" then
            result[i] = deepCopyArray(v)
        else
            result[i] = v
        end
    end
    
end

-- Lua数组作为table的特殊应用，具有灵活、易用的特点。关键要点：
-- Lua数组本质是索引为整数的table
-- 索引从1开始，使用#获取长度
-- 推荐使用ipairs进行遍历
-- 避免稀疏数组以保持性能
-- 利用table库函数简化操作