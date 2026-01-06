-- 2.1鍒涘缓table
local t1 = {} -- 浣跨敤{}鏉ュ垱寤簍able

-- 2.鍒濆鍖栨椂鍒涘缓
local t2 = {
    "apple", -- 绱㈠紩涓?1
    "banana", -- 绱㈠紩涓?2
    color = "red" , -- 閿负鈥渃olor鈥?
    count = 10 -- "閿负count"
}

-- 鏋勯�犳柟寮?3锛? 浣跨敤table鏉ユ瀯閫犲嚱鏁?
-- local t3 = table.pack(1, 2, 3, 4, 5)

-- 2.2 table鐨勮闂?
local friuit = {"apple", "banana", "orange"}
print(friuit[1]) -- apple
print(friuit[2]) -- banana


friuit[3] = "鏇挎崲" 
friuit[4] = "鏂板" 
print(friuit[3]) -- orange

-- 璁块棶鍜屼慨鏀瑰厓绱?
local person = {}
person.name = "无极大师"
person["age"] = 20

print(person.name) -- 打印表中的内容是使用.的
print(person["age"]) -- 20

--混合访问
local mixed = {
    1, 2, 3,
    name = "王五",
    scores = {90, 85 , 95}
}

print(mixed.name)
print(mixed[1])