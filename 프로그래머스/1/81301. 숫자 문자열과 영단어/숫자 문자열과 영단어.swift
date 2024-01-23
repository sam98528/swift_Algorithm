import Foundation

func solution(_ s: String) -> Int {
    let arr: [String] = ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
    var index = 0
    var ansStr = ""
    
    while index < s.count {
        var matched = false
        var currentIndex = s.index(s.startIndex, offsetBy:index)
        for i in 0...9 {
            let endIndex = s.index(s.startIndex, offsetBy: index + arr[i].count, limitedBy: s.endIndex)
            
            if let endIndex = endIndex, s[currentIndex..<endIndex] == arr[i] {
                ansStr += String(i)
                index += arr[i].count
                matched = true
                break
            }
        }
        
        if !matched {
            let digitIndex = s.index(s.startIndex, offsetBy: index)
            if let digit = Int(String(s[digitIndex])) {
                ansStr += String(digit)
                index += 1
            }
        }
    }
    
    if let result = Int(ansStr) {
        return result
    } else {
        return 0
    }
}

