func solution(_ s:String) -> String {
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
}