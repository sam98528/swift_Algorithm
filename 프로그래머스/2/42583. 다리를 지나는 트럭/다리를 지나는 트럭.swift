import Foundation

func solution(_ bridge_length:Int, _ weight:Int, _ truck_weights:[Int]) -> Int {
    var array = Array(repeating: 0, count: bridge_length)
    var ans = 0
    var truck_weights = truck_weights
    var bridgeWeights = 0
    
    while !array.isEmpty {
        ans += 1
        bridgeWeights -= array.removeFirst()
        if let a = truck_weights.first {
            if a + bridgeWeights <= weight {
                array.append(a)
                bridgeWeights += truck_weights.removeFirst()
            } else {
                array.append(0)
            }
        }
    }
    
    return ans
}