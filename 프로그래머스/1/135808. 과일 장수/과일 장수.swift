import Foundation

func solution(_ k: Int, _ m: Int, _ score: [Int]) -> Int {
    var scores = Array(score.sorted().reversed())
    var index = m-1
    var ans = 0
    while index < score.count {
        ans += scores[index] * m 
        index += m
    } 
    return ans
}
