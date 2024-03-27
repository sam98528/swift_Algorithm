import Foundation

func solution(_ weights:[Int]) -> Int64 {
    
    var dict = [Double:Int]()
    var ans = 0
    
    for weight in weights {
        dict[Double(weight), default : 0] += 1
    }
    
    for key in dict.keys {
        if dict[key]! > 1 {
            ans += dict[key]! * (dict[key]!-1) / 2
        }
        if dict[key * 2 / 3] != nil {
            ans += dict[key]! * dict[key * 2 / 3]!
        }
        if dict[key * 2 / 4] != nil {
            ans += dict[key]! * dict[key * 2 / 4]!
        }
        if dict[key * 3 / 4] != nil {
            ans += dict[key]! * dict[key * 3 / 4]!
        }
    }
    
    return Int64(ans)
}