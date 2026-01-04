-- -- 创建和初始化
-- local emptyArray = {}
-- local primes = {2, 3, 5, 7, 11}

-- -- 动态创建
-- local squares = {}
-- for i = 1, 10 do
--     squares[i] = i * i
-- end

-- -- 访问和修改
-- local students = {"John", "Jane", "Mary"}

-- print(students[1])
-- print(students[3])

-- -- 添加元素
-- students[4] = "David"
-- print(students[4])
-- print(#students)


-- -- 遍历数组
local scores = {80, 90, 100}

-- -- 使用数值for循环
-- for i = 1, #scores do
--     print("学生"..i.."分数"..scores[i])
-- end

-- 推荐使用 ipairs 迭代器
for _,value in ipairs(scores) do
    print(value)
end

-- 通用pairs迭代器