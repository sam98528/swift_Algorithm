import Foundation

func solution(_ food:[Int]) -> String {
    var ans = ""
    for i in 1..<food.count{
        var a = food[i]
        ans += String(repeating: String(i), count: Int(a/2))
    }
    ans = ans + "0" + ans.reversed()
    return ans
}