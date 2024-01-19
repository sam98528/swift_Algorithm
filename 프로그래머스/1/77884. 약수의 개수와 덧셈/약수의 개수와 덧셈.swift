import Foundation

func solution(_ left:Int, _ right:Int) -> Int {
    var ans = 0
    for i in left...right{
        var num = 0
        var sqrtI = Int(Double(i).squareRoot())
        for j in 1...sqrtI{
            if i % j == 0 {
                num += 1
                if i / j != j {
                    num+=1
                }
            }
        }
        if num % 2 == 0{
            ans += i
        }else{
            ans -= i
        }
    }
    return ans
}

/*
//다른 사람의 풀이 map 및 closure 사용.

func solution(_ left: Int, _ right: Int) -> Int {
    return (left...right).map { i in (1...i).filter { i % $0 == 0 }.count % 2 == 0 ? i : -i }.reduce(0, +)
}

*/
