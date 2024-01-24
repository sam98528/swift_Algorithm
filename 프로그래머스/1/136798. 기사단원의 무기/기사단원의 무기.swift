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


/*
// 다른 사람 풀이 
// 약수를 구하는 색다른 방법
func solution(_ number:Int, _ limit:Int, _ power:Int) -> Int {
    var attack = [Int](repeating: 0, count: number+1)

    for i in 1...number {
        var c = i

        while c <= number {
            attack[c] += 1
            c += i
        }
        print(attack)
    }
    attack = attack.map { $0 > limit ? power : $0 }
    return attack.reduce(0, +)
}

*/
