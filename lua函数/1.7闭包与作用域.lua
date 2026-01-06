-- 闭包与作用域
local function makeCounter()
    local count = 0
    return function() -- 闭包
        count = count + 1
        return count -- count 是局部变量，因为被内部函数引用，所以不会立刻释放
    end
end


local c1 = makeCounter()
print(c1()) -- 1
print(c1()) -- 2