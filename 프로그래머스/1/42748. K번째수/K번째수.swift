import Foundation

func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    var ans : [Int] = []
    
    for i in commands{
        var newArr = Array(array[i[0]-1...i[1]-1])
        newArr.sort()
        ans.append(newArr[i[2]-1])
    }
    return ans
}