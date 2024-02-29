import Foundation

func solution(_ topping:[Int]) -> Int {
    var ans = 0
    var topping = topping
    var toppingSet = Set<Int>()
    var dict = [Int:Int]()
    
    for (_,element) in topping.enumerated(){
        if let count = dict[element] {
            dict[element] = count + 1
        } else {
            dict[element] = 1
        }
    }
    
     for (_,element) in topping.enumerated(){
        toppingSet.insert(element)
        dict[element]! -= 1
        if dict[element]! == 0 {
            dict[element] =  nil
        }
        if toppingSet.count == dict.count {
            ans += 1
        }
     }
    
    return ans
}