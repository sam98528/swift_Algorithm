import Foundation

func solution(_ keymap:[String], _ targets:[String]) -> [Int] {
    var alphabetCount : [String:Int] = [:]
    var ans : [Int] = Array(repeating: 0, count: targets.count) 
    
    for (index,key) in keymap.enumerated(){
        let characters = Array(key)
        for (buttonCount, char) in characters.enumerated(){
            let currentCount = buttonCount + 1
            if let currentAlphaCount = alphabetCount[String(char)]{
                alphabetCount[String(char)] = min(currentCount,alphabetCount[String(char)]!)
            }else{
                alphabetCount[String(char)] = currentCount
            }
        }
    }
    
        
    for (index ,target) in targets.enumerated() {
        var t = Array(target)
        for alphabet in t {
            if let count = alphabetCount[String(alphabet)]{
                ans[index] += count
            }else{
                ans[index] = -1
                break
            }
        }
    }    
    return ans
}