import Foundation

func solution(_ ingredient:[Int]) -> Int {
    var stack : [Int] = []
    var receipt = [1,2,3,1]
    var ans = 0
    for ingre in ingredient{
        stack.append(ingre)
        if Array(stack.suffix(4)) == receipt{
            ans += 1
            stack.removeLast(4)
        }
    }
    return ans
}