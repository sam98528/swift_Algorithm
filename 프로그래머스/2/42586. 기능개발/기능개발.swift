import Foundation

func solution(_ progresses:[Int], _ speeds:[Int]) -> [Int] {
    var progresses = progresses
    var speeds = speeds
    var ans : [Int] = []
    while(!progresses.isEmpty){
        progresses = zip(progresses,speeds).map{$0 + $1}
        var check = false
        var temp = 0
        while(!check && !progresses.isEmpty){
            if progresses[0] >= 100{
                temp += 1
                progresses.removeFirst()
                speeds.removeFirst()
            }else{
                check = true
            }
        }
        if temp != 0 {
            ans.append(temp)
        }
        
    }
    return ans
}