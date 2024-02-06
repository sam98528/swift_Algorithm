import Foundation

func solution(_ elements:[Int]) -> Int {
    var ans = Set<Int>()
    let cir = elements + elements
    let size = elements.count
    
    for idx in 0..<size{
        var num = 0
        for offset in 0..<size{
            num += cir[idx+offset]
            ans.insert(num)
        }
        num = 0
    }
    return ans.count
}
