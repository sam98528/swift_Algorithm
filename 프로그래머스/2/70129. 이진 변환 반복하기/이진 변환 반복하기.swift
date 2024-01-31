import Foundation

func solution(_ s:String) -> [Int] {
    var ans : [Int] = [0,0]
    
   
    var temp = s
    
    while(temp != "1"){
        ans[0] += 1
        var withoutZero = temp.replacingOccurrences(of: "0", with:"")
        let changeZero = temp.count - withoutZero.count
        ans[1] += changeZero
        temp = String(withoutZero.count, radix: 2)
    }
    
    return ans
}