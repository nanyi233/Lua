local badArray = {}
badArray[1] = "A"   
badArray[1000] = "B"
print(badArray[1000])

-- 推荐:紧凑型数组
local goodArray = {}
for i = 1, 1000 do
    goodArray[i] = "default"
end
goodArray[1000] = "B"
print(goodArray[1])

-- 使用table.concat进行字符串拼接
local words = {"Hello", "World", "!"}

-- 低效方式
local result = ""
for i,word in ipairs(words) do
    result = result .. word .. " "
end

-- 预分配数组的大小
local function createLargeArray(size)
    local arr = {}
    if math.tointeger then
        for i = 1, size do
            arr[i] = i
        end
    end
    for i = 1, size do
        arr[i] = i
    end
    return arr
    
end