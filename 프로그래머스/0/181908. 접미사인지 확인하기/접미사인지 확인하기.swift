import Foundation

func solution(_ my_string:String, _ is_suffix:String) -> Int {
    var ans : [String] = []
    let arr = Array(my_string)
    for (index,_) in arr.enumerated(){
        ans.append(String(arr[index...]))

    }
    if ans.contains(is_suffix){
        return 1
    }
    return 0
}