import Foundation

func solution(_ numbers:[Int]) -> [Int] {
    var ans : [Int] = []
    for i in 0..<numbers.count-1 {
        for j in i+1..<numbers.count{
                ans.append(numbers[i] + numbers[j])    
            }
        }
    return Array(Set(ans)).sorted()
    }