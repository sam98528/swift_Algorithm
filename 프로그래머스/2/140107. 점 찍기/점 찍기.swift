import Foundation

func solution(_ k:Int, _ d:Int) -> Int64 {
    var result:Int64 = 0
    for i in 0...d/k {
        result += Int64(sqrt(pow(Double(d)/Double(k),2)-pow(Double(i),2)))+1
    }
    return result
}