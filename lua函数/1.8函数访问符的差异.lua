-- : 与 . 的差异
local Player = {}
Player.__index = Player -- 设置元表

function Player.new(name)
    return setmetatable({name = name}, Player)
end

function Player.say(self, msg) -- . 是函数访问符 self 是第一个参数 self 是Player对象
    print(self.name..":"..msg)
end

function Player:say2(msg) -- : 是函数访问符  
    print(self.name..":"..msg)
end

local p = Player.new("Alice")

p.say(p,"hello")
p:say2("hello")

-- obj:method(x) 等价于 obj.method(obj, x)
-- 定义时 function T :method(...), 调用时也用:保持一致