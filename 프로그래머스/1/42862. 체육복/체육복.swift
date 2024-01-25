import Foundation

func solution(_ n:Int, _ lost:[Int], _ reserve:[Int]) -> Int {
    var list = Array(repeating: 0 , count: n)
    for i in lost {
        list[i-1] += -1
    }
    for j in reserve {
        list[j-1] += 1
    }
    let count = list.enumerated().map { index , element -> Int in 
                                       if index > 0 && list[index-1] == 1 && element == -1{
                                           list[index] = 0
                                            list[index-1] = 0
                                            return 0
                                        }else if index < list.count - 1 && list[index+1] == 1 && element == -1{
                                            list[index] = 0
                                            list[index+1] = 0
                                            return 0
                                        }else {
                                            return element
                                        }
        
    }.reduce(0){$0 + ($1 >= 0 ? 1 : 0)}
    return count
}