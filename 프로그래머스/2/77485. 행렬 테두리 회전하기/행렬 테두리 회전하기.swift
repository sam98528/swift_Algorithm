import Foundation

func solution(_ rows:Int, _ columns:Int, _ queries:[[Int]]) -> [Int] {
    var ans : [Int] = []
    var graph :[[Int]] = []
    
    for i in stride(from: 1, to: rows*columns, by: columns){
        var tempArr : [Int] = []
        for j in i..<i+columns{
            tempArr.append(j)
        }
        graph.append(tempArr)
    }
    
    for query in queries {
        var rotated = graph
        var startX = query[0] - 1
        var startY = query[1] - 1
        var result = graph[startX][startY]
        
        
        while startY < query[3] - 1 {
            result = min(result,rotated[startX][startY+1])
            rotated[startX][startY+1] = graph[startX][startY]
            startY += 1
        }
        while startX < query[2] - 1 {
            result = min(result,rotated[startX+1][startY])
            rotated[startX+1][startY] = graph[startX][startY]
            startX += 1
        }
        while startY > query[1] - 1 {
            result = min(result,rotated[startX][startY-1])
            rotated[startX][startY-1] = graph[startX][startY]
            startY -= 1
        }
        while startX > query[0] - 1 {
            result = min(result,rotated[startX-1][startY])
            rotated[startX-1][startY] = graph[startX][startY]
            startX -= 1
        }
        graph = rotated
        ans.append(result)
    }
    
    
    return ans
}