import Foundation

func solution(_ n:Int) -> Int {
    let base3String = String(n,radix:3)
    let base3rev = String(base3String.reversed())
    if let number = Int(base3rev,radix:3) {
        return number
    }else{
        return 0
    }
    
}