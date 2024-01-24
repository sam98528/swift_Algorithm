import Foundation

func solution(_ lottos:[Int], _ win_nums:[Int]) -> [Int] {
    let table : [Int:Int] = [0 : 6, 1 : 6, 2 : 5, 3 : 4, 4 : 3, 5 : 2, 6 : 1]
        
    var temp = 0
    var zero = 0
    
    for i in lottos {
        if i == 0 {
            zero += 1
        }
        if win_nums.contains(i) {
            temp += 1
        }
    }
    let best = temp + zero
    
    var ans = [table[best]! , table[temp]!]
    return ans
}