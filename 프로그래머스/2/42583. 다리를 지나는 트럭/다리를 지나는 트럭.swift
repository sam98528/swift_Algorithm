import Foundation

func solution(_ bridge_length:Int, _ weight:Int, _ truck_weights:[Int]) -> Int {
    var bridge = Array(repeating: 0 , count: bridge_length)
    var truck_weights = truck_weights
    var ans = 0
    var currentCar = 0
    
    while(!bridge.isEmpty){
        ans += 1
        currentCar -= bridge.removeFirst()
        if let temp = truck_weights.first{
            if temp + currentCar <=  weight{
                bridge.append(temp)
                currentCar += truck_weights.removeFirst()
            }else{
                bridge.append(0)
            }
        }
    }
    return ans
}
