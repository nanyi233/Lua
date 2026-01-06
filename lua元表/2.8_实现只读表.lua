-- 创建表 `t` 的*只读视图*。
--
-- 实现思路：
-- - 返回一个代理表（proxy）。
-- - 读取通过 `__index` 转发到原始表 `t`。
-- - 写入会被 `__newindex` 拦截并抛出错误。
-- - 通过设置 `__metatable` 来隐藏/锁定真实元表，避免外部代码获取与篡改。
function CreateReadOnlyTable(t)
    -- proxy 是用户实际交互的对象。
    local proxy = {}

    local mt = {
        -- 将所有“缺失键”的读取转发到原始表。
        __index = t,

        -- 禁止写入。注意：这里的第一个参数是 *proxy*（不是原始表 `t`）。
        __newindex = function(_, key, _)
            -- 使用 tostring 避免当 `key` 不是字符串时发生拼接错误。
            error("attempt to modify read-only table: " .. tostring(key))
        end,

        -- 防止 `getmetatable(proxy)` 返回真实元表。
        __metatable = "只读表"
    }

    setmetatable(proxy, mt)
    return proxy
end

-- 示例：原始配置表。
local config = {
    version = "1.0",
    port = 8080
}

-- 只读视图：可以读取字段，但不能修改。
local readOnlyConfig = CreateReadOnlyTable(config)
print(readOnlyConfig.version) -- 输出：1.0