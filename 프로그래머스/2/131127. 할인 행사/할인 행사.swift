import Foundation

func solution(_ want:[String], _ number:[Int], _ discount:[String]) -> Int {
    var ans = 0 
    var dic : [String:Int] = [:]
    
    for index in 0..<want.count{
        let temp = want[index]
        dic[temp] = number[index]
    }

    for index in 0...discount.count-10{
        let tempArr = Array(discount[index..<index+10])
        var tempDic = dic
        for element in tempArr{
             if let value = tempDic[element] {
                 tempDic.updateValue(value - 1, forKey: element)
             }
        }
        let satisfy = tempDic.values.allSatisfy{$0 <= 0}
        if satisfy {
            ans += 1
        }
        
    }

    
    return ans
}