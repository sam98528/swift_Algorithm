import Foundation

func solution(_ my_string:String, _ s:Int, _ e:Int) -> String {
    /*let arr = Array(my_string)
    arr[s...e] = arr[s...e].reversed()
    */
    var characters = Array(my_string)
    let substring = characters[s...e]
    let reversedSubstring = substring.reversed()
    characters.replaceSubrange(s...e, with: reversedSubstring)
    let result = String(characters)
    return result
}