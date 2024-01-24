import Foundation

func solution(_ number:Int, _ limit:Int, _ power:Int) -> Int {
    var ans = 0
    for i in 1...number {
        var div = divisor(i)
        if div > limit {
            ans += power
        }else{
            ans += div
        }
    }
    return ans
}

func divisor (_ number: Int) -> Int {
    var ans = 0
    let sqrtN = Int(Double(number).squareRoot())
    
    for i in 1...sqrtN{
        if number % i == 0 {
            ans += 1
            if number / i != i {
                ans += 1
            }
        }
    }
    return ans
}