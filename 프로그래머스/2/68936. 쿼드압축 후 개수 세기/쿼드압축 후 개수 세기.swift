/*
1. 인자로 현재 영역의 왼쪽 최상단의 좌표를 각각 x,y로 받는다, 그리고 해당 영역의 사이즈 또한 인자로 받는다.
2. 해당 영역이 다 똑같은 숫자로 (0 혹은 1) 로 구성되어 있는지 for 문으로 확인한다.
3. 만약 같다면 정답 배열 에서 해당 숫자의 개수를 증가시킨다.
3-1. 해당영역은 하나로 통일된거이기 때문에 return.
4. 다르다면 해당 영역을 4등분 했을때의 newSize를 구한다.
4-1. 예를 들어 4*4 영역인 경우, 4등분 했을때 최상단 좌표는 각각 (0,0), (2,0), (0,2), (2,2)다. 즉 현재 size / 2 를 각각 x,y에 더해주는 것이다.
4-2 변경된 좌표로 총 4번 재귀함수를 호출한다. 그리고 다시 1번부터 반복
*/

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
