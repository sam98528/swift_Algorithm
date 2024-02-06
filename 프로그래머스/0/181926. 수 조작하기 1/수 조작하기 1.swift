import Foundation

func solution(_ n:Int, _ control:String) -> Int {
    var arr = Array(control)
    var n = n
    
    for element in arr {
        switch String(element) {
            case "w":
                n += 1
            case "s":
                n -= 1
            case "d":
                n += 10
            case "a":
                n -= 10
            default:
                n = 0
            
        }
    }
    return n
}