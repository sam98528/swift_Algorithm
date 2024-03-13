import Foundation

func solution(_ queue1:[Int], _ queue2:[Int]) -> Int {
    
    let arr = queue1 + queue2
    var left = 0
    var right = queue1.count
    var leftSum = queue1.reduce(0,+)
    var rightSum = queue2.reduce(0,+)
    let half = (leftSum + rightSum) / 2
    var ans = 0
    
    while (left < arr.count && right < arr.count){
        if leftSum == half {
            return ans
        }
        
        if leftSum < half {
            leftSum += arr[right]
            right += 1
        }else if leftSum > half {
            leftSum -= arr[left]
            left += 1
        }
        ans += 1
    }
    if leftSum != half {
        return -1
    }
    
    return ans
}