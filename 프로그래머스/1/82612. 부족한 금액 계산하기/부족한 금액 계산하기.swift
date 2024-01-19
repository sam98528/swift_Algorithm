import Foundation

func solution(_ price:Int, _ money:Int, _ count:Int) -> Int64{
    var answer:Int64 = -1
    var sum = 0
    for i in 1...count {
        sum += i * price 
    }
    if  sum - money > 0 {
        return Int64(sum - money)
    }else{
        return 0 
    }
}