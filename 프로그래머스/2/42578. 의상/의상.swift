import Foundation

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