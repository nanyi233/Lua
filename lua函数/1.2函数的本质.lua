-- 函数的变质是变量里的值
local function add(a,b)
    return a + b        
end

-- 其实也等价于 函数就是一个值 和数组字符串一样，因此可以赋值传递
local add = function (a,b)
    return a + b
    
end

print(add(1,2))