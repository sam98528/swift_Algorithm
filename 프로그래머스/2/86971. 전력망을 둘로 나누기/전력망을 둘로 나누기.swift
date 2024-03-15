import Foundation

func solution(_ n:Int, _ wires:[[Int]]) -> Int {
    var graph: [Int: [Int]] = {
        var dictionary: [Int: [Int]] = [:]
        for i in 1...n {
            dictionary[i] = []
        }
        
        return dictionary
    }()
    
    for wire in wires {
        let node1 = wire[0]
        let node2 = wire[1]
        graph[node1]?.append(node2)
        graph[node2]?.append(node1)
    }
    
    func bfs(graph: [Int : [Int]]) -> Int{
        var needVisitQueue : [Int] = [1]
        var visitedQueue : [Int] = []
        
        while !needVisitQueue.isEmpty{
            let node : Int = needVisitQueue.removeFirst()
            if visitedQueue.contains(node) {continue}
            
            visitedQueue.append(node)
            needVisitQueue += graph[node] ?? []
        }
        let diff = abs(visitedQueue.count - (graph.count - visitedQueue.count))
        return diff
    }
    
    func deleteOnewire(wire : [Int]) -> [Int: [Int]]{
        var tempGraph = graph
        let node1 = wire[0]
        let node2 = wire[1]
        tempGraph[node1]!.remove(at: tempGraph[node1]!.firstIndex(of: node2)!)
        tempGraph[node2]!.remove(at: tempGraph[node2]!.firstIndex(of: node1)!)
        return tempGraph
    }
    var ans = n

    for wire in wires {
        let tempGraph = deleteOnewire(wire: wire)
        ans = min(ans,bfs(graph: tempGraph))
    }
    
    return ans
}