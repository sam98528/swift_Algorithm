import Foundation

func solution(_ numbers:[Int]) -> Int {
    let number = [0,1,2,3,4,5,6,7,8,9]
    let arr = number.filter{!numbers.contains($0)}
    let sum = arr.reduce(0,+)
    return sum
}