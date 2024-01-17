func solution(_ arr:[Int]) -> Double {
    let sum = arr.reduce(0,+)
    let avg = Double(sum) / Double(arr.count)
    return avg
}