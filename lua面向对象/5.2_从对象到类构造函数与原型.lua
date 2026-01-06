local Person = {}

-- 类的元表，作为方法表
Person.__index = Person

-- 构造函数
function Person:new(name, age)
    local obj = {
        name = name or "匿名",
        age = age or 0
    }
    

    -- 设置元表, 实现继承链
    setmetatable(obj,self)
    return obj
end

-- 类方法
function Person:introduce()
    print("我叫" .. self.name .. ", 我今年" .. self.age .. "岁")
end

function Person:grow()
    self.age = self.age + 1
    print("我今年" .. self.age .. "长大了一岁")
end

-- 创建对象示例
local p1 = Person:new("李四", 30)
local p2 = Person:new("王五", 25)

p1:introduce()
p1:grow()