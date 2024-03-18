import Foundation

func solution(_ book_time:[[String]]) -> Int {
    var answer = 0
    let bookTime = book_time.sorted(by: {$0[0] < $1[0]})
    var bookNum = Array(repeating: 0, count: bookTime.count)
   
    let bookTimeToMinutes = timeToMinutes(bookTime)
    print(bookTimeToMinutes)
    var endTime = 0
    
    for i in 0..<bookTimeToMinutes.count {
        if bookNum[i] == 0 {
            answer += 1
            bookNum[i] = answer
            endTime = bookTimeToMinutes[i][1]+10
        }
        else {
            continue
        }
        for j in i+1..<bookTimeToMinutes.count {
            if bookNum[j] == 0 && endTime <= bookTimeToMinutes[j][0] {
                bookNum[j] = answer
                endTime = bookTimeToMinutes[j][1]+10
            }
        }
    }
    return answer
    
   
    
}

func timeToMinutes(_ bookTime: [[String]]) -> [[Int]] {
    var minutesArray = [[Int]]()
    for times in bookTime {
        var arr = [Int]()
        for time in times {
            let split = time.split(separator: ":").map {Int(String($0))!}
            arr.append(split[0]*60 + split[1])
        }
        minutesArray.append(arr)
    }
   return minutesArray
}