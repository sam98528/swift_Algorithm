import Foundation 

func solution(_ a:Int, _ b:Int) -> String {
    //원하는 날짜 설정
    var date = DateComponents()
    date.year = 2016
    date.month = a
    date.day = b
    
    // DateFormatter를 통해 출력하는 방식을 설정 
    // "EE" -> Weekday with Three characters only (eg: MON, TUE...)
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "EE"
    
    //날짜를 현재 Calendar에 맞는 형식으로 설정 후 계산
    let dates = Calendar.current.date(from:date)!
    let weekdayString = dateFormatter.string(from: dates)

    return weekdayString.uppercased()
}