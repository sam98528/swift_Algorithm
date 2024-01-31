import Foundation

func solution(_ str1:String, _ str2:String) -> String {
    let str1Arr = Array(str1)
    let str2Arr = Array(str2)
    var ans = ""
    for i in 0..<str1.count {
        ans += String(str1Arr[i]) + String(str2Arr[i])
    }
    return ans
}