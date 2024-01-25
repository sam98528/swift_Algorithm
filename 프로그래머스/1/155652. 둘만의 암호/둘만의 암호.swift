import Foundation

func solution(_ s:String, _ skip:String, _ index:Int) -> String {
    let alphabet = Array(Set("abcdefghijklmnopqrstuvwxyz").subtracting(Set(skip))).sorted()
    
    var ans = Array(s)
    
    for (cur, char) in ans.enumerated() {
        if let alphaCur = alphabet.firstIndex(of: char){
            ans[cur] = alphabet[(alphaCur + index) % alphabet.count]
        }
    }
    return String(ans)
}