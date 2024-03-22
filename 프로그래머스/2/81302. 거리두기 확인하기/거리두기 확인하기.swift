import Foundation

func solution(_ places:[[String]]) -> [Int] {
    var ans: [Int] = []
    
    for place in places {
        var pPos: [[Int]] = []
        var isSafe = true
        
        for (rowIndex, row) in place.enumerated() {
            for (colIndex, val) in row.enumerated() {
                if val == "P" {
                    pPos.append([rowIndex, colIndex])
                }
            }
        }
        
        if pPos.count == 1 {
            ans.append(1)
            continue
        }
        
        for pIndex in 0..<pPos.count {
            if !isSafe {break}
            
            
            for nextPIndex in pIndex+1..<pPos.count{
                let currentP = pPos[pIndex]
                let nextP = pPos[nextPIndex]
                let dist = abs(currentP[0] - nextP[0]) + abs(currentP[1] - nextP[1])
                
                if dist > 2 {
                    continue
                }
                
                if dist == 1 {
                    isSafe = false
                    break
                }
                
                if dist == 2 {
                    if (currentP[0] == nextP[0]){
                        if place[currentP[0]][min(currentP[1], nextP[1])+1] == "O"{
                            isSafe = false
                            break
                        }
                    }else if (currentP[1] == nextP[1]){
                        if place[min(currentP[0], nextP[0])+1][currentP[1]] == "O"{
                            isSafe = false
                            break
                        }
                    }else{
                        if (place[currentP[0]][nextP[1]] == "O" || place[nextP[0]][currentP[1]] == "O"){
                            isSafe = false
                            break
                        }
                    }
                
                }
            }
        }
        ans.append(isSafe ? 1 : 0)
        
    }
    return ans
}

extension String {
    subscript(_ index: Int) -> Character {
        self[self.index(self.startIndex, offsetBy: index)]
    }
}