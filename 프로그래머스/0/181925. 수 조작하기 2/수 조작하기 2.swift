import Foundation

func solution(_ numLog:[Int]) -> String {
    var ans = ""
    
    for i in 0..<numLog.count-1{
        let temp = numLog[i+1] - numLog[i]
        switch temp {
            case 1:
                ans += "w"
            case -1:
                ans += "s"
            case 10:
                ans += "d"
            case -10:
                ans += "a"
            default:
                ans += ""
        }
    }
    return ans
}

