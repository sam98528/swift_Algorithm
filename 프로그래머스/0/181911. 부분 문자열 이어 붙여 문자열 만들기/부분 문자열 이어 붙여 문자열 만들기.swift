import Foundation

func solution(_ my_strings:[String], _ parts:[[Int]]) -> String {
    var ans = ""
    for (index,string) in my_strings.enumerated(){
        let tempArr = Array(string)
        let slice = String(tempArr[parts[index][0]...parts[index][1]])
        ans += slice
    }
    return ans
}