import Foundation

func solution(_ arr:[Int], _ queries:[[Int]]) -> [Int] {
    var ans : [Int] = []
    
    for query in queries {
        var sub = arr[query[0]...query[1]].filter{$0 > query[2]}
        if let min = sub.min(){
            ans.append(min)
        }else{
            ans.append(-1)
        }
        
        
    }
    return ans
}