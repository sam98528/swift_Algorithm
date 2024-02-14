import Foundation

func solution(_ my_string:String, _ m:Int, _ c:Int) -> String {
    let arr = Array(my_string)
    var ans = ""
    var index = c-1
    while index < arr.count{
        ans += String(arr[index])
        index += m
    }
    return ans
}