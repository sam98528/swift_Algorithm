import Foundation
/* 내가 풀었던 방법
func solution(_ clothes:[[String]]) -> Int {
    var ans = 1
    var dic : [String:Int] = [:]
    
    for cloth in clothes {
        if let value = dic[cloth[1]] {
                 dic.updateValue(value + 1, forKey: cloth[1])
        }else{
            dic[cloth[1]] = 1
        }
    }
    
    for value in dic.values{
        ans = ans*(value+1)
    }
    return ans - 1
}
*/

// 다른 사람의 더 깔끔한 풀이 

func solution(_ clothes:[[String]]) -> Int {
    let types = clothes.compactMap({ $0.last })
    let typeSet = Set(types)
    let categories = Array(typeSet)
    print(categories)
    
    let counts = categories.map({ category in
        return clothes.filter({ $0.last == category }).count + 1
    })
    
    return counts.reduce(1,  { $0 * $1 }) - 1
    
    return 0
}