func solution(_ n:Int) -> Int {
    var ans = [Int](repeating: 0, count: n + 1)
    ans[1] = 1
    
   
    
    if n >= 2 {
        ans[2] = 2
        if n >= 3 {
            for i in 3...n{
                ans[i] = (ans[i-1] + ans[i-2]) % 1234567
            }
        }
    }
    
    return ans[n]
}