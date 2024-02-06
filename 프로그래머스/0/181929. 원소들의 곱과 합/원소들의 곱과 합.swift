import Foundation

func solution(_ num_list:[Int]) -> Int {
    var powerSum = num_list.reduce(1){$0 * $1}
    var sum = num_list.reduce(0,+) 
    var sumPower = sum * sum
    return  powerSum < sumPower ? 1 : 0
}