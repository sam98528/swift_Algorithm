import Foundation

func solution(_ priorities:[Int], _ location:Int) -> Int {
    var ans = 0
    var queue = Array(repeating: "0", count:priorities.count)
    queue[location] = "1"
    var priorities = priorities
    
    while(!priorities.isEmpty){
        if(priorities[0] >= priorities.max()!){
            ans += 1
            if queue[0] == "1"{
                return ans
            }else{
                priorities.removeFirst()
                queue.removeFirst()
            }
        }else{
            let temp1 = priorities[0]
            priorities.removeFirst()
            priorities.append(temp1)
            let temp2 = queue[0]
            queue.removeFirst()
            queue.append(temp2)
        }
    }
    return ans
}