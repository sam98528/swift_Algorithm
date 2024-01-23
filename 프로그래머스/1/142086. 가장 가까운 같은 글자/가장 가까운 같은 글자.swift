import Foundation

func solution(_ s:String) -> [Int] {
    var dic = Dictionary <String,Int>()
    var ans : [Int] = []
    for i in 0..<s.count {
        var current = s.index(s.startIndex,offsetBy:i)
        if let updatedValue = dic.updateValue(i,forKey:String(s[current])) {
            ans.append(i - updatedValue)
        }else{
            ans.append(-1)
        }
    }
    return ans
}