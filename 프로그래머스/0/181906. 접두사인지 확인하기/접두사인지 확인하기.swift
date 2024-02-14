import Foundation

func solution(_ my_string:String, _ is_prefix:String) -> Int {
    if String(my_string.prefix(is_prefix.count)) == is_prefix {
        return 1
    }
    return 0
}