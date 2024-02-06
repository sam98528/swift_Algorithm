import Foundation

func solution(_ a:Int, _ d:Int, _ included:[Bool]) -> Int {
    var ans = 0
    var temp = a
    for element in included {
        if element {
            ans += temp  
        }
        temp += d
    }
    return ans
}