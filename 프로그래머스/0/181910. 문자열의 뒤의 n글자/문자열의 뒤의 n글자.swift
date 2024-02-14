import Foundation

func solution(_ my_string:String, _ n:Int) -> String {
    let arr = Array(my_string)
    let firstIndex = arr.count - n

    return String(arr[firstIndex...])
}