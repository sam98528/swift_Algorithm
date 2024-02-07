import Foundation

func solution(_ elements:[Int]) -> Int {
    var numberSet = Set<Int>()
    for index in 0..<elements.count {
        var number = 0
        for offset in 0..<elements.count {
            let validIndex = (index + offset) % elements.count
            number += elements[validIndex]
            numberSet.insert(number)
        }
    }
    return numberSet.count
}