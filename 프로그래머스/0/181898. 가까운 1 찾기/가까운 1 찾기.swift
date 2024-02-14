import Foundation

func solution(_ arr:[Int], _ idx:Int) -> Int {
    let sub = Array(arr[idx...])
    if var ans = sub.index(of: 1) {
        return ans + idx
    }
    
    return -1
}