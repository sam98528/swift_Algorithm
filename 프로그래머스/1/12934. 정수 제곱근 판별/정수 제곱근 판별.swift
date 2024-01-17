func solution(_ n:Int64) -> Int64 {
    var ans = 0
    var x = Int(Double(n).squareRoot())
    if x * x == n {
        ans = (x+1) * (x+1)
    }else{
        ans = -1
    }
    return Int64(ans)
}