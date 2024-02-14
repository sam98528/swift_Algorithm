import Foundation

func solution(_ my_string:String, _ indices:[Int]) -> String {
    let indices = indices.sorted(by: >)
    var arr = Array(my_string)
    
    for index in indices {
        arr.remove(at: index)
    }
    return String(arr)
}