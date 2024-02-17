import Foundation

func solution(_ numbers:[Int], _ target:Int) -> Int {
    let count = numbers.count
    var ans = 0 
    
    func dfs (_ current: Int,_ depth: Int){
        if current == target && depth == count-1 {
            ans += 1
            return
        }
            guard depth+1 < count else {return}
            dfs(current+numbers[depth+1], depth+1)
            dfs(current-numbers[depth+1], depth+1)  
    }
            
    dfs(0,-1)
    return ans
}
