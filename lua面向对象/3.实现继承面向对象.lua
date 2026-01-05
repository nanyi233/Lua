-- 基类：Person
local Person = {}
Person.__index = Person

function Person:new(name, age)
    local obj = {
        name = name,
        age = age
    }
    setmetatable(obj, self)
    return obj
end

function Person:introduce()
    print("我是" .. self.name)
end

function Person:getCategory()
    return "人类"
end

-- 派生类：Student
local Student = Person:new()  -- 继承自Person
Student.__index = Student

-- 重写构造函数
function Student:new(name, age, studentId)
    -- 调用父类构造函数
    local obj = Person.new(self, name, age)
    
    -- 添加子类特有属性
    obj.studentId = studentId
    obj.grade = 1
    
    -- 设置元表
    setmetatable(obj, self)
    return obj
end

-- 重写方法
function Student:introduce()
    -- 调用父类方法
    Person.introduce(self)
    print("我的学号是：" .. self.studentId .. "，年级：" .. self.grade)
end

-- 子类特有方法
function Student:upgrade()
    self.grade = self.grade + 1
    print(self.name .. "升到了" .. self.grade .. "年级")
end

-- 使用继承
local student = Student:new("小明", 18, "S001")
student:introduce()  -- 我是小明\n我的学号是：S001，年级：1
print(student:getCategory())  -- 人类（继承自父类）
student:upgrade()  -- 小明升到了2年级