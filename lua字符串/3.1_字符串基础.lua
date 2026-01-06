-- 字符串的创建
local str = "hello world"

local str1  = '我是单引号'

local str2 = [[我是双引号]]

-- 这里的是
local str4 = [=[
字符串内容 [[可以包含]] 方括号
]=]

print(str, str1, str2, str4)

-- 常见的一些转义字符
-- \n 换行
-- \t 制表符
-- \r 回车
-- \b 退格
-- \f 换页
-- \v 垂直制表符
print("hello\nworld")