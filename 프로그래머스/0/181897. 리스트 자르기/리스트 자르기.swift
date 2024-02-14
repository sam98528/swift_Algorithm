import Foundation

func solution(_ n:Int, _ slicer:[Int], _ num_list:[Int]) -> [Int] {
    switch n {
        case 1:
            return Array(num_list[0...slicer[1]])
        case 2:
            return Array(num_list[slicer[0]...])
        case 3:
            return Array(num_list[slicer[0]...slicer[1]])
        case 4:
            let indexList = stride(from: slicer[0], through: slicer[1], by: slicer[2])
            var ans : [Int] = []
            for index in indexList{
                ans.append(num_list[index])
            }
            return ans
        default:
            return []
    }
}