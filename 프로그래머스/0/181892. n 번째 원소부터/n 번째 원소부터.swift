import Foundation

func solution(_ num_list:[Int], _ n:Int) -> [Int] {
    let index = n - 1
    let ans = Array(num_list[index...])
    return ans
}