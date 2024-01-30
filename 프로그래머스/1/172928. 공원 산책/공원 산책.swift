import Foundation

// 올라가라
func solution(_ park: [String], _ routes: [String]) -> [Int] {
    var start = [0, 0]
    var barrier: Set<[Int]> = []
    let maxRow = park.count - 1
    let maxCol = park[0].count - 1
    
    for (row, str) in park.enumerated() {
        let arr = Array(str)
        for (col, char) in arr.enumerated(){
            if String(char) == "S" {
                start[0] = row
                start[1] = col
            }
            if String(char) == "X" {
                let temp = [row, col]
                barrier.insert(temp)
            }
        }
    }
    
    for route in routes {
        let temp = route.split(separator: " ")
        let op = String(temp[0])
        let n = Int(temp[1])!
        start = check(barrier, start, op, n, maxRow, maxCol)
    }
    
    return start
}

func check(_ barrier: Set<[Int]>, _ cur: [Int], _ op: String, _ n: Int, _ row: Int, _ col: Int) -> [Int] {
    var updated: [Int] = []
    for j in 1...n {
        switch op {
            case "N":
                updated = [cur[0] - j, cur[1]]
            case "S":
                updated = [cur[0] + j, cur[1]]
            case "W":
                updated = [cur[0], cur[1] - j]
            case "E":
                updated = [cur[0], cur[1] + j]
            default:
                return cur
        }
        if updated[0] <= row && updated[0] >= 0 && updated[1] <= col && updated[1] >= 0 && !barrier.contains(updated) {
            continue
        }else{
            return cur
        }
    }
    
    return updated
}
