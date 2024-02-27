import Foundation

func solution(_ n:Int, _ k:Int) -> Int {
    let split = String(n, radix: k).split(separator: "0").map { Int($0)! }
    let numberString = split.filter { $0 != 1 }
    var ans = 0
    
    
    for temp in numberString {
        let num = Int(temp)
        if isPrime(num){
            ans += 1
        }
    }
    return ans
    
}

func isPrime(_ number: Int) -> Bool {
    if number <= 1 {
        return false
    }
    if number == 2 {
        return true
    }
    let sqrtValue = Int(Double(number).squareRoot()) + 1
    for divisor in 2...sqrtValue {
        if number % divisor == 0 && divisor != number{
            return false
        }
    }

    return true
}