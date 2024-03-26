func solution(_ arrayA:[Int], _ arrayB:[Int]) -> Int {
    
    let gcdA = gcd(arrayA)
    let gcdB = gcd(arrayB)
    let answerA = arrayB.allSatisfy { gcdA != 1 && $0 % gcdA != 0 } ? gcdA : 0
    let answerB = arrayA.allSatisfy { gcdB != 1 && $0 % gcdB != 0 } ? gcdB : 0
        
    return max(answerA, answerB)
}

func gcd(_ arr: [Int]) -> Int {
    return arr.reduce(arr[0], { gcd($0, $1) })
}

func gcd(_ a: Int, _ b: Int) -> Int {
    if b == 0 { return a }
    return gcd(b, a % b)
}