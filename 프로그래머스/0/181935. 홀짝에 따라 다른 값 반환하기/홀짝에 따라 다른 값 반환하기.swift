import Foundation

func solution(_ n:Int) -> Int {
    
    if n % 2 == 0 {
        return Array(stride(from: 1, to:n+1,by:1)).map{$0 % 2 == 0 ? $0 * $0 : 0}.reduce(0,+)
    } else{
        return Array(stride(from: 1, to:n+1,by:1)).map{$0 % 2 != 0 ? $0: 0}.reduce(0,+)
    }
}