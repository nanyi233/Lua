local array = {"a","b","c","d"}

-- 获取长度 连续数字索引部分
print(#array) -- 输出4

-- 遍历数组
for i = 1, #array do
    print(i,array[i])
end

-- 使用ipairs迭代器
for index, value in ipairs(array) do
    print(index, value)
end

-- 常用数组函数
local nums = {3, 1, 4, 1, 5, 9}
table.insert(nums, 2) -- 在末尾插入
table.insert(nums, 3, 7) -- 在位置3插入7

-- 排序
table.sort(nums) -- 升序排序
table.sort(nums, function (a, b) return a > b end)

local str = table.concat(nums, ",")
