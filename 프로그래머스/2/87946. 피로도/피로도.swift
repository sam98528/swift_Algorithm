func solution(_ k:Int, _ dungeons:[[Int]]) -> Int {
    var visited = Array(repeating: false, count: dungeons.count)
    var ans = 0
    
    func dfs(_ now: Int, _ depth: Int) {
        ans = max(depth, ans)
        for i in 0..<dungeons.count {
            if !visited[i] && now >= dungeons[i][0] {
                visited[i] = true
                dfs(now - dungeons[i][1],depth + 1)
                visited[i] = false
            }
        }
    }
    
    dfs(k, 0)
    
    return ans
}