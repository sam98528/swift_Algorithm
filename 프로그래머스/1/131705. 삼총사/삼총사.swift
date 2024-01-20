import Foundation

func solution(_ number:[Int]) -> Int {
    var count = number.count
    var ans = 0
    for i in 0..<count-2{
        for j in i+1..<count-1 {
            for k in j+1..<count{
                if number[i] + number[j] + number[k] == 0 {
                    ans += 1     
                }
            }
        }
    }
    return ans
}