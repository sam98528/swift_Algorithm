func solution(_ x:Int) -> Bool {
    var num = String(x)
    var sum = 0 
    for digit in num {
        if let digitNum = Int(String(digit)){
            sum += digitNum
        }
    }
    
    if x % sum == 0 {
        return true
    }else{
        return false    
    }
    
}