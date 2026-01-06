-- -- 函数作为参数
-- local function apply(a, b, op) -- op是一个函数
--     return op(a, b) -- op(a, b)是函数调用
    
-- end

-- local function mul(x,y) --
--     return x * y 
    
-- end

-- print(apply(2, 3, mul))
-- print(apply(2, 3, function(x,y) return x - y end))


-- 返回函数，也叫工厂函数
local function makeAdder(step)
    return function (x)
        return x + step
    end
end
local add10 = makeAdder(10)
print(add10(7))