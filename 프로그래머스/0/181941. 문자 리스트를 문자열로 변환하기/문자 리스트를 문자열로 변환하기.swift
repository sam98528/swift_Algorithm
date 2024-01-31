import Foundation

func solution(_ arr:[String]) -> String {
    let ans = arr.reduce("", +)
    return ans
}