import Foundation

let arr = readLine()!.split(separator: " ").map({Int(String($0))!})
print(arr.reduce(0, {$0+$1}))
