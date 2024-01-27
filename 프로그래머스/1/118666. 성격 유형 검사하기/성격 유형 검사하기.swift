import Foundation

func solution(_ survey:[String], _ choices:[Int]) -> String {
    var table = [["R" : 0 , "T": 0],["C" : 0 , "F": 0],["J" : 0 , "M": 0],["A" : 0 , "N": 0]]
    var answer = ""
    for (index, choice) in choices.enumerated(){
        if choice == 4 {
            continue
        }
            let offset = (choice > 4 ? 1 : 0)
            let stringIndex = String(survey[index]).index(survey[index].startIndex , offsetBy:offset)
            let temp = String(survey[index][stringIndex])
        let point = abs(choice - 4)
        for (i,_) in table.enumerated() {
                if var value = table[i][temp] {
                    value += point
                    table[i][temp] = value
                }
        }
    
    }
    
    for ans in table {
        if let ansKey = ans.max(by: { $0.value == $1.value ?$0.key > $1.key : $0.value < $1.value})?.key{
            answer.append (String(ansKey))
        }
    }
    return answer
}