-- lua没有传统意义上的数组，而是通过table来实现数组的功能
-- 准确来说table中的数组是以整数为键的有序table
local fruits = {"apple", "banana", "orange"}
-- print(fruits[1]) -- 输出苹果
-- print(fruits[2])

-- 数组的核心特性
-- 索引是从1开始的
local numbers = {10, 20, 30, 40}
print(numbers[0]) -- 输出nil
print(numbers[1]) -- 输出10

-- 数组的长度
-- local color = {"red", "green", "blue"}
-- local length = #color
-- print(length) -- 输出3

-- 注意长度操作符只对连续数组有效
local sparseArray = {[1] = "A", [3] = "C", [5] = "E"}
print(#sparseArray)  -- 输出为1