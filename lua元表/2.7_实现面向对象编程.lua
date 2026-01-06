-- 基类
local Animal = {}

function Animal:new(names)
    local obj  = {name = names}
    setmetatable(obj, self)
    self.__index = self
    return obj
    
end

function  Animal:speak()
    print(self.name .. "发出声音")
end

-- 派生类
local Dog = Animal:new()

function Dog:new(names)
    local obj = Animal:new(names)
    setmetatable(obj, self)
    self.__index = self
    return obj
end

function Dog:speak()
    print(self.name .. "汪汪叫")
end

local myDog = Dog:new("旺财")
myDog:speak()