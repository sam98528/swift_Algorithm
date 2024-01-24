import Foundation

func solution(_ number:[Int]) -> Int {
    var count = number.count
    var ans = 0
    
    for i in 0..<count-2{
        for j in i+1..<count-1 {
            for k in j+1..<count{
                let number = number[i] + number[j] + number[k]
                var num = 0 
                var sqrtN = Int(Double(number).squareRoot())
                for z in 1...sqrtN{
                    if number % z == 0 {
                        num += 1
                        if number / z != z {
                            num += 1
                        }
                    }
                }
                if num == 2 {
                    ans += 1     
                }
            }
        }
    }
    return ans
}