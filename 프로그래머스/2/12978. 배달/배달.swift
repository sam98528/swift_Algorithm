import Foundation

func solution(_ N:Int, _ road:[[Int]], _ k:Int) -> Int {
    var distanceFromFirst =  [Int](repeating: Int.max, count : N + 1)
    
    var graph = [[Int]](repeating: [Int](repeating: 0, count: N + 1), count: N + 1)
    
    for data in road {
        let from = data[0]
        let to = data[1]
        let cost = data[2]
        
        if graph[from][to] == 0 {
            graph[from][to] = cost
            graph[to][from] = cost
        } else {
            // 문제에서 한 마을에서 다른 마을까지의 경로가 여러 개 존재
            // 그러나 최단 거리만을 판단하면 되므로 소요 시간이 가장 짧은 값으로 갱신
            
            if cost < graph[from][to] {
                graph[from][to] = cost
                graph[to][from] = cost
            }
        }
        
    }

    func dijkstara(start: Int) {
        var queue = [(Int, Int)]()
        // 시작점 거리 0으로 초기화
        distanceFromFirst[start] = 0
        
        queue.append((1,distanceFromFirst[1]))
        
        while !queue.isEmpty {
            let cur = queue.first!.0
            let cost = queue.first!.1
            queue.removeFirst()
            for next in 2...N {
                // 경로가 존재하고 더 짧은 이동 소요 시간일 경우 배열을 갱신합니다.
                if graph[cur][next] != 0 && cost + graph[cur][next]  < distanceFromFirst[next] {
                    distanceFromFirst[next] = cost + graph[cur][next]
                    queue.append((next, distanceFromFirst[next]))
                }
            }
        }
    }
    
    dijkstara(start: 1)
    return distanceFromFirst.filter{$0 <= k}.count
}