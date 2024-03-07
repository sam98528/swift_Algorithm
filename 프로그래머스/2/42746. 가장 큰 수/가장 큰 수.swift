import Foundation

func solution(_ numbers:[Int]) -> String {
    let sorting : (Int, Int) -> Bool = {(lhs,rhs) in
        let combine1 = Int(String(lhs)+String(rhs))!
        let combine2 = Int(String(rhs)+String(lhs))!
        return combine1 > combine2
    }
    let sortedNumbers = numbers.sorted(by: sorting)
    if sortedNumbers[0] == 0{
        return "0"
    }
    let ans = sortedNumbers.reduce(""){$0 + "\($1)"}
    return ans
}