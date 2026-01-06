-- table是唯一的数据结构
-- 同时扮演这数组、字典、对象和命名空间等多种角色
local person ={
    name = "张三",
    age = 25,

    introduce = function ( self )
        print("你好，我叫"..self.name..",今年"..self.age.."岁")
    end
}

-- 调用方法
person:introduce()
person.introduce(person) -- self参数可以省略

-- 调用方法
