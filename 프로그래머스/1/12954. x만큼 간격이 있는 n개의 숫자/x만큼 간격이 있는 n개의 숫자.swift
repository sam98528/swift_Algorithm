func solution(_ x:Int, _ n:Int) -> [Int64] {
    var ans: [Int64] = []
    for i in 0...n-1{
        ans.append(Int64(x)+Int64(x)*Int64(i))
    }
    return ans
}