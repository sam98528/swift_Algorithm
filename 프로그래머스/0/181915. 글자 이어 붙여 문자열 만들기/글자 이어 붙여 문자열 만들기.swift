import Foundation

func solution(_ my_string:String, _ index_list:[Int]) -> String {
    var arr = Array(my_string)
    var ans = ""
    for index in index_list{
        ans += String(arr[index])
    }
    return ans
}