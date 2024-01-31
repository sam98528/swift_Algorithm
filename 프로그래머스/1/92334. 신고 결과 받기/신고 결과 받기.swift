import Foundation

func solution(_ id_list:[String], _ report:[String], _ k:Int) -> [Int] {
    var ans = id_list.map{_ in 0}
    if k >= id_list.count {
        return ans
    }
    
    var reportName = [String: Set<String>]()
    for key in id_list {
        reportName[key] = []
    }
    
    for re in report {
        let temp = re.split(separator: " ")
        reportName[String(temp[1])]!.insert(String(temp[0]))
    }
    let check = reportName.filter{$0.value.count >= k}
    
    for (key,value) in check{
        for val in value {
            let index = id_list.firstIndex(of: String(val))!
            ans[index] += 1
        }
    }
    return ans
}