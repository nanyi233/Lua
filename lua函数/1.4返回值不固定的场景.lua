local function toNumber(s)
    local n = tonumber(s)
    if n == nil then
        return nil, "not a number"
    end
    return n
end

local n, err = toNumber("12x")
print(n, err) -- nil  not a number
