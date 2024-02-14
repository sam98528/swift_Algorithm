import Foundation

func solution(_ start:Int, _ end_num:Int) -> [Int] {
    let ans = Array(stride(from: start, through: end_num, by: -1))
    return ans
}