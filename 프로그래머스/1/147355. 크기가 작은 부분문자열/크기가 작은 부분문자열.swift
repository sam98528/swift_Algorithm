import Foundation

func solution(_ t:String, _ p:String) -> Int {
    var pNum = Int(p)!
    var ans = 0
    for i in 0...t.count-p.count{
        var startIndex = t.index(t.startIndex, offsetBy: i)
        var endIndex = t.index(startIndex, offsetBy:p.count)
        var subString = t[startIndex..<endIndex]
        var num = Int(subString)!
        if (num <= pNum){
            ans +=  1
        }
    }
    return ans
}