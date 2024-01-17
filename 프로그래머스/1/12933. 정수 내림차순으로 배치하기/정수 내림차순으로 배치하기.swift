func solution(_ n:Int64) -> Int64 {
    var arr : [String] = []
    let str = String(n)
    for i in str{
        arr.append(String(i))
    }
    arr.sort()
    arr.reverse()
    let num = arr.joined()
    let ans = Int64(num)!
    return ans
}