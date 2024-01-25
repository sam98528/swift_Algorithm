import Foundation

func solution(_ X:String, _ Y:String) -> String {
   var list: [String] = []
  
    for i in stride(from:9, through:0, by:-1){
        let countX = X.filter{String($0) == String(i)}.count
        let countY = Y.filter{String($0) == String(i)}.count
        list += Array(repeating:String(i), count: min(countX,countY))
    }
    return list.isEmpty ? "-1" : list.filter{$0 == "0"}.count == list.count ? "0" : list.joined()
}