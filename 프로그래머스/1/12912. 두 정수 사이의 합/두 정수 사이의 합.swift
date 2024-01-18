func solution(_ a:Int, _ b:Int) -> Int {
    if a == b {
        return a
    }
    var sum = 0
    
    if a < b {
        for i in a...b {
            sum += i        
        }
    }else{
        for i in b...a {
            sum += i        
        }
    }
    
    return sum
}