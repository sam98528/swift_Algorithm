import Foundation

func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    let row = arr1.count
    let col = arr2[0].count
    let temp = arr2.count
    
    
    var ans = Array(repeating: (Array(repeating:0,count:col)), count:row)
    
    for i in 0..<row{
        for j in 0..<col{
            for k in 0..<temp{
                ans[i][j] += arr1[i][k] * arr2[k][j]
            }
        }
    }
    return ans
    
    
}