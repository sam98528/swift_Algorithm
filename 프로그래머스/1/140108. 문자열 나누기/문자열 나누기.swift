import Foundation

func solution(_ s:String) -> Int {
    var arr = Array(s)

    var current : String = ""
    var max : Int = 0
    var currentNum : Int = 0
    
    
    var ans = 0
    for i in arr {
        if current == ""{
            current = String(i)
            max = 1
        }else if current == String(i){
            max += 1
        }else if current != String(i){
            currentNum += 1
            if max == currentNum {
                current = ""
                currentNum = 0
                max = 0
                ans += 1
            }
        }
    }
    if current != ""{
        ans += 1
    }
    return ans
}