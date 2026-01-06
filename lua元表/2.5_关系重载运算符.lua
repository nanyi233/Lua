local mt = {
    __eq = function(a, b) return a.value == b.value end,

    __lt = function(a, b) return a.value < b.value end,

    __le = function(a, b) return a.value <= b.value end,
}

local a = {
    value = 10
}
local b = {
    value = 20  }

setmetatable(a, mt)
setmetatable(b, mt)

print(a == b)
print(a < b)