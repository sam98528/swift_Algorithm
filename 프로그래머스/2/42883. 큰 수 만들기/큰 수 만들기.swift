import Foundation

func solution(_ number:String, _ k:Int) -> String {
    var ans : [Character] = []
    var k = k 
    
    for num in number {
        while let lastNum = ans.last, lastNum < num, k > 0 {
            k -= 1
            ans.removeLast()
        }
        ans.append(num)
    }
    if k != 0 {
        ans.removeLast(k)
    }
    
    return String(ans)
}