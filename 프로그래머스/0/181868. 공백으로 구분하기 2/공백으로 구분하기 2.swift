import Foundation

func solution(_ my_string:String) -> [String] {
    var ans = my_string.components(separatedBy: " ")
    ans = ans.filter{$0 != ""}
    return ans
    
    
}