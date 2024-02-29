import Foundation

/*
func solution(_ x:Int, _ y:Int, _ n:Int) -> Int {
    var ans = -1
    
    func cal (_ x:Int, _ y:Int, _ n:Int, _ count : Int){
        if x > y {
            return
        }
        if x == y {
            if ans == -1 {
                ans = count
            }else{
                ans = min(ans,count)
            }
            return
        }
        cal(x+n,y,n,count+1)
        cal(x*2,y,n,count+1)
        cal(x*3,y,n,count+1)
    }
    cal(x,y,n,0)
    return ans
}
*/

func solution(_ x: Int, _ y: Int, _ n: Int) -> Int {
    var count = 0
    
    var set: Set<Int> = [x]
    
    while !set.isEmpty{
        if set.contains(y) {
            return count
        }
        var tempSet : Set <Int> = []
        for num in set {
            if num + n <= y {
                tempSet.insert(num + n)    
            }
            if num * 2 <= y {
                tempSet.insert(num * 2)    
            }
            if num * 3 <= y {
                tempSet.insert(num * 3)    
            }
        }
        set = tempSet
        count += 1
    }
    
    return -1
}

