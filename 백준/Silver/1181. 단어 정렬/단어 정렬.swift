import Foundation
var words : [String] = []
let num = Int(readLine()!)!

for _ in 0..<num {
    let input = readLine()!
        words.append(input)
}
var ans = Array(Set(words)).sorted(by: {
    if $0.count != $1.count{
        return $0.count < $1.count
    }else{
        return $0 < $1
    }
})

for i in ans {
    print(i)
}