import Foundation

func solution(_ maps:[String]) -> [Int] {
    // 2차원 배열로 변환
    var newMaps = maps.map{Array($0)}
    
    // 2차원 배열의 사이즈 제한 미리 선언
    let row = newMaps.count
    let column = newMaps[0].count
    
    // 움직이는 방향 dx,dy 생성
    let dx = [0,0,-1,1]
    let dy = [1,-1,0,0,]
    
    // 방문한 grpah 확인
    var visitedGraph = Array(repeating: Array(repeating: 0, count: column), count: row)
    
    // DFS 구현 
    func dfs (_ currentRow : Int, _ currentColumn : Int) -> Int {
        // 해당 경로의 합을 저장하기 위한 변수
        var sum = 0
        
        // 방문한 자리는 visitGraph 에서 1로 바꿈
        visitedGraph[currentRow][currentColumn] = 1
        
        //만약 해당 자리가 X가 아니라 숫자라면
        // 해당 자리의 숫자만큼 sum 에 추가
        // X라면 Return 0
        if let currrentNum = Int(String(newMaps[currentRow][currentColumn])){
            sum += currrentNum
        }else{
            return 0
        }
        
        // 현재 자리에서 상화좌우로 다 확인하는 과정
        for i in 0...3{
            var newRow = currentRow + dx[i]
            var newCol = currentColumn + dy[i]
            
            // 변경되는 위치가 범위안에 있는지 확인
            // 변경되는 위치가 방문한 위치인지 확인
            // 만약 위에 해당사항이 있으면 다른 위치로 변경 continue
            if newRow >= row || newCol >= column || newRow < 0 || newCol < 0 || visitedGraph[newRow][newCol] == 1{
                continue
            }
            
            // dfs하면서 얻은 결고값을 sum에 저장. 
            sum += dfs(newRow, newCol)
        }

        return sum
    }
    
    //정답 배열 선언
    var ans : [Int] = []
    
    for i in 0..<row{
        for j in 0..<column{
            // 전체적으로 dfs를 호출하게 되면 중복 사항이 있기 때문에
            // 방문하지 않은 위치 및 x가 아닌 위치에서만 호출
            if (visitedGraph[i][j] == 1 || newMaps[i][j] == "X") {
                continue
            }else{
                ans.append(dfs(i, j))
            }
        }
    }
    //만약 배열이 비어 있다면 [-1]
    //비어있지 않는다면 정렬해서 리턴
    ans = ans.isEmpty ? [-1] : ans.sorted(by: <)
    return ans
}