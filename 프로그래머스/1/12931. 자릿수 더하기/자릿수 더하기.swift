import Foundation

func solution(_ n:Int) -> Int
{
    var answer:Int = 0
    var text = String(n)
    
    for char in text{
        if let digit = Int(String(char)){
             answer += digit
        }
    }

    
    return answer
}