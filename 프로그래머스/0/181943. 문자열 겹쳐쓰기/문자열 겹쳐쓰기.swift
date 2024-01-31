import Foundation

func solution(_ my_string:String, _ overwrite_string:String, _ s:Int) -> String {
    var my_string = my_string
    let index1 = my_string.index(my_string.startIndex, offsetBy: s)
    let index2 = my_string.index(my_string.startIndex, offsetBy: s + overwrite_string.count)
    my_string.replaceSubrange(index1..<index2, with: overwrite_string)
    return my_string
}