import Foundation

func solution(_ cards1:[String], _ cards2:[String], _ goal:[String]) -> String {
    var cardsOne = cards1
    var cardsTwo = cards2
    for i in 0..<goal.count{
        if cardsOne.isEmpty {
            if cardsTwo[0] == goal[i] {
                cardsTwo.removeFirst()
                continue
            }else{
                return "No"
            }
        }else if cardsTwo.isEmpty {
            if cardsOne[0] == goal[i] {
                cardsOne.removeFirst()
                continue
            }else{
                return "No"
            }
        }else{
            if cardsOne[0] == goal[i] {
                cardsOne.removeFirst()
                continue
            }else if cardsTwo[0] == goal[i]{
                cardsTwo.removeFirst()
                continue
            }else{
                return "No"
            }
        }
    }
    
    return "Yes"
}