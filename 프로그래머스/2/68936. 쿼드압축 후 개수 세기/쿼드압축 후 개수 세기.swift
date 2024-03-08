import Foundation

func solution(_ arr:[[Int]]) -> [Int] {
    var ans : [Int] = [0,0]
    
    func quadTree(_ x : Int, _ y : Int, _ size : Int){
        let tempNum = arr[x][y]
        var allEqual = true
        
        for i in x..<x+size{
            for j in y..<y+size{
                if arr[i][j] != tempNum{
                    allEqual = false
                    break
                }
            }
            if allEqual == false{
                break
            }
        }
        if allEqual == true {
            ans[tempNum] += 1
        }else{
            let newSize = size / 2
            quadTree(x,y,newSize)
            quadTree(x+newSize,y+newSize,newSize)
            quadTree(x,y+newSize,newSize)
            quadTree(x+newSize,y,newSize)
            
        }
        
    }
    quadTree(0,0,arr.count)
    return ans
}