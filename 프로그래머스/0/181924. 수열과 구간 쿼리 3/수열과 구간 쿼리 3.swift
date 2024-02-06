import Foundation

func solution(_ arr:[Int], _ queries:[[Int]]) -> [Int] {
    var arr = arr
    for element in queries{
        arr.swapAt(element[0],element[1])
    }
    return arr
}