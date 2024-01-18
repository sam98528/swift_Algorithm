func solution(_ arr:[Int]) -> [Int] {
    var ans :[Int] = []
    if arr.count == 1 {
        ans.append(-1)
        return ans
    }
    
    var tempArr = arr
    tempArr.sort()
    var temp = tempArr[0]
    ans = arr.filter{$0 != temp}
    return ans
}