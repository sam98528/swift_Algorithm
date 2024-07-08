import Foundation

struct Person{
    var name : String
    var give : [String : Int] = [:]
    var receive :[String : Int] = [:]
    
    func calculateTotal() -> Int{
        var giveTotal = 0
        give.forEach{
            giveTotal += $0.value
        }
        var receiveTotal = 0
        receive.forEach{
            receiveTotal += $0.value
        }
        return giveTotal - receiveTotal
    }
}
func solution(_ friends:[String], _ gifts:[String]) -> Int {
    var max = 0
    var personList : [String : Person] = [:]
    friends.forEach{ friend in
        let temp = friends.filter{ name in
            name != friend
        }
        var newPerson = Person(name : friend)
        temp.forEach{ name in
            newPerson.give[name] = 0
            newPerson.receive[name] = 0
        }
        personList[friend] = newPerson
        
    }
    
    gifts.forEach{
        let words = $0.split(separator: " ")
        let personGive = String(words[0])
        let personReceive = String(words[1])
        if let _ = personList[personGive]?.give[personReceive] {
            personList[personGive]!.give[personReceive]! += 1
        }else{
            personList[personGive]!.give[personReceive] = 1
        }
        if let _ = personList[personReceive]?.receive[personGive] {
            personList[personReceive]!.receive[personGive]! += 1
        }else{
            personList[personReceive]!.receive[personGive] = 1
        }
    }
    personList.forEach{ person in
        var result = 0
        let total = person.value.calculateTotal()
        person.value.give.forEach{ freind in
            let giveNum = freind.value
            let receviceNum = personList[freind.key]?.give[person.key] ?? 0
            if giveNum > receviceNum {
                result += 1
            }else if giveNum == receviceNum {
                let receiveTotal = personList[freind.key]?.calculateTotal() ?? 0
                if total > receiveTotal {
                    result += 1
                }
            }
        }
        if result > max {
            max = result
        }
    }
    return max
}

