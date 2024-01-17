func solution(_ n:Int64) -> [Int] {
    var ans : [Int] = []
    let num = String(String(n).reversed())
    
    for i in num {
        if let char = Int(String(i)){
            ans.append(char)     
        }
           
    }     
    
    return ans
}