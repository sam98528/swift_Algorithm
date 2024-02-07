import Foundation
//확인
func solution(_ elements:[Int]) -> Int {
    var ans = Set<Int>()
    for index in 0..<elements.count {
        var num = 0
        for offset in 0..<elements.count {
            let validIndex = (index + offset) % elements.count
            num += elements[validIndex]
            ans.insert(num)
        }
    }
    return ans.count
}