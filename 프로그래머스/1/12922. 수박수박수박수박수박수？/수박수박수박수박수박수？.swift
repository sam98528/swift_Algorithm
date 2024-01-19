func solution(_ n:Int) -> String {
    if n % 2 == 0 {
        var first = String(repeating:"수박", count: n / 2)    
        return first
    }else{
        var first = String(repeating:"수박", count: (n-1) / 2)
        var second = first + "수"
        return second
    }
}