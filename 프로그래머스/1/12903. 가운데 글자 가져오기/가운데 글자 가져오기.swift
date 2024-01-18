func solution(_ s:String) -> String {
    /* 내가 푼 방법
    
    var ans : String = ""
    
    if s.count % 2 == 0 {
        let lastIndex = s.index(s.startIndex, offsetBy:s.count / 2)
        let firstIndex = s.index(s.startIndex, offsetBy:s.count / 2 - 1)
        ans = String(s[firstIndex]) + String(s[lastIndex])
    }else{
        let firstIndex = s.index(s.startIndex, offsetBy:s.count / 2)
        ans = String(s[firstIndex])
    }
    
    return ans
    */

    // 더 좋은 방법
    
    let middleIndex = s.index(s.startIndex, offsetBy: s.count / 2)
    
    if s.count % 2 == 0 {
        let previousIndex = s.index(before: middleIndex)
        return String(s[previousIndex...middleIndex])
    } else {
        return String(s[middleIndex])
    }
    
}
