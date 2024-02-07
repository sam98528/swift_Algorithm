import Foundation

func solution(_ citations:[Int]) -> Int {

    
    let min = citations.min()!
    let max = citations.max()!
    
    for h in stride(from:max, through: min, by: -1){
        let aboveH = citations.filter{$0 >= h}
        let countH = aboveH.count
        //let countRest = citations.count - countH
        //&& countRest <= h
        if countH >= h {
            return h
        }
    }

    return citations.count
}