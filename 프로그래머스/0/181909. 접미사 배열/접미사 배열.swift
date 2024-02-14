import Foundation

func solution(_ my_string:String) -> [String] {
    var ans : [String] = []
    let arr = Array(my_string)
    for (index,_) in arr.enumerated(){
        ans.append(String(arr[index...]))

    }
    ans = ans.sorted()
    return ans
}