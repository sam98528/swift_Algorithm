import Foundation

let arr = readLine()!.split(separator: " ").map({Int(String($0))!})
print(arr[0] - arr[1])