local employees = {
    name = "张三",
    age = 30,
    skills = {"lua","python","c++"}, -- 数组部分
    projects = {
        {name = "项目A",role = "开发"},
        {name = "项目B",role = "测试"}
    }
}

-- 访问混合结构
print(employees.name) -- 输出张三
print(employees.skills[2]) -- 输出lua
print(employees.projects[2].name) -- 输出项目B

