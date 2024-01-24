import Foundation
extension Array {
    func chunked(into size: Int) -> [[Element]] {
        return stride(from: 0, to: count, by: size).map {
            Array(self[$0 ..< Swift.min($0 + size, count)])
        }
    }
}

func solution(_ k: Int, _ m: Int, _ score: [Int]) -> Int {
    var scores = Array(score.sorted().reversed())
    var ans = 0
    
    let chunkedArray = scores.chunked(into: m)
    for chunk in chunkedArray {
        if chunk.count == m {
            var min = chunk.min()!
            ans += min * m
        }
    }
    return ans
}
