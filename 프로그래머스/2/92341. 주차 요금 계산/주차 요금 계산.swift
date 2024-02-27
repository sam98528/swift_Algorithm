import Foundation

func solution(_ fees:[Int], _ records:[String]) -> [Int] {
    var time = Dictionary<String, Int>()   
    var inTime = Dictionary < String, String> ()
    var ans : [Int] = []
    var carOrder : [String] = []
    
    for record in records {
        let temp = record.split(separator: " ")
        let car = String(temp[1])
        
        if temp[2] == "IN"{
            inTime[car] = String(temp[0])
            if time[car] == nil {
                time[car] = 0
            } 
            if !carOrder.contains(car){
                carOrder.append(car)
            }
        }else{
            let inTimeString = inTime[car]!
            let dif = findDifference(inTimeString, String(temp[0]))
            time[car] = time[car]! + dif
            inTime[car] = nil
        }
    }
    if !inTime.isEmpty {
        for (key,value) in inTime{
            let dif = findDifference("23:59", String(value))
            if time[String(key)] == nil {
                time[String(key)] = dif
            }else{
                time[String(key)] = time[String(key)]! + dif
            } 
        }
    }
    
    carOrder = carOrder.sorted(by: <)
    for car in carOrder {
        if time[String(car)]! < fees[0] {
            ans.append(fees[1])
        }else{
            let temp = Int(ceil(Double((time[String(car)]! - fees[0])) / Double(fees[2])))
            ans.append(fees[1] + temp * fees[3] )
        }
        
    }
    
    return ans
}

func findDifference (_ time1 : String, _ time2 : String) -> Int {
    let formatter = DateFormatter()
    formatter.dateFormat = "HH:mm"

    if let date1 = formatter.date(from: time1), let date2 = formatter.date(from: time2) {
        let calendar = Calendar.current
        let components = calendar.dateComponents([.minute], from: date1, to: date2)
    
        if let minuteDifference = components.minute {
            return abs(minuteDifference)
        }
    }
    return 0
}