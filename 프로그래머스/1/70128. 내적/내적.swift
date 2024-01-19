import Foundation

func solution(_ a:[Int], _ b:[Int]) -> Int {
    var count = a.count
    var result = 0
    for i in 0..<count {
        result += a[i]*b[i]
    }
    return result
}