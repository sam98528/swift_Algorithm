func solution(_ num:Int) -> Int {
    var ans = num
    for i in 0...500{
        if ans == 1 {
            return i 
        }
        if ans % 2 == 0 {
            ans = ans / 2
        }else{
            ans = ans * 3 + 1
        }
    }
    return -1
}