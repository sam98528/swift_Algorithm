func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    let row = arr1.count
    let col = arr1[0].count
    var ans = arr2
    
    for i in 0..<row{
        for j in 0..<col{
            ans[i][j] = arr1[i][j] + arr2[i][j]
        }
    }
    return ans
}