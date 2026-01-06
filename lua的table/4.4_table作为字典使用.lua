local dict = {
    name = "小明",
    age = 20,
    city = "深圳"
}

-- 访问
print(dict.name)
print(dict.city)

-- 添加/修改
dict.gender = "男"
dict["score"] = 95

-- 删除
dict.city = nil