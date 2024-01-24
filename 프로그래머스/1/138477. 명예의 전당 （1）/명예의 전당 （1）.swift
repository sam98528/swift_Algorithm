import Foundation

func solution(_ k:Int, _ score:[Int]) -> [Int] {
    var rank : [Int] = []
    var ans : [Int] = []
    
    for i in 0..<score.count{
        if rank.count < k {
            rank.append(score[i])
            ans.append(rank.min()!)
        }else{
            rank.append(score[i])
            rank = rank.sorted().reversed()
            ans.append(rank[k-1])
        }
    }
    return ans
}