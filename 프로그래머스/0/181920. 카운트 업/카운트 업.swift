import Foundation

func solution(_ start_num:Int, _ end_num:Int) -> [Int] {
    let ans = Array(stride(from: start_num, through:end_num, by:1))
    return ans
}