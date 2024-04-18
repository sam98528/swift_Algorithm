import Foundation
let input = Int(readLine()!)!
let base2String = String(input, radix: 2)
print(base2String.filter{$0 == "1"}.count)
