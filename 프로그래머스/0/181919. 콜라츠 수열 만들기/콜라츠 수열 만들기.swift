import Foundation

func solution(_ n:Int) -> [Int] {
    var ans : [Int] = [n]
    var x = n
    while( x != 1) {
        if x % 2 == 0 {
            x = x / 2
        }else{
            x = 3 * x + 1
        }
        ans.append(x)
    }
    return ans
}