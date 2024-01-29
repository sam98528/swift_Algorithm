import Foundation

func solution(_ players:[String], _ callings:[String]) -> [String] {
    var player = players
    var playerIndices: [String: Int] = [:]
    
    for (index, player) in players.enumerated(){
        playerIndices[player] = index
    }
    
    for call in callings {
        let value = playerIndices[call]!
        if value > 0 {
            player.swapAt(value, value - 1)
            playerIndices[player[value]] = value
            playerIndices[player[value - 1]] = value - 1
        }
        
        
    }
    return player
}