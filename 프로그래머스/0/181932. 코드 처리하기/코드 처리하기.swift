import Foundation

func solution(_ code:String) -> String {
    var ans = ""
    var code = Array(code)
    var mode = 0
    for (index,char) in code.enumerated(){
        if String(char) == "1"{
            if mode == 0 {
                mode = 1
            }else{
                mode = 0
            }
            continue
        }
        if mode == 1{
            if index % 2 != 0 {
                ans += String(char)
            }
        }else{
            if index % 2 == 0 {
                ans += String(char)
            }
        }
    }
    if ans == ""{
        return "EMPTY"
    }
    
    return ans
}