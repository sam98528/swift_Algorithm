import Foundation
func solution(_ n:Int) -> Int64 {
    var ans : Int64 = 0
    var fin1 : Int64 = 0
    var fin2 : Int64 = 1
    
    if n == 0 || n == 1{
        return Int64(n)
    }
    else{
        for _ in 2...n {
            ans = (fin1 + fin2) % 1234567
            fin1 = fin2
            fin2 = ans
        }
    }
    return ans
}
