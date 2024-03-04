import Foundation

func solution(_ numbers:[Int64]) -> [Int64] {
    return numbers.map {
        if $0 % 2 == 0 {
            return $0 + 1
        }else{
            let last = (~$0) & ($0 + 1)
            return ($0 | last) & ~(last >> 1)
        }
        
    }
}