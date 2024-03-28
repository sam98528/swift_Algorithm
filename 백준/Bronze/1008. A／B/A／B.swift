import Foundation

let arr = readLine()!.split(separator: " ").map({Int(String($0))!})
print(Double(arr[0]) / Double(arr[1]))
