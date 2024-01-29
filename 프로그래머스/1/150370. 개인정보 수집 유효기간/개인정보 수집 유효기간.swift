import Foundation

func solution(_ today:String, _ terms:[String], _ privacies:[String]) -> [Int] {
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "yyyy.MM.dd"
    let todayDate = dateFormatter.date(from: today)!
    let calendar = Calendar.current
    
    var ans : [Int] = []
    
    let dictionary = Dictionary<String, Int>(uniqueKeysWithValues: terms.enumerated().map { index, element in
        let temp = element.split(separator: " ")
        let key = String(temp[0])
        let value = Int(temp[1])!
        return (key, value)
    })
    
    for (index, value) in privacies.enumerated(){
        let temp = value.split(separator: " ")
        let date = dateFormatter.date(from: String(temp[0]))!
        let month = dictionary[String(temp[1])]!
        let updatedDate = calendar.date(byAdding: .month, value: month, to:date)!
        let result = todayDate.compare(updatedDate)
        if result != .orderedAscending {
            ans.append(index+1)
        }
                                     
    }
    
    return ans
}