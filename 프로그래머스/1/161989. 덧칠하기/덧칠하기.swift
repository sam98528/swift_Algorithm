import Foundation

func solution(_ n:Int, _ m:Int, _ section:[Int]) -> Int {
    
    if section.count == 1{
        return 1
    }
    var ans = 0
    
    var sectionIndex = 0
    var temp = 0
    var finish = false
    
    while sectionIndex < section.count {
        finish = false    
        temp = section[sectionIndex] + m 
        ans += 1
        while finish == false {
            sectionIndex += 1
            if sectionIndex >= section.count {
                finish = true
            }else if temp <= section[sectionIndex]{
                finish = true
            }
        }
    }
    return ans
}