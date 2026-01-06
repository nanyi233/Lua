local function sum(...) --...表示可变参数
    local total = 0
    for i = 1,select("#",...) do --select("#",...)获取参数个数
        local v = select(i,...) --select(i,...)获取第i个参数
        total = total + v
    end
    return total
end

print(sum(1,2,3,4,5))

