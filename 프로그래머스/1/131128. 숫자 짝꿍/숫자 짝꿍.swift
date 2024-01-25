import Foundation

func solution(_ X:String, _ Y:String) -> String {
   var list: [String] = []
    
    for i in (0...9) {
        let xCount = X.filter { String($0) == String(i) }.count
        let yCount = Y.filter { String($0) == String(i) }.count
        list += Array(repeating: String(i), count: min(xCount, yCount))
    }
    if (list.isEmpty){
        return "-1"
    }else if (list.filter{$0 == "0"}.count == list.count) {
        return "0"
    }else{
        return list.sorted(by: >).joined()
    }
}