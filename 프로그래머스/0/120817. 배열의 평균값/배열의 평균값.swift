import Foundation

func solution(_ numbers:[Int]) -> Double {
    
    let sum = numbers.reduce(0,+)
    let ans = Double(sum) / Double(numbers.count)
    return ans
}