-- 理解函数的作用 封装逻辑 复用代码 提升可读性
-- function...end 匿名函数 全局韩剧是

function add(a,b)
    return a + b
end

print(add(1,2))

-- 更推荐局部函数
local function add(a,b)
    return a + b
end