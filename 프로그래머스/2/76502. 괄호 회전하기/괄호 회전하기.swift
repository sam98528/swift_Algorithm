import Foundation

func solution(_ s:String) -> Int {
    var ans = 0
    var s = s
    var stack : [String] = []
    var check = [["[","]"],["{","}"],["(",")"]]
    let n = s.count
    for _ in 1...n{
        for char in s {
            stack.append(String(char))
            if String(char) == "}" || String(char) == ")" || String(char) == "]"{
                if check.contains(stack.suffix(2)){
                    stack.removeLast(2)
                }
            }
        }
        if stack.isEmpty{
            ans += 1
        }
        stack = []
        let first = s.removeFirst()
        s.append(first)
    }
    
    return ans
}