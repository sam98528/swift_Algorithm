import Foundation
// commit

func solution(_ numbers:[Int]) -> [Int] {
    var stack: [Int] = [] // 스택
    var result: [Int] = Array(repeating: -1, count: numbers.count)
    
    for i in 0..<numbers.count {
        while !stack.isEmpty && numbers[i] > numbers[stack.last!] {
            let idx = stack.removeLast()
            result[idx] = numbers[i]
        }
        
        stack.append(i)
    }
    
    return result
}