import Foundation

func solution(_ q:Int, _ r:Int, _ code:String) -> String {
    var ans = ""
    let arr = Array(code)
    
    for (index,element) in code.enumerated(){
        if index % q == r {
            ans += String(element)
        }
    }
    return ans
}