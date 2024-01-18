func solution(_ arr:[Int], _ divisor:Int) -> [Int] {
    var ans = arr.filter{$0 % divisor == 0}
    if ans.isEmpty{
        ans.append(-1)
    }
    ans.sort()
    return ans
}