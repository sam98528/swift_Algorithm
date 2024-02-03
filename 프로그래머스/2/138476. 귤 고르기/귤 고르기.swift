import Foundation

func solution(_ k:Int, _ tangerine:[Int]) -> Int {
    var countDict : [Int: Int] = [:]
    var ans = 0
    var temp = k
    for element in tangerine {
        if let count = countDict[element]{
            countDict[element] = count + 1
        }else{
            countDict[element] = 1
        }
    }
    
    let sortedArray = countDict.sorted{$0.value > $1.value}
    for (key,value) in sortedArray {
        ans += 1
        temp -= value
        if temp <= 0 {
            return ans
        }
    }
    
    return 0
}