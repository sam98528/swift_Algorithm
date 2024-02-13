import Foundation

func solution(_ number:String) -> Int {
    var arr = number.compactMap { Int(String($0)) }
    var ans = arr.reduce(0,+) % 9
    return ans
}