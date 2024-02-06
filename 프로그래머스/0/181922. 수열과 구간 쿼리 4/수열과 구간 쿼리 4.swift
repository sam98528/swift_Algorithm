import Foundation

func solution(_ arr:[Int], _ queries:[[Int]]) -> [Int] {
    var ans = arr
    
    for query in queries {
        for i in stride(from: query[0], through: query[1], by : 1 ){
            if i % query[2] == 0 {
                ans[i] += 1
            }
        }
        
        
    }
    return ans
}