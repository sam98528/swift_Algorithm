import Foundation

func solution(_ N:Int, _ road:[[Int]], _ k:Int) -> Int {
    var distanceFromFirst =  [Int](repeating: Int.max, count : N)
    distanceFromFirst[0] = 0
    
    var graph = [[Int]](repeating: [Int](repeating: 0, count: N), count: N)
    
    for data in road {
        let start = data[0] - 1
        let dest = data[1] - 1
        let cost = data[2]
        
        if graph[start][dest] > cost || graph[start][dest] == 0{ 
            graph[start][dest] = cost
            graph[dest][start] = cost
        } 
    }

    func dijkstara() {
        var queue : [(Int,Int)] = []
        distanceFromFirst[0] = 0
        queue.append((0, distanceFromFirst[0]))
        
        while(!queue.isEmpty){
            let current = queue.first!.0
            let cost = queue.first!.1
            queue.removeFirst()
            
            for next in 1..<N{
                if graph[current][next] != 0 && cost + graph[current][next] < distanceFromFirst[next]{
                    distanceFromFirst[next] = cost + graph[current][next] 
                    queue.append((next,distanceFromFirst[next]))
                }
            }
        }
    
        
        
        
    }
    
    dijkstara()
    return distanceFromFirst.filter{$0 <= k}.count
}