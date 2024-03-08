import Foundation

func solution(_ order:[Int]) -> Int {
    var order = order
    var count = order.count
    var current = 1
    var orderIndex = 0 
    var sub : [Int] = []
    var truck = 0 
    
    while(orderIndex < count) {
        if current > count && sub.last != order[orderIndex] {
            break
        }
        
        if (current == order[orderIndex]){
            truck += 1
            orderIndex += 1
            current += 1
        }else if (current <= count){
            sub.append(current)
            current += 1
        }
    
        if (sub.last == order[orderIndex]){
            truck += 1
            sub.popLast()
            orderIndex += 1
        }
        
        
    }

    return truck
}