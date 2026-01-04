-- 创建3 * 3的矩阵
local matrix = {
    {1, 2, 3},
    {4, 5, 6},
    {7, 8, 9}
}

print(matrix[2][1])

-- 遍历多维数组
for i = 1, #matrix do
    for j = 1, #matrix[i] do
       io.write(matrix[i][j] .. " ")
    end
    print()
end