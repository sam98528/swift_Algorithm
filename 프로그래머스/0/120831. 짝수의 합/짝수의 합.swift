import Foundation

func solution(_ n:Int) -> Int {
    var ans = 0
    
    for i in 1...n{
        if i % 2 == 0 {
            ans += i
        }
    }
    
    return ans 
}