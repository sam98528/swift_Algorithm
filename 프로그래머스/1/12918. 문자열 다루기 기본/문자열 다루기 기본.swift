func solution(_ s:String) -> Bool {
    
    for i in s {
        if let test = Int(String(i)){
            continue
        }else{
            return false
        }
    }
    if(s.count == 4 || s.count == 6){
        return true    
    }else{
        return false
    }
}