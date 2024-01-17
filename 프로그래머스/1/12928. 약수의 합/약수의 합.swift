func solution(_ n:Int) -> Int {
    if n == 0 {
        return 0
    }
    let sqrtN = Int(Double(n).squareRoot())
    
    var ans = 0
    
    for i in 1...sqrtN {
        if n % i == 0 {
            ans += i
            if n / i != i {
                ans += (n/i)
            }
        }
        
    }
    return ans
}