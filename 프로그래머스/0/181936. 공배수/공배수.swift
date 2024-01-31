import Foundation

func solution(_ number:Int, _ n:Int, _ m:Int) -> Int {
    return (number > 0 && n > 0 && m > 0 && number % n == 0 && number % m == 0 ? 1 : 0)
}