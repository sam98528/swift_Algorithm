import Foundation

func solution(_ num_list:[Int]) -> [Int] {
    var num_list = num_list
    
    if num_list[num_list.count-1] > num_list[num_list.count-2] {
        num_list.append(num_list[num_list.count-1] - num_list[num_list.count-2])
    }else{
        num_list.append(num_list[num_list.count-1] * 2)
    }
    
    return num_list
}