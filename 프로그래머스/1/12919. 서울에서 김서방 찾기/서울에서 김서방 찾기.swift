func solution(_ seoul:[String]) -> String {
    
    var index = seoul.firstIndex(of: "Kim")!
    var ans = "김서방은 \(index)에 있다"
    
    return ans
}