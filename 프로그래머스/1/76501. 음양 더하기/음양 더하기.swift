import Foundation

func solution(_ absolutes:[Int], _ signs:[Bool]) -> Int {
    let length = signs.count
    var sum = 0
    for i in 0...length-1{
        if signs[i]{
            sum += absolutes[i]
        }else{
            sum -= absolutes[i]
        }
    }
    
    return sum
}